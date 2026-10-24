# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be67e54070eb916bb7ac9871351fe8e8032a6811` · SHA-256 `1e37f3235b7a4b8be8d837fe2214e02aafd17ac0eba7e36d33507584d4e3ed94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results and their original authorship/licensing are retained.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#667; stacked parent #658 / draft PR #663.
-/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CyclicWindowSeam
import Mathlib

/-!
# Exact finite Walsh orthogonality and correlation energy

For any finite coordinate type, the characters of the Boolean cube
are pairwise orthogonal over the rational numbers. Finite Parseval
then identifies the entire squared Walsh polynomial with its complete
coefficient energy, retaining every character and all original signs.

The source specialization uses the actual binary labels of an arbitrary
finite set of roots. The empty normalized correlation equals 1 when the
root set is nonempty, and is removed ONLY in the centered expression.
The final theorem is an exact finite chi-square-like squared-discrepancy
identity. It is not a proof of any decay of nonempty Chowla moments.

This increment does not prove the full-event total-variation estimate to
the uniform Bernoulli law; that inequality requires the additional
finite L1/L2 or event-Cauchy transfer. It also proves no limiting dynamics,
arithmetic cancellation, GUE or RH theorem. All proofs are source drafts
pending Lean elaboration and kernel/axiom audit.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.WalshEnergy

open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- The rational Walsh character of a subset of finite coordinates.
We use the exact sign convention supplied by the parent module. -/
def walshCharacter (S : Finset ι) (a : ι → Bool) : ℚ :=
  ∏ i ∈ S, boolSign (a i)

@[simp] theorem walshCharacter_empty (a : ι → Bool) :
    walshCharacter (∅ : Finset ι) a = 1 := by
  simp [walshCharacter]

/-- One coordinate factor of a pair of characters. -/
def characterPairFactor (S T : Finset ι) (i : ι) (b : Bool) : ℚ :=
  (if i ∈ S then boolSign b else 1) *
    (if i ∈ T then boolSign b else 1)

/-- Rewrite two character products as one product on the complete universe. -/
theorem walshCharacter_mul (S T : Finset ι) (a : ι → Bool) :
    walshCharacter S a * walshCharacter T a =
      ∏ i : ι, characterPairFactor S T i (a i) := by
  classical
  calc
    walshCharacter S a * walshCharacter T a =
        (∏ i : ι, if i ∈ S then boolSign (a i) else (1 : ℚ)) *
        (∏ i : ι, if i ∈ T then boolSign (a i) else (1 : ℚ)) := by
      simp [walshCharacter, Finset.prod_ite_mem_eq]
    _ = ∏ i : ι, characterPairFactor S T i (a i) := by
      simp [characterPairFactor, Finset.prod_mul_distrib]

/-- Summation over the two signs is 2 when both selected characters use
a coordinate identically, and zero when precisely one uses it. -/
theorem characterPairFactor_sum_bool (S T : Finset ι) (i : ι) :
    (∑ b : Bool, characterPairFactor S T i b) =
      if (i ∈ S ↔ i ∈ T) then (2 : ℚ) else 0 := by
  classical
  by_cases hs : i ∈ S <;> by_cases ht : i ∈ T <;>
    simp [characterPairFactor, hs, ht, Fintype.sum_bool, boolSign]

/-- Mathlib's finite product-sum (finite Fubini) formula factorizes the
complete Boolean-pattern pairing into one independent coordinate factor. -/
theorem characterPair_factorization (S T : Finset ι) :
    (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) =
      ∏ i : ι, (if (i ∈ S ↔ i ∈ T) then (2 : ℚ) else 0) := by
  classical
  calc
    (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) =
        ∑ a : ι → Bool, ∏ i : ι, characterPairFactor S T i (a i) := by
      apply Finset.sum_congr rfl
      intro a ha
      exact walshCharacter_mul S T a
    _ = ∏ i : ι, ∑ b : Bool, characterPairFactor S T i b := by
      simpa only [Fintype.piFinset_univ] using
        (Finset.sum_prod_piFinset
          (s := (Finset.univ : Finset Bool))
          (g := fun i b => characterPairFactor S T i b))
    _ = ∏ i : ι, (if (i ∈ S ↔ i ∈ T) then (2 : ℚ) else 0) := by
      apply Finset.prod_congr rfl
      intro i hi
      exact characterPairFactor_sum_bool S T i

