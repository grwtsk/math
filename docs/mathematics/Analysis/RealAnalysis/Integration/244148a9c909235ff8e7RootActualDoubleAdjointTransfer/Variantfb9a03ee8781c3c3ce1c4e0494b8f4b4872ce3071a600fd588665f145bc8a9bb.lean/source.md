# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.244148a9c909235ff8e7RootActualDoubleAdjointTransfer.Variantfb9a03ee8781c3c3ce1c4e0494b8f4b4872ce3071a600fd588665f145bc8a9bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17e6559ed7677d8a2bda9d67fd9a9bc54b0a2e97` · SHA-256 `5e0aacfe07a0169f1c44aa2021325037cb9bedeaf5355bf8a1ca29dbb95aa80c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualTwistedTimeDensity.Variant244148a9c909235ff8e7cfc2bf5830409546f62faf9eef5a6949cdf64fb1be84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"244148a9c909235ff8e7cfc2bf5830409546f62faf9eef5a6949cdf64fb1be84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualTwistedTimeDensity.Variant244148a9c909235ff8e7cfc2bf5830409546f62faf9eef5a6949cdf64fb1be84","mathematical_subject":"Analysis.Integration","original_sha256":"244148a9c909235ff8e7cfc2bf5830409546f62faf9eef5a6949cdf64fb1be84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/244148a9c909235ff8e7-RootActualDoubleAdjointTransfer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualLogColumnTransport
import RootActualUpperTimeJets
import Mathlib.MeasureTheory.Integral.Prod

/-!
Two genuine weighted Abel integrations act on the literal original mixed work.
The upper time traces vanish at the actual source seam. The lower column trace,
original second sector, closed arithmetic inventories and compensation remain.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualTwistedTimeDensity.Variant244148a9c909235ff8e7cfc2bf5830409546f62faf9eef5a6949cdf64fb1be84

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualDoubleAdjointTransfer
open MeasureTheory Set Filter
open SourceActualAdjointAbelPrimitives SourceActualLogColumnTransport
open SourceActualDoubleMixedKernel SourceActualCovariantKernel RootActualCovariantWorkKernel
open RootActualUpperTimeJets SourceMangoldtAbel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel RH16IndependentChallengeNext
noncomputable section

/-- The independently specified first twisted derivative retains both actual odd jets. -/
def actualTwistedTimeDensity (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4)

private theorem actual_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) ∧
      actualTimeLower A ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
        Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  have hU1 : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by simp
  have hK : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast actual_column_window_nonempty hA
  exact ⟨Real.log_le_log hU hUN, Real.log_le_log hU hU1,
    Real.log_le_log (hU.trans_le hU1) hK⟩

private theorem jet_hasDerivAt {A : ℝ} (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  simpa only [iteratedDeriv_succ] using
    (((actual_correlation_contDiff_four A hA).differentiable_iteratedDeriv n
      (by exact_mod_cast hn)) z).hasDerivAt

private theorem jet_contDiff_one {A : ℝ} (hA : 0 < A) (n : ℕ) (hn : n ≤ 3) :
    ContDiff ℝ 1 (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A)) := by
  rw [iteratedDeriv_eq_iterate]
  exact ContDiff.iterate_deriv' 1 n ((actual_correlation_contDiff_four A hA).of_le
    (by exact_mod_cast (by omega : 1 + n ≤ 4)))

private theorem mixed_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun z : ℝ × ℝ => actualLogMixedDensity A z.1 z.2) := by
  have h0 := (actual_correlation_contDiff_four A hA).continuous
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2
    (by norm_num)
  unfold actualLogMixedDensity
  fun_prop

private theorem twisted_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun z : ℝ × ℝ => actualTwistedTimeDensity A z.1 z.2) := by
  have h1 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 1
    (by norm_num)
  have h3 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 3
    (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

private theorem covariant_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun z : ℝ × ℝ =>
      covariantMixedDerivative (actualLogMixedDensity A) z.1 z.2) := by
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2
    (by norm_num)
  have h4 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 4
    (by norm_num)
  simp_rw [actual_covariant_ordinary_work_kernel A hA]
  fun_prop

