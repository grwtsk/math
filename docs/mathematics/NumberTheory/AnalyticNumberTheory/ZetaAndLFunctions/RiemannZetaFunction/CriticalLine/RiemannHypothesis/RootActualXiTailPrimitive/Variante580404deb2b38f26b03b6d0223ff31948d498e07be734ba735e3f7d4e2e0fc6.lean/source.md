# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualXiTailPrimitive.Variante580404deb2b38f26b03b6d0223ff31948d498e07be734ba735e3f7d4e2e0fc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0439a1b190e9c41c4a2ef6f71f7bac7aa223706` · SHA-256 `868a1924be71beccd7a2f6581c7ec1f86a25f17afce08e74efebaef34be3d501`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualXiTailTimeDensity.Variant526337617d4b526717d601f6934cc5afdb179ebcdb0c0289ac7694690438678b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"526337617d4b526717d601f6934cc5afdb179ebcdb0c0289ac7694690438678b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualXiTailTimeDensity.Variant526337617d4b526717d601f6934cc5afdb179ebcdb0c0289ac7694690438678b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"526337617d4b526717d601f6934cc5afdb179ebcdb0c0289ac7694690438678b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/RootActualXiTailPrimitive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCompleteXiTailConsumer
import SourceActualShiftedXiDerivativeAdapter
import FiveCesaroKernelBudget

/-!
A genuine source primitive is anchored at the retained physical cutoff seven.
It equals the literal physical integral of the full shifted Chebyshev error,
including every prime power and the original gamma correction. No arithmetic
average bound is asserted or made into a structure field.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualXiTailTimeDensity.Variant526337617d4b526717d601f6934cc5afdb179ebcdb0c0289ac7694690438678b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualXiTailPrimitive
open MeasureTheory Set ArithmeticFunction
open scoped Interval
open RH16ActualPsiNegativeBlock RH16CompleteXiTail RH16ShiftedXiAdapter
open SourceActualPsiInverseSquare
noncomputable section

/-- The original shifted Chebyshev density in the positive exponential coordinate. -/
def actualXiTailTimeDensity (t : ℝ) : ℝ :=
  shiftedActualChebyshev (Real.exp t) * Real.exp (-t / 2)

/-- A genuine anchored time integral, whose exact physical identity is proved below. -/
def actualAnchoredXiTailPrimitive (t : ℝ) : ℝ :=
  ∫ r in Real.log 7..t, actualXiTailTimeDensity r

/-- The full closed arithmetic step function gives a genuine measurable density. -/
theorem actualXiTailTimeDensity_measurable : Measurable actualXiTailTimeDensity := by
  have hm : Measurable Chebyshev.psi := by
    have he : Chebyshev.psi = (fun y : ℝ =>
        ∑ n ∈ Finset.Icc 0 (Nat.floor y), (vonMangoldt n : ℝ)) := by
      funext y
      rw [Chebyshev.psi_eq_sum_Icc]
    rw [he]
    exact (measurable_of_countable (fun M : ℕ =>
      ∑ n ∈ Finset.Icc 0 M, (vonMangoldt n : ℝ))).comp Nat.measurable_floor
  unfold actualXiTailTimeDensity shiftedActualChebyshev
  fun_prop

