# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoogleExamples.Variant504d4b644c3a0fe7ae42cdac31c5abaf449ea77e42169396020dbb8a3b00045a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac737ad9c3495b64506aeb6a93e8e38ebbf0a7bd` · SHA-256 `a8be33f1a4364e461979910e99bb6dbf89d9c225f1b8ab424f11f4fcdb945ef2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoogleSyntax.Variant51147de62f590ce93fdac7b16003579224a6884c2a6009e7709adcecbe4650aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51147de62f590ce93fdac7b16003579224a6884c2a6009e7709adcecbe4650aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.LoogleSyntax.Variant51147de62f590ce93fdac7b16003579224a6884c2a6009e7709adcecbe4650aa","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"51147de62f590ce93fdac7b16003579224a6884c2a6009e7709adcecbe4650aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/LeanSearchClient/LeanSearchClientTest/LoogleExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import LeanSearchClient.LoogleSyntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoogleSyntax.Variant51147de62f590ce93fdac7b16003579224a6884c2a6009e7709adcecbe4650aa

public meta section

/-!
# Loogle Examples

Examples of using the Loogle API. The search is triggered by the word at the end of the query.
-/

-- #loogle List ?a → ?a

-- example := #loogle List ?a → ?a


-- set_option loogle.queries 1

-- example : 3 ≤ 5 := by
--   #loogle Nat.succ_le_succ
--   sorry

example : 3 ≤ 5 := by
  #loogle
  decide

#loogle Dist.dist, edist
-- example : 3 ≤ 5 := by
--   #loogle
--   decide

-- /-!
-- More examples to test comments do not interfere with the search or caching.
-- -/

-- #loogle ?a * _ < ?a * _ ↔ _
-- #loogle ?a * _ < ?a * _ ↔ _ /- foo -/
-- #loogle ?a * _ < ?a * _ ↔ _


-- comment
#loogle ?a * _ < ?a * _ ↔ _

/--
info: Loogle Search Results
  • #check Option.get! --  {α : Type u} [Inhabited α] : Option α → α
    Extracts the value from an `Option`, panicking on `none`.
-/
#guard_msgs in
  #loogle Option ?a → ?a, "get!"

/- hello -/
```
