-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variant872ac45d12fc0ad09e0598c0575337b997ef066e334bf569cd967ea894ef7764","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"872ac45d12fc0ad09e0598c0575337b997ef066e334bf569cd967ea894ef7764","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Kernel.Variant872ac45d12fc0ad09e0598c0575337b997ef066e334bf569cd967ea894ef7764","mathematical_subject":"Analysis.Integration","original_sha256":"872ac45d12fc0ad09e0598c0575337b997ef066e334bf569cd967ea894ef7764","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass9/gamma_fourier/coordinator-replay/ArchimedeanKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Tactic

/-!
Positive-kernel budget component of #313; actual source G identity is separate.
grwtsk contributors's mathematical direction; OpenAI Codex scratch construction.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variant872ac45d12fc0ad09e0598c0575337b997ef066e334bf569cd967ea894ef7764

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
    (s := (n : ℝ)) (p := 1) (b := 1 / 2)
    (lt_of_lt_of_le (by norm_num : (-1 : ℝ) < 0) (Nat.cast_nonneg n))
    (by norm_num) (by norm_num)
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

theorem majorant_integrable : IntegrableOn majorant (Ioi 0) := by
  have he : majorant = fun t : ℝ => t^2*Real.exp (-t/2) + (1/2:ℝ)*(t^1*Real.exp (-t/2)) := by
    funext t
    unfold majorant
    ring
  rw [he]
  exact (polynomial_exp_integrable 2).add ((polynomial_exp_integrable 1).const_mul (1/2:ℝ))

theorem majorant_integral : (∫ t : ℝ in Ioi 0, majorant t) = 18 := by
  have he : majorant = fun t : ℝ => t^2*Real.exp (-t/2) + (1/2:ℝ)*(t^1*Real.exp (-t/2)) := by
    funext t
    unfold majorant
    ring
  rw [he, integral_add (polynomial_exp_integrable 2)
    ((polynomial_exp_integrable 1).const_mul (1/2:ℝ)), integral_const_mul,
    polynomial_exp_integral 2, polynomial_exp_integral 1]
  norm_num

theorem secondMoment_measurable : Measurable secondMomentIntegrand := by
  unfold secondMomentIntegrand kernel
  fun_prop

theorem secondMoment_integrable : IntegrableOn secondMomentIntegrand (Ioi 0) := by
  refine majorant_integrable.mono_nonneg secondMoment_measurable.aestronglyMeasurable ?_ ?_
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (secondMoment_bound ht).1
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (secondMoment_bound ht).2

theorem secondMoment_integral_nonneg : 0 ≤ ∫ t : ℝ in Ioi 0, secondMomentIntegrand t := by
  apply integral_nonneg_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact (secondMoment_bound ht).1

theorem secondMoment_integral_le : (∫ t : ℝ in Ioi 0, secondMomentIntegrand t) ≤ 18 := by
  rw [← majorant_integral]
  apply integral_mono_ae secondMoment_integrable majorant_integrable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact (secondMoment_bound ht).2

def weightedDeficit (C : ℝ → ℝ) (t : ℝ) : ℝ := (1-C t)*kernel t

theorem weightedDeficit_measurable {C : ℝ → ℝ} (hC : Measurable C) :
    Measurable (weightedDeficit C) := by
  unfold weightedDeficit kernel
  fun_prop

theorem weightedDeficit_bound {C : ℝ → ℝ} {k : ℝ}
    (hdef : ∀ t : ℝ, 0 < t → 0 ≤ 1-C t ∧ 1-C t ≤ k*t^2)
    {t : ℝ} (ht : 0 < t) :
    0 ≤ weightedDeficit C t ∧ weightedDeficit C t ≤ k*secondMomentIntegrand t := by
  refine ⟨mul_nonneg (hdef t ht).1 (kernel_nonneg ht), ?_⟩
  have h := mul_le_mul_of_nonneg_right (hdef t ht).2 (kernel_nonneg ht)
  simpa only [weightedDeficit, secondMomentIntegrand, mul_assoc] using h

theorem weightedDeficit_integrable {C : ℝ → ℝ} {k : ℝ} (hC : Measurable C)
    (hdef : ∀ t : ℝ, 0 < t → 0 ≤ 1-C t ∧ 1-C t ≤ k*t^2) :
    IntegrableOn (weightedDeficit C) (Ioi 0) := by
  refine (secondMoment_integrable.const_mul k).mono_nonneg
    (weightedDeficit_measurable hC).aestronglyMeasurable ?_ ?_
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (weightedDeficit_bound hdef ht).1
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (weightedDeficit_bound hdef ht).2

theorem weightedDeficit_integral_budget {C : ℝ → ℝ} {k : ℝ} (hk : 0 ≤ k)
    (hC : Measurable C)
    (hdef : ∀ t : ℝ, 0 < t → 0 ≤ 1-C t ∧ 1-C t ≤ k*t^2) :
    0 ≤ 2*(∫ t : ℝ in Ioi 0, weightedDeficit C t) ∧
      2*(∫ t : ℝ in Ioi 0, weightedDeficit C t) ≤ 36*k := by
  have hn : 0 ≤ ∫ t : ℝ in Ioi 0, weightedDeficit C t := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (weightedDeficit_bound hdef ht).1
  have hb : (∫ t : ℝ in Ioi 0, weightedDeficit C t) ≤ k*18 := by
    calc
      _ ≤ ∫ t : ℝ in Ioi 0, k*secondMomentIntegrand t := by
        apply integral_mono_ae (weightedDeficit_integrable hC hdef)
          (secondMoment_integrable.const_mul k)
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        exact (weightedDeficit_bound hdef ht).2
      _ = k*(∫ t : ℝ in Ioi 0, secondMomentIntegrand t) := integral_const_mul _ _
      _ ≤ k*18 := mul_le_mul_of_nonneg_left secondMoment_integral_le hk
  constructor <;> nlinarith

theorem gamma_budget_from_identity {C : ℝ → ℝ} {k G a0 : ℝ} (hk : 0 ≤ k)
    (hC : Measurable C)
    (hdef : ∀ t : ℝ, 0 < t → 0 ≤ 1-C t ∧ 1-C t ≤ k*t^2)
    (hG : G=a0+2*(∫ t : ℝ in Ioi 0, weightedDeficit C t)) :
    a0 ≤ G ∧ G ≤ a0+36*k := by
  have h := weightedDeficit_integral_budget hk hC hdef
  rw [hG]
  constructor <;> linarith

end ContinuousResearch.ArchimedeanKernel

#print axioms ContinuousResearch.ArchimedeanKernel.denominator_pos
#print axioms ContinuousResearch.ArchimedeanKernel.kernel
#print axioms ContinuousResearch.ArchimedeanKernel.secondMomentIntegrand
#print axioms ContinuousResearch.ArchimedeanKernel.majorant
#print axioms ContinuousResearch.ArchimedeanKernel.kernel_nonneg
#print axioms ContinuousResearch.ArchimedeanKernel.reciprocal_denominator_bound
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_bound
#print axioms ContinuousResearch.ArchimedeanKernel.polynomial_exp_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.polynomial_exp_integral
#print axioms ContinuousResearch.ArchimedeanKernel.majorant_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.majorant_integral
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_measurable
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_integral_nonneg
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_integral_le
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit_measurable
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit_bound
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit_integral_budget
#print axioms ContinuousResearch.ArchimedeanKernel.gamma_budget_from_identity
