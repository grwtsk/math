-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CenterSpineControlsAllPoles.Variant5f88adc4ee4c25db92c1ea5375219b7417e4382aef0dd1f1411544e3126e2fe8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f88adc4ee4c25db92c1ea5375219b7417e4382aef0dd1f1411544e3126e2fe8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CenterSpineControlsAllPoles.Variant5f88adc4ee4c25db92c1ea5375219b7417e4382aef0dd1f1411544e3126e2fe8","mathematical_subject":"Foundations.Unclassified","original_sha256":"5f88adc4ee4c25db92c1ea5375219b7417e4382aef0dd1f1411544e3126e2fe8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Validation/BraidCoverage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Validation.PoleCoverage


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CenterSpineControlsAllPoles.Variant5f88adc4ee4c25db92c1ea5375219b7417e4382aef0dd1f1411544e3126e2fe8

set_option autoImplicit false

namespace Think.Validation

theorem centerSpineControlsAllPoles :
    ∀ q : Think.SourceTree.PhasePlacement, q.phase ∈ Think.centerSpine := by
  exact Think.SourceTree.center_spine_controls_all_poles

end Think.Validation
