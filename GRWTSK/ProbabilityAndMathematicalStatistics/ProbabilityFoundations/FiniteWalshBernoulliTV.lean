/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Upstream Mathlib and inherited GRWTSK sources retain their attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: grwtsk/math#675; exact stacked parent #667 / draft PR #670.
-/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshEnergy
import Mathlib

/-!
# Finite total variation to the uniform Bernoulli block law

The inherited finite Walsh-energy source expresses the complete squared
deviation of empirical Boolean pattern frequencies in terms of all
nonempty correlation moments. This module supplies the missing purely
finite Cauchy-Schwarz transfer to an all-event total-variation bound.

An event means ANY Boolean predicate on the complete finite pattern
alphabet, not only a single cylinder. The event observable below uses
the actual parent empiricalPattern and exactly uniform mass 2^(-k).

The key inequality uses centered event weights with values +1 and -1.
Because the complete pattern discrepancy sums to zero, twice the event
discrepancy is the pairing against that signed weight. Its squared norm
is the number of patterns. Finite Cauchy-Schwarz gives the factor 1/2.

The theorem holds for arbitrary finite binary observations with nonempty
root samples. It does not supply a Chowla correlation estimate, a
Bernoulli limit, Liouville ergodicity, a cyclic-to-uniform triangle,
microscopic GUE, a zeta-zero comparison, or the Riemann hypothesis.

Lean elaboration, kernel checking and transitive trust auditing remain
NOT_RUN. No runtime or native evaluation belongs to this module.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.BernoulliTV

open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.WalshEnergy
open scoped BigOperators

section FiniteSignedMeasures

variable {α : Type*} [Fintype α] [Nonempty α]

/-- A selected event receives weight +1 on its support and -1 elsewhere. -/
def eventHalfWeight (event : α → Bool) (a : α) : ℝ :=
  if event a then 1 else -1

/-- An unnormalized signed event mass, retaining the complete alphabet. -/
def eventSignedSum (delta : α → ℝ) (event : α → Bool) : ℝ :=
  ∑ a : α, if event a then delta a else 0

theorem eventHalfWeight_sq (event : α → Bool) (a : α) :
    (eventHalfWeight event a) ^ 2 = 1 := by
  cases h : event a <;> norm_num [eventHalfWeight, h]

/-- Mean-zero signed masses give the exact centered-event identity.
The factor 2 is critical: losing it loses the sharp TV constant 1/2. -/
theorem eventHalfWeight_pairing
    (delta : α → ℝ) (event : α → Bool)
    (hzero : (∑ a : α, delta a) = 0) :
    (∑ a : α, eventHalfWeight event a * delta a) =
      2 * eventSignedSum delta event := by
  classical
  have hpoint (a : α) :
      eventHalfWeight event a * delta a =
        2 * (if event a then delta a else 0) - delta a := by
    cases h : event a <;> simp [eventHalfWeight, h] <;> ring
  calc
    (∑ a : α, eventHalfWeight event a * delta a) =
        ∑ a : α, (2 * (if event a then delta a else 0) - delta a) := by
      apply Finset.sum_congr rfl
      intro a ha
      exact hpoint a
    _ = 2 * (∑ a : α, if event a then delta a else 0) -
        ∑ a : α, delta a := by
      rw [Finset.sum_sub_distrib, Finset.mul_sum]
    _ = 2 * eventSignedSum delta event := by
      simp [eventSignedSum, hzero]

/-- The squared norm of the complete event weight is the exact alphabet
cardinality, regardless of how many patterns the event selects. -/
theorem eventHalfWeight_sq_sum (event : α → Bool) :
    (∑ a : α, (eventHalfWeight event a) ^ 2) =
      (Fintype.card α : ℝ) := by
  classical
  calc
    (∑ a : α, (eventHalfWeight event a) ^ 2) =
        ∑ a : α, (1 : ℝ) := by
      apply Finset.sum_congr rfl
      intro a ha
      exact eventHalfWeight_sq event a
    _ = (Fintype.card α : ℝ) := by simp

/-- Cauchy-Schwarz with a genuinely centered event, requiring the actual
complete mass-zero premise. No probability normalization is hidden. -/
theorem double_eventSignedSum_sq_le
    (delta : α → ℝ) (event : α → Bool)
    (hzero : (∑ a : α, delta a) = 0) :
    (2 * eventSignedSum delta event) ^ 2 ≤
      (Fintype.card α : ℝ) * ∑ a : α, (delta a) ^ 2 := by
  classical
  have hcs :=
    Finset.sum_mul_sq_le_sq_mul_sq
      (Finset.univ : Finset α) (eventHalfWeight event) delta
  rw [eventHalfWeight_pairing delta event hzero,
      eventHalfWeight_sq_sum event] at hcs
  exact hcs

