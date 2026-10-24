# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiSqrtClosedReadout.Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfeaf51ced416c8ae6abaaa09c87cd8b3339b8a5` · SHA-256 `a8a060f7a4d5ca0e5585c7e8a61d07abf611236b24a1181a87946c9a11d13bd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SqrtBaselinePrimitive.Variant227d8ddca0a76cf032746a6b39a9752fe21d61f1ac7cb13709485665077b3ab5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"227d8ddca0a76cf032746a6b39a9752fe21d61f1ac7cb13709485665077b3ab5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SqrtBaselinePrimitive.Variant227d8ddca0a76cf032746a6b39a9752fe21d61f1ac7cb13709485665077b3ab5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"227d8ddca0a76cf032746a6b39a9752fe21d61f1ac7cb13709485665077b3ab5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791328482213457000/SourceActualXiSqrtClosedReadout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiSqrtPrimitiveReadout
import Mathlib.Tactic

/-!
Complete closed finite prime-power readout of the actual anchored Xi primitive.
The independent gamma companion, smooth square-root term and psi endpoint
remain together. No uniform arithmetic H or J is asserted.
Direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SqrtBaselinePrimitive.Variant227d8ddca0a76cf032746a6b39a9752fe21d61f1ac7cb13709485665077b3ab5

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
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    exact ((continuousAt_const.sub continuousAt_id).div
      (continuousAt_id.rpow_const (Or.inl hp.ne'))
      (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt
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
    rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
    ring
  rw [actualXiLogPrimitive_log_eq_physical Y hY, he,
    actual_psi_inverseThreeHalf Y hY, hi, ← hsum]
  unfold sqrtBaselinePrimitive halfAtomPrimitive
  dsimp only [c]
  ring

end FormalResearch.RiemannHypothesis.SourceActualXiSqrtClosedReadout
```
