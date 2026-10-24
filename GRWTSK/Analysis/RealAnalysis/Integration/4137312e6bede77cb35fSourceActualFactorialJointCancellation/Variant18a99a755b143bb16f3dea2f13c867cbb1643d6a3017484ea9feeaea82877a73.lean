-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FactorialNondefectSector.Variant4137312e6bede77cb35f047cb9adb113a5661d93dc4a82515c5c5b476595af37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4137312e6bede77cb35f047cb9adb113a5661d93dc4a82515c5c5b476595af37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FactorialNondefectSector.Variant4137312e6bede77cb35f047cb9adb113a5661d93dc4a82515c5c5b476595af37","mathematical_subject":"Analysis.Integration","original_sha256":"4137312e6bede77cb35f047cb9adb113a5661d93dc4a82515c5c5b476595af37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/4137312e6bede77cb35f-SourceActualFactorialJointCancellation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualFactorialMellinTransport

/-!
The actual leading factorial Mellin coefficient and the genuine signed tail
share one factorial defect. Their algebraic cancellation is retained within
one genuinely integrable density, including every actual Psi and floor sector.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.FactorialNondefectSector.Variant4137312e6bede77cb35f047cb9adb113a5661d93dc4a82515c5c5b476595af37

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualFactorialJointCancellation
open MeasureTheory Set
open scoped BigOperators
open SourceActualFactorialMellinTransport SourceActualFactorialTailDecomposition
open SourceFullPositiveKappa SourceStrictComplementaryAbel SourceStrictComplementaryLocalization
open SourcePairing SourcePositiveSampling SourceSamplingRemainder
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMobiusSplit EstimateMertensAbel
noncomputable section

/-- The independent nonfactorial actual sectors, with the negative unit floor retained. -/
def factorialNondefectSector (A x : ℝ) : ℝ :=
  Chebyshev.psi x - (⌊x⌋₊ : ℝ) -
    x * (Real.log x - 1) * shortReciprocalMoebius (vaughanCutoff A) +
      x * shortLogReciprocalMoebius (vaughanCutoff A)

/-- Actual cancellation of the factorial half density against its genuine tail derivative. -/
def actualFactorialJointDensity (A x : ℝ) : ℝ :=
  if x ∈ Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)) then
    shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x) -
      factorialNondefectSector A x * deriv (plainProfile A 1) x
  else (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)

private theorem actualFactorialJointDensity_eq_difference (A : ℝ) :
    actualFactorialJointDensity A = fun x =>
      (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2) -
        (Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A))).indicator
          (fun x => (factorialNondefectSector A x -
            shortFactorialDefect (vaughanCutoff A) x) * deriv (plainProfile A 1) x) x := by
  funext x
  unfold actualFactorialJointDensity
  by_cases hx : x ∈ Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A))
  · rw [if_pos hx, indicator_of_mem hx]
    ring
  · rw [if_neg hx, indicator_of_notMem hx, sub_zero]

private theorem factorialNondefect_tail_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x => (Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A))).indicator
      (fun x => (factorialNondefectSector A x - shortFactorialDefect (vaughanCutoff A) x) *
        deriv (plainProfile A 1) x) x) (volume.restrict (Ioi (0 : ℝ))) := by
  exact (factorial_sector_tail_integrable A hA).integrable_indicator
    measurableSet_Ioc |>.integrableOn

/-- Full positive-axis joint L1 follows from the actual Mellin and original signed tail sources. -/
theorem actualFactorialJointDensity_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (actualFactorialJointDensity A) (Ioi (0 : ℝ)) := by
  rw [actualFactorialJointDensity_eq_difference]
  have hi : IntegrableOn (fun x => (1 / 2 : ℝ) *
      shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)) (Ioi (0 : ℝ)) := by
    change Integrable (fun x => (1 / 2 : ℝ) *
      shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2))
        (volume.restrict (Ioi (0 : ℝ)))
    simpa only [mul_assoc] using (shortFactorialMellin_integrable (vaughanCutoff A)).const_mul
      (1 / 2 : ℝ)
  exact hi.sub (factorialNondefect_tail_integrable A hA)

/-- The actual leading signed inventory and full tail share the exact same factorial defect. -/
theorem actual_leading_and_tail_eq_joint_factorial_integral (A : ℝ) (hA : 1 ≤ A) :
    fullPositiveKappa 1 *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ)) +
      complementarySignedTail A - A =
        (∫ x in Ioi (0 : ℝ), actualFactorialJointDensity A x) - A := by
  have hi : IntegrableOn (fun x => (1 / 2 : ℝ) *
      shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)) (Ioi (0 : ℝ)) := by
    change Integrable (fun x => (1 / 2 : ℝ) *
      shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2))
        (volume.restrict (Ioi (0 : ℝ)))
    simpa only [mul_assoc] using (shortFactorialMellin_integrable (vaughanCutoff A)).const_mul
      (1 / 2 : ℝ)
  rw [actualFactorialJointDensity_eq_difference,
    integral_sub (f := fun x => (1 / 2 : ℝ) *
      shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2))
      hi (factorialNondefect_tail_integrable A hA),
    ← fullKappa_signed_half_inventory_eq_factorial_integral,
    setIntegral_indicator measurableSet_Ioc]
  have hset : Ioi (0 : ℝ) ∩ Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)) =
      Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)) := inter_eq_right.mpr (by
    intro x hx
    have hU := (actual_cutoff_order A hA).1
    exact lt_trans (by linarith : (0 : ℝ) < vaughanCutoff A) hx.1)
  rw [hset, complementarySignedTail_eq_factorial_sectors A hA]
  rfl

/-- Actual profile curvature cancels the leading half-density in the shared factorial sector. -/
theorem actual_factorial_cancelled_kernel (A x : ℝ) (hA : 0 < A) (hx : 0 < x) :
    (1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x =
      x ^ (-(3 : ℝ) / 2) *
        ((1 - sourceCorrelation explicitSecondDerivative A (Real.log x)) / 2 +
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x)) := by
  rw [(plainProfile_hasDerivAt hA 1 hx).deriv,
    samplingDerivative_prefactor (by norm_num : (0 : ℝ) < 1) hx]
  simp only [Real.log_one, zero_add, Real.sqrt_one, div_one]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualFactorialJointCancellation
