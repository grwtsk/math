# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `839473362e74b673c214b0fb14370732e61032ea` · SHA-256 `975ccd738d3bc684db8c6e4951c6c01f05fa34fe9dd1295af65687c8c7b7cfb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.GaussianMode.Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.GaussianMode.Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

/-!
# An explicit scalar Gaussian mode bound

For `A ≥ 3`, the modes from `n = 2` onward satisfy
`A * ∑ n^8 * exp (-A * (n^2 - 1)) < 1/5`.
This supplies a quantitative bound for higher-mode contributions without any
numerical oracle or change to the literal theta source.

The proof starts with the degree-four exponential Taylor lower bound
`exp 3 > 16`. At `A = 3`, consecutive terms are bounded by a geometric ratio
`1/16`, and the first term is smaller than `1/16`. The elementary inequality
`x + 1 ≤ exp x` then bounds every `A ≥ 3` term after multiplication by `A`.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.GaussianMode.Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open scoped BigOperators
noncomputable section

private def gaussianMode (A : ℝ) (m : ℕ) : ℝ :=
  ((m : ℝ) + 2) ^ 8 * Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))

private theorem exp_three_gt_sixteen : (16 : ℝ) < Real.exp 3 := by
  have h := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 3) 5
  norm_num [Finset.sum_range_succ, Nat.factorial] at h
  linarith

private theorem gaussian_zero_lt : gaussianMode 3 0 < 1 / 16 := by
  have h := pow_lt_pow_left₀ exp_three_gt_sixteen (by norm_num : (0 : ℝ) ≤ 16)
    (by decide : (3 : ℕ) ≠ 0)
  have he : Real.exp (9 : ℝ) = Real.exp 3 ^ 3 := by
    convert! Real.exp_nat_mul (3 : ℝ) 3 using 1
    norm_num
  norm_num [gaussianMode, Real.exp_neg] at h ⊢
  rw [he]
  apply (div_lt_iff₀ (by positivity)).mpr
  linarith

private theorem gaussian_ratio_small : (2 : ℝ) ^ 8 * Real.exp (-15) ≤ 1 / 16 := by
  have h := pow_lt_pow_left₀ exp_three_gt_sixteen (by norm_num : (0 : ℝ) ≤ 16)
    (by decide : (5 : ℕ) ≠ 0)
  have he : Real.exp (15 : ℝ) = Real.exp 3 ^ 5 := by
    convert! Real.exp_nat_mul (3 : ℝ) 5 using 1
    norm_num
  rw [Real.exp_neg, he]
  norm_num at h ⊢
  apply (div_le_iff₀ (by positivity)).mpr
  linarith

private theorem gaussian_succ_le (m : ℕ) :
    gaussianMode 3 (m + 1) ≤ (1 / 16) * gaussianMode 3 m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp : ((m : ℝ) + 3) ^ 8 ≤ (2 * ((m : ℝ) + 2)) ^ 8 :=
    pow_le_pow_left₀ (by positivity) (by linarith) _
  have he : Real.exp (-3 * (((m : ℝ) + 3) ^ 2 - 1)) ≤
      Real.exp (-3 * (((m : ℝ) + 2) ^ 2 - 1) - 15) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  unfold gaussianMode
  push_cast
  calc
    _ = ((m : ℝ) + 3) ^ 8 * Real.exp (-3 * (((m : ℝ) + 3) ^ 2 - 1)) := by ring_nf
    _ ≤ (2 * ((m : ℝ) + 2)) ^ 8 *
        Real.exp (-3 * (((m : ℝ) + 2) ^ 2 - 1) - 15) :=
      mul_le_mul hp he (by positivity) (by positivity)
    _ = ((2 : ℝ) ^ 8 * Real.exp (-15)) *
        (((m : ℝ) + 2) ^ 8 * Real.exp (-3 * (((m : ℝ) + 2) ^ 2 - 1))) := by
      rw [Real.exp_sub, Real.exp_neg, mul_pow]
      ring
    _ ≤ _ := mul_le_mul_of_nonneg_right gaussian_ratio_small (by positivity)

