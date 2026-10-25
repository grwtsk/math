# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lowering.Variantae7cfaf97c39655771735424854a9b5e0a8e01740fa7af016a3f8ec5ecaff0a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `974b5d43f2a0bb5af717272794fea5a80e62d4f6` · SHA-256 `8a0bc3fc1ceb6cb1168131582ce6768798e3446da3d01e47b5db5122d4742ea7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
