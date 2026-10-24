/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAdaptiveFloor
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Envelope collapse for pinned prime-weight ratio certificates

The guard-free ratio condition from the preceding packets is an exact
stagewise reformulation of the pinned amplitude inequality.  Once the existing
current-octave coefficient-mass ceiling is inserted, every such ratio
certificate already forces a descended quadratic bound for the positive part
of the next-octave target.

If the current envelope is

  B = M X^(rho+delta),

then the forced target scale is

  X^(Q(rho)+2 delta),

where Q(rho)=2rho-1.  This identifies the strength of the remaining ratio
premise.  It does not construct that premise, reverse the implication from an
upper envelope, or supply a cross-scale arithmetic identity.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ENVELOPE_QUADRATIC_MAJORANT_DEFINED /
RATIO_TO_DESCENDED_TARGET_DEFINED /
POWER_NORMALIZATION_DEFINED /
UNIFORM_RATIO_BOUND_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- The largest positive remaining target compatible with coefficient budget
`C` and the existing current-octave feature-mass ceiling at envelope `B`. -/
def pinnedPrimeWeightEnvelopeQuadraticMajorant
    (X : ℕ) (C B : ℝ) : ℝ :=
  C * primeCoefficientL1Budget^2 * B^2 / (X : ℝ)

theorem pinnedPrimeWeightEnvelopeQuadraticMajorant_nonnegative
    (X : ℕ) {C B : ℝ} (hC : 0 ≤ C) :
    0 ≤ pinnedPrimeWeightEnvelopeQuadraticMajorant X C B := by
  unfold pinnedPrimeWeightEnvelopeQuadraticMajorant
  exact div_nonneg
    (mul_nonneg
      (mul_nonneg hC (sq_nonneg primeCoefficientL1Budget))
      (sq_nonneg B))
    (Nat.cast_nonneg X)

/-- A guard-free ratio certificate and a current-octave upper envelope force
an explicit quadratic bound on the positive part of the next target. -/
theorem pinnedPrimeWeightBertrandRatio_to_remainingTarget_le_envelopeQuadraticMajorant
    {X : ℕ} (hX : 0 < X)
    {C B v E : ℝ}
    (hC : 0 ≤ C)
    (hB : 0 ≤ B)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B)
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement X C v E) :
    pinnedPrimeWeightRemainingTarget v E ≤
      pinnedPrimeWeightEnvelopeQuadraticMajorant X C B := by
  have hamplitude :
      pinnedPrimeWeightAmplitudeRequirement X C v E :=
    (pinnedPrimeWeightAmplitudeRequirement_iff_bertrandRatioRequirement
      hX hC).2 hratio
  have hremaining :
      (X : ℝ) * pinnedPrimeWeightRemainingTarget v E ≤
        C * (pinnedPrimeWeightedAmplitude X)^2 :=
    (pinnedPrimeWeightAmplitudeRequirement_iff_remainingTarget
      X hC).1 hamplitude
  have hamplitudeSq :
      (pinnedPrimeWeightedAmplitude X)^2 ≤
        (primeCoefficientL1Budget * B)^2 :=
    pinnedPrimeWeightedAmplitude_sq_le_of_octaveEnvelope
      hX hB henvelope
  have hscaled :
      C * (pinnedPrimeWeightedAmplitude X)^2 ≤
        C * (primeCoefficientL1Budget * B)^2 :=
    mul_le_mul_of_nonneg_left hamplitudeSq hC
  have htotal :
      (X : ℝ) * pinnedPrimeWeightRemainingTarget v E ≤
        C * (primeCoefficientL1Budget * B)^2 :=
    hremaining.trans hscaled
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  unfold pinnedPrimeWeightEnvelopeQuadraticMajorant
  apply (le_div_iff₀ hXr).2
  calc
    pinnedPrimeWeightRemainingTarget v E * (X : ℝ) =
        (X : ℝ) * pinnedPrimeWeightRemainingTarget v E := by ring
    _ ≤ C * (primeCoefficientL1Budget * B)^2 := htotal
    _ = C * primeCoefficientL1Budget^2 * B^2 := by ring

/-- The same consequence in untruncated target form. -/
theorem pinnedPrimeWeightBertrandRatio_to_target_le_error_add_envelopeQuadraticMajorant
    {X : ℕ} (hX : 0 < X)
    {C B v E : ℝ}
    (hC : 0 ≤ C)
    (hB : 0 ≤ B)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B)
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement X C v E) :
    |thetaError v| + 1 ≤
      E + pinnedPrimeWeightEnvelopeQuadraticMajorant X C B := by
  have hgap :
      (|thetaError v| + 1) - E ≤
        pinnedPrimeWeightRemainingTarget v E := by
    unfold pinnedPrimeWeightRemainingTarget
    exact le_max_right _ _
  have hremaining :=
    pinnedPrimeWeightBertrandRatio_to_remainingTarget_le_envelopeQuadraticMajorant
      hX hC hB henvelope hratio
  linarith