/-- Genuine finite source L1 is established before constructing its primitive. -/
theorem actualXiTailTimeDensity_intervalIntegrable {b : ℝ} (hb : Real.log 7 ≤ b) :
    IntervalIntegrable actualXiTailTimeDensity volume (Real.log 7) b := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  let B : ℝ := Chebyshev.psi (Real.exp b) + Real.exp b + |c|
  have hB : 0 ≤ B := by dsimp [B]; positivity
  apply intervalIntegrable_iff.mpr
  have hbound : ∀ᵐ t ∂volume.restrict (uIoc (Real.log 7) b),
      ‖actualXiTailTimeDensity t‖ ≤ B := by
    rw [uIoc_of_le hb]
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht.1.le
    have he : Real.exp t ≤ Real.exp b := Real.exp_le_exp.mpr ht.2
    have hp := Chebyshev.psi_mono he
    have ha : |shiftedActualChebyshev (Real.exp t)| ≤ B := by
      have hh := abs_add_le (Chebyshev.psi (Real.exp t) - Real.exp t) c
      have hh2 := abs_sub (Chebyshev.psi (Real.exp t)) (Real.exp t)
      rw [abs_of_nonneg (Chebyshev.psi_nonneg _), abs_of_pos (Real.exp_pos _)] at hh2
      unfold shiftedActualChebyshev
      change |Chebyshev.psi (Real.exp t) - Real.exp t + c| ≤ B
      dsimp [B]
      linarith
    have hd : Real.exp (-t / 2) ≤ 1 := by
      simpa only [Real.exp_zero] using (Real.exp_le_exp.mpr (by linarith : -t / 2 ≤ 0))
    rw [Real.norm_eq_abs, actualXiTailTimeDensity, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ B * Real.exp (-t / 2) := mul_le_mul_of_nonneg_right ha (Real.exp_pos _).le
      _ ≤ B := by nlinarith
  exact Measure.integrableOn_of_bounded (by simp)
    actualXiTailTimeDensity_measurable.aestronglyMeasurable hbound

/-- Positive exponential substitution retains the literal physical source and its lower seven. -/
theorem actualAnchoredXiTailPrimitive_eq_physical (t : ℝ) :
    actualAnchoredXiTailPrimitive t =
      ∫ y in (7 : ℝ)..Real.exp t, shiftedActualChebyshev y / y ^ (3 / 2 : ℝ) := by
  let g : ℝ → ℝ := fun y => shiftedActualChebyshev y / y ^ (3 / 2 : ℝ)
  have hd (r : ℝ) (_hr : r ∈ Ioo (min (Real.log 7) t) (max (Real.log 7) t)) :
      HasDerivAt Real.exp (Real.exp r) r := Real.hasDerivAt_exp r
  have he := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    Real.continuous_exp.continuousOn hd (fun r _ => (Real.exp_pos r).le) (g := g)
  have hh : (fun r => (g ∘ Real.exp) r * Real.exp r) = actualXiTailTimeDensity := by
    funext r
    dsimp only [Function.comp_apply, g, actualXiTailTimeDensity]
    rw [Real.rpow_def_of_pos (Real.exp_pos r), Real.log_exp]
    have hx : Real.exp r / Real.exp (r * (3 / 2 : ℝ)) = Real.exp (-r / 2) := by
      rw [← Real.exp_sub]
      congr 1
      ring
    calc
      _ = shiftedActualChebyshev (Real.exp r) *
          (Real.exp r / Real.exp (r * (3 / 2 : ℝ))) := by ring
      _ = _ := by rw [hx]
  rw [hh, Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he

/-- The actual lower anchor is exactly zero, including its closed prime-seven atom. -/
theorem actualAnchoredXiTailPrimitive_at_lower :
    actualAnchoredXiTailPrimitive (Real.log 7) = 0 := by
  simp [actualAnchoredXiTailPrimitive]

/-- The actual source primitive is absolutely continuous on every genuine finite tail window. -/
theorem actualAnchoredXiTailPrimitive_absolutelyContinuous {b : ℝ} (hb : Real.log 7 ≤ b) :
    AbsolutelyContinuousOnInterval actualAnchoredXiTailPrimitive (Real.log 7) b := by
  have hi := actualXiTailTimeDensity_intervalIntegrable hb
  exact hi.absolutelyContinuousOnInterval_intervalIntegral
    (by simp : Real.log 7 ∈ uIcc (Real.log 7) b)

/-- Its AE derivative is the full original signed density, with all touching arithmetic seams. -/
theorem actualAnchoredXiTailPrimitive_ae_hasDerivAt {b : ℝ} (hb : Real.log 7 ≤ b) :
    ∀ᵐ t, t ∈ uIcc (Real.log 7) b →
      HasDerivAt actualAnchoredXiTailPrimitive (actualXiTailTimeDensity t) t := by
  filter_upwards [(actualXiTailTimeDensity_intervalIntegrable hb).ae_hasDerivAt_integral]
    with t ht hm
  exact ht hm (Real.log 7) (by simp)

end
end FormalResearch.RiemannHypothesis.RootActualXiTailPrimitive
```