private theorem mixed_time_contDiff {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiff ℝ 1 (fun t => actualLogMixedDensity A t s) := by
  have h0 := jet_contDiff_one hA 0 (by norm_num)
  have h2 := jet_contDiff_one hA 2 (by norm_num)
  simp only [iteratedDeriv_zero] at h0
  unfold actualLogMixedDensity
  fun_prop

private theorem twisted_column_contDiff {A : ℝ} (hA : 0 < A) (t : ℝ) :
    ContDiff ℝ 1 (actualTwistedTimeDensity A t) := by
  have h1 := jet_contDiff_one hA 1 (by norm_num)
  have h3 := jet_contDiff_one hA 3 (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

/-- This is the genuine first twisted derivative of the original mixed density. -/
theorem actualTwistedTimeDensity_eq_time_deriv {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    deriv (fun x => actualLogMixedDensity A x s) t - actualLogMixedDensity A t s / 2 =
      actualTwistedTimeDensity A t s := by
  have h0 := (jet_hasDerivAt hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have h2 := (jet_hasDerivAt hA 2 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hh := he.mul (h2.sub (h0.div_const 4))
  have hd : HasDerivAt (fun x => actualLogMixedDensity A x s)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) +
          iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 2 -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4 -
              sourceCorrelation explicitSecondDerivative A (t + s) / 8)) t := by
    convert hh using 1 <;> try rfl
    simp only [Function.comp_apply, iteratedDeriv_zero, id_eq, Pi.sub_apply]
    ring
  rw [hd.deriv]
  simp only [actualLogMixedDensity, actualTwistedTimeDensity]
  ring

/-- Its second twisted derivative is the original post-adjoint kernel with its second sector. -/
theorem actualTwistedTimeDensity_column_deriv {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    deriv (actualTwistedTimeDensity A t) s + actualTwistedTimeDensity A t s / 2 =
      covariantMixedDerivative (actualLogMixedDensity A) t s := by
  have hf : (fun y => deriv (fun x => actualLogMixedDensity A x y) t -
      actualLogMixedDensity A t y / 2) = actualTwistedTimeDensity A t := by
    funext y
    exact actualTwistedTimeDensity_eq_time_deriv hA t y
  unfold covariantMixedDerivative
  rw [hf, actualTwistedTimeDensity_eq_time_deriv hA t s]

private theorem weighted_box_integrable {l b a c : ℝ} (hlb : l ≤ b) (hac : a ≤ c)
    (f g : ℝ → ℝ) (K : ℝ → ℝ → ℝ)
    (hf : IntervalIntegrable f volume l b) (hg : IntervalIntegrable g volume a c)
    (hK : Continuous (fun z : ℝ × ℝ => K z.1 z.2)) :
    Integrable (fun z : ℝ × ℝ => f z.1 * (g z.2 * K z.1 z.2))
      ((volume.restrict (Ioc l b)).prod (volume.restrict (Ioc a c))) := by
  obtain ⟨C, hC⟩ := (isCompact_Icc.prod isCompact_Icc).exists_bound_of_continuousOn
    hK.continuousOn
  have hb : ∀ᵐ z ∂(volume.restrict (Ioc l b)).prod (volume.restrict (Ioc a c)),
      ‖K z.1 z.2‖ ≤ C := by
    rw [Measure.prod_restrict]
    filter_upwards [ae_restrict_mem (measurableSet_Ioc.prod measurableSet_Ioc)] with z hz
    exact hC z ⟨⟨hz.1.1.le, hz.1.2⟩, ⟨hz.2.1.le, hz.2.2⟩⟩
  have hi := ((intervalIntegrable_iff_integrableOn_Ioc_of_le hlb).mp hf).mul_prod
    ((intervalIntegrable_iff_integrableOn_Ioc_of_le hac).mp hg)
  convert hi.mul_bdd hK.aestronglyMeasurable hb using 1
  funext z
  ring

private theorem weighted_box_swap {l b a c : ℝ} (hlb : l ≤ b) (hac : a ≤ c)
    (f g : ℝ → ℝ) (K : ℝ → ℝ → ℝ)
    (hf : IntervalIntegrable f volume l b) (hg : IntervalIntegrable g volume a c)
    (hK : Continuous (fun z : ℝ × ℝ => K z.1 z.2)) :
    (∫ t in l..b, f t * ∫ s in a..c, g s * K t s) =
      ∫ s in a..c, g s * ∫ t in l..b, f t * K t s := by
  have hi := weighted_box_integrable hlb hac f g K hf hg hK
  have hs := integral_integral_swap (f := fun t s => f t * (g s * K t s)) hi
  simp only [intervalIntegral.integral_of_le hlb, intervalIntegral.integral_of_le hac]
  calc
    _ = ∫ t, ∫ s, f t * (g s * K t s)
        ∂volume.restrict (Ioc a c) ∂volume.restrict (Ioc l b) := by
      simp_rw [integral_const_mul]
    _ = ∫ s, ∫ t, f t * (g s * K t s)
        ∂volume.restrict (Ioc l b) ∂volume.restrict (Ioc a c) := hs
    _ = _ := by
      simp_rw [show ∀ t s, f t * (g s * K t s) = g s * (f t * K t s) by
        intro t s; ring, integral_const_mul]


private theorem error_intervalIntegrable (l b : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable mangoldtLogError volume l b := by
  simpa using mangoldtLogError_mul_deriv_intervalIntegrable l b hlb
    (fun t : ℝ => t) contDiff_id

private theorem prefix_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (actualLogColumnPrefix A) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) := by
  simpa only [mul_one, actualColumnUpper] using
    actualLogColumnPrefix_mul_intervalIntegrable A _ (actual_column_window_nonempty hA)
      (fun _ => 1) continuous_const

private theorem time_primitive_continuousOn {A offset : ℝ} (hA : 1 ≤ A) :
    ContinuousOn (actualAdjointTimePrimitive A offset)
      (Icc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ))) := by
  have ho := (actual_orders hA).1
  simpa only [uIcc_of_le ho] using
    (actualAdjointTimePrimitive_absolutelyContinuous A offset _ ho).continuousOn

private theorem column_primitive_continuousOn {A : ℝ} (hA : 1 ≤ A) :
    ContinuousOn (actualAdjointColumnPrimitive A)
      (Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A)) := by
  obtain ⟨_, hl, hs⟩ := actual_orders hA
  simpa only [uIcc_of_le hs] using
    (actualAdjointColumnPrimitive_absolutelyContinuous hA hl hs).continuousOn