/-- Finite signed-measure Cauchy-Schwarz transfer in REAL arithmetic.
The energy E is explicitly the mean squared mass times alphabet size.
No event-to-half-L1 theorem is needed. -/
theorem abs_eventSignedSum_div_card_le_sqrt_energy
    (delta : α → ℝ) (E : ℝ) (event : α → Bool)
    (hzero : (∑ a : α, delta a) = 0)
    (henergy : (∑ a : α, (delta a) ^ 2) =
      (Fintype.card α : ℝ) * E)
    (hE : 0 ≤ E) :
    |eventSignedSum delta event / (Fintype.card α : ℝ)| ≤
      Real.sqrt E / 2 := by
  classical
  have hcard : 0 < (Fintype.card α : ℝ) := by
    exact_mod_cast (Fintype.card_pos : 0 < Fintype.card α)
  have hcs := double_eventSignedSum_sq_le delta event hzero
  have hsq :
      (2 * |eventSignedSum delta event|) ^ 2 ≤
        ((Fintype.card α : ℝ) * Real.sqrt E) ^ 2 := by
    calc
      (2 * |eventSignedSum delta event|) ^ 2 =
          (2 * eventSignedSum delta event) ^ 2 := by
        simp [mul_pow, sq_abs]
      _ ≤ (Fintype.card α : ℝ) *
          (∑ a : α, (delta a) ^ 2) := hcs
      _ = ((Fintype.card α : ℝ) * Real.sqrt E) ^ 2 := by
        rw [henergy, mul_pow, Real.sq_sqrt hE]
        ring
  have hnonneg :
      0 ≤ (Fintype.card α : ℝ) * Real.sqrt E :=
    mul_nonneg hcard.le (Real.sqrt_nonneg E)
  have hhalf :
      2 * |eventSignedSum delta event| ≤
        (Fintype.card α : ℝ) * Real.sqrt E :=
    (sq_le_sq₀ (by positivity) hnonneg).mp hsq
  have hdivision :
      |eventSignedSum delta event| / (Fintype.card α : ℝ) ≤
        Real.sqrt E / 2 := by
    apply (div_le_iff₀ hcard).2
    nlinarith
  calc
    |eventSignedSum delta event / (Fintype.card α : ℝ)| =
        |eventSignedSum delta event| / (Fintype.card α : ℝ) := by
      rw [abs_div, abs_of_pos hcard]
    _ ≤ Real.sqrt E / 2 := hdivision

end FiniteSignedMeasures

section ActualBooleanPatterns

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- The actual scaled REAL empirical pattern defect; source coefficients
come exclusively from the inherited rational empiricalPattern function. -/
def sourceScaledDefectReal (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (a : ι → Bool) : ℝ :=
  (((2 : ℚ) ^ Fintype.card ι *
    empiricalPattern roots (Finset.univ : Finset ι) x a - 1 : ℚ) : ℝ)

/-- Total scaled pattern discrepancy has zero mass, derived from complete
Walsh orthogonality rather than an unsupported normalization axiom. -/
theorem scaledEmpiricalDefect_sum_zero
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) :
    (∑ a : ι → Bool,
      (2 : ℚ) ^ Fintype.card ι *
        empiricalPattern roots (Finset.univ : Finset ι) x a - 1) = 0 := by
  classical
  have hchar (S : Finset ι) :
      (∑ a : ι → Bool, walshCharacter S a) =
        if S = ∅ then (2 : ℚ) ^ Fintype.card ι else 0 := by
    simpa only [walshCharacter_empty, mul_one] using
      (walshCharacter_orthogonality S (∅ : Finset ι))
  have hpoly (c : Finset ι → ℚ) :
      (∑ a : ι → Bool, walshPolynomial c a) =
        (2 : ℚ) ^ Fintype.card ι * c ∅ := by
    classical
    calc
      (∑ a : ι → Bool, walshPolynomial c a) =
          ∑ S : Finset ι,
            c S * (∑ a : ι → Bool, walshCharacter S a) := by
        unfold walshPolynomial
        rw [Finset.sum_comm]
        apply Finset.sum_congr rfl
        intro S hS
        rw [Finset.mul_sum]
      _ = (2 : ℚ) ^ Fintype.card ι * c ∅ := by
        simp [hchar, Finset.sum_ite_eq', mul_comm, mul_ite]
  have hcenter :
      (∑ a : ι → Bool, centeredWalshPolynomial roots hroots x a) = 0 := by
    unfold centeredWalshPolynomial
    rw [hpoly]
    simp
  simpa only [centeredWalshPolynomial_eq_empirical_defect] using hcenter

/-- Cast the exactly zero rational scaled defect to the same REAL law
used by the finite total-variation theorem. -/
theorem sourceScaledDefectReal_sum_zero
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) :
    (∑ a : ι → Bool, sourceScaledDefectReal roots hroots x a) = 0 := by
  unfold sourceScaledDefectReal
  exact_mod_cast (scaledEmpiricalDefect_sum_zero roots hroots x)

