# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiSqrtClosedReadoutAttempt01.Variant6cc4b9576994f11da1db1c089bed7566fd9c932af0f78f69fc8a8febc6b93d1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a5f49d28e886be4bccd11c06e861ea929020bfa` · SHA-256 `7833a0be7b1ff67052574a5c2d973d2d760b6a72b36aa1a1942dc79ce64a2d35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SqrtBaselinePrimitive.Variant39b47605ca96ed1f333891ad27371afe1c7830b5bfca796c658020bebe4b9c70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39b47605ca96ed1f333891ad27371afe1c7830b5bfca796c658020bebe4b9c70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SqrtBaselinePrimitive.Variant39b47605ca96ed1f333891ad27371afe1c7830b5bfca796c658020bebe4b9c70","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"39b47605ca96ed1f333891ad27371afe1c7830b5bfca796c658020bebe4b9c70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/followthrough3/frontier-sqrt/SourceActualXiSqrtClosedReadout.attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiSqrtPrimitiveReadout
import Mathlib.Tactic

/-!
Complete closed finite prime-power readout of the actual anchored Xi primitive.
The independent gamma companion, smooth square-root term and psi endpoint
remain together. No uniform arithmetic H or J is asserted.
Direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SqrtBaselinePrimitive.Variant39b47605ca96ed1f333891ad27371afe1c7830b5bfca796c658020bebe4b9c70

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualXiSqrtClosedReadout
open MeasureTheory Set ArithmeticFunction
open scoped Interval BigOperators
open SourceActualXiSqrtPrimitiveReadout SourceActualXiPrimitiveTransport
open RH16ActualPsiNegativeBlock

def sqrtBaselinePrimitive (c x : ℝ) : ℝ :=
  c * halfAtomPrimitive x - 2 * x ^ (1 / 2 : ℝ)

theorem sqrtBaselinePrimitive_hasDerivAt (c x : ℝ) (hx : 0 < x) :
    HasDerivAt (sqrtBaselinePrimitive c) ((c - x) / x ^ (3 / 2 : ℝ)) x := by
  have hs := (Real.hasDerivAt_rpow_const (x := x) (p := (1 / 2 : ℝ))
    (Or.inl hx.ne')).const_mul 2
  have he : x ^ (-1 / 2 : ℝ) = x / x ^ (3 / 2 : ℝ) := by
    rw [show (-1 / 2 : ℝ) = 1 - 3 / 2 by ring, Real.rpow_sub hx, Real.rpow_one]
  exact (((halfAtomPrimitive_hasDerivAt x hx).const_mul c).sub hs).congr_deriv (by
    rw [show (1 / 2 - 1 : ℝ) = -1 / 2 by ring, he]
    ring)

theorem actualXiLogPrimitive_log_eq_closed_atoms (Y : ℝ) (hY : 2 ≤ Y) :
    actualXiLogPrimitive (Real.log Y) =
      2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊,
        vonMangoldt n * ((n : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) +
      2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
        ((2 : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) -
      2 * (Y ^ (1 / 2 : ℝ) - (2 : ℝ) ^ (1 / 2 : ℝ)) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hw := inverseThreeHalf_continuousOn Y
  have hb : IntervalIntegrable (fun x => (c - x) / x ^ (3 / 2 : ℝ)) volume 2 Y := by
    simpa only [div_eq_mul_inv, one_div] using
      ((continuousOn_const.sub continuousOn_id).mul hw).intervalIntegrable_of_Icc hY
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x (hx : x ∈ uIcc (2 : ℝ) Y) =>
      sqrtBaselinePrimitive_hasDerivAt c x (by
        rw [uIcc_of_le hY] at hx
        linarith [hx.1])) hb
  have he : (∫ x in 2..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ)) =
      (∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ)) +
        ∫ x in 2..Y, (c - x) / x ^ (3 / 2 : ℝ) := by
    calc
      _ = ∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ) +
          (c - x) / x ^ (3 / 2 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro x _
        unfold shiftedActualChebyshev
        dsimp only [c]
        ring
      _ = _ := intervalIntegral.integral_add
        (psi_inverseThreeHalf_intervalIntegrable Y hY) hb
  have hsum : 2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊,
      vonMangoldt n * ((n : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) =
      2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) -
        2 * Y ^ (-1 / 2 : ℝ) * Chebyshev.psi Y := by
    rw [Chebyshev.psi_eq_sum_Icc]
    simp_rw [mul_sub]
    rw [Finset.sum_sub_distrib, Finset.sum_mul]
    ring
  rw [actualXiLogPrimitive_log_eq_physical Y hY, he,
    actual_psi_inverseThreeHalf Y hY, hi, ← hsum]
  unfold sqrtBaselinePrimitive halfAtomPrimitive
  dsimp only [c]
  ring

end FormalResearch.RiemannHypothesis.SourceActualXiSqrtClosedReadout
```
