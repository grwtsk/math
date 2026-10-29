-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CheckHighlight.Variant96e908b63989ee68211839c0f0356c4c854c1a0a1a492d25a89cbe46ae14115b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96e908b63989ee68211839c0f0356c4c854c1a0a1a492d25a89cbe46ae14115b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CheckHighlight.Variant96e908b63989ee68211839c0f0356c4c854c1a0a1a492d25a89cbe46ae14115b","mathematical_subject":"Logic.Foundations","original_sha256":"96e908b63989ee68211839c0f0356c4c854c1a0a1a492d25a89cbe46ae14115b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/test/checkh.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Extra.CheckHighlight


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CheckHighlight.Variant96e908b63989ee68211839c0f0356c4c854c1a0a1a492d25a89cbe46ae14115b

/-- info: Decidable.em (p : Prop) : p ∨ ¬p -/
#guard_msgs in
#checkh Decidable.em

/-- info: Decidable.em (p : Prop) [Decidable p] : p ∨ ¬p -/
#guard_msgs in
#checkh' Decidable.em