/-- The interior is independently specified with both actual arithmetic primitives. -/
def actualAdjointInterior (A : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualAdjointTimePrimitive A 0 t * actualAdjointColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s

/-- The retained opposite boundary uses the genuine lower column primitive. -/
def actualAdjointLowerColumnTrace (A : ℝ) : ℝ :=
  actualAdjointColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) *
    ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        actualTwistedTimeDensity A t (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))

/-- Actual arithmetic factors and C4 regularity justify the full original Fubini swap. -/
theorem actualOriginalMixedBox_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun z : ℝ × ℝ => mangoldtLogError z.1 *
      (actualLogColumnPrefix A z.2 * actualLogMixedDensity A z.1 z.2))
      ((volume.restrict (Ioc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)))).prod
        (volume.restrict (Ioc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
          (actualColumnUpper A)))) := by
  obtain ⟨ht, _, hs⟩ := actual_orders hA
  exact weighted_box_integrable ht hs mangoldtLogError (actualLogColumnPrefix A)
    (actualLogMixedDensity A) (error_intervalIntegrable _ _ ht)
    (prefix_intervalIntegrable hA) (mixed_continuous (by linarith))

/-- The complete literal post-adjoint interior is L1 before its quantitative estimate. -/
theorem actualAdjointInteriorBox_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun z : ℝ × ℝ =>
      actualAdjointTimePrimitive A 0 z.1 * (actualAdjointColumnPrimitive A z.2 *
        covariantMixedDerivative (actualLogMixedDensity A) z.1 z.2))
      ((volume.restrict (Ioc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)))).prod
        (volume.restrict (Ioc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
          (actualColumnUpper A)))) := by
  obtain ⟨ht, _, hs⟩ := actual_orders hA
  exact weighted_box_integrable ht hs _ _ _
    ((time_primitive_continuousOn (offset := 0) hA).intervalIntegrable_of_Icc ht)
    ((column_primitive_continuousOn hA).intervalIntegrable_of_Icc hs)
    (covariant_continuous (by linarith))

