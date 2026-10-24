-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.AngularIntegrand.Variant4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.AngularIntegrand.Variant4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d","mathematical_subject":"Analysis.Integration","original_sha256":"4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/scratch/rh16-followthrough-20261006-mellin/SourceNativeAngularTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceNativeRightLine
import SourceNativeDirichlet
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.Calculus.FDeriv.Analytic

/-!
# Analytic tail of the actual native c = 2 contour

This proves a tail for the genuine combined angular integrand. The equality of
this full contour with the literal closed prime moment remains a separate
Fourier inversion and Dirichlet Fubini obligation.

AI attribution: developed with OpenAI Codex; checked locally by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.AngularIntegrand.Variant4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d

namespace FormalResearch.RiemannHypothesis.SourceNativeAngularTail

open MeasureTheory Set
open SourcePairing SourceNativeMellin SourceNativeRightLine SourceNativeDirichlet
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets

noncomputable section

/-- The exact initial combined integrand with positive angular height parameter. -/
def angularIntegrand (A t : ℝ) : ℂ :=
  combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ)) *
    nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))

/-- The explicit fixed-line majorant, with every source normalization factor. -/
def heightCoefficient (A : ℝ) : ℝ :=
  rightLineMajorant 2 * (204288 ^ 2 * 10 / (4096 / 109395 : ℝ)) *
    Real.exp (3 * A) / A ^ 9

/-- The initial c = 2 tail constant in the literal paper convention. -/
def twoLineTailConstant : ℝ :=
  rightLineMajorant 2 * 204288 ^ 2 * 10 / (5 * Real.pi * (4096 / 109395 : ℝ))

private theorem shifted_two_ne_zero (t : ℝ) :
    ((2 : ℂ) + Complex.I * (t : ℂ)) - 1 / 2 ≠ 0 := by
  intro h
  have hh := congr_arg Complex.re h
  norm_num at hh

/-- The actual combined multiplier is continuous along the complete initial line. -/
theorem combined_two_line_continuous :
    Continuous (fun t : ℝ ↦ combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ))) := by
  apply continuous_iff_continuousAt.mpr
  intro t
  let s : ℂ := 2 + Complex.I * (t : ℂ)
  have hs : 1 < s.re := by norm_num [s]
  have hsone : s ≠ 1 := by
    intro h
    have hh := congr_arg Complex.re h
    norm_num [s] at hh
  have ha : AnalyticAt ℂ riemannZeta s := analyticOn_riemannZeta s (by simpa using hsone)
  have hc : ContinuousAt combinedMultiplier s :=
    ha.deriv.continuousAt.neg.div ha.continuousAt (riemannZeta_ne_zero_of_one_lt_re hs)
  have hline : Continuous (fun u : ℝ ↦ (2 : ℂ) + Complex.I * (u : ℂ)) := by fun_prop
  exact ContinuousAt.comp (f := fun u : ℝ ↦ (2 : ℂ) + Complex.I * (u : ℂ))
    (x := t) hc hline.continuousAt

