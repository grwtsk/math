-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Checkpoint.Variant371b01860b5d4dbbe6c3249118df1a5e67e977ca9ee167a25a15d51c0053832f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"371b01860b5d4dbbe6c3249118df1a5e67e977ca9ee167a25a15d51c0053832f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Checkpoint.Variant371b01860b5d4dbbe6c3249118df1a5e67e977ca9ee167a25a15d51c0053832f","mathematical_subject":"Foundations.Unclassified","original_sha256":"371b01860b5d4dbbe6c3249118df1a5e67e977ca9ee167a25a15d51c0053832f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Residues/Lowering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Residues.Basic
import Think.Pipeline.Center.Checkpoints


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Checkpoint.Variant371b01860b5d4dbbe6c3249118df1a5e67e977ca9ee167a25a15d51c0053832f

set_option autoImplicit false

namespace Think.Residues.Lowering

def checkpoint : Think.Pipeline.Center.Checkpoint :=
  FWR.Pipeline.CenterWeighted.Checkpoint.lower

def residue : Think.Residue :=
  Think.Pipeline.Center.checkpointResidue checkpoint

theorem residue_target :
    residue.target = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Residues.Lowering
