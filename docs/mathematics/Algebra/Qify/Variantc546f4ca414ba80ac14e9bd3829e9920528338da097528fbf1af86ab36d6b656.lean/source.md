# Complete source: GRWTSK.Algebra.Qify.Variantc546f4ca414ba80ac14e9bd3829e9920528338da097528fbf1af86ab36d6b656

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `432c2a30b14562a835bdeebbbe478dcdf7102643` · SHA-256 `e40a471721923be44007302cb8a260cc1ae54bccd77e1649e003c64585518d37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Rat.Variantc7f676691a22c3245861d292a59c292fe745b2b79dac61ba80b04812f9a3946c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7f676691a22c3245861d292a59c292fe745b2b79dac61ba80b04812f9a3946c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Rat.Variantc7f676691a22c3245861d292a59c292fe745b2b79dac61ba80b04812f9a3946c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c7f676691a22c3245861d292a59c292fe745b2b79dac61ba80b04812f9a3946c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Qify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Data.Int.CharZero
import Mathlib.Tactic.Qify


namespace GRWTSK.Algebra.Rat.Variantc7f676691a22c3245861d292a59c292fe745b2b79dac61ba80b04812f9a3946c

example (a b : ℕ) : (a : ℚ) ≤ b ↔ a ≤ b := by qify
example (a b : ℕ) : (a : ℚ) < b ↔ a < b := by qify
example (a b : ℕ) : (a : ℚ) = b ↔ a = b := by qify
example (a b : ℕ) : (a : ℚ) ≠ b ↔ a ≠ b := by qify

example (a b : ℤ) : (a : ℚ) ≤ b ↔ a ≤ b := by qify
example (a b : ℤ) : (a : ℚ) < b ↔ a < b := by qify
example (a b : ℤ) : (a : ℚ) = b ↔ a = b := by qify
example (a b : ℤ) : (a : ℚ) ≠ b ↔ a ≠ b := by qify

example (a b : ℚ≥0) : (a : ℚ) ≤ b ↔ a ≤ b := by qify
example (a b : ℚ≥0) : (a : ℚ) < b ↔ a < b := by qify
example (a b : ℚ≥0) : (a : ℚ) = b ↔ a = b := by qify
example (a b : ℚ≥0) : (a : ℚ) ≠ b ↔ a ≠ b := by qify

example (a b c : ℕ) (h : a - b = c) (hab : b ≤ a) : a = c + b := by
  qify [hab] at h ⊢ -- `zify` does the same thing here.
  exact sub_eq_iff_eq_add.1 h

example (a b c : ℚ≥0) (h : a - b = c) (hab : b ≤ a) : a = c + b := by
  qify [hab] at h ⊢
  exact sub_eq_iff_eq_add.1 h

example (a b c : ℤ) (h : a / b = c) (hab : b ∣ a) (hb : b ≠ 0) : a = c * b := by
  qify [hab] at h hb ⊢
  exact (div_eq_iff hb).1 h

-- Regression test for https://github.com/leanprover-community/mathlib4/issues/7480
example (a b c : ℕ) (h : a / b = c) (hab : b ∣ a) (hb : b ≠ 0) : a = c * b := by
  qify [hab] at h hb ⊢
  exact (div_eq_iff hb).1 h
```