private theorem gaussian_geometric_le (m : ℕ) :
    gaussianMode 3 m ≤ gaussianMode 3 0 * (1 / 16 : ℝ) ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
      calc
        _ ≤ (1 / 16) * gaussianMode 3 m := gaussian_succ_le m
        _ ≤ (1 / 16) * (gaussianMode 3 0 * (1 / 16 : ℝ) ^ m) :=
          mul_le_mul_of_nonneg_left ih (by norm_num)
        _ = _ := by rw [pow_succ]; ring

private theorem gaussian_three_summable : Summable (gaussianMode 3) := by
  apply ((summable_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 16 : ℝ)‖ < 1)).mul_left (gaussianMode 3 0)).of_nonneg_of_le
  · intro m
    unfold gaussianMode
    positivity
  · exact gaussian_geometric_le

private theorem gaussian_three_tsum_lt : (∑' m, gaussianMode 3 m) < 1 / 15 := by
  have h := gaussian_three_summable.tsum_le_tsum gaussian_geometric_le
    ((summable_geometric_of_norm_lt_one
      (by norm_num : ‖(1 / 16 : ℝ)‖ < 1)).mul_left (gaussianMode 3 0))
  rw [tsum_mul_left, tsum_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 16 : ℝ)‖ < 1)] at h
  norm_num at h
  linarith [gaussian_zero_lt]

private theorem gaussian_le_three {A : ℝ} (hA : 3 ≤ A) (m : ℕ) :
    gaussianMode A m ≤ gaussianMode 3 m := by
  unfold gaussianMode
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply Real.exp_le_exp.mpr
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  nlinarith [mul_nonneg (sub_nonneg.mpr hA)
    (show 0 ≤ ((m : ℝ) + 2) ^ 2 - 1 by nlinarith)]

private theorem gaussian_summable {A : ℝ} (hA : 3 ≤ A) : Summable (gaussianMode A) :=
  gaussian_three_summable.of_nonneg_of_le (fun m => by unfold gaussianMode; positivity)
    (gaussian_le_three hA)

private theorem gaussian_mul_le_three {A : ℝ} (hA : 3 ≤ A) (m : ℕ) :
    A * gaussianMode A m ≤ 3 * gaussianMode 3 m := by
  let d : ℝ := ((m : ℝ) + 2) ^ 2 - 1
  have hd : 3 ≤ d := by dsimp [d]; nlinarith [Nat.cast_nonneg (α := ℝ) m]
  have he : A ≤ 3 * Real.exp ((A - 3) * d) := by
    have hexp := Real.add_one_le_exp ((A - 3) * d)
    nlinarith [mul_nonneg (sub_nonneg.mpr hA) (sub_nonneg.mpr hd)]
  have hh := mul_le_mul_of_nonneg_right he (Real.exp_nonneg (-A * d))
  have hexp : Real.exp ((A - 3) * d) * Real.exp (-A * d) = Real.exp (-3 * d) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [mul_assoc, hexp] at hh
  unfold gaussianMode
  change A * (((m : ℝ) + 2) ^ 8 * Real.exp (-A * d)) ≤
    3 * (((m : ℝ) + 2) ^ 8 * Real.exp (-3 * d))
  nlinarith [mul_le_mul_of_nonneg_left hh (show 0 ≤ ((m : ℝ) + 2) ^ 8 by positivity)]

/-- The shifted eighth-power Gaussian tail is summable for every `A ≥ 3`. -/
theorem thetaGaussianTail_summable {A : ℝ} (hA : 3 ≤ A) :
    Summable (fun m : ℕ => ((m : ℝ) + 2) ^ 8 *
      Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))) :=
  gaussian_summable hA

/-- The entire higher-mode Gaussian contribution has an exact rational upper bound. -/
theorem thetaGaussianTail_mul_lt_one_fifth {A : ℝ} (hA : 3 ≤ A) :
    A * (∑' m : ℕ, ((m : ℝ) + 2) ^ 8 *
      Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))) < 1 / 5 := by
  change A * (∑' m, gaussianMode A m) < 1 / 5
  have h := ((gaussian_summable hA).mul_left A).tsum_le_tsum
    (gaussian_mul_le_three hA) (gaussian_three_summable.mul_left 3)
  rw [tsum_mul_left, tsum_mul_left] at h
  linarith [gaussian_three_tsum_lt]

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
