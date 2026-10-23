/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBertrandPositivity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Quantitative sandwich for the pinned prime-weight capacity ratio

Bertrand's postulate already proves that the pinned weighted amplitude is
nonzero.  This module extracts the explicit floor supplied by one Bertrand
prime,

  log 2 / (2X),

and combines it with the existing current-octave feature-mass ceiling

  pinnedAmplitude(X) <= (2 log 4) B

under a theta-error envelope `B` on `[X,2X]`.

The exact required coefficient ratio is consequently trapped between an
envelope-derived lower bound and a Bertrand-derived upper bound.  The latter
has cubic scale loss.  This quantifies why prime-window occupancy removes the
zero denominator but does not provide either live uniform ratio theorem.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
BERTRAND_AMPLITUDE_FLOOR_DEFINED /
CURRENT_ENVELOPE_CEILING_DEFINED /
EXACT_RATIO_SANDWICH_DEFINED /
CUBIC_LOSS_NORMALIZATION_DEFINED /
UNIFORM_RATIO_BOUND_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Explicit amplitude floor supplied by one prime in `(X,2X]`. -/
def pinnedPrimeWeightBertrandFloor (X : ℕ) : ℝ :=
  Real.log 2 / (2 * (X : ℝ))

/-- The Bertrand floor is strictly positive at every positive scale. -/
theorem pinnedPrimeWeightBertrandFloor_pos
    {X : ℕ} (hX : 0 < X) :
    0 < pinnedPrimeWeightBertrandFloor X := by
  unfold pinnedPrimeWeightBertrandFloor
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  exact div_pos (Real.log_pos (by norm_num))
    (mul_pos (by norm_num) hXr)

/-- One actual Bertrand prime has pinned coefficient at least
`log 2 / (2X)`. -/
theorem exists_bertrandPrime_coefficient_ge_floor
    {X : ℕ} (hX : 0 < X) :
    ∃ p ∈ thetaPrimeWindow X,
      pinnedPrimeWeightBertrandFloor X ≤ coefficient p := by
  obtain ⟨p, hpPrime, hXp, hp2X⟩ :=
    Nat.exists_prime_lt_and_le_two_mul X (Nat.ne_of_gt hX)
  have hpWindow : p ∈ thetaPrimeWindow X :=
    prime_mem_thetaPrimeWindow hpPrime hXp hp2X
  refine ⟨p, hpWindow, ?_⟩
  rw [primeCoefficient_eq_log_div hpWindow]
  have hpPos : (0 : ℝ) < (p : ℝ) := by
    exact_mod_cast hpPrime.pos
  have hpTwo : (2 : ℝ) ≤ (p : ℝ) := by
    exact_mod_cast hpPrime.two_le
  have hp2Xr : (p : ℝ) ≤ 2 * (X : ℝ) := by
    exact_mod_cast hp2X
  have hlogTwoNonnegative : 0 ≤ Real.log (2 : ℝ) :=
    Real.log_nonneg (by norm_num)
  have hlogMonotone :
      Real.log (2 : ℝ) ≤ Real.log (p : ℝ) :=
    Real.log_le_log (by norm_num) hpTwo
  unfold pinnedPrimeWeightBertrandFloor
  calc
    Real.log 2 / (2 * (X : ℝ))
        ≤ Real.log 2 / (p : ℝ) :=
      div_le_div_of_nonneg_left
        hlogTwoNonnegative hpPos hp2Xr
    _ ≤ Real.log (p : ℝ) / (p : ℝ) :=
      div_le_div_of_nonneg_right hlogMonotone hpPos.le

/-- The complete actual pinned amplitude dominates the explicit Bertrand
floor. -/
theorem pinnedPrimeWeightedAmplitude_ge_bertrandFloor
    {X : ℕ} (hX : 0 < X) :
    pinnedPrimeWeightBertrandFloor X ≤
      pinnedPrimeWeightedAmplitude X := by
  obtain ⟨p, hpWindow, hpCoefficient⟩ :=
    exists_bertrandPrime_coefficient_ge_floor hX
  have hfactor :
      (1 : ℝ) ≤ |thetaError (p : ℝ)| + 1 := by
    linarith [abs_nonneg (thetaError (p : ℝ))]
  have hcoefficientTerm :
      coefficient p ≤
        coefficient p * (|thetaError (p : ℝ)| + 1) := by
    simpa using
      mul_le_mul_of_nonneg_left hfactor
        (primeCoefficient_nonnegative hpWindow)
  have htermSum :
      coefficient p * (|thetaError (p : ℝ)| + 1) ≤
        pinnedPrimeWeightedAmplitude X := by
    unfold pinnedPrimeWeightedAmplitude
    exact
      Finset.single_le_sum
        (fun q hq => pinnedPrimeWeightSummand_nonnegative hq)
        hpWindow
  exact hpCoefficient.trans (hcoefficientTerm.trans htermSum)