/-- Exact finite character orthogonality. No probability law, limit or
independent-sampling hypothesis is involved. -/
theorem walshCharacter_orthogonality (S T : Finset ι) :
    (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) =
      if S = T then (2 : ℚ) ^ Fintype.card ι else 0 := by
  classical
  rw [characterPair_factorization]
  by_cases heq : S = T
  · subst T
    simp
  · have hdiff : ∃ i : ι, ¬ (i ∈ S ↔ i ∈ T) := by
      by_contra hn
      apply heq
      ext i
      by_contra hi
      exact hn ⟨i, hi⟩
    obtain ⟨i, hi⟩ := hdiff
    simp only [if_neg heq]
    exact Finset.prod_eq_zero (Finset.mem_univ i) (by simp [hi])

/-- An arbitrary finite Walsh polynomial with all subset coefficients. -/
def walshPolynomial (c : Finset ι → ℚ) (a : ι → Bool) : ℚ :=
  ∑ S : Finset ι, c S * walshCharacter S a

/-- Exact finite Plancherel: the squared norm of the complete Walsh
polynomial equals 2^k times the complete squared coefficient energy. -/
theorem walshPolynomial_square_energy (c : Finset ι → ℚ) :
    (∑ a : ι → Bool, (walshPolynomial c a) ^ 2) =
      (2 : ℚ) ^ Fintype.card ι * ∑ S : Finset ι, (c S) ^ 2 := by
  classical
  have hexpand (a : ι → Bool) :
      (walshPolynomial c a) ^ 2 =
        ∑ S : Finset ι, ∑ T : Finset ι,
          (c S * c T) * (walshCharacter S a * walshCharacter T a) := by
    unfold walshPolynomial
    calc
      (∑ S : Finset ι, c S * walshCharacter S a) ^ 2 =
          (∑ S : Finset ι, c S * walshCharacter S a) *
          (∑ T : Finset ι, c T * walshCharacter T a) := by ring
      _ = ∑ S : Finset ι, ∑ T : Finset ι,
            (c S * c T) * (walshCharacter S a * walshCharacter T a) := by
        rw [Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro S hS
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro T hT
        ring
  calc
    (∑ a : ι → Bool, (walshPolynomial c a) ^ 2) =
        ∑ a : ι → Bool, ∑ S : Finset ι, ∑ T : Finset ι,
          (c S * c T) * (walshCharacter S a * walshCharacter T a) := by
      apply Finset.sum_congr rfl
      intro a ha
      exact hexpand a
    _ = ∑ S : Finset ι, ∑ T : Finset ι,
          (c S * c T) *
            (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro S hS
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro T hT
      rw [Finset.mul_sum]
    _ = ∑ S : Finset ι, (2 : ℚ) ^ Fintype.card ι * (c S) ^ 2 := by
      apply Finset.sum_congr rfl
      intro S hS
      simp [walshCharacter_orthogonality, mul_ite, Finset.sum_ite_eq',
        pow_two, mul_comm, mul_left_comm, mul_assoc]
    _ = (2 : ℚ) ^ Fintype.card ι * ∑ S : Finset ι, (c S) ^ 2 := by
      rw [Finset.mul_sum]

/-- The actual ordinary Cesaro-normalized sign moment on the source's
finite root identities; the nonempty-root hypothesis is deliberately part
of the interface. The empty moment is therefore exactly 1. -/
def normalizedSourceMoment (roots : Finset ℕ) (_hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (S : Finset ι) : ℚ :=
  (∑ n ∈ roots, ∏ i ∈ S, boolSign (x n i)) / (roots.card : ℚ)

@[simp] theorem normalizedSourceMoment_empty
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) :
    normalizedSourceMoment roots hroots x (∅ : Finset ι) = 1 := by
  have hne : (roots.card : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hroots)
  simp [normalizedSourceMoment, hne]

/-- Reuse the inherited source's actual pattern-signed moment rather than
postulating Fourier coefficients unrelated to the observed labels. -/
theorem empiricalMoment_factor
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (S : Finset ι) (a : ι → Bool) :
    empiricalMoment roots S x a =
      normalizedSourceMoment roots hroots x S * walshCharacter S a := by
  unfold empiricalMoment signedMomentOn normalizedSourceMoment walshCharacter
  simp_rw [Finset.prod_mul_distrib]
  rw [← Finset.sum_mul]
  ring

/-- The normalized inherited cylinder count on ALL coordinates has the
same complete Walsh polynomial, with every actual finite moment retained. -/
theorem empiricalPattern_fullWalsh
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (a : ι → Bool) :
    (2 : ℚ) ^ Fintype.card ι *
        empiricalPattern roots (Finset.univ : Finset ι) x a =
      walshPolynomial (normalizedSourceMoment roots hroots x) a := by
  calc
    (2 : ℚ) ^ Fintype.card ι *
        empiricalPattern roots (Finset.univ : Finset ι) x a =
        ∑ S : Finset ι, empiricalMoment roots S x a := by
      simpa only [Finset.card_univ, Finset.powerset_univ] using
        (empiricalPattern_walsh roots (Finset.univ : Finset ι) x a hroots)
    _ = walshPolynomial (normalizedSourceMoment roots hroots x) a := by
      unfold walshPolynomial
      apply Finset.sum_congr rfl
      intro S hS
      exact empiricalMoment_factor roots hroots x S a

/-- Centering removes ONLY the empty Walsh coefficient; every nonempty
actual source correlation stays visible and signed. -/
def centeredWalshPolynomial (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (a : ι → Bool) : ℚ :=
  walshPolynomial
    (fun S => if S = ∅ then 0 else normalizedSourceMoment roots hroots x S) a

/-- Complete nonempty-correlation squared energy, including all orders. -/
def nonemptyMomentEnergy (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) : ℚ :=
  ∑ S : Finset ι,
    if S = ∅ then 0 else (normalizedSourceMoment roots hroots x S) ^ 2

/-- Plancherel instantiated on all actual nonempty source moments. -/
theorem centeredWalshPolynomial_square_energy
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) :
    (∑ a : ι → Bool, (centeredWalshPolynomial roots hroots x a) ^ 2) =
      (2 : ℚ) ^ Fintype.card ι * nonemptyMomentEnergy roots hroots x := by
  unfold centeredWalshPolynomial
  rw [walshPolynomial_square_energy]
  congr 1
  unfold nonemptyMomentEnergy
  apply Finset.sum_congr rfl
  intro S hS
  by_cases h : S = ∅ <;> simp [h]

/-- The centered Walsh polynomial is exactly the scaled empirical deviation
from uniform, not just an unrelated formal transform. -/
theorem centeredWalshPolynomial_eq_empirical_defect
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (a : ι → Bool) :
    centeredWalshPolynomial roots hroots x a =
      (2 : ℚ) ^ Fintype.card ι *
        empiricalPattern roots (Finset.univ : Finset ι) x a - 1 := by
  have hfull := empiricalPattern_fullWalsh roots hroots x a
  have hremove :
      walshPolynomial (normalizedSourceMoment roots hroots x) a =
        centeredWalshPolynomial roots hroots x a + 1 := by
    unfold walshPolynomial centeredWalshPolynomial
    change
      (∑ S : Finset ι, normalizedSourceMoment roots hroots x S *
          walshCharacter S a) =
      (∑ S : Finset ι,
          (if S = ∅ then 0 else normalizedSourceMoment roots hroots x S) *
            walshCharacter S a) + 1
    calc
      (∑ S : Finset ι, normalizedSourceMoment roots hroots x S *
          walshCharacter S a) =
          ∑ S : Finset ι,
            ((if S = ∅ then 0 else normalizedSourceMoment roots hroots x S) *
              walshCharacter S a +
              (if S = ∅ then (1 : ℚ) else 0)) := by
        apply Finset.sum_congr rfl
        intro S hS
        by_cases h : S = ∅
        · subst S
          simp [normalizedSourceMoment_empty roots hroots x]
        · simp [h]
      _ = (∑ S : Finset ι,
              (if S = ∅ then 0 else normalizedSourceMoment roots hroots x S) *
                walshCharacter S a) +
            ∑ S : Finset ι, (if S = ∅ then (1 : ℚ) else 0) := by
        rw [Finset.sum_add_distrib]
      _ = (∑ S : Finset ι,
              (if S = ∅ then 0 else normalizedSourceMoment roots hroots x S) *
                walshCharacter S a) + 1 := by
        simp
  linarith

/-- The exact empirical-pattern chi-square numerator is the complete
nonempty squared sign-correlation energy times 2^k. This is the
missing *finite* Walsh-energy identity, not an analytic Chowla estimate. -/
theorem empiricalPattern_scaled_defect_energy
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) :
    (∑ a : ι → Bool,
        ((2 : ℚ) ^ Fintype.card ι *
          empiricalPattern roots (Finset.univ : Finset ι) x a - 1) ^ 2) =
      (2 : ℚ) ^ Fintype.card ι * nonemptyMomentEnergy roots hroots x := by
  simpa only [centeredWalshPolynomial_eq_empirical_defect] using
    (centeredWalshPolynomial_square_energy roots hroots x)

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.WalshEnergy
```
