/-
HammingPropagationHistograms — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c
Organized SHA-256: 4687f67b690e5415243817699c85526f104c35e7633c77671b6d20a5052ac531
PMD: 510.8.010.020.020 moments (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole finite-support weight count and propagation histogram/first-moment proofs, with private support equivalence retained locally. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

import BitMatrix.Quantization.Core
import BitMatrix.Reduction.SAT
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.DoubleCounting.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.DifferentialCountsAndParity

/-!
# Exact finite avalanche semantics

This module studies Boolean derivatives of fixed-width transformations using
`BitMatrix.Reduction.SAT.Bits`; no second bit-vector representation is introduced.

For a transformation `H` and input `x`, `localJacobian H x` is one exact
Boolean matrix.  Its `(i,j)` entry records whether output bit `j` changes when
input bit `i` is flipped at that particular input.  SAC entries are different:
they aggregate those local observations over the entire finite input domain.

Derivative values are constant on the two endpoints of every input-difference
edge.  A nonzero difference acts without fixed points, so every differential
fiber, and in particular every one-bit SAC count, is paired and therefore
even.  Injectivity rules out only the zero output difference; it does not force
the remaining differences to be balanced.  The identity permutation below is
the canonical counterexample to any claim that bijectivity alone supplies
avalanche diffusion.

The random-function weight law is binomial.  For a random permutation, the
two distinct endpoints of a fixed input edge must have distinct outputs, so
the corresponding law is the binomial law conditioned on a nonzero output
difference.  These are fixed-edge distributions (equivalently, ensemble
expectations of empirical edge histograms), not independence assertions about
all edges in one sampled function or permutation.

Finally, SAC scores measure marginal balance only.  Even perfect one-bit
marginals need not make different output-flip bits independent; the concrete
three-bit permutation in `BitMatrix.Tests.Avalanche` witnesses this with a
nonzero pair correlation.
-/

namespace BitMatrix.Dynamics.Avalanche

open BitMatrix.Reduction.SAT
open scoped BigOperators

/-! ## Hamming weights and propagation histograms -/

/-- Number of `true` coordinates in a bit vector. -/
def hammingWeight {n : Nat} (x : Bits n) : Nat :=
  (Finset.univ.filter fun j => x j = true).card

/-- Hamming weight is bounded by the vector width. -/
theorem hammingWeight_le {n : Nat} (x : Bits n) : hammingWeight x ≤ n := by
  calc
    hammingWeight x ≤ (Finset.univ : Finset (Fin n)).card :=
      Finset.card_filter_le _ _
    _ = n := by simp

/-- A bit vector has weight zero exactly when it is the zero vector. -/
theorem hammingWeight_eq_zero_iff {n : Nat} (x : Bits n) :
    hammingWeight x = 0 ↔ x = zeroBits n := by
  constructor
  · intro h
    have hempty : (Finset.univ.filter fun j => x j = true) = ∅ :=
      Finset.card_eq_zero.mp h
    funext j
    have hfalse : x j ≠ true := by
      intro hj
      have hmem : j ∈ (Finset.univ.filter fun j => x j = true) := by
        simp [hj]
      rw [hempty] at hmem
      simp at hmem
    cases hx : x j
    · rfl
    · exact (hfalse hx).elim
  · rintro rfl
    simp [hammingWeight, zeroBits]

/-- Boolean vectors are equivalent to their finite supports. -/
private def bitsSupportEquiv (n : Nat) : Bits n ≃ Finset (Fin n) where
  toFun x := Finset.univ.filter fun j => x j = true
  invFun s j := decide (j ∈ s)
  left_inv x := by
    funext j
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    cases x j <;> simp
  right_inv s := by
    ext j
    simp

/-- Exactly `n.choose k` width-`n` bit vectors have Hamming weight `k`. -/
theorem card_hammingWeight_eq (n k : Nat) :
    (Finset.univ.filter fun x : Bits n => hammingWeight x = k).card =
      Nat.choose n k := by
  classical
  calc
    (Finset.univ.filter fun x : Bits n => hammingWeight x = k).card =
        ((Finset.univ : Finset (Fin n)).powersetCard k).card := by
      apply Finset.card_equiv (bitsSupportEquiv n)
      intro x
      simp only [Finset.mem_filter, Finset.mem_univ, true_and,
        Finset.mem_powersetCard, Finset.subset_univ, true_and]
      rfl
    _ = Nat.choose n k := by simp

/-- Hamming weight of the one-bit derivative at an input. -/
def propagationWeight {n : Nat} (H : Bits n → Bits n) (i : Fin n)
    (x : Bits n) : Nat :=
  hammingWeight (bitDerivative H i x)

/-- Number of inputs whose direction-`i` derivative has weight `k`. -/
def propagationCount {n : Nat} (H : Bits n → Bits n) (i : Fin n)
    (k : Nat) : Nat :=
  (Finset.univ.filter fun x => propagationWeight H i x = k).card

/-- Exact rational mass of weight `k` in one empirical propagation row. -/
def propagationMass {n : Nat} (H : Bits n → Bits n) (i : Fin n)
    (k : Nat) : ℚ :=
  propagationCount H i k / 2 ^ n

/-- Weights above the output width have empty propagation fibers. -/
theorem propagationCount_eq_zero_of_gt {n : Nat} (H : Bits n → Bits n)
    (i : Fin n) {k : Nat} (hk : n < k) :
    propagationCount H i k = 0 := by
  classical
  rw [propagationCount, Finset.card_eq_zero]
  apply Finset.filter_eq_empty_iff.mpr
  intro x _ hx
  have := hammingWeight_le (bitDerivative H i x)
  simp only [propagationWeight] at hx
  omega

/-- The finite propagation histogram contains all `2^n` inputs. -/
theorem propagationCount_sum {n : Nat} (H : Bits n → Bits n) (i : Fin n) :
    ∑ k ∈ Finset.range (n + 1), propagationCount H i k = 2 ^ n := by
  classical
  simpa [propagationCount, card_bits, propagationWeight,
    Nat.lt_succ_iff, hammingWeight_le] using
    (Finset.sum_card_fiberwise_eq_card_filter
      (Finset.univ : Finset (Bits n))
      (Finset.range (n + 1))
      (propagationWeight H i))

/-- The rational propagation histogram is normalized. -/
theorem propagationMass_sum {n : Nat} (H : Bits n → Bits n) (i : Fin n) :
    ∑ k ∈ Finset.range (n + 1), propagationMass H i k = 1 := by
  simp only [propagationMass, ← Finset.sum_div]
  have hsum :
      (∑ k ∈ Finset.range (n + 1), (propagationCount H i k : ℚ)) =
        ((2 ^ n : Nat) : ℚ) := by
    exact_mod_cast propagationCount_sum H i
  rw [hsum]
  norm_num

/--
The first moment of the propagation-weight histogram equals the sum of the SAC
counts in that input-direction row.
-/
theorem propagation_first_moment_count {n : Nat}
    (H : Bits n → Bits n) (i : Fin n) :
    ∑ k ∈ Finset.range (n + 1), k * propagationCount H i k =
      ∑ j : Fin n, sacCount H i j := by
  classical
  have hmaps : Set.MapsTo (propagationWeight H i)
      (Finset.univ : Finset (Bits n)) (Finset.range (n + 1)) := by
    intro x _
    simpa only [Finset.coe_range, Set.mem_Iio, propagationWeight,
      Nat.succ_eq_add_one] using
      Nat.lt_succ_of_le (hammingWeight_le (bitDerivative H i x))
  calc
    ∑ k ∈ Finset.range (n + 1), k * propagationCount H i k =
        ∑ k ∈ Finset.range (n + 1),
          ∑ x ∈ (Finset.univ : Finset (Bits n)) with
              propagationWeight H i x = k,
            propagationWeight H i x := by
      apply Finset.sum_congr rfl
      intro k _
      rw [propagationCount, Nat.mul_comm]
      exact (Finset.sum_const_nat fun x hx => (Finset.mem_filter.mp hx).2).symm
    _ = ∑ x : Bits n, propagationWeight H i x :=
      Finset.sum_fiberwise_of_maps_to hmaps _
    _ = ∑ j : Fin n, sacCount H i j := by
      simp only [propagationWeight, hammingWeight, sacCount,
        Finset.card_eq_sum_ones]
      simp only [Finset.sum_filter]
      rw [Finset.sum_comm (s := (Finset.univ : Finset (Bits n)))
        (t := (Finset.univ : Finset (Fin n)))]
      rfl

/-- Rational first-moment form: `Σ k, k qᵢ(k) = Σ j, S_H(i,j)`. -/
theorem propagation_first_moment_mass {n : Nat}
    (H : Bits n → Bits n) (i : Fin n) :
    ∑ k ∈ Finset.range (n + 1), (k : ℚ) * propagationMass H i k =
      ∑ j : Fin n, sacEntry H i j := by
  simp only [propagationMass, sacEntry, ← Finset.sum_div]
  field_simp
  rw [Finset.mul_sum]
  simp only [mul_div_cancel₀ _ (by positivity : (2 ^ n : ℚ) ≠ 0)]
  exact_mod_cast propagation_first_moment_count H i

/-- Injectivity forbids propagation weight zero along a one-bit direction. -/
theorem propagationCount_zero_of_injective {n : Nat}
    (H : Bits n → Bits n) (hinjective : Function.Injective H) (i : Fin n) :
    propagationCount H i 0 = 0 := by
  classical
  simp only [propagationCount, Finset.card_eq_zero]
  apply Finset.filter_eq_empty_iff.mpr
  intro x _ hx
  have hzero : bitDerivative H i x = zeroBits n :=
    (hammingWeight_eq_zero_iff _).mp hx
  exact derivative_ne_zero_of_injective H hinjective
    (basisBit_ne_zero i) x hzero

/-- The zero-weight rational mass also vanishes for an injective map. -/
theorem propagationMass_zero_of_injective {n : Nat}
    (H : Bits n → Bits n) (hinjective : Function.Injective H) (i : Fin n) :
    propagationMass H i 0 = 0 := by
  simp [propagationMass, propagationCount_zero_of_injective H hinjective i]


end BitMatrix.Dynamics.Avalanche
