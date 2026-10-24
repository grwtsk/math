# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBoundaryMangoldtWindow.Variant5ee58b5a922083717288ce9bcf9a27160f793cc40ec22b16a6dd91d8926a38a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `954c80f8e9d1608f83458f36f44d5fe317188ad5` · SHA-256 `d1128f0b8a4e5721fe94e289a1a4c42d7e81878b4f14e97f6bf1726b77f1891f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundarySecondEqReflectedTest.Variante4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.BoundarySecondEqReflectedTest.Variante4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b","mathematical_subject":"Analysis.Calculus","original_sha256":"e4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/principal-origin/future-readout/signed-flux-lean-prepared-v1/SourceBoundaryMangoldtWindow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePeanoEndpointTraces

/-!
# Exact centered finite boundary Mangoldt window

The actual closed-prefix discrepancy and reflected Peano curvature retain the
excluded lower cutoff, included upper cutoff and both endpoint traces. The
centering is the literal discrepancy at the lower window endpoint. No uniform
arithmetic estimate is asserted. Research candidate; local kernel, independent
review and main acceptance are separate receipt gates.

AI attribution: constructed with OpenAI Codex from the actual source APIs.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundarySecondEqReflectedTest.Variante4b23b373999774bda25ba184b445761c46e7eea2be77e7d21ecb7df7199cd1b

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceBoundaryMangoldtWindow

open MeasureTheory Set
open SourcePairing SourcePeanoBoundaryAtoms SourcePeanoEndpointTraces
open SourceMangoldtAbel SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

