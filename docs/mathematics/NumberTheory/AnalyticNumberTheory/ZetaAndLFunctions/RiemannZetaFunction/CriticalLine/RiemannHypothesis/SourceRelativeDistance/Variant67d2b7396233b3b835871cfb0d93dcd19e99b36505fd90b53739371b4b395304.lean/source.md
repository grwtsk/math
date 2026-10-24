# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceRelativeDistance.Variant67d2b7396233b3b835871cfb0d93dcd19e99b36505fd90b53739371b4b395304

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50dacaf2064e3a3bddd26ece26732c83e011899e` · SHA-256 `0247fa5daa20a81a1883c2fe470da16d84c6b55f15a28fec2552cf1563cc0afb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDistance.Variantc0ead28b3fff30200c1c771a4dadf523a6e3add3f3c7d8dabbb0dc0a7a3fc498","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0ead28b3fff30200c1c771a4dadf523a6e3add3f3c7d8dabbb0dc0a7a3fc498","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceDistance.Variantc0ead28b3fff30200c1c771a4dadf523a6e3add3f3c7d8dabbb0dc0a7a3fc498","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c0ead28b3fff30200c1c771a4dadf523a6e3add3f3c7d8dabbb0dc0a7a3fc498","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceRelativeDistance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive

/-!
# Relative distance of the actual normalized source

The labels carry the pullback of the norm distance on the existing complex L²
realization. The correlation identity uses the real part of that realization's
inner product. Its sharp bound applies on `A ≥ 200`; the exact identity and
pseudometric laws apply on every positive scale. A positive-pair logarithmic
gap is a comparison input, not a newly proved arithmetic prime-gap bound.

CSE-RH16-20261007. Research direction: grwtsk contributors.
Native finite adapters: OpenAI Codex; independent review remains separate.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDistance.Variantc0ead28b3fff30200c1c771a4dadf523a6e3add3f3c7d8dabbb0dc0a7a3fc498

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceRelativeDistance

open scoped InnerProductSpace
open SourcePairing SourceReflectionDuality SourceScaleL2Continuity SourcePrimeMomentScale
open SourceMangoldtInteraction SourceCorrelationCurvatureFive SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Distance between literal translates of the same source; no label injectivity is assumed. -/
def sourceDistance (A s t : ℝ) : ℝ :=
  ‖translation s (originalSourceState A) - translation t (originalSourceState A)‖

theorem sourceDistance_nonneg (A s t : ℝ) : 0 ≤ sourceDistance A s t := norm_nonneg _

@[simp] theorem sourceDistance_self (A s : ℝ) : sourceDistance A s s = 0 := by
  simp [sourceDistance]

theorem sourceDistance_comm (A s t : ℝ) : sourceDistance A s t = sourceDistance A t s :=
  norm_sub_rev _ _

theorem sourceDistance_triangle (A s t u : ℝ) :
    sourceDistance A s u ≤ sourceDistance A s t + sourceDistance A t u :=
  norm_sub_le_norm_sub_add_norm_sub _ _ _

/-- Unit translated norms and real stationary inner products give the exact distance. -/
theorem sourceDistance_sq {A : ℝ} (hA : 0 < A) (s t : ℝ) :
    sourceDistance A s t ^ 2 =
      2 * (1 - sourceCorrelation explicitSecondDerivative A (s - t)) := by
  unfold sourceDistance
  rw [norm_sub_sq (𝕜 := ℂ), (translation s).norm_map, (translation t).norm_map,
    originalSourceState_norm hA, translation_inner_stationary]
  have hc := sourceCorrelation_eq_inner hA (t - s)
  change sourceCorrelation explicitSecondDerivative A (t - s) =
    RCLike.re ⟪originalSourceState A, translation (t - s) (originalSourceState A)⟫_ℂ at hc
  rw [← hc]
  have he := sourceCorrelation_even A (s - t)
  rw [show t - s = -(s - t) by ring, he]
  ring

theorem sourceDistance_le_two {A : ℝ} (hA : 0 < A) (s t : ℝ) :
    sourceDistance A s t ≤ 2 := by
  calc
    _ ≤ ‖translation s (originalSourceState A)‖ +
        ‖translation t (originalSourceState A)‖ := norm_sub_le _ _
    _ = 2 := by rw [(translation s).norm_map, (translation t).norm_map,
      originalSourceState_norm hA]; norm_num

/-- Curvature five gives the actual source distance bound at the reconciled native radius. -/
theorem sourceDistance_le_sharp {A : ℝ} (hA : 200 ≤ A) (s t : ℝ) :
    sourceDistance A s t ≤ Real.sqrt 5 * |s - t| / A := by
  have hp : 0 < A := by linarith
  have hb := sourceCorrelation_sub_one_abs_le_five hA (s - t)
  have hs := sourceDistance_sq hp s t
  have hc : 1 - sourceCorrelation explicitSecondDerivative A (s - t) ≤
      |sourceCorrelation explicitSecondDerivative A (s - t) - 1| := by
    simpa only [neg_sub] using neg_le_abs
      (sourceCorrelation explicitSecondDerivative A (s - t) - 1)
  apply (sq_le_sq₀ (sourceDistance_nonneg A s t) (by positivity)).1
  rw [div_pow, mul_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 5), sq_abs]
  rw [hs]
  calc
    _ ≤ 2 * (5 / A ^ 2 * (s - t) ^ 2 / 2) := by linarith
    _ = 5 * (s - t) ^ 2 / A ^ 2 := by ring

theorem sourceDistance_le_min {A : ℝ} (hA : 200 ≤ A) (s t : ℝ) :
    sourceDistance A s t ≤ min 2 (Real.sqrt 5 * |s - t| / A) :=
  le_min (sourceDistance_le_two (by linarith) s t) (sourceDistance_le_sharp hA s t)

