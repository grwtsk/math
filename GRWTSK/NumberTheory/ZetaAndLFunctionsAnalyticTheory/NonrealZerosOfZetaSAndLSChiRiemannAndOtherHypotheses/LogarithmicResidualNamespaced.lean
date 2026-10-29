-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.LogResidual.Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.LogResidual.Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"f4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/signed-covariance-core/LogarithmicResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusFractionalResidual
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.MeasureTheory.Function.JacobianOneDim
import Mathlib.MeasureTheory.Function.Floor

/-! The original corrected fractional residual in logarithmic time. -/

namespace GRWTSK.Analysis.MeasureTheory.LogResidual.Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851

set_option autoImplicit false
namespace LogarithmicResidualScratch
open MeasureTheory FourierTransform Set
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator
noncomputable section

/-- The actual logarithmic residual retains the complete corrected fractional-part source. -/
def logResidual (X : ℕ) (ε u : ℝ) : ℂ :=
  (Real.exp (-u / 2) : ℂ) * arithmeticResidual X ε (Real.exp u)

/-- The finite original fractional-part residual is genuinely measurable. -/
theorem arithmeticResidual_measurable (X : ℕ) (ε : ℝ) :
    Measurable (arithmeticResidual X ε) := by
  unfold arithmeticResidual
  apply Measurable.add
  · exact measurable_const.ite (measurableSet_Ici) measurable_const
  · exact Finset.measurable_sum _ (fun d _ => measurable_const.mul
      ((measurable_fract.comp (measurable_id.div_const (d : ℝ))).complex_ofReal))

/-- The entire real logarithmic axis carries the original measurable residual. -/
theorem logResidual_measurable (X : ℕ) (ε : ℝ) :
    Measurable (logResidual X ε) :=
  (by fun_prop : Measurable (fun u : ℝ => (Real.exp (-u / 2) : ℂ))).mul
    ((arithmeticResidual_measurable X ε).comp Real.measurable_exp)

private theorem exp_image_univ : Real.exp '' (univ : Set ℝ) = Ioi (0 : ℝ) := by
  rw [image_univ, Real.range_exp]

private theorem exp_integrability (f : ℝ → ℂ) :
    IntegrableOn f (Ioi (0 : ℝ)) ↔
      Integrable (fun u : ℝ => Real.exp u • f (Real.exp u)) := by
  rw [← exp_image_univ]
  simpa only [abs_of_pos (Real.exp_pos _), integrableOn_univ] using
    integrableOn_image_iff_integrableOn_abs_deriv_smul MeasurableSet.univ
      (fun x _ => (Real.hasDerivAt_exp x).hasDerivWithinAt)
      (fun _ _ _ _ h => Real.exp_injective h) f

private theorem exp_integral (f : ℝ → ℂ) :
    (∫ x : ℝ in Ioi 0, f x) = ∫ u : ℝ, Real.exp u • f (Real.exp u) := by
  rw [← exp_image_univ]
  simpa only [abs_of_pos (Real.exp_pos _), Measure.restrict_univ] using
    integral_image_eq_integral_abs_deriv_smul MeasurableSet.univ
      (fun x _ => (Real.hasDerivAt_exp x).hasDerivWithinAt)
      (fun _ _ _ _ h => Real.exp_injective h) f

private theorem exp_integrand (f : ℝ → ℂ) (s : ℂ) (u : ℝ) :
    Real.exp u • (f (Real.exp u) * (Real.exp u : ℂ) ^ (-(s + 1))) =
      Complex.exp (-s * (u : ℂ)) * f (Real.exp u) := by
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast (Real.exp_pos u).ne')]
  have hl : Complex.log (Real.exp u : ℂ) = (u : ℂ) := by
    rw [← Complex.ofReal_log (Real.exp_pos u).le, Real.log_exp]
  rw [hl, Complex.real_smul, Complex.ofReal_exp]
  calc
    Complex.exp (u : ℂ) * (f (Real.exp u) * Complex.exp ((u : ℂ) * -(s + 1))) =
        (Complex.exp (u : ℂ) * Complex.exp ((u : ℂ) * -(s + 1))) * f (Real.exp u) := by ring
    _ = _ := by
      rw [← Complex.exp_add]
      congr 2
      ring

/-- Genuine Mellin integrability at the midpoint gives full-line L1 logarithmic admission. -/
theorem logResidual_integrable (X : ℕ) (ε : ℝ) : Integrable (logResidual X ε) := by
  have hi := (exp_integrability _).mp
    (arithmeticResidual_mellin_integrable X ε (1 / 2) (by norm_num) (by norm_num))
  have he (u : ℝ) : Real.exp u •
      (arithmeticResidual X ε (Real.exp u) * (Real.exp u : ℂ) ^ (-((1 / 2 : ℂ) + 1))) =
      logResidual X ε u := by
    rw [exp_integrand]
    dsimp only [logResidual]
    congr 1
    rw [Complex.ofReal_exp]
    congr 1
    push_cast
    ring
  simpa only [he] using hi

/-- The exact angular Fourier integral is the full signed zeta–Möbius residual divided by s. -/
theorem logResidual_angular_integral (X : ℕ) (hX : 1 ≤ X) (ε t : ℝ) :
    (∫ u : ℝ, Complex.exp (-(t : ℂ) * Complex.I * (u : ℂ)) * logResidual X ε u) =
      (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)) /
          (1 / 2 + (t : ℂ) * Complex.I) := by
  have hm := arithmeticResidual_mellin_integral X ε (1 / 2 + (t : ℂ) * Complex.I)
    hX (by norm_num) (by norm_num)
  rw [exp_integral] at hm
  simp_rw [exp_integrand] at hm
  have he (u : ℝ) :
      Complex.exp (-(t : ℂ) * Complex.I * (u : ℂ)) * logResidual X ε u =
        Complex.exp (-(1 / 2 + (t : ℂ) * Complex.I) * (u : ℂ)) *
          arithmeticResidual X ε (Real.exp u) := by
    dsimp only [logResidual]
    rw [Complex.ofReal_exp, ← mul_assoc, ← Complex.exp_add]
    congr 2
    push_cast
    ring
  simp_rw [he]
  have hs : (1 / 2 + (t : ℂ) * Complex.I) - 1 / 2 + (ε : ℂ) =
      (ε : ℂ) + (t : ℂ) * Complex.I := by ring
  simpa only [hs] using hm

/-- Mathlib's genuine Fourier transform has the exact source formula with its 2π scaling. -/
theorem logResidual_fourier (X : ℕ) (hX : 1 ≤ X) (ε ξ : ℝ) :
    𝓕 (logResidual X ε) ξ =
      (1 - riemannZeta (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I)) /
          (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := by
  rw [← logResidual_angular_integral X hX ε (2 * Real.pi * ξ),
    Real.fourier_real_eq_integral_exp_smul]
  apply integral_congr_ae
  filter_upwards [] with u
  simp only [smul_eq_mul]
  congr 2
  push_cast
  ring

end
end LogarithmicResidualScratch
