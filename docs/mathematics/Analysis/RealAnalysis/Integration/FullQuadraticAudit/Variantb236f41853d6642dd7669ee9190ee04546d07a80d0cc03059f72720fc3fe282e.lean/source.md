# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FullQuadraticAudit.Variantb236f41853d6642dd7669ee9190ee04546d07a80d0cc03059f72720fc3fe282e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2aae92ef9b68d91bf7b824dad69430b1bd56765c` · SHA-256 `b236f41853d6642dd7669ee9190ee04546d07a80d0cc03059f72720fc3fe282e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.PoleCorrelationRegularity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate

/-!
# Uniform Gamma energy in the unchanged full source quadratic form

The native Issue #16 value is the Gamma Fourier energy minus twice the complete
strict prime-power correlation sum. Its exact full spectral representation is
already proved in `PrimePowerPhaseDefect`; no term is redefined here.

The positive-radius scaling and the already proved finite bump moments give a
uniform second frequency moment for the actual source density. The actual
digamma estimate then bounds the Gamma contribution above at every `A ≥ 1`.
Together with the existing lower bound, this shows that the Gamma contribution
is uniformly bounded on the actual family. It does not prove the arithmetic
quadratic lower bound, any transformed arithmetic tail, or RH. No zero
simplicity, positivity of the full form, or new analytic premise is assumed.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.FullQuadraticAudit

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationSpectralLens
open JointPhaseScaling PoleCorrelationRegularity

noncomputable section

/-- The fixed positive constant term of the canonical normalization polynomial. -/
def normalizationFloor : ℝ := (65536 / 109395 : ℝ) / 16

/-- A fixed integrable majorant of the actual source's second frequency moment. -/
def secondMomentMajorant (u : ℝ) : ℝ :=
  (bumpMomentDensity 1 u / 16 + bumpMomentDensity 2 u / 2 +
    bumpMomentDensity 3 u) / normalizationFloor

/-- The finite radius-independent bound obtained from the fixed bump moments. -/
def secondMomentBound : ℝ := ∫ u, secondMomentMajorant u

theorem normalization_floor_pos : 0 < normalizationFloor := by
  norm_num [normalizationFloor]

theorem normalization_floor_le (A : ℝ) : normalizationFloor ≤ sourceNormalization A := by
  unfold normalizationFloor sourceNormalization
  have h2 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
  have h4 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
  linarith

theorem second_moment_majorant_nonneg (u : ℝ) : 0 ≤ secondMomentMajorant u := by
  unfold secondMomentMajorant
  positivity [bump_moment_density_nonneg 1 u, bump_moment_density_nonneg 2 u,
    bump_moment_density_nonneg 3 u, normalization_floor_pos]

theorem second_moment_majorant_integrable : Integrable secondMomentMajorant :=
  ((((bump_moment_density_integrable_through_four 1 (by omega)).div_const 16).add
    ((bump_moment_density_integrable_through_four 2 (by omega)).div_const 2)).add
      (bump_moment_density_integrable_through_four 3 (by omega))).div_const _

theorem second_moment_bound_nonneg : 0 ≤ secondMomentBound :=
  integral_nonneg second_moment_majorant_nonneg

/-- The source's second physical moment after the exact substitution `u = A ξ`. -/
theorem rescaled_second_moment_eq (A u : ℝ) (hA : 1 ≤ A) :
    (u / A) ^ 2 * rescaledDensity A u =
      (bumpMomentDensity 1 u / (16 * A ^ 2) +
        bumpMomentDensity 2 u / (2 * A ^ 4) + bumpMomentDensity 3 u / A ^ 6) /
          sourceNormalization A := by
  have hne : A ≠ 0 := by linarith
  rw [rescaled_density_eq_three_moments A u hA]
  unfold bumpMomentDensity
  field_simp
  ring