/-- Exact power normalization of the envelope majorant. -/
theorem pinnedPrimeWeightEnvelopeQuadraticMajorant_eq_power
    {X : ℕ} (hX : 0 < X)
    (C M ρ δ : ℝ) :
    pinnedPrimeWeightEnvelopeQuadraticMajorant X C
        (M * Real.rpow (X : ℝ) (ρ + δ)) =
      C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (X : ℝ)
          (quadraticThreshold ρ + 2 * δ) := by
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  unfold pinnedPrimeWeightEnvelopeQuadraticMajorant
  calc
    C * primeCoefficientL1Budget^2 *
          (M * Real.rpow (X : ℝ) (ρ + δ))^2 /
          (X : ℝ) =
        C * primeCoefficientL1Budget^2 * M^2 *
          ((Real.rpow (X : ℝ) (ρ + δ))^2 /
            (X : ℝ)) := by ring
    _ = C * primeCoefficientL1Budget^2 * M^2 *
          Real.rpow (X : ℝ)
            (quadraticThreshold ρ + 2 * δ) := by
      rw [quadratic_power_identity hXr]

/-- A ratio certificate under a power-law current envelope already contains
the corresponding descended power-law bound for the positive remaining target. -/
theorem pinnedPrimeWeightBertrandRatio_powerEnvelope_to_remainingTarget
    {X : ℕ} (hX : 0 < X)
    {C M ρ δ v E : ℝ}
    (hC : 0 ≤ C)
    (hM : 0 ≤ M)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤
          M * Real.rpow (X : ℝ) (ρ + δ))
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement X C v E) :
    pinnedPrimeWeightRemainingTarget v E ≤
      C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (X : ℝ)
          (quadraticThreshold ρ + 2 * δ) := by
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hB :
      0 ≤ M * Real.rpow (X : ℝ) (ρ + δ) :=
    mul_nonneg hM (Real.rpow_nonneg hXr.le _)
  have h :=
    pinnedPrimeWeightBertrandRatio_to_remainingTarget_le_envelopeQuadraticMajorant
      hX hC hB henvelope hratio
  rw [pinnedPrimeWeightEnvelopeQuadraticMajorant_eq_power
    hX C M ρ δ] at h
  exact h

/-- Untruncated target form of the power-envelope collapse. -/
theorem pinnedPrimeWeightBertrandRatio_powerEnvelope_to_target
    {X : ℕ} (hX : 0 < X)
    {C M ρ δ v E : ℝ}
    (hC : 0 ≤ C)
    (hM : 0 ≤ M)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤
          M * Real.rpow (X : ℝ) (ρ + δ))
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement X C v E) :
    |thetaError v| + 1 ≤
      E + C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (X : ℝ)
          (quadraticThreshold ρ + 2 * δ) := by
  have hgap :
      (|thetaError v| + 1) - E ≤
        pinnedPrimeWeightRemainingTarget v E := by
    unfold pinnedPrimeWeightRemainingTarget
    exact le_max_right _ _
  have hremaining :=
    pinnedPrimeWeightBertrandRatio_powerEnvelope_to_remainingTarget
      hX hC hM henvelope hratio
  linarith

/-- At the first live threshold, the forced exponent is `3/4 + 2δ`. -/
theorem pinnedPrimeWeightBertrandRatio_sevenEighthsEnvelope_to_threeQuartersTarget
    {X : ℕ} (hX : 0 < X)
    {C M δ v E : ℝ}
    (hC : 0 ≤ C)
    (hM : 0 ≤ M)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤
          M * Real.rpow (X : ℝ) (((7 : ℝ) / 8) + δ))
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement X C v E) :
    pinnedPrimeWeightRemainingTarget v E ≤
      C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (X : ℝ) (((3 : ℝ) / 4) + 2 * δ) := by
  simpa using
    (pinnedPrimeWeightBertrandRatio_powerEnvelope_to_remainingTarget
      (X := X) hX
      (C := C) (M := M) (ρ := (7 : ℝ) / 8)
      (δ := δ) (v := v) (E := E)
      hC hM henvelope hratio)

/-- At the second live threshold, the forced exponent is `1/2 + 2δ`. -/
theorem pinnedPrimeWeightBertrandRatio_threeQuartersEnvelope_to_halfTarget
    {X : ℕ} (hX : 0 < X)
    {C M δ v E : ℝ}
    (hC : 0 ≤ C)
    (hM : 0 ≤ M)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤
          M * Real.rpow (X : ℝ) (((3 : ℝ) / 4) + δ))
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement X C v E) :
    pinnedPrimeWeightRemainingTarget v E ≤
      C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (X : ℝ) (((1 : ℝ) / 2) + 2 * δ) := by
  simpa using
    (pinnedPrimeWeightBertrandRatio_powerEnvelope_to_remainingTarget
      (X := X) hX
      (C := C) (M := M) (ρ := (3 : ℝ) / 4)
      (δ := δ) (v := v) (E := E)
      hC hM henvelope hratio)

end GRWTSK.RiemannHypothesis