private theorem boundary_second_eq_reflected_test {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (boundaryPeano A)) y =
      peanoScale A * criticalPrimeTest A (2 * A - y) := by
  rw [boundaryPeano_second_deriv hA]
  unfold boundaryKernel peanoScale criticalPrimeTest
  have he : Real.exp (-A) * Real.exp ((2 * A - y) / 2) = Real.exp (-y / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = A ^ 9 * Real.exp (-y / 2) *
        sourceCorrelation explicitSecondDerivative A (2 * A - y) := by ring
    _ = _ := by rw [← he]; ring

private theorem boundary_second_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (deriv (deriv (boundaryPeano A))) := by
  have he : deriv (deriv (boundaryPeano A)) =
      fun y => peanoScale A * criticalPrimeTest A (2 * A - y) :=
    funext (boundary_second_eq_reflected_test hA)
  rw [he]
  exact contDiff_const.mul ((criticalPrimeTest_contDiff A hA).comp
    (show ContDiff ℝ 1 (fun y : ℝ => 2 * A - y) by fun_prop))

private theorem boundary_third_eq_reflected_deriv {A : ℝ}
    (hA : 0 < A) (y : ℝ) :
    deriv (deriv (deriv (boundaryPeano A))) y =
      -peanoScale A * deriv (criticalPrimeTest A) (2 * A - y) := by
  have he : deriv (deriv (boundaryPeano A)) =
      fun z => peanoScale A * criticalPrimeTest A (2 * A - z) :=
    funext (boundary_second_eq_reflected_test hA)
  have hg := ((criticalPrimeTest_contDiff A hA).differentiable
    (by norm_num) (2 * A - y)).hasDerivAt
  have hc : HasDerivAt (fun z : ℝ => 2 * A - z) (-1) y := by
    simpa only [id_eq] using (hasDerivAt_id y).const_sub (2 * A)
  have hd := (hg.comp y hc).const_mul (peanoScale A)
  rw [he]
  exact (hd.congr_deriv (by ring)).deriv

/-- Exact reflection of the actual finite Abel window retains its endpoint centering. -/
theorem peanoScale_mul_mangoldtLogWindow_eq_centered_boundary_flux
    {A Y : ℝ} (hA : 0 < A) (hY0 : 0 ≤ Y) (hY2 : Y ≤ 2 * A) :
    peanoScale A * mangoldtLogWindow (2 * A - Y) (2 * A) (criticalPrimeTest A) =
      deriv (boundaryPeano A) Y +
        ∫ y in 0..Y,
          (mangoldtLogError (2 * A - y) - mangoldtLogError (2 * A - Y)) *
            deriv (deriv (deriv (boundaryPeano A))) y := by
  have hleft : 0 ≤ 2 * A - Y := by linarith
  have horder : 2 * A - Y ≤ 2 * A := by linarith
  have hg := criticalPrimeTest_contDiff A hA
  have hreflect (f : ℝ → ℝ) :
      (∫ y in 0..Y, f (2 * A - y)) = ∫ t in (2 * A - Y)..2 * A, f t := by
    simpa only [sub_zero] using
      (intervalIntegral.integral_comp_sub_left f (2 * A) (a := 0) (b := Y))
  have hB1 : ContDiff ℝ 1 (deriv (boundaryPeano A)) :=
    (boundaryPeano_contDiff_two hA).deriv'
  have hB2 := boundary_second_contDiff hA
  have hi2 : IntervalIntegrable (deriv (deriv (boundaryPeano A))) volume 0 Y :=
    hB2.continuous.intervalIntegrable 0 Y
  have hi3 : IntervalIntegrable (deriv (deriv (deriv (boundaryPeano A))))
      volume 0 Y := hB2.continuous_deriv_one.intervalIntegrable 0 Y
  have hmass2 : (∫ y in 0..Y, deriv (deriv (boundaryPeano A)) y) =
      deriv (boundaryPeano A) Y := by
    have ht := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun y _ => (hB1.differentiable (by norm_num) y).hasDerivAt) hi2
    simpa only [boundaryPeano_deriv_at_zero hA, sub_zero] using ht
  have hzero2 : deriv (deriv (boundaryPeano A)) 0 = 0 := by
    rw [boundary_second_eq_reflected_test hA, sub_zero,
      criticalPrimeTest_at_upper A hA, mul_zero]
  have hmass3 : (∫ y in 0..Y, deriv (deriv (deriv (boundaryPeano A))) y) =
      deriv (deriv (boundaryPeano A)) Y := by
    have ht := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun y _ => (hB2.differentiable (by norm_num) y).hasDerivAt) hi3
    simpa only [hzero2, sub_zero] using ht
  have hcontinuous :
      peanoScale A * (∫ t in (2 * A - Y)..2 * A, criticalPrimeTest A t) =
        deriv (boundaryPeano A) Y := by
    calc
      _ = ∫ y in 0..Y, peanoScale A * criticalPrimeTest A (2 * A - y) := by
        rw [intervalIntegral.integral_const_mul, hreflect]
      _ = ∫ y in 0..Y, deriv (deriv (boundaryPeano A)) y := by
        apply intervalIntegral.integral_congr
        intro y _
        exact (boundary_second_eq_reflected_test hA y).symm
      _ = _ := hmass2
  have hraw (y : ℝ) :
      mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y =
        -peanoScale A *
          (mangoldtLogError (2 * A - y) * deriv (criticalPrimeTest A) (2 * A - y)) := by
    rw [boundary_third_eq_reflected_deriv hA]
    ring
  have hflux :
      (∫ y in 0..Y,
        mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y) =
      -peanoScale A * (∫ t in (2 * A - Y)..2 * A,
        mangoldtLogError t * deriv (criticalPrimeTest A) t) := by
    simp_rw [hraw]
    rw [intervalIntegral.integral_const_mul, hreflect]
  have hiref : IntervalIntegrable (fun y =>
      mangoldtLogError (2 * A - y) * deriv (criticalPrimeTest A) (2 * A - y))
      volume 0 Y := by
    have ht := (mangoldtLogError_mul_deriv_intervalIntegrable
      (2 * A - Y) (2 * A) horder (criticalPrimeTest A) hg).comp_sub_left (2 * A)
    rw [sub_self, show 2 * A - (2 * A - Y) = Y by ring] at ht
    exact ht.symm
  have hiraw : IntervalIntegrable (fun y =>
      mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y)
      volume 0 Y := by
    have he : (fun y =>
        mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y) =
        fun y => -peanoScale A *
          (mangoldtLogError (2 * A - y) * deriv (criticalPrimeTest A) (2 * A - y)) :=
      funext hraw
    rw [he]
    exact hiref.const_mul (-peanoScale A)
  have hcenter :
      (∫ y in 0..Y,
        (mangoldtLogError (2 * A - y) - mangoldtLogError (2 * A - Y)) *
          deriv (deriv (deriv (boundaryPeano A))) y) =
      (∫ y in 0..Y,
        mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y) -
        mangoldtLogError (2 * A - Y) * deriv (deriv (boundaryPeano A)) Y := by
    simp_rw [sub_mul]
    rw [intervalIntegral.integral_sub hiraw
      (hi3.const_mul (mangoldtLogError (2 * A - Y))),
      intervalIntegral.integral_const_mul, hmass3]
  have habel := mangoldtLogWindow_sub_integral (2 * A - Y) (2 * A)
    hleft horder (criticalPrimeTest A) hg
  rw [criticalPrimeTest_at_upper A hA, zero_mul, zero_sub] at habel
  have hscaled := congrArg (fun x : ℝ => peanoScale A * x) habel
  have hlower := congrArg (fun x : ℝ => x * mangoldtLogError (2 * A - Y))
    (boundary_second_eq_reflected_test hA Y)
  rw [hcenter]
  nlinarith [hcontinuous, hflux]

end FormalResearch.RiemannHypothesis.SourceBoundaryMangoldtWindow
```
