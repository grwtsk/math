# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImplicitUniverses.Variant3158775824a4fe2462cc76658b79d93227f6bea25137cdae29dd57ffed619dc4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f384447079f61f5c56259f807a05d9d6ffaca6e` · SHA-256 `a93e8bd8c73f357e66ac64486f4d0ce8005ee690cf7237700cd1caaa7692db8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variante47fec299f3a6a00afd408d182f72bebbd8f0461768654a00da684885f01d3a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e47fec299f3a6a00afd408d182f72bebbd8f0461768654a00da684885f01d3a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variante47fec299f3a6a00afd408d182f72bebbd8f0461768654a00da684885f01d3a3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e47fec299f3a6a00afd408d182f72bebbd8f0461768654a00da684885f01d3a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/ImplicitUniverses.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Basic
import Mathlib.Tactic.SuccessIfFailWithMsg


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variante47fec299f3a6a00afd408d182f72bebbd8f0461768654a00da684885f01d3a3

example (x y : Type*) : sorry := by
  success_if_fail_with_msg
"type mismatch
  y
has type
  Type u_2 : Type (u_2 + 1)
but is expected to have type
  Type u_1 : Type (u_1 + 1)" (exact x = y)
  sorry

example (x : Sort*) : sorry := by
  success_if_fail_with_msg
"type mismatch
  Prop
has type
  Type : Type 1
but is expected to have type
  Sort u_1 : Type u_1" (exact x = Prop)
  sorry

example : sorry := by
  success_if_fail_with_msg
"type mismatch
  y
has type
  Type u_2 : Type (u_2 + 1)
but is expected to have type
  Type u_1 : Type (u_1 + 1)" (exact ∀ x y : Type*, x = y)
  sorry

example : sorry := by
 success_if_fail_with_msg
"type mismatch
  Prop
has type
  Type : Type 1
but is expected to have type
  Sort u_1 : Type u_1" (exact ∀ x : Sort*, x = Prop)
 sorry
```
