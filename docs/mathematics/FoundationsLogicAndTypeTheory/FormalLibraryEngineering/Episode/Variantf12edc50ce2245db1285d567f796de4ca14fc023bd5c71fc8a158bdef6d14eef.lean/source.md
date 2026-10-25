# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Episode.Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0499298b324dfa708230895660eba5df79c3d3a6` · SHA-256 `01c39c9da8ce6a391c55002517fab5716ecfbf47055c505a0b8539876a771bc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemoryKind.Variant5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MemoryKind.Variant5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616","mathematical_subject":"Foundations.Unclassified","original_sha256":"5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Episode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Boundary


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemoryKind.Variant5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive MemoryKind where
  | episode
  | gist
  | fact
  | entity
  | community
  | tool
  | workflowStep
  | sourceNode
  | witness
deriving DecidableEq, Repr

def MemoryKind.defaultSide : MemoryKind -> BoundarySide
  | .episode => .inner
  | .gist => .bridge
  | .fact => .bridge
  | .entity => .outer
  | .community => .outer
  | .tool => .outer
  | .workflowStep => .bridge
  | .sourceNode => .bridge
  | .witness => .bridge

structure MemoryVertex where
  id : Nat
  kind : MemoryKind
  side : BoundarySide
  text : String
  time? : Option String
  validAt? : Option String
  invalidAt? : Option String
  heat : Int
  weight : Nat
  residueClass : String
deriving DecidableEq, Repr

def MemoryVertex.usesDefaultBoundary (v : MemoryVertex) : Prop :=
  v.side = v.kind.defaultSide

theorem episode_defaults_inner :
    MemoryKind.episode.defaultSide = BoundarySide.inner := by
  rfl

theorem entity_defaults_outer :
    MemoryKind.entity.defaultSide = BoundarySide.outer := by
  rfl

theorem witness_defaults_bridge :
    MemoryKind.witness.defaultSide = BoundarySide.bridge := by
  rfl

end Think.RadoProjectedModularHeatflow.MemoryCore
```
