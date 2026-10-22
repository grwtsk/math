/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Finite Parseval and chi-square proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshOrthogonality
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite Parseval identity for a complete Boolean sign cube

Issue grwtsk/math#630; continuation of draft PR #638.
This layer uses exact finite Walsh reconstruction and exact finite
character orthogonality to identify the full chi-square defect of
the empirical Boolean pattern law with its nonempty-correlation energy.

This is NOT arithmetic cancellation, growing-window uniformity,
entropy convergence, sofic spectral convergence, GUE or RH.

The sample is finite and has explicitly POSITIVE cardinality wherever
its normalized pattern counts are interpreted as probabilities.
No zero-denominator convention is silently used as equidistribution.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- The complete finite-cube Walsh polynomial of an arbitrary coefficient
family restricted to a finite set of subset characters. -/
def walshPolynomial (K : Finset (Finset ι)) (c : Finset ι → ℚ)
    (a : ι → Bool) : ℚ :=
  ∑ S ∈ K, c S * walshCharacter S a

/-- Finite Parseval for ANY selected family of distinct subset characters:
orthogonality is tested on every Boolean assignment, never a sparse sample. -/
theorem walshPolynomial_parseval (K : Finset (Finset ι))
    (c : Finset ι → ℚ) :
    (∑ a : ι → Bool, (walshPolynomial K c a) ^ 2) =
      (Fintype.card (ι → Bool) : ℚ) * ∑ S ∈ K, (c S) ^ 2 := by
  classical
  unfold walshPolynomial
  calc
    (∑ a : ι → Bool, (∑ S ∈ K, c S * walshCharacter S a) ^ 2) =
        ∑ S ∈ K, ∑ T ∈ K,
          (c S * c T) *
            (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) := by
      calc
        (∑ a : ι → Bool, (∑ S ∈ K, c S * walshCharacter S a) ^ 2) =
            ∑ a : ι → Bool, ∑ S ∈ K, ∑ T ∈ K,
              (c S * walshCharacter S a) * (c T * walshCharacter T a) := by
          apply Finset.sum_congr rfl
          intro a _
          rw [pow_two, Finset.sum_mul_sum]
        _ = ∑ S ∈ K, ∑ T ∈ K,
              (c S * c T) *
                (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) := by
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro S _
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro T _
          calc
            (∑ a : ι → Bool,
              (c S * walshCharacter S a) * (c T * walshCharacter T a)) =
                ∑ a : ι → Bool,
                  (c S * c T) *
                    (walshCharacter S a * walshCharacter T a) := by
              apply Finset.sum_congr rfl
              intro a _
              ring
            _ = (c S * c T) *
                  (∑ a : ι → Bool,
                    walshCharacter S a * walshCharacter T a) := by
              rw [Finset.mul_sum]
    _ = (Fintype.card (ι → Bool) : ℚ) * ∑ S ∈ K, (c S) ^ 2 := by
      simp_rw [walshCharacter_orthogonality]
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro S hS
      simp [hS, mul_ite, pow_two, mul_assoc, mul_comm]

/-- The source correlation is pattern-independent. The empty coefficient
must equal one only when the root sample is nonempty. -/
def sourceCorrelation (roots : Finset ℕ) (S : Finset ι)
    (x : ℕ → ι → Bool) : ℚ :=
  plainMomentOn roots S x / (roots.card : ℚ)

