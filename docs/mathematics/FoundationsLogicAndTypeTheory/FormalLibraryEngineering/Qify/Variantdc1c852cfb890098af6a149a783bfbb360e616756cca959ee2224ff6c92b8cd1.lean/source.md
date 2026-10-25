# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qify.Variantdc1c852cfb890098af6a149a783bfbb360e616756cca959ee2224ff6c92b8cd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea7fdd8ce98128c6857c5d7df0605fbb782fc1d4` · SHA-256 `bde154964355ec0875bcc6f6a65bfedf18b50e9d2333bb11612ded45357acf1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qify.Varianta23f6ebd0c69020c60f5a293842da85ab4a7a60b68c6548a7b950cdf4aa4925b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a23f6ebd0c69020c60f5a293842da85ab4a7a60b68c6548a7b950cdf4aa4925b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Qify.Varianta23f6ebd0c69020c60f5a293842da85ab4a7a60b68c6548a7b950cdf4aa4925b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a23f6ebd0c69020c60f5a293842da85ab4a7a60b68c6548a7b950cdf4aa4925b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Qify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Qify


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qify.Varianta23f6ebd0c69020c60f5a293842da85ab4a7a60b68c6548a7b950cdf4aa4925b

example (a b : ℕ) : (a : ℚ) ≤ b ↔ a ≤ b := by qify
example (a b : ℕ) : (a : ℚ) < b ↔ a < b := by qify
example (a b : ℕ) : (a : ℚ) = b ↔ a = b := by qify
example (a b : ℕ) : (a : ℚ) ≠ b ↔ a ≠ b := by qify

example (a b : ℤ) : (a : ℚ) ≤ b ↔ a ≤ b := by qify
example (a b : ℤ) : (a : ℚ) < b ↔ a < b := by qify
example (a b : ℤ) : (a : ℚ) = b ↔ a = b := by qify
example (a b : ℤ) : (a : ℚ) ≠ b ↔ a ≠ b := by qify

example (a b c : ℕ) (h : a - b = c) (hab : b ≤ a) : a = c + b := by
  qify [hab] at h ⊢ -- `zify` does the same thing here.
  exact sub_eq_iff_eq_add.1 h

example (a b c : ℤ) (h : a / b = c) (hab : b ∣ a) (hb : b ≠ 0) : a = c * b := by
  qify [hab] at h hb ⊢
  exact (div_eq_iff hb).1 h
```
