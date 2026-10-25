# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryWeight.Varianta6f250516d3b4702156d4741321bb7dfd513a3e690e53500833db212df8d650f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c44af0a2e84db8511ec203404755e169a5d0691` · SHA-256 `f52751c49e64de79e06ef8d085695e549648b616cb00d14a30e1b90c755cc53c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryWeightInput.Variant876e9b7c56b6a92e6affb26808ea7aa534b5757861d67125bdcdcbc2c0d777ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"876e9b7c56b6a92e6affb26808ea7aa534b5757861d67125bdcdcbc2c0d777ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoundaryWeightInput.Variant876e9b7c56b6a92e6affb26808ea7aa534b5757861d67125bdcdcbc2c0d777ed","mathematical_subject":"Foundations.Unclassified","original_sha256":"876e9b7c56b6a92e6affb26808ea7aa534b5757861d67125bdcdcbc2c0d777ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/BoundaryWeight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryHeat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryWeightInput.Variant876e9b7c56b6a92e6affb26808ea7aa534b5757861d67125bdcdcbc2c0d777ed

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

structure BoundaryWeightInput where
  vertex : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex
  heat : Int
  residueMagnitude : Nat
  temporalSpecificity : Nat
  centrality : Nat

def evenProjection (n : Nat) : Nat :=
  2 * ((n + 1) / 2)

def boundaryWeight (input : BoundaryWeightInput) : Nat :=
  evenProjection
    (input.vertex.weight + input.residueMagnitude +
      input.temporalSpecificity + input.centrality)

theorem boundaryWeight_even (input : BoundaryWeightInput) :
    boundaryWeight input % 2 = 0 := by
  unfold boundaryWeight evenProjection
  rw [Nat.mul_mod_right]

structure BoundaryModularShadow where
  form : Think.RadoProjectedModularHeatflow.MemoryCore.ModularMemoryForm
  side : Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide
  transformationLawDeclared : Bool

end Think.RadoProjectedModularHeatflow.BoundaryMemory
```
