# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionWitness.Variantd2cc0db3293a488229b17ef890892c51bc93db5a02639832ca07238c6c237261

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf36a4edac4cf8e9439c8e678487415b2001e2da` · SHA-256 `1da7a9506aba09996e9bb87ad5aa6bfec48b355e96bf4b6d68247ba68c3ddb39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionRadoWitness.Variant8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TorsionRadoWitness.Variant8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018","mathematical_subject":"Foundations.Unclassified","original_sha256":"8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/TorsionWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.PrimeCompact
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Witness


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionRadoWitness.Variant8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.TorsionWitness

structure TorsionRadoWitness where
  witness : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryWitness
  compactLabel : String
  torsionResidueClass : String
  coefficientTarget : Int
  attachedToBridge : witness.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge
  cancelsTorsionResidue : Prop

def TorsionRadoWitness.admitted (W : TorsionRadoWitness) : Prop :=
  W.cancelsTorsionResidue

theorem torsion_witness_is_bridge
    (W : TorsionRadoWitness) :
    W.witness.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge := by
  exact W.attachedToBridge

end Think.RadoProjectedModularHeatflow.TorsionWitness
```
