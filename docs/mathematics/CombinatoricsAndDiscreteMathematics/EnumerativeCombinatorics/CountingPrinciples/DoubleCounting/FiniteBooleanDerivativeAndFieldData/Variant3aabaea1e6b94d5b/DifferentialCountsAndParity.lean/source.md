# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.DoubleCounting.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.DifferentialCountsAndParity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c62670a0e266d294965786ca7d2de323574d336` · SHA-256 `ce5b49fa6a1967da1f479dd541b480da4005d173e76dc1587618ecc4d3363c00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
DifferentialCountsAndParity — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c
Organized SHA-256: 4687f67b690e5415243817699c85526f104c35e7633c77671b6d20a5052ac531
PMD: 510.7.010.010.020 double counting (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole finite differential/SAC counts, nonzero-difference pairing helpers, exact parity/injectivity assumptions and width-one obstruction. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

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

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.BooleanDerivativesAndLocalQuantizer

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

/-! ## Exact differential and SAC counts -/

/-- The number of inputs whose `δ`-derivative equals `γ`. -/
def differentialCount {n : Nat} (H : Bits n → Bits n)
    (δ γ : Bits n) : Nat :=
  (Finset.univ.filter fun x => derivative H δ x = γ).card

/-- Exact rational normalization of a differential count. -/
def differentialProbability {n : Nat} (H : Bits n → Bits n)
    (δ γ : Bits n) : ℚ :=
  differentialCount H δ γ / 2 ^ n

/-- The number of inputs for which output bit `j` flips in direction `i`. -/
def sacCount {n : Nat} (H : Bits n → Bits n) (i j : Fin n) : Nat :=
  (Finset.univ.filter fun x => derivativeBit H i j x = true).card

/-- The exact marginal output-flip frequency. -/
def sacEntry {n : Nat} (H : Bits n → Bits n) (i j : Fin n) : ℚ :=
  sacCount H i j / 2 ^ n

/-- Strict avalanche balance, expressed without truncated natural subtraction. -/
def StrictSAC {n : Nat} (H : Bits n → Bits n) : Prop :=
  ∀ i j, 2 * sacCount H i j = 2 ^ n

/-- There are exactly `2 ^ n` bit vectors of width `n`. -/
theorem card_bits (n : Nat) : Fintype.card (Bits n) = 2 ^ n := by
  change Fintype.card (Fin n → Bool) = 2 ^ n
  rw [Fintype.card_fun]
  simp

/-- Differential fibers partition the entire input space. -/
theorem differentialCount_sum {n : Nat} (H : Bits n → Bits n)
    (δ : Bits n) :
    ∑ γ : Bits n, differentialCount H δ γ = 2 ^ n := by
  classical
  simpa [differentialCount, card_bits] using
    (Finset.sum_card_fiberwise_eq_card_filter
      (Finset.univ : Finset (Bits n))
      (Finset.univ : Finset (Bits n))
      (derivative H δ))

/-- A differential fiber is the whole domain exactly for a constant derivative. -/
theorem differentialCount_eq_full_iff {n : Nat} (H : Bits n → Bits n)
    (δ γ : Bits n) :
    differentialCount H δ γ = 2 ^ n ↔
      ∀ x, derivative H δ x = γ := by
  classical
  rw [differentialCount, ← card_bits n, ← Finset.card_univ]
  simpa using
    (Finset.card_filter_eq_iff
      (s := (Finset.univ : Finset (Bits n)))
      (p := fun x => derivative H δ x = γ))

/-- Probability one is exactly the deterministic differential corridor condition. -/
theorem differentialProbability_eq_one_iff {n : Nat}
    (H : Bits n → Bits n) (δ γ : Bits n) :
    differentialProbability H δ γ = 1 ↔
      ∀ x, derivative H δ x = γ := by
  rw [differentialProbability,
    div_eq_one_iff_eq (by positivity : (2 : ℚ) ^ n ≠ 0)]
  constructor
  · intro h
    apply (differentialCount_eq_full_iff H δ γ).mp
    exact_mod_cast h
  · intro h
    have hc := (differentialCount_eq_full_iff H δ γ).mpr h
    exact_mod_cast hc

private theorem exists_true_of_ne_zero {n : Nat} {δ : Bits n}
    (hδ : δ ≠ zeroBits n) : ∃ i, δ i = true := by
  classical
  by_contra h
  apply hδ
  funext i
  cases hi : δ i
  · rfl
  · exact (h ⟨i, hi⟩).elim

/--
An invariant subset of bit vectors has even cardinality when a nonzero XOR
translation pairs its elements.  The proof splits at a coordinate where the
translation is `true` and exhibits a bijection between its two halves.
-/
private theorem filter_card_even_of_xor_invariant
    {n : Nat} (δ : Bits n) (hδ : δ ≠ zeroBits n)
    (P : Bits n → Prop) [DecidablePred P]
    (hP : ∀ x, P (xorBits x δ) ↔ P x) :
    Even ((Finset.univ.filter P).card) := by
  classical
  obtain ⟨i, hi⟩ := exists_true_of_ne_zero hδ
  let S : Finset (Bits n) := Finset.univ.filter P
  let Sfalse : Finset (Bits n) := S.filter fun x => x i = false
  let Strue : Finset (Bits n) := S.filter fun x => x i = true
  let f : Bits n → Bits n := fun x => xorBits x δ
  have hf_mem : Set.MapsTo f (Sfalse : Set (Bits n))
      (Strue : Set (Bits n)) := by
    intro x hx
    change x ∈ Sfalse at hx
    change f x ∈ Strue
    simp [Sfalse, S] at hx
    simp only [Strue, S, Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · exact (hP x).2 hx.1
    · simp [f, xorBits, hi, hx.2]
  have hg_mem : Set.MapsTo f (Strue : Set (Bits n))
      (Sfalse : Set (Bits n)) := by
    intro x hx
    change x ∈ Strue at hx
    change f x ∈ Sfalse
    simp [Strue, S] at hx
    simp only [Sfalse, S, Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · exact (hP x).2 hx.1
    · simp [f, xorBits, hi, hx.2]
  have hf_involutive : Function.Involutive f := by
    intro x
    exact xorBits_cancel_self_right x δ
  have hcard : Sfalse.card = Strue.card :=
    Finset.card_nbij' f f hf_mem hg_mem
      (fun x _ => hf_involutive x) (fun x _ => hf_involutive x)
  have hnot : S.filter (fun x => ¬x i = false) = Strue := by
    ext x
    simp only [Strue, Finset.mem_filter]
    cases x i <;> simp
  have htotal : Sfalse.card + Strue.card = S.card := by
    change (S.filter fun x => x i = false).card + Strue.card = S.card
    rw [← hnot]
    exact Finset.card_filter_add_card_filter_not
      (s := S) (fun x => x i = false)
  refine ⟨Sfalse.card, ?_⟩
  change S.card = Sfalse.card + Sfalse.card
  omega

/-- Every nonzero-difference differential count is even. -/
theorem differentialCount_even {n : Nat} (H : Bits n → Bits n)
    {δ : Bits n} (hδ : δ ≠ zeroBits n) (γ : Bits n) :
    Even (differentialCount H δ γ) := by
  classical
  apply filter_card_even_of_xor_invariant δ hδ
  intro x
  rw [derivative_shift]

/-- Injectivity prevents a nonzero input edge from collapsing to zero output difference. -/
theorem derivative_ne_zero_of_injective {n : Nat} (H : Bits n → Bits n)
    (hinjective : Function.Injective H) {δ : Bits n}
    (hδ : δ ≠ zeroBits n) (x : Bits n) :
    derivative H δ x ≠ zeroBits n := by
  intro hzero
  have hout : H x = H (xorBits x δ) :=
    (xorBits_eq_zero_iff _ _).mp hzero
  exact (xorBits_ne_self_of_ne_zero x δ hδ) (hinjective hout).symm

/-- For an injective transformation, the zero-output differential fiber is empty. -/
theorem differentialCount_zero_of_injective {n : Nat}
    (H : Bits n → Bits n) (hinjective : Function.Injective H)
    {δ : Bits n} (hδ : δ ≠ zeroBits n) :
    differentialCount H δ (zeroBits n) = 0 := by
  classical
  simp [differentialCount, derivative_ne_zero_of_injective H hinjective hδ]

/-- Every SAC count is even because the two endpoints of each bit-flip edge agree. -/
theorem sacCount_even {n : Nat} (H : Bits n → Bits n) (i j : Fin n) :
    Even (sacCount H i j) := by
  classical
  apply filter_card_even_of_xor_invariant
    (basisBit i) (basisBit_ne_zero i)
  intro x
  change (bitDerivative H i (flipBit x i) j = true) ↔
    (bitDerivative H i x j = true)
  rw [bitDerivative_flipBit]

/-- Width one cannot satisfy strict SAC: balance would require the odd count one. -/
theorem not_strictSAC_one (H : Bits 1 → Bits 1) : ¬StrictSAC H := by
  intro hSAC
  have hcount := hSAC (0 : Fin 1) (0 : Fin 1)
  have heven := sacCount_even H (0 : Fin 1) (0 : Fin 1)
  obtain ⟨k, hk⟩ := heven
  norm_num at hcount
  omega


end BitMatrix.Dynamics.Avalanche
```
