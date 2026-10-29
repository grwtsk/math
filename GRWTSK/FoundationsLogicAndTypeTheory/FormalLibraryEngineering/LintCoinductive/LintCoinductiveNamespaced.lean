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
