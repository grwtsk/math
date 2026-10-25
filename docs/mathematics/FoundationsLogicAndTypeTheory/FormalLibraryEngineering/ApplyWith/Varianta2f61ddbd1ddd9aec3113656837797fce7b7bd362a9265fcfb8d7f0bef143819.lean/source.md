# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyWith.Varianta2f61ddbd1ddd9aec3113656837797fce7b7bd362a9265fcfb8d7f0bef143819

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `679ed28c98a38bf0b60496ea8ef8b112989de3bd` · SHA-256 `e335f63efc5dd6faf962cc33b76063b7d762ff6f5f05fb4ab4e0fc644a974848`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyWith.Variantd62a5cae5a7a4eaf13bc57b283e5ff2426d45a375ad381db46bd7efe7f57084c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d62a5cae5a7a4eaf13bc57b283e5ff2426d45a375ad381db46bd7efe7f57084c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ApplyWith.Variantd62a5cae5a7a4eaf13bc57b283e5ff2426d45a375ad381db46bd7efe7f57084c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d62a5cae5a7a4eaf13bc57b283e5ff2426d45a375ad381db46bd7efe7f57084c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/apply_with.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ApplyWith


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyWith.Variantd62a5cae5a7a4eaf13bc57b283e5ff2426d45a375ad381db46bd7efe7f57084c

set_option autoImplicit true
example (f : ∀ x : Nat, x = x → α) : α := by
  apply (config := {}) f
  apply rfl
  apply 1

example (f : ∀ x : Nat, x = x → α) : α := by
  apply (config := { newGoals := .nonDependentOnly }) f
  apply @rfl _ 1

example (f : ∀ x : Nat, x = x → α) : α := by
  apply (config := { newGoals := .all }) f
  apply 1
  apply rfl
```