/-- Real-cast version of the inherited exact finite Parseval identity.
The count of patterns is exactly 2^card ι. -/
theorem sourceScaledDefectReal_sq_energy
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) :
    (∑ a : ι → Bool, (sourceScaledDefectReal roots hroots x a) ^ 2) =
      (Fintype.card (ι → Bool) : ℝ) *
        ((nonemptyMomentEnergy roots hroots x : ℚ) : ℝ) := by
  classical
  unfold sourceScaledDefectReal
  simp only [Fintype.card_fun, Fintype.card_bool, Nat.cast_pow]
  exact_mod_cast (empiricalPattern_scaled_defect_energy roots hroots x)

/-- The full nonempty moment energy is nonnegative, without any
arithmetic cancellation or probabilistic assumption. -/
theorem sourceMomentEnergy_nonneg
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) :
    0 ≤ ((nonemptyMomentEnergy roots hroots x : ℚ) : ℝ) := by
  have hq : (0 : ℚ) ≤ nonemptyMomentEnergy roots hroots x := by
    unfold nonemptyMomentEnergy
    apply Finset.sum_nonneg
    intro S hS
    split_ifs <;> positivity
  exact_mod_cast hq

/-- The empirical-vs-uniform event discrepancy of the ACTUAL pattern
frequency law. The uniform probability of each pattern is 2^(-card ι).
No abstract free Fourier polynomial is advertised as a probability. -/
def uniformPatternEventDeviation
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (event : (ι → Bool) → Bool) : ℝ :=
  ∑ a : ι → Bool,
    if event a then
      ((empiricalPattern roots (Finset.univ : Finset ι) x a : ℚ) : ℝ) -
        1 / (2 : ℝ) ^ Fintype.card ι
    else 0

/-- The real empirical event discrepancy is precisely the normalized
scaled Walsh defect, with the same complete source/pattern identities. -/
theorem uniformPatternEventDeviation_eq_scaled
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (event : (ι → Bool) → Bool) :
    uniformPatternEventDeviation roots hroots x event =
      eventSignedSum (sourceScaledDefectReal roots hroots x) event /
        (2 : ℝ) ^ Fintype.card ι := by
  classical
  have hpos : 0 < (2 : ℝ) ^ Fintype.card ι := by positivity
  have hterm (a : ι → Bool) :
      ((empiricalPattern roots (Finset.univ : Finset ι) x a : ℚ) : ℝ) -
        1 / (2 : ℝ) ^ Fintype.card ι =
      sourceScaledDefectReal roots hroots x a /
        (2 : ℝ) ^ Fintype.card ι := by
    unfold sourceScaledDefectReal
    push_cast
    field_simp [ne_of_gt hpos]
    ring
  unfold uniformPatternEventDeviation eventSignedSum
  calc
    (∑ a : ι → Bool,
      if event a then
        ((empiricalPattern roots (Finset.univ : Finset ι) x a : ℚ) : ℝ) -
          1 / (2 : ℝ) ^ Fintype.card ι
      else 0) =
        ∑ a : ι → Bool,
          (if event a then sourceScaledDefectReal roots hroots x a else 0) /
            (2 : ℝ) ^ Fintype.card ι := by
      apply Finset.sum_congr rfl
      intro a ha
      cases he : event a <;> simp [he, hterm a]
    _ = (∑ a : ι → Bool,
          if event a then sourceScaledDefectReal roots hroots x a else 0) /
            (2 : ℝ) ^ Fintype.card ι := by
      rw [Finset.sum_div]

/-- Total variation to the fair Boolean product law: the maximum over
ALL Boolean events of the actual empirical-vs-uniform mass defect. -/
def empiricalVsUniformTV
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) : ℝ := by
  classical
  exact (Finset.univ : Finset ((ι → Bool) → Bool)).sup'
    (by exact ⟨(fun _ => false), Finset.mem_univ _⟩)
    (fun event => |uniformPatternEventDeviation roots hroots x event|)

/-- The finite full-event Bernoulli total-variation theorem.
All nonempty source correlations appear in the energy; their size
has not been estimated by any arithmetic theorem. -/
theorem empiricalVsUniformTV_le_sqrt_momentEnergy
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) :
    empiricalVsUniformTV roots hroots x ≤
      Real.sqrt (((nonemptyMomentEnergy roots hroots x : ℚ) : ℝ)) / 2 := by
  classical
  haveI : Nonempty (ι → Bool) := ⟨fun _ => false⟩
  unfold empiricalVsUniformTV
  apply Finset.sup'_le
  intro event hevent
  rw [uniformPatternEventDeviation_eq_scaled]
  have hcard :
      (2 : ℝ) ^ Fintype.card ι =
        (Fintype.card (ι → Bool) : ℝ) := by
    simp [Fintype.card_fun]
  rw [hcard]
  exact abs_eventSignedSum_div_card_le_sqrt_energy
    (sourceScaledDefectReal roots hroots x)
    (((nonemptyMomentEnergy roots hroots x : ℚ) : ℝ))
    event
    (sourceScaledDefectReal_sum_zero roots hroots x)
    (sourceScaledDefectReal_sq_energy roots hroots x)
    (sourceMomentEnergy_nonneg roots hroots x)

end ActualBooleanPatterns

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.BernoulliTV