/-- Squared form of the explicit denominator floor. -/
theorem pinnedPrimeWeightBertrandFloor_sq_le_amplitude_sq
    {X : ℕ} (hX : 0 < X) :
    (pinnedPrimeWeightBertrandFloor X)^2 ≤
      (pinnedPrimeWeightedAmplitude X)^2 := by
  exact
    (sq_le_sq₀
      (le_of_lt (pinnedPrimeWeightBertrandFloor_pos hX))
      (le_of_lt
        (pinnedPrimeWeightedAmplitude_pos_of_ne_zero
          X (Nat.ne_of_gt hX)))).2
      (pinnedPrimeWeightedAmplitude_ge_bertrandFloor hX)

/-- The pinned one-dimensional coefficient budget is strictly positive. -/
theorem primeCoefficientL1Budget_pos :
    0 < primeCoefficientL1Budget := by
  unfold primeCoefficientL1Budget
  exact mul_pos (by norm_num) (Real.log_pos (by norm_num))

/-- A current-octave theta envelope gives the concrete amplitude ceiling
`(2 log 4) B`. -/
theorem pinnedPrimeWeightedAmplitude_le_of_octaveEnvelope
    {X : ℕ} (hX : 0 < X)
    {B : ℝ} (hB : 0 ≤ B)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B) :
    pinnedPrimeWeightedAmplitude X ≤
      primeCoefficientL1Budget * B := by
  have hmass :
      (∑ p ∈ thetaPrimeWindow X, coefficient p) =
        primeCoefficientL1 X := by
    unfold primeCoefficientL1
    apply Finset.sum_congr rfl
    intro p hp
    rw [abs_of_nonneg (primeCoefficient_nonnegative hp)]
  unfold pinnedPrimeWeightedAmplitude
  calc
    (∑ p ∈ thetaPrimeWindow X,
        coefficient p * (|thetaError (p : ℝ)| + 1))
        ≤ ∑ p ∈ thetaPrimeWindow X,
            coefficient p * B := by
          apply Finset.sum_le_sum
          intro p hp
          exact
            mul_le_mul_of_nonneg_left
              (henvelope (p : ℝ)
                (thetaPrimeWindow_mem_octave hp))
              (primeCoefficient_nonnegative hp)
    _ = (∑ p ∈ thetaPrimeWindow X, coefficient p) * B := by
          rw [Finset.sum_mul]
    _ = primeCoefficientL1 X * B := by rw [hmass]
    _ ≤ primeCoefficientL1Budget * B := by
          apply mul_le_mul_of_nonneg_right
          · simpa [primeCoefficientL1Budget] using
              (primeCoefficientL1_le_two_log_four hX)
          · exact hB

/-- Squared current-envelope ceiling. -/
theorem pinnedPrimeWeightedAmplitude_sq_le_of_octaveEnvelope
    {X : ℕ} (hX : 0 < X)
    {B : ℝ} (hB : 0 ≤ B)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B) :
    (pinnedPrimeWeightedAmplitude X)^2 ≤
      (primeCoefficientL1Budget * B)^2 := by
  exact
    (sq_le_sq₀
      (le_of_lt
        (pinnedPrimeWeightedAmplitude_pos_of_ne_zero
          X (Nat.ne_of_gt hX)))
      (mul_nonneg primeCoefficientL1Budget_nonnegative hB)).2
      (pinnedPrimeWeightedAmplitude_le_of_octaveEnvelope
        hX hB henvelope)

/-- Bertrand-floor upper benchmark for the exact required-capacity ratio. -/
def pinnedPrimeWeightBertrandMajorant
    (X : ℕ) (v E : ℝ) : ℝ :=
  (X : ℝ) * pinnedPrimeWeightRemainingTarget v E /
    (pinnedPrimeWeightBertrandFloor X)^2

