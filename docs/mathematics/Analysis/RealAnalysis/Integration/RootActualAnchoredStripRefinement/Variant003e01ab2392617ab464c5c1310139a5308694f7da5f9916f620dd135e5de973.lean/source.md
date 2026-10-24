# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.RootActualAnchoredStripRefinement.Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38b54379e553719d34c4233e76ad85ac7344cc19` · SHA-256 `7fb2e340142b1d60a71db775d715dbd03bf89860051b0ad2482cc2e6eeeab2a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.StripOrders.Variant39fdbace2b03703fcfe5671d1d63834ae08971c9e70a785d2ad0b542fd104d99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39fdbace2b03703fcfe5671d1d63834ae08971c9e70a785d2ad0b542fd104d99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.StripOrders.Variant39fdbace2b03703fcfe5671d1d63834ae08971c9e70a785d2ad0b542fd104d99","mathematical_subject":"Analysis.Integration","original_sha256":"39fdbace2b03703fcfe5671d1d63834ae08971c9e70a785d2ad0b542fd104d99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T213640Z-1791322600632157000/RootActualAnchoredStripRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualAdjointLowerStrip

/-!
The actual lower time anchor supplies an additional vanishing factor on every
fixed strip. Its quadratic small-width interior control retains the original
second sector, lower-column trace and full remaining time tail.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.StripOrders.Variant39fdbace2b03703fcfe5671d1d63834ae08971c9e70a785d2ad0b542fd104d99

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement
open MeasureTheory Set Filter
open SourceActualAdjointAbelPrimitives SourceActualAdjointLowerStrip RootActualCovariantWorkKernel
open SourceActualDoubleMixedKernel SourceActualCovariantKernel SourceActualStrictWindow
open SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel RH16IndependentChallengeNext
noncomputable section

private theorem strip_orders {A w : ℝ} (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    actualTimeLower A ≤ actualLowerStripUpper A w ∧
    actualTimeLower A ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
    Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A (by linarith)
  have hU1 : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    norm_num
  have hK : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast (show vaughanCutoff A + 1 ≤
      sourceKernelCutoff A / (vaughanCutoff A + 1) by
        have h := actual_strict_quotient_lower hA
        omega)
  refine ⟨le_min (Real.log_le_log hU hUN) (by linarith),
    Real.log_le_log hU hU1, ?_⟩
  exact Real.log_le_log (hU.trans_le hU1) hK

private theorem exp_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ t in l..b, Real.exp (t / 2)) =
      2 * (Real.exp (b / 2) - Real.exp (l / 2)) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2))
      (Real.exp (t / 2)) t := by
    convert (((hasDerivAt_id t).div_const 2).exp).const_mul 2 using 1 <;> try rfl
    simp only [id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun t : ℝ => 2 * Real.exp (t / 2))).continuousOn
    (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)
  simpa only [mul_sub] using h

private theorem exp_neg_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ t in l..b, Real.exp (-t / 2)) =
      2 * (Real.exp (-l / 2) - Real.exp (-b / 2)) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => -2 * Real.exp (-t / 2))
      (Real.exp (-t / 2)) t := by
    convert (((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2) using 1 <;> try rfl
    simp only [Pi.neg_apply, id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun t : ℝ => -2 * Real.exp (-t / 2))).continuousOn
    (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).intervalIntegrable _ _)
  linarith

