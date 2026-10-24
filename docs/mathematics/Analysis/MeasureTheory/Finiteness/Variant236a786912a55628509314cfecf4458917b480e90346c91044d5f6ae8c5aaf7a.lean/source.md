# Complete source: GRWTSK.Analysis.MeasureTheory.Finiteness.Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `435a6ea49629714f7f3e36389edb3fb67b870dcf` · SHA-256 `24e4c3973e0c36c1c67ade47bc6212da273fe4491fbc102f49b0bb9b25dc3a66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.Real.Variant8018e81ec43e79a8c84e528bb73185e9a06c3ec0a002363979e07fc2c2323c69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8018e81ec43e79a8c84e528bb73185e9a06c3ec0a002363979e07fc2c2323c69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.Real.Variant8018e81ec43e79a8c84e528bb73185e9a06c3ec0a002363979e07fc2c2323c69","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"8018e81ec43e79a8c84e528bb73185e9a06c3ec0a002363979e07fc2c2323c69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/finiteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.ENNReal.Real
import Mathlib.MeasureTheory.Measure.Typeclasses.Finite
import Mathlib.Tactic.Finiteness


namespace GRWTSK.Analysis.MeasureTheory.Real.Variant8018e81ec43e79a8c84e528bb73185e9a06c3ec0a002363979e07fc2c2323c69

open MeasureTheory
open scoped ENNReal

example : (1 : ℝ≥0∞) < ∞ := by finiteness
example : (3 : ℝ≥0∞) ≠ ∞ := by finiteness

example (a : ℝ) (b : ℕ) : ENNReal.ofReal a + b < ∞ := by finiteness

example {a : ℝ≥0∞} (ha : a ≠ ∞) : a + 3 < ∞ := by finiteness
example {a : ℝ≥0∞} (ha : a < ∞) : a + 3 < ∞ := by finiteness
/--
Test that `finiteness_nonterminal` makes progress but does not fail on not
closing the goal.
-/
example {a : ℝ≥0∞} (ha : a = 0) : a + 3 < ∞ := by finiteness_nonterminal; simp [ha]

example (a : ℝ) : (ENNReal.ofReal (1 + a ^ 2))⁻¹ < ∞ := by finiteness

example {α : Type*} (f : α → ℕ) : ∀ i, (f i : ℝ≥0∞) ≠ ∞ := by finiteness

example {_ : MeasurableSpace α} (μ : Measure α) [IsFiniteMeasure μ] (s : Set α) : μ s ≠ ∞ := by
  finiteness
```