set_option linter.unusedSectionVars false in
/-- Positive sample cardinality is the essential normalization premise. -/
theorem sourceCorrelation_empty (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (hroots : 0 < roots.card) :
    sourceCorrelation roots (∅ : Finset ι) x = 1 := by
  have hcard : (roots.card : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hroots)
  simp [sourceCorrelation, plainMomentOn, hcard]

set_option linter.unusedSectionVars false in
/-- Empty samples cannot be treated as Bernoulli-normalized evidence.
Rational division by zero returns zero and requires an explicit guard. -/
theorem sourceCorrelation_empty_sample (x : ℕ → ι → Bool) :
    sourceCorrelation (∅ : Finset ℕ) (∅ : Finset ι) x = 0 := by
  simp [sourceCorrelation, plainMomentOn]

/-- The full Boolean cube contains exactly 2^|ι| assignments. -/
theorem booleanCube_card :
    (Fintype.card (ι → Bool) : ℚ) = (2 : ℚ) ^ Fintype.card ι := by
  simp

/-- The complete nonempty-character energy, summed with multiplicity one
per subset. No pairwise-only truncation or growing-shift bound is assumed. -/
def nonemptyCorrelationEnergy (roots : Finset ℕ)
    (x : ℕ → ι → Bool) : ℚ :=
  ∑ S ∈ (Finset.univ : Finset (Finset ι)).erase ∅,
    (sourceCorrelation roots S x) ^ 2

/-- q*P(a)-1, where q is the exact cardinality of the full Boolean cube.
This is not the unnormalized one-pattern discrepancy. -/
def scaledPatternDeviation (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (a : ι → Bool) : ℚ :=
  (Fintype.card (ι → Bool) : ℚ) *
    empiricalPattern roots (Finset.univ : Finset ι) x a - 1

/-- The empty character contributes exactly one, leaving ONLY nonempty
source coefficients in the scaled deviation from uniformity. -/
theorem scaledPatternDeviation_walsh (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (a : ι → Bool)
    (hroots : 0 < roots.card) :
    scaledPatternDeviation roots x a =
      ∑ S ∈ (Finset.univ : Finset (Finset ι)).erase ∅,
        sourceCorrelation roots S x * walshCharacter S a := by
  classical
  have hfull :
      (Fintype.card (ι → Bool) : ℚ) *
          empiricalPattern roots (Finset.univ : Finset ι) x a =
        ∑ S : Finset ι, sourceCorrelation roots S x * walshCharacter S a := by
    simpa only [booleanCube_card, Finset.card_univ, Finset.powerset_univ,
      empiricalMoment_factor, sourceCorrelation] using
      (empiricalPattern_walsh roots (Finset.univ : Finset ι) x a hroots)
  have hempty :
      sourceCorrelation roots (∅ : Finset ι) x *
          walshCharacter (∅ : Finset ι) a = 1 := by
    rw [sourceCorrelation_empty roots x hroots]
    simp [walshCharacter]
  have hsplit :
      (∑ S ∈ (Finset.univ : Finset (Finset ι)).erase ∅,
        sourceCorrelation roots S x * walshCharacter S a) + 1 =
      ∑ S : Finset ι, sourceCorrelation roots S x * walshCharacter S a := by
    simpa only [hempty] using
      (Finset.sum_erase_add (Finset.univ : Finset (Finset ι))
        (fun S => sourceCorrelation roots S x * walshCharacter S a)
        (Finset.mem_univ (∅ : Finset ι)))
  unfold scaledPatternDeviation
  rw [hfull]
  linarith

/-- Source-level Parseval reconstruction of ALL empirical nonempty
correlations, with the proper full-cube cardinality on the LHS. -/
theorem scaledPatternDeviation_parseval (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (hroots : 0 < roots.card) :
    (∑ a : ι → Bool, (scaledPatternDeviation roots x a) ^ 2) =
      (Fintype.card (ι → Bool) : ℚ) *
        nonemptyCorrelationEnergy roots x := by
  classical
  let K : Finset (Finset ι) := (Finset.univ : Finset (Finset ι)).erase ∅
  calc
    (∑ a : ι → Bool, (scaledPatternDeviation roots x a) ^ 2) =
        ∑ a : ι → Bool,
          (walshPolynomial K (fun S => sourceCorrelation roots S x) a) ^ 2 := by
      apply Finset.sum_congr rfl
      intro a _
      rw [scaledPatternDeviation_walsh roots x a hroots]
      rfl
    _ = (Fintype.card (ι → Bool) : ℚ) * nonemptyCorrelationEnergy roots x := by
      simpa [nonemptyCorrelationEnergy, K] using
        (walshPolynomial_parseval K (fun S => sourceCorrelation roots S x))

/-- Pearson chi-square defect with respect to the uniform law, expressed
as q^(-1)*sum_a (q*P(a)-1)^2, where q is the cube cardinality.
The division is by the POSITIVE cube cardinality, not by |roots|. -/
def chiSquareAgainstUniform (roots : Finset ℕ)
    (x : ℕ → ι → Bool) : ℚ :=
  (∑ a : ι → Bool, (scaledPatternDeviation roots x a) ^ 2) /
    (Fintype.card (ι → Bool) : ℚ)

/-- The exact finite chi-square / nonempty Chowla-correlation energy identity.
This is a deterministic statement about arbitrary finite Boolean samples,
not a claim that any arithmetic source has SMALL energy. -/
theorem chiSquareAgainstUniform_eq_energy (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (hroots : 0 < roots.card) :
    chiSquareAgainstUniform roots x = nonemptyCorrelationEnergy roots x := by
  have hc : (Fintype.card (ι → Bool) : ℚ) ≠ 0 := by
    have : Nonempty (ι → Bool) := ⟨fun _ => false⟩
    exact_mod_cast (Nat.ne_of_gt (Fintype.card_pos (α := ι → Bool)))
  unfold chiSquareAgainstUniform
  rw [scaledPatternDeviation_parseval roots x hroots]
  apply (div_eq_iff hc).2
  ring

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