/-- The genuine lower time anchor is retained in the normalized arithmetic bound. -/
theorem actualAdjointTimePrimitive_anchored_abs_le {A offset t : ℝ} (hA : 1 ≤ A)
    (ht : actualTimeLower A ≤ t) :
    |actualAdjointTimePrimitive A offset t| ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (1 - Real.exp ((actualTimeLower A - t) / 2)) := by
  let C : ℝ := Real.log 4 + 4 + Real.log 2 + |offset|
  have hl : 0 ≤ actualTimeLower A :=
    Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA)
  have hn : |∫ r in actualTimeLower A..t,
      Real.exp (r / 2) * (mangoldtLogError r - offset)| ≤
        C * (2 * (Real.exp (t / 2) - Real.exp (actualTimeLower A / 2))) := by
    have hi : IntervalIntegrable (fun r : ℝ => C * Real.exp (r / 2)) volume
        (actualTimeLower A) t :=
      (by fun_prop : Continuous (fun r : ℝ => C * Real.exp (r / 2))).intervalIntegrable _ _
    have hb : ∀ᵐ r, r ∈ Ioc (actualTimeLower A) t →
        ‖Real.exp (r / 2) * (mangoldtLogError r - offset)‖ ≤ C * Real.exp (r / 2) := by
      filter_upwards with r hr
      have he : |mangoldtLogError r - offset| ≤ C := by
        dsimp [C]
        nlinarith [abs_sub (mangoldtLogError r) offset,
          mangoldtLogError_abs_le r (hl.trans hr.1.le)]
      simpa only [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _), mul_comm]
        using mul_le_mul_of_nonneg_left he (Real.exp_pos (r / 2)).le
    have h := intervalIntegral.norm_integral_le_of_norm_le ht hb hi
    rw [intervalIntegral.integral_const_mul, exp_half_integral _ _ ht] at h
    simpa only [Real.norm_eq_abs] using h
  have hp : Real.exp (-t / 2) * Real.exp (t / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  have he : Real.exp (-t / 2) * Real.exp (actualTimeLower A / 2) =
      Real.exp ((actualTimeLower A - t) / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold actualAdjointTimePrimitive
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp (-t / 2) *
        (C * (2 * (Real.exp (t / 2) - Real.exp (actualTimeLower A / 2)))) :=
      mul_le_mul_of_nonneg_left hn (Real.exp_pos _).le
    _ = _ := by
      change _ = 2 * C * (1 - Real.exp ((actualTimeLower A - t) / 2))
      nlinarith [congrArg (fun x : ℝ => 2 * C * x) hp,
        congrArg (fun x : ℝ => 2 * C * x) he]

/-- Every point in the actual clipped strip has this additional width factor. -/
theorem actualAdjointTimePrimitive_strip_abs_le {A offset w t : ℝ}
    (hA : 25600 ≤ A) (_hw : 0 ≤ w)
    (ht : t ∈ Icc (actualTimeLower A) (actualLowerStripUpper A w)) :
    |actualAdjointTimePrimitive A offset t| ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) * (1 - Real.exp (-w / 2)) := by
  have hb : t ≤ actualTimeLower A + w := ht.2.trans (min_le_right _ _)
  have he := Real.exp_le_exp.mpr (show -w / 2 ≤ (actualTimeLower A - t) / 2 by linarith)
  exact (actualAdjointTimePrimitive_anchored_abs_le (by linarith) ht.1).trans
    (mul_le_mul_of_nonneg_left (sub_le_sub_left he 1) (by positivity))

private theorem strip_density_abs_le {A offset w t s : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w)
    (ht : t ∈ Icc (actualTimeLower A) (actualLowerStripUpper A w))
    (hs : s ∈ Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A)) :
    |actualLowerStripDensity A offset (t, s)| ≤
      (4 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        ((vaughanCutoff A : ℝ) - 1) * (67 / A ^ 4 + 5 / (4 * A ^ 2)) *
          (1 - Real.exp (-w / 2))) *
        Real.exp (t / 2) * Real.exp (-s / 2) := by
  have hp := actualAdjointTimePrimitive_strip_abs_le (offset := offset) hA hw ht
  have hrho : 0 ≤ 1 - Real.exp (-w / 2) := by
    apply sub_nonneg.mpr
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  have hq := actualAdjointColumnPrimitive_abs_le (by linarith : 1 ≤ A)
    ((strip_orders hA hw).2.1.trans hs.1) hs.2
  have hk := actual_covariant_ordinary_work_abs_le A t s (by linarith)
  have hU1 : 1 ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  unfold actualLowerStripDensity
  rw [abs_mul, abs_mul]
  calc
    _ ≤ (2 * (Real.log 4 + 4 + Real.log 2 + |offset|) * (1 - Real.exp (-w / 2))) *
        (2 * ((vaughanCutoff A : ℝ) - 1)) *
        (Real.exp (t / 2) * Real.exp (-s / 2) * (67 / A ^ 4 + 5 / (4 * A ^ 2))) := by
      gcongr
    _ = _ := by ring