theorem rescaled_second_moment_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun u ↦ (u / A) ^ 2 * rescaledDensity A u) := by
  have hi := ((((bump_moment_density_integrable_through_four 1 (by omega)).div_const
    (16 * A ^ 2)).add
      ((bump_moment_density_integrable_through_four 2 (by omega)).div_const (2 * A ^ 4))).add
        ((bump_moment_density_integrable_through_four 3 (by omega)).div_const (A ^ 6))).div_const
          (sourceNormalization A)
  convert hi using 1
  funext u
  exact rescaled_second_moment_eq A u hA

theorem rescaled_second_moment_le (A u : ℝ) (hA : 1 ≤ A) :
    (u / A) ^ 2 * rescaledDensity A u ≤ secondMomentMajorant u := by
  have hZ := source_normalization_pos A hA
  have h2 : 1 ≤ A ^ 2 := one_le_pow₀ hA
  have h4 : 1 ≤ A ^ 4 := one_le_pow₀ hA
  have h6 : 1 ≤ A ^ 6 := one_le_pow₀ hA
  have hb1 := bump_moment_density_nonneg 1 u
  have hb2 := bump_moment_density_nonneg 2 u
  have hb3 := bump_moment_density_nonneg 3 u
  have hnum :
      bumpMomentDensity 1 u / (16 * A ^ 2) +
        bumpMomentDensity 2 u / (2 * A ^ 4) + bumpMomentDensity 3 u / A ^ 6 ≤
      bumpMomentDensity 1 u / 16 + bumpMomentDensity 2 u / 2 + bumpMomentDensity 3 u := by
    gcongr
    · nlinarith
    · nlinarith
    · simpa using (div_le_self hb3 h6)
  rw [rescaled_second_moment_eq A u hA]
  unfold secondMomentMajorant
  apply le_trans (div_le_div_of_nonneg_right hnum hZ.le)
  exact div_le_div_of_nonneg_left (by positivity) normalization_floor_pos
    (normalization_floor_le A)