/-- The signed observable is Lipschitz in the actual source-state distance. -/
theorem sourceCorrelation_increment_le_distance {A : ℝ} (hA : 0 < A) (s t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A s -
      sourceCorrelation explicitSecondDerivative A t| ≤ sourceDistance A s t := by
  rw [sourceCorrelation_eq_inner hA s, sourceCorrelation_eq_inner hA t,
    ← Complex.sub_re, ← inner_sub_right]
  calc
    _ ≤ ‖⟪originalSourceState A,
      translation s (originalSourceState A) - translation t (originalSourceState A)⟫_ℂ‖ :=
      Complex.abs_re_le_norm _
    _ ≤ ‖originalSourceState A‖ *
      ‖translation s (originalSourceState A) - translation t (originalSourceState A)‖ :=
      norm_inner_le_norm _ _
    _ = sourceDistance A s t := by rw [originalSourceState_norm hA, one_mul]; rfl

/-- Exact coordinate conversion: the relative gap, rather than the integer label, is read. -/
theorem log_gap_eq {p q : ℝ} (hp : 0 < p) (hq : p ≤ q) :
    Real.log q - Real.log p = Real.log (1 + (q - p) / p) := by
  have hq0 := hp.trans_le hq
  rw [← Real.log_div hq0.ne' hp.ne']
  congr 1
  field_simp
  ring

theorem log_gap_le_relative {p q : ℝ} (hp : 0 < p) (hq : p ≤ q) :
    Real.log q - Real.log p ≤ (q - p) / p := by
  have hq0 := hp.trans_le hq
  rw [← Real.log_div hq0.ne' hp.ne']
  convert Real.log_le_sub_one_of_pos (div_pos hq0 hp) using 1
  field_simp

/-- Any positive pair supplies a source comparison; consecutiveness is an external premise. -/
theorem positive_pair_sourceDistance_le {A p q : ℝ} (hA : 200 ≤ A)
    (hp : 0 < p) (hq : p ≤ q) :
    sourceDistance A (Real.log p) (Real.log q) ≤
      (Real.sqrt 5 / A) * Real.log (1 + (q - p) / p) := by
  have hlog := Real.log_le_log hp hq
  have hb := sourceDistance_le_sharp hA (Real.log p) (Real.log q)
  rw [abs_sub_comm, abs_of_nonneg (sub_nonneg.mpr hlog), log_gap_eq hp hq] at hb
  simpa only [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using hb

theorem positive_pair_sourceDistance_le_relative {A p q : ℝ} (hA : 200 ≤ A)
    (hp : 0 < p) (hq : p ≤ q) :
    sourceDistance A (Real.log p) (Real.log q) ≤
      Real.sqrt 5 * (q - p) / (A * p) := by
  have hpA : 0 < A := by linarith
  apply (positive_pair_sourceDistance_le hA hp hq).trans
  rw [← log_gap_eq hp hq]
  have hb := mul_le_mul_of_nonneg_left (log_gap_le_relative hp hq)
    (by positivity : 0 ≤ Real.sqrt 5 / A)
  simpa only [div_eq_mul_inv, mul_inv_rev, mul_assoc, mul_comm, mul_left_comm] using hb

/-- The maintained larger-domain derivative comparison keeps its own constant and domain. -/
theorem sourceCorrelation_increment_le_five {A : ℝ} (hA : 1 ≤ A) (s t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A s -
      sourceCorrelation explicitSecondDerivative A t| ≤ (5 / A) * |s - t| := by
  have hp : 0 < A := by linarith
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := sourceCorrelation explicitSecondDerivative A)
    (fun x _ => (sourceCorrelation_contDiff A hp).differentiable (by norm_num) x)
    (C := 5 / A)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      sourceCorrelation_deriv_abs_le_five_div hA x)
    convex_univ (Set.mem_univ t) (Set.mem_univ s)
  simpa only [Real.norm_eq_abs] using h

theorem positive_pair_correlation_increment_le {A p q : ℝ} (hA : 1 ≤ A)
    (hp : 0 < p) (hq : p ≤ q) :
    |sourceCorrelation explicitSecondDerivative A (Real.log q) -
      sourceCorrelation explicitSecondDerivative A (Real.log p)| ≤
      (5 / A) * Real.log (q / p) := by
  have hlog := Real.log_le_log hp hq
  have hq0 := hp.trans_le hq
  simpa only [abs_of_nonneg (sub_nonneg.mpr hlog),
    Real.log_div hq0.ne' hp.ne'] using
    sourceCorrelation_increment_le_five hA (Real.log q) (Real.log p)

/-- The physical square-root weight is a distinct function from the native correlation. -/
def physicalWeight (A x : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log x) / Real.sqrt x

/-- The chain rule retains both the correlation derivative and the square-root derivative. -/
theorem physicalWeight_hasDerivAt {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    HasDerivAt (physicalWeight A)
      ((deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
        sourceCorrelation explicitSecondDerivative A (Real.log x) / 2) /
          (x * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (Real.log x)).hasDerivAt.comp x (Real.hasDerivAt_log hx.ne')
  have hd := hc.div (Real.hasDerivAt_sqrt hx.ne') hs
  convert hd using 1 <;> try rfl
  dsimp only [Function.comp_def]
  field_simp [hx.ne', hs]
  rw [Real.sq_sqrt hx.le]
  ring

theorem physicalWeight_deriv_eq {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    deriv (physicalWeight A) x =
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
        sourceCorrelation explicitSecondDerivative A (Real.log x) / 2) /
          (x * Real.sqrt x) :=
  (physicalWeight_hasDerivAt hA hx).deriv

end FormalResearch.RiemannHypothesis.SourceRelativeDistance
```
