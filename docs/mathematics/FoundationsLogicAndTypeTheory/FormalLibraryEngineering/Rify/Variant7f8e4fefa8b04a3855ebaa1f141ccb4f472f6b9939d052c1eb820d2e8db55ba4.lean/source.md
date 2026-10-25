# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rify.Variant7f8e4fefa8b04a3855ebaa1f141ccb4f472f6b9939d052c1eb820d2e8db55ba4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1942ca21b57e36326ee0e1c07705241cd1e0036a` · SHA-256 `e90e902670a16c0e1ea1ffcfed0d898313a9b81d6cf8c269483490e247f8758d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linarith.Varianta9f1346f4d88605f9a9121df98ca4a47b86443a8a9783e2378669be03963060e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9f1346f4d88605f9a9121df98ca4a47b86443a8a9783e2378669be03963060e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Linarith.Varianta9f1346f4d88605f9a9121df98ca4a47b86443a8a9783e2378669be03963060e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a9f1346f4d88605f9a9121df98ca4a47b86443a8a9783e2378669be03963060e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Rify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Rify


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linarith.Varianta9f1346f4d88605f9a9121df98ca4a47b86443a8a9783e2378669be03963060e

set_option linter.unusedVariables false

example {n : ℕ} {k : ℤ} (hn : 8 ≤ n) (hk : 2 * k ≤ n + 2) :
    (0 : ℝ) < n - k - 1 := by
  rify at hn hk
  linarith

example {n : ℕ} {k : ℤ} (hn : 8 ≤ n) (hk : (2 : ℚ) * k ≤ n + 2) :
    (0 : ℝ) < n - k - 1 := by
  rify at hn hk
  linarith

example (a b c : ℕ) (h : a - b < c) (hab : b ≤ a) : a < b + c := by
  rify [hab] at h ⊢
  linarith

example {n : ℕ} (h : 8 ≤ n) : (0 : ℝ) < n - 1 := by
  rify at h
  linarith

example {n k : ℕ} (h : 2 * k ≤ n + 2) (h' : 8 ≤ n) : (0 : ℝ) ≤ 3 * n - 4 - 4 * k := by
  rify at *
  linarith

example {n k : ℕ} (h₁ : 8 ≤ n) (h₂ : 2 * k > n) (h₃ : k + 1 < n) :
    n - (k + 1) + 3 ≤ n := by
  rify [h₃] at *
  linarith

example {n k : ℕ} (h₁ : 8 ≤ n) (h₂ : 2 * k > n) (h₃ : k + 1 < n) :
    n - (n - (k + 1)) = k + 1 := by
  have f₁ : k + 1 ≤ n := by linarith
  have f₂ : n - (k + 1) ≤ n := by rify [f₁]; linarith
  rify [f₁, f₂] at *
  linarith
```