theorem spectral_density_second_moment_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ ξ ^ 2 * spectralDensity A ξ) := by
  have hne : A ≠ 0 := by linarith
  have hi := ((rescaled_second_moment_integrable A hA).comp_mul_left' hne).const_mul A
  convert hi using 1
  funext ξ
  unfold rescaledDensity
  simp only [show A * ξ / A = ξ by field_simp]
  field_simp

theorem spectral_density_second_moment_eq_rescaled (A : ℝ) (hA : 1 ≤ A) :
    (∫ ξ, ξ ^ 2 * spectralDensity A ξ) =
      ∫ u, (u / A) ^ 2 * rescaledDensity A u := by
  have hpos : 0 < A := by linarith
  unfold rescaledDensity
  simp_rw [← mul_div_assoc]
  rw [integral_div,
    Measure.integral_comp_div (fun ξ : ℝ ↦ ξ ^ 2 * spectralDensity A ξ) A,
    abs_of_pos hpos, smul_eq_mul]
  field_simp

/-- The actual normalized source has one constant second-moment bound for all radii. -/
theorem actual_second_moment_le (A : ℝ) (hA : 1 ≤ A) :
    (∫ ξ, ξ ^ 2 * spectralDensity A ξ) ≤ secondMomentBound := by
  rw [spectral_density_second_moment_eq_rescaled A hA]
  exact integral_mono (rescaled_second_moment_integrable A hA)
    second_moment_majorant_integrable (fun u ↦ rescaled_second_moment_le A u hA)

/-- A quadratic upper majorant of the actual quarter-line digamma multiplier. -/
theorem archimedean_multiplier_upper (ξ : ℝ) :
    archimedeanMultiplier ξ ≤ archimedeanMultiplier 0 + 4 + 2 * ξ ^ 2 := by
  have hm := (AdmissionSource.multiplier_estimate ξ).2
  have hl := Real.log_le_sub_one_of_pos (by positivity : 0 < 1 + 4 * ξ ^ 2)
  have hzero : archimedeanMultiplier 0 = -BridgeAdmissibility.archimedeanConstant := by
    simp [archimedeanMultiplier, BridgeAdmissibility.archimedeanConstant]
  rw [hzero]
  linarith

theorem archimedean_value_eq_density_integral (A : ℝ) :
    archimedeanValue explicitSecondDerivative A =
      ∫ ξ, archimedeanMultiplier ξ * spectralDensity A ξ := by
  unfold archimedeanValue
  rw [← integral_div]
  apply integral_congr_ae
  filter_upwards [] with ξ
  simp only [archimedeanIntegrand, spectralDensity]
  ring

/-- The actual Gamma contribution is uniformly bounded above, without an arithmetic premise. -/
theorem actual_archimedean_upper (A : ℝ) (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤
      archimedeanMultiplier 0 + 4 + 2 * secondMomentBound := by
  have hi := ((spectralDensity_integrable A hA).const_mul
    (archimedeanMultiplier 0 + 4)).add
      ((spectral_density_second_moment_integrable A hA).const_mul 2)
  have h := integral_mono (PrimePowerPhaseDefect.actual_archimedeanDensity_integrable A hA) hi
    (fun ξ ↦ show archimedeanMultiplier ξ * spectralDensity A ξ ≤
      (archimedeanMultiplier 0 + 4) * spectralDensity A ξ +
        2 * (ξ ^ 2 * spectralDensity A ξ) by
      nlinarith [mul_le_mul_of_nonneg_right (archimedean_multiplier_upper ξ)
        (spectralDensity_nonneg A ξ)])
  simp only [Pi.add_apply] at h
  rw [integral_add ((spectralDensity_integrable A hA).const_mul _)
    ((spectral_density_second_moment_integrable A hA).const_mul 2), integral_const_mul,
    integral_const_mul, spectralDensity_integral A hA, mul_one] at h
  rw [archimedean_value_eq_density_integral]
  linarith [actual_second_moment_le A hA]

/-- Both bounds concern the Gamma contribution, not the full signed quadratic form. -/
theorem actual_archimedean_bounds (A : ℝ) (hA : 1 ≤ A) :
    archimedeanMultiplier 0 ≤ archimedeanValue explicitSecondDerivative A ∧
      archimedeanValue explicitSecondDerivative A ≤
        archimedeanMultiplier 0 + 4 + 2 * secondMomentBound :=
  ⟨SourceCorrectionEstimate.actual_archimedean_lower A hA, actual_archimedean_upper A hA⟩

/-- One nonnegative constant controls the absolute Gamma value at every admitted radius. -/
theorem actual_archimedean_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |archimedeanValue explicitSecondDerivative A| ≤
      |archimedeanMultiplier 0| + 4 + 2 * secondMomentBound := by
  obtain ⟨hlo, hhi⟩ := actual_archimedean_bounds A hA
  have hnonneg := second_moment_bound_nonneg
  exact abs_le.mpr ⟨by linarith [neg_abs_le (archimedeanMultiplier 0)],
    by linarith [le_abs_self (archimedeanMultiplier 0)]⟩

/-- This equivalence retains the entire native strict prime-power sum.
It is a consequence of the exact full form and the two proved Gamma bounds;
neither side of the arithmetic estimate is proved here. -/
theorem estimate_iff_full_prime_power_upper_bound :
    CorrelationAssembly.EstimateObligation ↔
      ∃ upper : ℝ, ∀ A : ℝ, 1 ≤ A →
        primePowerContribution explicitSecondDerivative A ≤ upper := by
  constructor
  · rintro ⟨lower, hbound⟩
    refine ⟨(archimedeanMultiplier 0 + 4 + 2 * secondMomentBound - lower) / 2, ?_⟩
    intro A hA
    have hquad := hbound A hA
    have hgamma := actual_archimedean_upper A hA
    unfold sourceQuadraticValue at hquad
    linarith
  · rintro ⟨upper, hbound⟩
    refine ⟨archimedeanMultiplier 0 - 2 * upper, ?_⟩
    intro A hA
    have hprime := hbound A hA
    have hgamma := SourceCorrectionEstimate.actual_archimedean_lower A hA
    unfold sourceQuadraticValue
    linarith

end
end FormalResearch.RiemannHypothesis.FullQuadraticAudit
```