set_option maxHeartbeats 1000000 in
-- Extra normalization is required for the genuine exponential and floor-prefactor products.
/-- Actual anchoring improves the fixed strip bound by its vanishing width factor. -/
theorem actualLowerStripInterior_anchored_abs_le {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    |actualLowerStripInterior A offset w| ≤
      32 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (1 - Real.exp (-w / 2)) * (Real.exp (w / 2) - 1) := by
  obtain ⟨hb, hl, hs⟩ := strip_orders hA hw
  let D : ℝ := 4 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
    ((vaughanCutoff A : ℝ) - 1) * (67 / A ^ 4 + 5 / (4 * A ^ 2)) *
    (1 - Real.exp (-w / 2))
  have hrho : 0 ≤ 1 - Real.exp (-w / 2) := by
    apply sub_nonneg.mpr
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  have hU1 : 1 ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have he (t : ℝ) : 0 ≤ D * Real.exp (t / 2) := by positivity
  have hi (t : ℝ) (ht : t ∈ Icc (actualTimeLower A) (actualLowerStripUpper A w)) :
      |∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualLowerStripDensity A offset (t, s)| ≤
          (2 * D * Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2)) *
            Real.exp (t / 2) := by
    have hn := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hs
      (Filter.Eventually.of_forall (fun s hs' => by
        rw [Real.norm_eq_abs]
        exact strip_density_abs_le hA hw ht ⟨hs'.1.le, hs'.2⟩))
      (((by fun_prop : Continuous (fun s : ℝ => Real.exp (-s / 2))).intervalIntegrable
        _ _).const_mul (D * Real.exp (t / 2)))
    rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exp_neg_half_integral _ _ hs] at hn
    nlinarith [mul_nonneg (he t) (Real.exp_pos (-actualColumnUpper A / 2)).le]
  have ho := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hb
    (Filter.Eventually.of_forall (fun t ht => by
      rw [Real.norm_eq_abs]
      exact hi t ⟨ht.1.le, ht.2⟩))
    (((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _).const_mul
      (2 * D * Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2)))
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exp_half_integral _ _ hb] at ho
  have hbexp : Real.exp (actualLowerStripUpper A w / 2) ≤
      Real.exp (actualTimeLower A / 2) * Real.exp (w / 2) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    have hm := min_le_right (Real.log (sourceKernelCutoff A : ℝ)) (actualTimeLower A + w)
    dsimp only [actualLowerStripUpper]
    linarith
  have heprod : Real.exp (actualTimeLower A / 2) *
      Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) ≤ 1 := by
    rw [← Real.exp_add, ← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  have hdelta : 0 ≤ Real.exp (w / 2) - 1 := by
    have := Real.exp_le_exp.mpr (show (0 : ℝ) ≤ w / 2 by linarith)
    simpa using sub_nonneg.mpr this
  have hmass : |actualLowerStripInterior A offset w| ≤
      4 * D * (Real.exp (w / 2) - 1) := by
    have hcoef : 0 ≤ 2 * D *
        Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) := by positivity
    have he1 := mul_le_mul_of_nonneg_left
      (sub_le_sub_right hbexp (Real.exp (actualTimeLower A / 2))) hcoef
    have he2 := mul_le_mul_of_nonneg_left
      (mul_le_mul_of_nonneg_right heprod hdelta) (by positivity : 0 ≤ 4 * D)
    dsimp only [actualLowerStripInterior]
    nlinarith
  have hUA : (vaughanCutoff A : ℝ) - 1 ≤ A ^ 2 := by
    have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
    linarith
  have hscale : A ^ 2 * (67 / A ^ 4 + 5 / (4 * A ^ 2)) ≤ 2 := by
    have h67 : 67 / A ^ 2 ≤ (3 / 4 : ℝ) :=
      (div_le_iff₀ (by positivity : 0 < A ^ 2)).mpr (by nlinarith)
    calc
      _ = 67 / A ^ 2 + 5 / 4 := by field_simp
      _ ≤ 2 := by linarith
  have hUb : ((vaughanCutoff A : ℝ) - 1) *
      (67 / A ^ 4 + 5 / (4 * A ^ 2)) ≤ 2 :=
    (mul_le_mul_of_nonneg_right hUA (by positivity)).trans hscale
  have hCE : 0 ≤ Real.log 4 + 4 + Real.log 2 + |offset| := by positivity
  have hDb : 4 * D ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
      (1 - Real.exp (-w / 2)) := by
    have hh := mul_le_mul_of_nonneg_left hUb (show 0 ≤
      16 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (1 - Real.exp (-w / 2)) by positivity)
    dsimp only [D]
    nlinarith
  exact hmass.trans (mul_le_mul_of_nonneg_right hDb hdelta)

end
end FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement
```
