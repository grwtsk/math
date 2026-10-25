# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintCoinductive.Variant0a8c39d7fdeec45bbc3f3824f8c6bc01a05da123340ab6c3bf04a88a5d6b77cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7d6083edcef904ada6d444684d045c3ccc803f3` · SHA-256 `745dcb716aaebec37e33776fcc5476477d6f8cbca7a50f2ddf8f2c99b6267ee1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tock.Variant710f7a6cae8ca893b1fa54d15250ef7596ae582a7b6e424446be398416172002","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"710f7a6cae8ca893b1fa54d15250ef7596ae582a7b6e424446be398416172002","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tock.Variant710f7a6cae8ca893b1fa54d15250ef7596ae582a7b6e424446be398416172002","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"710f7a6cae8ca893b1fa54d15250ef7596ae582a7b6e424446be398416172002","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lint_coinductive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Batteries.Tactic.Lint

/-! Tests that linters skip auto-generated declarations from coinductive predicates. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tock.Variant710f7a6cae8ca893b1fa54d15250ef7596ae582a7b6e424446be398416172002

/-- A coinductive stream predicate for testing. -/
coinductive MyStream (α : Type) : Prop where
  | cons : α → MyStream α → MyStream α

mutual
  /-- Coinductive half of a mutual block for testing. -/
  coinductive tick : Prop where
  | mk : ¬tock → tick

  /-- Inductive half of a mutual block for testing. -/
  inductive tock : Prop where
  | mk : ¬tick → tock
end

#guard_msgs in
#lint- only docBlame
```
