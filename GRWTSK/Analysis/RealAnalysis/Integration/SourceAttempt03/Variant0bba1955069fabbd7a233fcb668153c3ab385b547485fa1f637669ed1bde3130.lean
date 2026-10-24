-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variantbe8d9a1a4fd5eabacaf2d42dfe1a811cbb46ad61654bf9f4ccf8802b7bf5a563","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be8d9a1a4fd5eabacaf2d42dfe1a811cbb46ad61654bf9f4ccf8802b7bf5a563","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Kernel.Variantbe8d9a1a4fd5eabacaf2d42dfe1a811cbb46ad61654bf9f4ccf8802b7bf5a563","mathematical_subject":"Analysis.Integration","original_sha256":"be8d9a1a4fd5eabacaf2d42dfe1a811cbb46ad61654bf9f4ccf8802b7bf5a563","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass6/archimedean_kernel_review/source-attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
Positive-kernel budget component of #313; actual source G identity is separate.
grwtsk contributors's mathematical direction; OpenAI Codex scratch construction.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variantbe8d9a1a4fd5eabacaf2d42dfe1a811cbb46ad61654bf9f4ccf8802b7bf5a563

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ArchimedeanKernel
open MeasureTheory Set

def kernel (t : ℝ) : ℝ := Real.exp (-t / 2) / (1 - Real.exp (-2 * t))
def secondMomentIntegrand (t : ℝ) : ℝ := t ^ 2 * kernel t
def majorant (t : ℝ) : ℝ := (t ^ 2 + t / 2) * Real.exp (-t / 2)

theorem denominator_pos {t : ℝ} (ht : 0 < t) : 0 < 1 - Real.exp (-2 * t) := by
  have he : Real.exp (-2 * t) < 1 := by
    simpa using Real.exp_lt_exp.mpr (by linarith : -2 * t < 0)
  linarith

theorem kernel_nonneg {t : ℝ} (ht : 0 < t) : 0 ≤ kernel t :=
  (div_pos (Real.exp_pos _) (denominator_pos ht)).le

theorem reciprocal_denominator_bound {t : ℝ} (ht : 0 < t) :
    1 / (1 - Real.exp (-2 * t)) ≤ 1 + 1 / (2 * t) := by
  have hlin : 2 * t ≤ Real.exp (2 * t) - 1 := by
    linarith [Real.add_one_le_exp (2 * t)]
  have hepos : 0 < Real.exp (2 * t) - 1 := by linarith
  have hid : 1 / (1 - Real.exp (-2 * t)) = 1 + 1 / (Real.exp (2 * t) - 1) := by
    rw [show -2 * t = -(2 * t) by ring, Real.exp_neg]
    field_simp [hepos.ne']
    ring
  rw [hid]
  exact add_le_add le_rfl (one_div_le_one_div_of_le (by linarith : 0 < 2 * t) hlin)

theorem secondMoment_bound {t : ℝ} (ht : 0 < t) :
    0 ≤ secondMomentIntegrand t ∧ secondMomentIntegrand t ≤ majorant t := by
  refine ⟨mul_nonneg (sq_nonneg _) (kernel_nonneg ht), ?_⟩
  unfold secondMomentIntegrand kernel majorant
  have h := mul_le_mul_of_nonneg_left (reciprocal_denominator_bound ht)
    (by positivity : 0 ≤ t ^ 2 * Real.exp (-t / 2))
  have he : t ^ 2 * (Real.exp (-t / 2) / (1 - Real.exp (-2 * t))) =
      (t ^ 2 * Real.exp (-t / 2)) * (1 / (1 - Real.exp (-2 * t))) := by ring
  rw [he]
  apply h.trans_eq
  field_simp

theorem polynomial_exp_integrable (n : ℕ) :
    IntegrableOn (fun t : ℝ => t ^ n * Real.exp (-t / 2)) (Ioi 0) := by
  have h := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (n : ℝ)) (p := 1) (b := 1 / 2) (by positivity) (by norm_num) (by norm_num)
  have he (t : ℝ) : -(1 / 2 : ℝ) * t = -t / 2 := by ring
  simpa only [Real.rpow_natCast, Real.rpow_one, he] using h

theorem polynomial_exp_integral (n : ℕ) :
    (∫ t : ℝ in Ioi 0, t ^ n * Real.exp (-t / 2)) = 2 ^ (n + 1) * (n.factorial : ℝ) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a := (n : ℝ) + 1) (r := 1 / 2) (by positivity) (by norm_num)
  have he : (n : ℝ) + 1 - 1 = n := by ring
  have hex (t : ℝ) : -((1 / 2 : ℝ) * t) = -t / 2 := by ring
  simpa only [he, Real.rpow_natCast, show (1 / (1 / 2 : ℝ)) = 2 by norm_num,
    Real.rpow_add (by norm_num : (0 : ℝ) < 2), Real.rpow_natCast, Real.rpow_one,
    Real.Gamma_nat_eq_factorial, hex, pow_succ] using h

end ContinuousResearch.ArchimedeanKernel

#print axioms ContinuousResearch.ArchimedeanKernel.denominator_pos
#print axioms ContinuousResearch.ArchimedeanKernel.kernel_nonneg
#print axioms ContinuousResearch.ArchimedeanKernel.reciprocal_denominator_bound
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_bound
#print axioms ContinuousResearch.ArchimedeanKernel.polynomial_exp_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.polynomial_exp_integral
