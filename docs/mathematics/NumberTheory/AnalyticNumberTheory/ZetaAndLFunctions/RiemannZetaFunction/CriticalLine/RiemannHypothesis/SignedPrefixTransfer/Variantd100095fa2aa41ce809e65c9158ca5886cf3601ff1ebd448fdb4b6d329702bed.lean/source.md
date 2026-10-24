# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedPrefixTransfer.Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab5072569772938ecc6be621fa97ded61c260124` · SHA-256 `858d57267dbd6b769d8bfbed04d2851c79995adc7ffd9f8701f96e94ac0cb667`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CumulativeSum.Variant194df0e6bb4fe111ba26653f980e5e533c5f79571c42e4f5c397f266a00708c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"194df0e6bb4fe111ba26653f980e5e533c5f79571c42e4f5c397f266a00708c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CumulativeSum.Variant194df0e6bb4fe111ba26653f980e5e533c5f79571c42e4f5c397f266a00708c6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"194df0e6bb4fe111ba26653f980e5e533c5f79571c42e4f5c397f266a00708c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/proof-method-portfolio-20261007/artifacts/portfolio-20261007/independent-prefix-review/SignedPrefixTransfer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.NumberTheory.AbelSummation
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
Exact finite signed summation by parts and its quantitative discrepancy budget.
No arithmetic estimate or uniform constant is assumed as an axiom.
Direction and evaluation: grwtsk contributors.
Finite proof construction: OpenAI Codex / ChatGPT assistance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CumulativeSum.Variant194df0e6bb4fe111ba26653f980e5e533c5f79571c42e4f5c397f266a00708c6

set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators

namespace FormalResearch.RiemannHypothesis.SignedPrefixTransfer

noncomputable def cumulativeSum (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ i ∈ Finset.range N, a i

/-- The terminal value is kept. In a compact-support application it may vanish
only after proving the actual endpoint statement. -/
theorem signed_sum_by_parts (a w : ℕ → ℝ) (N : ℕ) :
    (∑ i ∈ Finset.range N, a i * w i) =
      cumulativeSum a N * w N +
        ∑ i ∈ Finset.range N, cumulativeSum a (i + 1) * (w i - w (i + 1)) := by
  induction N with
  | zero => simp [cumulativeSum]
  | succ N ih =>
    rw [Finset.sum_range_succ, ih, Finset.sum_range_succ]
    simp only [cumulativeSum, Finset.sum_range_succ]
    ring

/-- A testable sufficient cost uses signed cumulative discrepancies, rather
than replacing individual arithmetic coefficients by absolute values. -/
theorem abs_weighted_sum_le_prefix_variation (a w : ℕ → ℝ) (N : ℕ) :
    |∑ i ∈ Finset.range N, a i * w i| ≤
      |cumulativeSum a N| * |w N| +
        ∑ i ∈ Finset.range N, |cumulativeSum a (i + 1)| * |w i - w (i + 1)| := by
  rw [signed_sum_by_parts]
  calc
    _ ≤ |cumulativeSum a N * w N| +
        |∑ i ∈ Finset.range N, cumulativeSum a (i + 1) * (w i - w (i + 1))| :=
      abs_add_le _ _
    _ ≤ |cumulativeSum a N| * |w N| +
        ∑ i ∈ Finset.range N, |cumulativeSum a (i + 1) * (w i - w (i + 1))| := by
      rw [abs_mul]
      gcongr
      exact Finset.abs_sum_le_sum_abs _ _
    _ = _ := by simp only [abs_mul]

/-- Model and actual coefficients remain independent arguments. This theorem
cannot manufacture an arithmetic model or a uniform variation budget. -/
theorem weighted_actual_le_model_add_budget (a b w : ℕ → ℝ) (N : ℕ) :
    (∑ i ∈ Finset.range N, a i * w i) ≤
      (∑ i ∈ Finset.range N, b i * w i) +
        |cumulativeSum (fun i => a i - b i) N| * |w N| +
          ∑ i ∈ Finset.range N,
            |cumulativeSum (fun j => a j - b j) (i + 1)| * |w i - w (i + 1)| := by
  have h := abs_weighted_sum_le_prefix_variation (fun i => a i - b i) w N
  have hs : (∑ i ∈ Finset.range N, (a i - b i) * w i) =
      (∑ i ∈ Finset.range N, a i * w i) -
        (∑ i ∈ Finset.range N, b i * w i) := by
    simp only [sub_mul, Finset.sum_sub_distrib]
  rw [hs] at h
  linarith [le_abs_self ((∑ i ∈ Finset.range N, a i * w i) -
    (∑ i ∈ Finset.range N, b i * w i))]

/-- A real terminal cutoff can be used without replacing it by its floor.
The zero zeroth coefficient is explicit; the coefficient at one is retained. -/
theorem closed_sum_eq_neg_cumulative_integral (a : ℕ → ℝ) (w : ℝ → ℝ) (X : ℝ)
    (ha : a 0 = 0)
    (hd : ∀ t ∈ Set.Icc 1 X, DifferentiableAt ℝ w t)
    (hi : MeasureTheory.IntegrableOn (deriv w) (Set.Icc 1 X)) (hend : w X = 0) :
    (∑ n ∈ Finset.Icc 0 ⌊X⌋₊, a n * w n) =
      -(∫ x in Set.Ioc 1 X, (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, a n) * deriv w x) := by
  have h := sum_mul_eq_sub_integral_mul₀ a ha X hd hi
  rw [hend, zero_mul, zero_sub] at h
  simpa only [mul_comm] using h


end FormalResearch.RiemannHypothesis.SignedPrefixTransfer
```
