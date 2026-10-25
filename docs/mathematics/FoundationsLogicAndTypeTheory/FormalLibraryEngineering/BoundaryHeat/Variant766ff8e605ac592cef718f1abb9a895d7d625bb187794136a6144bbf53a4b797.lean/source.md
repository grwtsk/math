# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryHeat.Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dfeafa2840b6bb06abcf32d46a1c725fda20efa` · SHA-256 `353142b5c2922b21d515570057c03452f7d329a5e38517a5e73b6a9891cb3760`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryHeatWeights.Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoundaryHeatWeights.Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544","mathematical_subject":"Foundations.Unclassified","original_sha256":"6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/BoundaryHeat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Memory


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryHeatWeights.Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

structure BoundaryHeatWeights where
  episode : Nat
  fact : Nat
  semantic : Nat
  community : Nat
  procedural : Nat
  query : Nat
  tree : Nat
  boundary : Nat
  rado : Nat
deriving DecidableEq, Repr

def defaultBoundaryHeatWeights : BoundaryHeatWeights :=
  { episode := 1
    fact := 1
    semantic := 1
    community := 1
    procedural := 1
    query := 1
    tree := 1
    boundary := 1
    rado := 1 }

structure BoundaryHeatState where
  weights : BoundaryHeatWeights
  heat : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex -> Int
  projectedHeat : Nat -> Int
  coreTreeNode : Nat
  boundaryPressure : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex -> Int

def highBoundaryHeat (h : BoundaryHeatState) (v : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex) : Prop :=
  h.boundaryPressure v > 0

theorem default_boundary_weight_positive :
    0 < defaultBoundaryHeatWeights.boundary := by
  decide

end Think.RadoProjectedModularHeatflow.BoundaryMemory
```