/-- Current-envelope lower benchmark for the exact required-capacity ratio. -/
def pinnedPrimeWeightEnvelopeMinorant
    (X : ℕ) (B v E : ℝ) : ℝ :=
  (X : ℝ) * pinnedPrimeWeightRemainingTarget v E /
    (primeCoefficientL1Budget * B)^2

/-- The explicit Bertrand floor gives a source-level upper bound on the exact
required capacity. -/
theorem pinnedPrimeWeightRequiredCapacity_le_bertrandMajorant
    {X : ℕ} (hX : 0 < X) (v E : ℝ) :
    pinnedPrimeWeightRequiredCapacity X v E ≤
      pinnedPrimeWeightBertrandMajorant X v E := by
  unfold pinnedPrimeWeightRequiredCapacity
    pinnedPrimeWeightBertrandMajorant
  have hnum :
      0 ≤ (X : ℝ) * pinnedPrimeWeightRemainingTarget v E :=
    mul_nonneg (Nat.cast_nonneg X)
      (pinnedPrimeWeightRemainingTarget_nonnegative v E)
  have hfloorSq :
      0 < (pinnedPrimeWeightBertrandFloor X)^2 := by
    positivity [pinnedPrimeWeightBertrandFloor_pos hX]
  exact
    div_le_div_of_nonneg_left hnum hfloorSq
      (pinnedPrimeWeightBertrandFloor_sq_le_amplitude_sq hX)

/-- Under a current-octave envelope, the exact required capacity is at least
the coefficient-mass benchmark. -/
theorem pinnedPrimeWeightEnvelopeMinorant_le_requiredCapacity
    {X : ℕ} (hX : 0 < X)
    {B : ℝ} (hB : 0 < B)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B)
    (v E : ℝ) :
    pinnedPrimeWeightEnvelopeMinorant X B v E ≤
      pinnedPrimeWeightRequiredCapacity X v E := by
  unfold pinnedPrimeWeightEnvelopeMinorant
    pinnedPrimeWeightRequiredCapacity
  have hnum :
      0 ≤ (X : ℝ) * pinnedPrimeWeightRemainingTarget v E :=
    mul_nonneg (Nat.cast_nonneg X)
      (pinnedPrimeWeightRemainingTarget_nonnegative v E)
  have hampSq :
      0 < (pinnedPrimeWeightedAmplitude X)^2 := by
    positivity [pinnedPrimeWeightedAmplitude_pos_of_ne_zero
      X (Nat.ne_of_gt hX)]
  exact
    div_le_div_of_nonneg_left hnum hampSq
      (pinnedPrimeWeightedAmplitude_sq_le_of_octaveEnvelope
        hX hB.le henvelope)

/-- Exact two-sided quantitative sandwich for the required-capacity ratio. -/
theorem pinnedPrimeWeight_requiredCapacity_sandwich
    {X : ℕ} (hX : 0 < X)
    {B : ℝ} (hB : 0 < B)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B)
    (v E : ℝ) :
    pinnedPrimeWeightEnvelopeMinorant X B v E ≤
        pinnedPrimeWeightRequiredCapacity X v E ∧
      pinnedPrimeWeightRequiredCapacity X v E ≤
        pinnedPrimeWeightBertrandMajorant X v E := by
  exact
    ⟨pinnedPrimeWeightEnvelopeMinorant_le_requiredCapacity
        hX hB henvelope v E,
      pinnedPrimeWeightRequiredCapacity_le_bertrandMajorant
        hX v E⟩

/-- The Bertrand benchmark has exact cubic scale loss. -/
theorem pinnedPrimeWeightBertrandMajorant_eq_cubic
    {X : ℕ} (hX : 0 < X) (v E : ℝ) :
    pinnedPrimeWeightBertrandMajorant X v E =
      4 * (X : ℝ)^3 * pinnedPrimeWeightRemainingTarget v E /
        (Real.log 2)^2 := by
  have hXr : (X : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hX)
  have hlog : Real.log (2 : ℝ) ≠ 0 :=
    ne_of_gt (Real.log_pos (by norm_num))
  unfold pinnedPrimeWeightBertrandMajorant
    pinnedPrimeWeightBertrandFloor
  field_simp [hXr, hlog]
  ring

end GRWTSK.RiemannHypothesis
