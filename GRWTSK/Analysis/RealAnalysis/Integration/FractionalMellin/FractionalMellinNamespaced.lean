-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FractionalKernel.Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FractionalKernel.Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538","mathematical_subject":"Analysis.Integration","original_sha256":"44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/FractionalMellin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Zeta23.FromPNTPlus.ZetaBounds
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.Analysis.MellinTransform

/-! Genuine fractional-part Mellin transform in the open critical strip. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.FractionalKernel.Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538

set_option autoImplicit false
namespace FractionalMellinScratch
open MeasureTheory Set
open scoped Topology
noncomputable section

/-- The fractional-part Mellin integrand on the full positive half-line. -/
def fractionalKernel (s : ℂ) (x : ℝ) : ℂ :=
  ((Int.fract x : ℝ) : ℂ) * (x : ℂ) ^ (-(s + 1))

/-- The fractional part agrees with the power kernel strictly below one. -/
theorem fractionalKernel_below_one (s : ℂ) (x : ℝ) (hx : x ∈ Ioo (0 : ℝ) 1) :
    fractionalKernel s x = (x : ℂ) ^ (-s) := by
  rw [fractionalKernel, Int.fract_eq_self.mpr ⟨hx.1.le, hx.2⟩]
  have hn : (x : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hx.1.ne'
  calc
    (x : ℂ) * (x : ℂ) ^ (-(s + 1)) =
        (x : ℂ) ^ (1 : ℂ) * (x : ℂ) ^ (-(s + 1)) := by rw [Complex.cpow_one]
    _ = (x : ℂ) ^ ((1 : ℂ) + -(s + 1)) := (Complex.cpow_add _ _ hn).symm
    _ = (x : ℂ) ^ (-s) := by congr 1; ring

/-- The tail is absolutely integrable for every positive real part. -/
theorem fractionalKernel_integrable_tail (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fractionalKernel s) (Ioi (1 : ℝ)) := by
  have hp : IntegrableOn (fun x : ℝ => (x : ℂ) ^ (-(s + 1))) (Ioi (1 : ℝ)) :=
    integrableOn_Ioi_cpow_of_lt (by
      simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
      linarith) zero_lt_one
  have hf : IntegrableOn (fun x : ℝ =>
      ((⌊x⌋ : ℂ) + 1 / 2 - (x : ℂ)) * (x : ℂ) ^ (-(s + 1))) (Ioi (1 : ℝ)) := by
    simpa only [Nat.cast_one] using integrableOn_of_Zeta0_fun (N := 1) (by decide) hs
  apply ((hp.const_mul (1 / 2 : ℂ)).sub hf).congr
  filter_upwards [] with x
  simp only [fractionalKernel, Pi.sub_apply, Int.fract, Complex.ofReal_sub,
    Complex.ofReal_intCast]
  ring

/-- The near-zero integral is admitted in the full open strip. -/
theorem fractionalKernel_integrable_near_zero (s : ℂ) (hs : s.re < 1) :
    IntegrableOn (fractionalKernel s) (Ioc (0 : ℝ) 1) := by
  rw [integrableOn_Ioc_iff_integrableOn_Ioo]
  apply ((intervalIntegral.integrableOn_Ioo_cpow_iff zero_lt_one).mpr
    (show -1 < (-s).re by simpa using neg_lt_neg hs)).congr_fun
  · intro x hx
    exact (fractionalKernel_below_one s x hx).symm
  · exact measurableSet_Ioo

/-- Both ends of the complete fractional-part Mellin integral are genuinely integrable. -/
theorem fractionalKernel_integrable (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) :
    IntegrableOn (fractionalKernel s) (Ioi (0 : ℝ)) := by
  rw [← Ioc_union_Ioi_eq_Ioi (show (0 : ℝ) ≤ 1 by norm_num)]
  exact (fractionalKernel_integrable_near_zero s hs').union
    (fractionalKernel_integrable_tail s hs)

/-- The finite near-zero contribution retains its exact value. -/
theorem fractionalKernel_integral_near_zero (s : ℂ) (hs : s.re < 1) :
    (∫ x : ℝ in (0 : ℝ)..1, fractionalKernel s x) = 1 / (1 - s) := by
  have he : -1 < (-s).re := by simpa using neg_lt_neg hs
  rw [intervalIntegral.integral_of_le zero_le_one, integral_Ioc_eq_integral_Ioo]
  rw [setIntegral_congr_fun measurableSet_Ioo (fractionalKernel_below_one s)]
  rw [← integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le zero_le_one]
  rw [integral_cpow (Or.inl he)]
  have hn : -s + 1 ≠ 0 := by
    intro h
    have h' := congrArg Complex.re h
    simp only [Complex.add_re, Complex.neg_re, Complex.one_re, Complex.zero_re] at h'
    linarith
  simp only [Complex.ofReal_one, Complex.one_cpow, Complex.ofReal_zero,
    Complex.zero_cpow hn, sub_zero]
  congr 1
  ring

/-- Euler--Maclaurin gives the exact genuinely integrable fractional-part tail. -/
theorem fractionalKernel_integral_tail (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) :
    (∫ x : ℝ in Ioi (1 : ℝ), fractionalKernel s x) =
      -riemannZeta s / s - 1 / (1 - s) := by
  have hs0 : s ≠ 0 := by intro h; simp [h] at hs
  have hs1 : s ≠ 1 := by intro h; simp [h] at hs'
  have hpow : (-(s + 1)).re < -1 := by
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  have hp := integrableOn_Ioi_cpow_of_lt hpow zero_lt_one
  have hfract := fractionalKernel_integrable_tail s hs
  have hsplit : (∫ x : ℝ in Ioi (1 : ℝ),
      ((⌊x⌋ : ℂ) + 1 / 2 - (x : ℂ)) * (x : ℂ) ^ (-(s + 1))) =
      (1 / 2 : ℂ) * (∫ x : ℝ in Ioi (1 : ℝ), (x : ℂ) ^ (-(s + 1))) -
        ∫ x : ℝ in Ioi (1 : ℝ), fractionalKernel s x := by
    rw [← integral_const_mul, ← integral_sub (hp.const_mul (1 / 2 : ℂ)) hfract]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro x hx
    simp only [fractionalKernel, Int.fract, Complex.ofReal_sub, Complex.ofReal_intCast]
    ring
  have hJ : (∫ x : ℝ in Ioi (1 : ℝ), (x : ℂ) ^ (-(s + 1))) = 1 / s := by
    rw [integral_Ioi_cpow_of_lt hpow zero_lt_one]
    simp only [Complex.ofReal_one, Complex.one_cpow]
    field_simp [hs0]
    ring
  have hz := Zeta0EqZeta (N := 1) (by decide) hs hs1
  rw [riemannZeta0_apply] at hz
  simp only [Nat.cast_one, Complex.one_cpow, one_div_one, neg_div,
    Finset.sum_range_succ, Finset.sum_range_zero, zero_add, Nat.cast_zero,
    Complex.zero_cpow hs0, div_zero, hsplit, hJ] at hz
  field_simp [hs0, sub_ne_zero.mpr (Ne.symm hs1)] at hz ⊢
  linear_combination -hz / 2

/-- The complete fractional-part Mellin transform has its exact zeta value in the open strip. -/
theorem fractionalKernel_integral (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) :
    (∫ x : ℝ in Ioi (0 : ℝ), fractionalKernel s x) = -riemannZeta s / s := by
  rw [← intervalIntegral.integral_interval_add_Ioi
    (fractionalKernel_integrable s hs hs') (fractionalKernel_integrable_tail s hs),
    fractionalKernel_integral_near_zero s hs', fractionalKernel_integral_tail s hs hs']
  ring

/-- Positive rescaling preserves genuine full-half-line Mellin integrability. -/
theorem fractionalKernel_scaled_integrable (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1)
    (d : ℝ) (hd : 0 < d) :
    IntegrableOn (fun x : ℝ => ((Int.fract (x / d) : ℝ) : ℂ) *
      (x : ℂ) ^ (-(s + 1))) (Ioi (0 : ℝ)) := by
  have hm : MellinConvergent (fun x : ℝ => ((Int.fract x : ℝ) : ℂ)) (-s) := by
    change IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-s - 1) *
      ((Int.fract t : ℝ) : ℂ)) (Ioi (0 : ℝ))
    apply (fractionalKernel_integrable s hs hs').congr_fun _ measurableSet_Ioi
    intro x hx
    simp only [fractionalKernel, neg_add, sub_eq_add_neg, mul_comm]
  have hc := (MellinConvergent.comp_mul_left (f := fun x : ℝ =>
    ((Int.fract x : ℝ) : ℂ)) (s := -s) (inv_pos.mpr hd)).mpr hm
  simpa only [MellinConvergent, smul_eq_mul, sub_eq_add_neg, neg_add,
    mul_comm, div_eq_mul_inv] using hc

/-- The scaling factor and phase are retained in the exact fractional-part Mellin formula. -/
theorem fractionalKernel_scaled_integral (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1)
    (d : ℝ) (hd : 0 < d) :
    (∫ x : ℝ in Ioi (0 : ℝ), ((Int.fract (x / d) : ℝ) : ℂ) *
      (x : ℂ) ^ (-(s + 1))) = -(d : ℂ) ^ (-s) * riemannZeta s / s := by
  have hm : mellin (fun x : ℝ => ((Int.fract x : ℝ) : ℂ)) (-s) =
      -riemannZeta s / s := by
    simpa only [mellin, smul_eq_mul, sub_eq_add_neg, neg_add,
      mul_comm, fractionalKernel] using fractionalKernel_integral s hs hs'
  have hc := mellin_comp_mul_left (fun x : ℝ => ((Int.fract x : ℝ) : ℂ))
    (-s) (inv_pos.mpr hd)
  rw [hm] at hc
  simp only [Complex.ofReal_inv, neg_neg, Complex.inv_cpow_ofReal_nonneg hd.le,
    ← Complex.cpow_neg, smul_eq_mul] at hc
  simpa only [mellin, smul_eq_mul, sub_eq_add_neg, neg_add, mul_comm,
    div_eq_mul_inv, neg_mul, mul_neg, mul_assoc, mul_left_comm] using hc

end
end FractionalMellinScratch