/-- The actual normalized native transform is continuous along the complete initial line. -/
theorem native_two_line_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) := by
  have heq : (fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) =
      (fun t : ℝ ↦ dividedTransform A (((2 : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) ^ 2 /
        (sourceNormalization A : ℂ)) := by
    funext t
    exact nativeMellin_eq_dividedTransform A hA _ (shifted_two_ne_zero t)
  rw [heq]
  have hAp : 0 < A := by linarith
  have hscale : (A ^ (17 / 2 : ℝ) : ℝ) ≠ 0 := ne_of_gt (Real.rpow_pos_of_pos hAp _)
  have hscaleC : ((A ^ (17 / 2 : ℝ) : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hscale
  have hden : ∀ t : ℝ,
      ((A ^ (17 / 2 : ℝ) : ℝ) : ℂ) *
        (((2 : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) ^ 9 ≠ 0 := by
    intro t
    exact mul_ne_zero hscaleC (pow_ne_zero _ (shifted_two_ne_zero t))
  unfold dividedTransform transformPolynomial
  fun_prop

/-- The exact combined angular integrand has genuine continuity. -/
theorem angularIntegrand_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (angularIntegrand A) :=
  combined_two_line_continuous.mul (native_two_line_continuous A hA)

/-- The source's full combined multiplier and native transform have a height-six majorant. -/
theorem angularIntegrand_norm_le (A : ℝ) (hA : 1 ≤ A) (t : ℝ) (ht : 1 ≤ |t|) :
    ‖angularIntegrand A t‖ ≤ heightCoefficient A / |t| ^ 6 := by
  have hd := combinedMultiplier_norm_le 2 (by norm_num)
    ((2 : ℂ) + Complex.I * (t : ℂ)) (by simp)
  have hh := nativeMellin_two_line_decay A hA t ht
  rw [angularIntegrand, norm_mul]
  calc
    _ ≤ rightLineMajorant 2 *
        ((204288 ^ 2 * 10 / (4096 / 109395 : ℝ)) * Real.exp (3 * A) /
          (A ^ 9 * |t| ^ 6)) :=
      mul_le_mul hd hh (norm_nonneg _) (rightLineMajorant_nonneg _)
    _ = _ := by unfold heightCoefficient; ring

private theorem heightCoefficient_nonneg (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ heightCoefficient A := by
  have hp : 0 < A := by linarith
  unfold heightCoefficient
  exact div_nonneg (mul_nonneg (mul_nonneg (rightLineMajorant_nonneg _) (by norm_num))
    (Real.exp_pos _).le) (pow_nonneg hp.le _)

private theorem height_majorant_integrable (A T : ℝ) (hT : 1 ≤ T) :
    IntegrableOn (fun t : ℝ ↦ heightCoefficient A * t ^ (-6 : ℝ)) (Ioi T) :=
  (integrableOn_Ioi_rpow_of_lt (by norm_num : (-6 : ℝ) < -1)
    (by linarith : 0 < T)).const_mul _

private theorem ray_majorant (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T)
    (ε : ℝ) (hε : |ε| = 1) :
    ∀ᵐ t : ℝ ∂volume.restrict (Ioi T),
      ‖angularIntegrand A (ε * t)‖ ≤ heightCoefficient A * t ^ (-6 : ℝ) := by
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  change T < t at ht
  have htp : 0 < t := by linarith
  have hεt : |ε * t| = t := by rw [abs_mul, hε, abs_of_pos htp, one_mul]
  have hb := angularIntegrand_norm_le A hA (ε * t) (by rw [hεt]; linarith)
  rw [hεt] at hb
  convert hb using 1
  rw [Real.rpow_neg htp.le, show (6 : ℝ) = (6 : ℕ) by norm_num,
    Real.rpow_natCast]
  ring

/-- Both physical rays of the actual source integrand are genuinely integrable. -/
theorem angular_ray_integrable (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T)
    (ε : ℝ) (hε : |ε| = 1) :
    IntegrableOn (fun t : ℝ ↦ angularIntegrand A (ε * t)) (Ioi T) := by
  apply (height_majorant_integrable A T hT).mono'
  · exact ((angularIntegrand_continuous A hA).comp (by fun_prop)).aestronglyMeasurable
  · exact ray_majorant A T hA hT ε hε

private theorem height_majorant_integral (A T : ℝ) (hT : 1 ≤ T) :
    (∫ t : ℝ in Ioi T, heightCoefficient A * t ^ (-6 : ℝ)) =
      heightCoefficient A / (5 * T ^ 5) := by
  rw [integral_const_mul, integral_Ioi_rpow_of_lt (by norm_num : (-6 : ℝ) < -1)
    (by linarith : 0 < T)]
  norm_num
  ring

/-- Each of the actual physical rays obeys the exact elementary tail integral estimate. -/
theorem angular_ray_norm_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T)
    (ε : ℝ) (hε : |ε| = 1) :
    ‖∫ t : ℝ in Ioi T, angularIntegrand A (ε * t)‖ ≤
      heightCoefficient A / (5 * T ^ 5) := by
  calc
    _ ≤ ∫ t : ℝ in Ioi T, heightCoefficient A * t ^ (-6 : ℝ) :=
      norm_integral_le_of_norm_le (height_majorant_integrable A T hT)
        (ray_majorant A T hA hT ε hε)
    _ = _ := height_majorant_integral A T hT

/-- The sum of both actual tail rays, with the original angular contour normalization. -/
def angularTail (A T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) *
    ((∫ t : ℝ in Ioi T, angularIntegrand A t) +
      (∫ t : ℝ in Ioi T, angularIntegrand A (-t)))

/-- Actual combined two-ray tail bound; no arithmetic readout equality is assumed. -/
theorem angularTail_norm_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T) :
    ‖angularTail A T‖ ≤ twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * T ^ 5) := by
  have hp := angular_ray_norm_bound A T hA hT 1 (by norm_num)
  have hn := angular_ray_norm_bound A T hA hT (-1) (by norm_num)
  simp only [one_mul, neg_one_mul] at hp hn
  unfold angularTail
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos (by positivity : 0 < (1 / (2 * Real.pi) : ℝ))]
  calc
    _ ≤ (1 / (2 * Real.pi)) *
        (heightCoefficient A / (5 * T ^ 5) + heightCoefficient A / (5 * T ^ 5)) := by
      gcongr
      exact le_trans (norm_add_le _ _) (add_le_add hp hn)
    _ = _ := by unfold heightCoefficient twoLineTailConstant; ring

/-- The whole actual combined contour integrand is genuinely integrable. -/
theorem angularIntegrand_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (angularIntegrand A) := by
  have hsmall : IntegrableOn (angularIntegrand A) (Icc (-1) 1) :=
    (angularIntegrand_continuous A hA).integrableOn_Icc
  have hpos : IntegrableOn (angularIntegrand A) (Ioi 1) := by
    simpa using angular_ray_integrable A 1 hA (by norm_num) 1 (by norm_num)
  have hneg : IntegrableOn (angularIntegrand A) (Iio (-1)) := by
    rw [← (Measure.measurePreserving_neg (volume : Measure ℝ)).integrableOn_comp_preimage
      (Homeomorph.neg ℝ).measurableEmbedding]
    simpa only [Function.comp_def, neg_preimage, neg_Iio, neg_neg, neg_one_mul]
      using angular_ray_integrable A 1 hA (by norm_num) (-1) (by norm_num)
  have hcover : (Icc (-1 : ℝ) 1 ∪ Ioi 1) ∪ Iio (-1) = univ := by
    ext t
    simp only [mem_union, mem_Icc, mem_Ioi, mem_Iio, mem_univ, iff_true]
    rcases lt_or_ge t (-1) with ht | ht
    · exact Or.inr ht
    · rcases le_or_gt t 1 with hh | hh
      · exact Or.inl (Or.inl ⟨ht, hh⟩)
      · exact Or.inl (Or.inr hh)
  have hu := (hsmall.union hpos).union hneg
  rw [hcover] at hu
  simpa using hu

/-- The full native angular contour, before the pending arithmetic inversion adapter. -/
def angularContour (A : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) * (∫ t : ℝ, angularIntegrand A t)

/-- The actual finite head on the same initial line and with the same signed integrand. -/
def angularHead (A T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) * (∫ t : ℝ in Icc (-T) T, angularIntegrand A t)

/-- The actual contour-minus-head equals the two physical tail rays exactly. -/
theorem angularContour_sub_head_eq_tail (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T) :
    angularContour A - angularHead A T = angularTail A T := by
  have hf := angularIntegrand_integrable A hA
  have hc : (Icc (-T) T)ᶜ = Ioi T ∪ Iio (-T) := by
    ext t
    simp only [mem_compl_iff, mem_Icc, not_and_or, not_le, mem_union, mem_Ioi, mem_Iio]
    tauto
  have hd : Disjoint (Ioi T) (Iio (-T)) := by
    rw [Set.disjoint_left]
    intro t ht hn
    have hp : 0 < T := by linarith
    simp only [mem_Ioi, mem_Iio] at ht hn
    linarith
  have he := setIntegral_compl (s := Icc (-T) T) measurableSet_Icc hf
  rw [hc, setIntegral_union hd measurableSet_Iio hf.integrableOn hf.integrableOn] at he
  unfold angularContour angularHead angularTail
  rw [integral_comp_neg_Ioi, integral_Iic_eq_integral_Iio]
  rw [he]
  ring

/-- Actual contour truncation at every real scale and height, with literal K_2. -/
theorem angularContour_sub_head_norm_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T) :
    ‖angularContour A - angularHead A T‖ ≤
      twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * T ^ 5) := by
  rw [angularContour_sub_head_eq_tail A T hA hT]
  exact angularTail_norm_bound A T hA hT

/-- The permitted growing height on the fixed initial c = 2 line. -/
def growingHeight (A : ℝ) : ℝ := Real.exp (3 * A / 5)

/-- The actual native contour tail has an all-real polynomial remainder at growing height. -/
theorem angularContour_growing_tail_bound (A : ℝ) (hA : 1 ≤ A) :
    ‖angularContour A - angularHead A (growingHeight A)‖ ≤ twoLineTailConstant / A ^ 9 := by
  have hAp : 0 < A := by linarith
  have hT : 1 ≤ growingHeight A := by
    unfold growingHeight
    apply Real.one_le_exp_iff.mpr
    positivity
  have hb := angularContour_sub_head_norm_bound A (growingHeight A) hA hT
  have he : growingHeight A ^ 5 = Real.exp (3 * A) := by
    unfold growingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he] at hb
  have heq : twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * Real.exp (3 * A)) =
      twoLineTailConstant / A ^ 9 := by
    field_simp
  rwa [heq] at hb

/-- The signed real part of the actual contour is bounded by the same signed head and tail. -/
theorem angularContour_re_le_head_add_tail (A : ℝ) (hA : 1 ≤ A) :
    (angularContour A).re ≤ (angularHead A (growingHeight A)).re +
      twoLineTailConstant / A ^ 9 := by
  have hb := angularContour_growing_tail_bound A hA
  have hre : (angularContour A - angularHead A (growingHeight A)).re ≤
      ‖angularContour A - angularHead A (growingHeight A)‖ :=
    le_trans (le_abs_self _) (Complex.abs_re_le_norm _)
  simp only [Complex.sub_re] at hre
  linarith

end
end FormalResearch.RiemannHypothesis.SourceNativeAngularTail