/-- Genuine two-dimensional weighted Abel preserves the lower column trace in original W. -/
theorem jointMangoldtErrorWork_eq_actual_double_adjoint {A : ℝ} (hA : 1 ≤ A) :
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      -actualAdjointLowerColumnTrace A - actualAdjointInterior A := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let c := actualColumnUpper A
  let P := actualAdjointTimePrimitive A 0
  let Q := actualAdjointColumnPrimitive A
  let B := actualLogColumnPrefix A
  let H := actualLogMixedDensity A
  let T := actualTwistedTimeDensity A
  let J := covariantMixedDerivative H
  obtain ⟨ht, hl, hs⟩ := actual_orders hA
  have hp : IntervalIntegrable P volume l b :=
    (time_primitive_continuousOn hA).intervalIntegrable_of_Icc ht
  have hq : IntervalIntegrable Q volume a c :=
    (column_primitive_continuousOn hA).intervalIntegrable_of_Icc hs
  have hE := error_intervalIntegrable l b ht
  have hB := prefix_intervalIntegrable hA
  have htime (s : ℝ) (has : a ≤ s) :
      (∫ t in l..b, mangoldtLogError t * H t s) =
        -(∫ t in l..b, P t * T t s) := by
    have hi := actual_time_covariant_abel A 0 b ht (fun t => H t s)
      (mixed_time_contDiff (by linarith) s)
    dsimp only [H, b] at hi
    simp only [sub_zero, actualMixedDensity_upperTime_zero A hA s has, mul_zero,
      zero_sub] at hi
    simpa only [actualTwistedTimeDensity_eq_time_deriv (by linarith : 0 < A)] using hi
  have hcol (t : ℝ) : (∫ s in a..c, B s * T t s) =
      -Q a * T t a - ∫ s in a..c, Q s * J t s := by
    have hi := actual_column_covariant_abel hA hl hs (T t)
      (twisted_column_contDiff (by linarith) t)
    dsimp only [T] at hi
    simpa only [actualTwistedTimeDensity_column_deriv (by linarith : 0 < A)] using hi
  have hswap1 := weighted_box_swap ht hs mangoldtLogError B H hE hB
    (mixed_continuous (by linarith))
  have hswap2 := weighted_box_swap ht hs P B T hp hB
    (twisted_continuous (by linarith))
  have hPQ : IntervalIntegrable (fun t => P t * ∫ s in a..c, Q s * J t s)
      volume l b := by
    have hi := actualAdjointInteriorBox_integrable hA
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le ht]
    simpa only [l, b, a, c, P, Q, J, H, IntegrableOn,
      intervalIntegral.integral_of_le hs, integral_const_mul] using hi.integral_prod_left
  have htrace : IntervalIntegrable (fun t => P t * T t a) volume l b := by
    exact hp.mul_continuousOn ((twisted_continuous (by linarith)).comp
      (continuous_id.prodMk continuous_const)).continuousOn
  rw [jointMangoldtErrorWork_eq_log_prefix_all_real hA, hswap1]
  calc
    -(∫ s in a..c, B s * ∫ t in l..b, mangoldtLogError t * H t s) =
        ∫ s in a..c, B s * ∫ t in l..b, P t * T t s := by
      have heq : (∫ s in a..c, B s * ∫ t in l..b, mangoldtLogError t * H t s) =
          -(∫ s in a..c, B s * ∫ t in l..b, P t * T t s) := by
        rw [← intervalIntegral.integral_neg]
        apply intervalIntegral.integral_congr
        intro s hsm
        rw [uIcc_of_le hs] at hsm
        dsimp only
        rw [htime s hsm.1]
        ring
      rw [heq, neg_neg]
    _ = ∫ t in l..b, P t * ∫ s in a..c, B s * T t s := hswap2.symm
    _ = -Q a * (∫ t in l..b, P t * T t a) -
        ∫ t in l..b, P t * ∫ s in a..c, Q s * J t s := by
      simp_rw [hcol]
      have he : (fun t => P t * (-Q a * T t a - ∫ s in a..c, Q s * J t s)) =
          (fun t => -Q a * (P t * T t a) - P t * ∫ s in a..c, Q s * J t s) := by
        funext t
        ring
      rw [he, intervalIntegral.integral_sub (htrace.const_mul (-Q a)) hPQ,
        intervalIntegral.integral_const_mul]
    _ = _ := by
      have he : actualAdjointInterior A =
          ∫ t in l..b, P t * ∫ s in a..c, Q s * J t s := by
        unfold actualAdjointInterior
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        rw [← intervalIntegral.integral_const_mul]
        apply intervalIntegral.integral_congr
        intro s _
        dsimp only
        ring
      rw [he]
      unfold actualAdjointLowerColumnTrace
      change -Q a * (∫ t in l..b, P t * T t a) -
        (∫ t in l..b, P t * ∫ s in a..c, Q s * J t s) =
          -(Q a * ∫ t in l..b, P t * T t a) -
            (∫ t in l..b, P t * ∫ s in a..c, Q s * J t s)
      ring

end
end FormalResearch.RiemannHypothesis.RootActualDoubleAdjointTransfer
```
