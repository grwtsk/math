# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran.Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `450e06f9171581c8710cfb6a196b09b7e373d5c6` · SHA-256 `acfc477ce4397130764573cae7ede3c483615f33003331dc4b7298714a6e6276`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CumulativeSum.Varianta0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CumulativeSum.Varianta0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/broad-incremental-20261007T104512Z/portfolio-four32-focused-record-recovery/bytes/a0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5--SignedPrefixTransfer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CumulativeSum.Varianta0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5

set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators

namespace FormalResearch.RiemannHypothesis.SignedPrefixTransfer

/-- Signed coefficient sum over the half-open initial range `0 ≤ i < N`. -/
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
