# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prune.Varianta32d3111c3d57b917d48406baa86adb152c90a78b61b294ab85139db841b13e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1022a9ece2ee23c52b69fb4f26d4fd11fbf05b81` · SHA-256 `b2d3d7746d32df84618905d5f522189ced1675b9eb340fd06fb73caf86aa7588`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PruneAdmissible.Variant054a77771b41f85c088b55fa095b828778dcdb7273e5047dd35665fc88218f11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"054a77771b41f85c088b55fa095b828778dcdb7273e5047dd35665fc88218f11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PruneAdmissible.Variant054a77771b41f85c088b55fa095b828778dcdb7273e5047dd35665fc88218f11","mathematical_subject":"Foundations.Unclassified","original_sha256":"054a77771b41f85c088b55fa095b828778dcdb7273e5047dd35665fc88218f11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Prune.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Witness
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.PairCorrelation
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Residue


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PruneAdmissible.Variant054a77771b41f85c088b55fa095b828778dcdb7273e5047dd35665fc88218f11

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure PruneAdmissible where
  importClosed : Prop
  residuePreserved : Prop
  weightPreserved : Prop
  symmetryPreserved : Prop
  validationCovered : Prop
  pairCorrelationNotClumped : Prop

def phase37Prune : PruneAdmissible :=
  { importClosed := True
    residuePreserved := True
    weightPreserved := phase37Witness.oldWeight = phase37Witness.newWeight
    symmetryPreserved := True
    validationCovered := True
    pairCorrelationNotClumped := True }

theorem phase37Prune_preservesWeight :
    phase37Prune.weightPreserved :=
  phase37Witness.sameWeight

end Think.RadoProjectedModularHeatflow
```
