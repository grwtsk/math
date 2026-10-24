# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualJointClosedReadout.Variant697b0842d30da3add1ae3996f135094ccd59a550855109b54961ca5875fd90af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed11eea725d5ee72319b68e719eb99be4d855ba5` · SHA-256 `341ecbadfdc9e331ac281ac5bf8573432b8cd45b21359082c0ad76df9d434745`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualHalfLogSumEqClosed.Variantab7f747d29fad80d028ffc38402af90cfb7667716b16322ae8e137aee828a9da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab7f747d29fad80d028ffc38402af90cfb7667716b16322ae8e137aee828a9da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualHalfLogSumEqClosed.Variantab7f747d29fad80d028ffc38402af90cfb7667716b16322ae8e137aee828a9da","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ab7f747d29fad80d028ffc38402af90cfb7667716b16322ae8e137aee828a9da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791352077380189000/SourceActualJointClosedReadout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualJointCenteredDiscrepancy
import SourceActualClosedXiSignedMoment

/-!
Identify the joint Abel cancellation with the literal complete closed Xi
readout, including prime two, every prime power and the gamma companion.
No uniform signed arithmetic bound is supplied.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualHalfLogSumEqClosed.Variantab7f747d29fad80d028ffc38402af90cfb7667716b16322ae8e137aee828a9da

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualJointClosedReadout
open MeasureTheory ArithmeticFunction SourceMangoldtAbel
open SourceActualJointMangoldtCancellation SourceActualJointCenteredDiscrepancy
open SourceActualClosedXiSqrtConsumers SourceActualClosedXiSignedMoment
open SourceFullXiCellBudgetObstruction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent
open scoped Interval BigOperators

theorem actual_half_log_sum_eq_closed (b : ℝ) :
    mangoldtLogSum b (fun t => Real.exp (t / 2)) =
      ∑ n ∈ Finset.Icc 0 ⌊Real.exp b⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) := by
  unfold mangoldtLogSum
  calc
    _ = ∑ n ∈ primePowerInventory b, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
      have he : Real.exp (Real.log (n : ℝ) / 2) = (n : ℝ) ^ (1 / 2 : ℝ) := by
        rw [Real.rpow_def_of_pos hp]
        congr 1
        ring
      have hr : (n : ℝ) ^ (-1 / 2 : ℝ) = (n : ℝ) ^ (1 / 2 : ℝ) / n := by
        rw [show (-1 / 2 : ℝ) = 1 / 2 - 1 by ring, Real.rpow_sub hp, Real.rpow_one]
      rw [he, hr]
      ring
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn' := Finset.mem_Icc.mp hn
        have hsmall : n < 2 := by
          simp only [primePowerInventory, Finset.mem_Icc, not_and, not_le] at hnnot
          omega
        have hcases : n = 0 ∨ n = 1 := by omega
        rcases hcases with rfl | rfl <;> simp

theorem actual_full_log_sum_eq_closed_psi (b : ℝ) :
    mangoldtLogSum b Real.exp = Chebyshev.psi (Real.exp b) := by
  unfold mangoldtLogSum
  rw [Chebyshev.psi_eq_sum_Icc]
  calc
    _ = ∑ n ∈ primePowerInventory b, vonMangoldt n := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
      rw [Real.exp_log hp]
      exact div_mul_cancel₀ _ hp.ne'
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn' := Finset.mem_Icc.mp hn
        have hsmall : n < 2 := by
          simp only [primePowerInventory, Finset.mem_Icc, not_and, not_le] at hnnot
          omega
        have hcases : n = 0 ∨ n = 1 := by omega
        rcases hcases with rfl | rfl <;> simp

theorem actual_closed_readout_eq_joint (b : ℝ) :
    actualClosedXiSqrtReadout (Real.exp b) =
      2 * (actualJointMangoldtReadout b - Real.exp (b / 2)) +
        2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
          ((2 : ℝ) ^ (-1 / 2 : ℝ) - Real.exp (-b / 2)) +
            2 * (2 : ℝ) ^ (1 / 2 : ℝ) := by
  unfold actualClosedXiSqrtReadout actualJointMangoldtReadout
  rw [actual_half_log_sum_eq_closed, actual_full_log_sum_eq_closed_psi]
  rw [Chebyshev.psi_eq_sum_Icc]
  have hm : (Real.exp b) ^ (-1 / 2 : ℝ) = Real.exp (-b / 2) := by
    rw [← Real.exp_mul]
    congr 1
    ring
  have hp : (Real.exp b) ^ (1 / 2 : ℝ) = Real.exp (b / 2) := by
    rw [← Real.exp_mul]
    congr 1
    ring
  rw [hm, hp]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
  ring

theorem actual_closed_readout_eq_centered_integral (b : ℝ) (hb : 0 ≤ b) :
    actualClosedXiSqrtReadout (Real.exp b) =
      2 * (actualJointCenteredIntegral b +
        actualCenteredLogDiscrepancy b * (1 - Real.exp (-b / 2)) -
          Real.eulerMascheroniConstant - 2 +
            (Real.eulerMascheroniConstant + 1) * Real.exp (-b / 2)) +
        2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
          ((2 : ℝ) ^ (-1 / 2 : ℝ) - Real.exp (-b / 2)) +
            2 * (2 : ℝ) ^ (1 / 2 : ℝ) := by
  rw [actual_closed_readout_eq_joint, actual_joint_centered_identity b hb]

/-- Exact source substitution into the principal one-sided arithmetic moment. -/
theorem actual_signed_moment_eq_centered_joint (A : ℝ) (hA : 1 ≤ A) :
    actualClosedXiSignedMoment A =
      ∫ t in Real.log 2..2 * A,
        (2 * (actualJointCenteredIntegral t +
          actualCenteredLogDiscrepancy t * (1 - Real.exp (-t / 2)) -
            Real.eulerMascheroniConstant - 2 +
              (Real.eulerMascheroniConstant + 1) * Real.exp (-t / 2)) +
          2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
            ((2 : ℝ) ^ (-1 / 2 : ℝ) - Real.exp (-t / 2)) +
              2 * (2 : ℝ) ^ (1 / 2 : ℝ)) * deriv (fullXiLogWeight A) t := by
  unfold actualClosedXiSignedMoment
  apply intervalIntegral.integral_congr
  intro t ht
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  rw [Set.uIcc_of_le hL] at ht
  rw [actual_closed_readout_eq_centered_integral t
    ((Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)).trans ht.1)]

end FormalResearch.RiemannHypothesis.SourceActualJointClosedReadout
```
