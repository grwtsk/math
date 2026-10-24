# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vertex.Variantc983f5fa17fffd76a180d3f0e2d568ab95bb2bf001ceb73d0df1b9a411f9827a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fc9945581dafd18465eb7b09ddafb9a0a1c5d2f` · SHA-256 `eae783d513b5a707f3962fb0d021cc5fb146ed7e48ae217c0104fa428b3ddcc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemoryKind.Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MemoryKind.Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461","mathematical_subject":"Computation.DataStructures","original_sha256":"4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Vertex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Boundary
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Residue


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemoryKind.Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

inductive MemoryKind where
  | episode
  | gist
  | fact
  | entity
  | community
  | toolTransition
  | workflowStep
  | sourceTreeNode
  | residueWitness
  | refusalWitness
deriving DecidableEq, Repr

def MemoryKind.defaultSide : MemoryKind -> Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide
  | .episode => .inner
  | .gist => .bridge
  | .fact => .bridge
  | .entity => .outer
  | .community => .outer
  | .toolTransition => .outer
  | .workflowStep => .bridge
  | .sourceTreeNode => .bridge
  | .residueWitness => .bridge
  | .refusalWitness => .bridge

structure MemoryVertex where
  id : MemoryId
  kind : MemoryKind
  timeScope : TimeScope
  source : SourcePointer
  residue : ResidueClass
  confidence : Nat
  heat : Nat
  modularWeight : Nat
  side : Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide
deriving DecidableEq, Repr

def noopVertex : MemoryVertex :=
  { id := 0
    kind := MemoryKind.workflowStep
    timeScope := TimeScope.unavailable
    source := SourcePointer.workflow "noop"
    residue := ResidueClass.zero
    confidence := 1
    heat := 0
    modularWeight := 0
    side := Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge }

def MemoryVertex.usesDefaultBoundary (v : MemoryVertex) : Prop :=
  v.side = v.kind.defaultSide

def MemoryVertex.isBridgeWitness (v : MemoryVertex) : Prop :=
  (v.kind = MemoryKind.residueWitness ∨
    v.kind = MemoryKind.refusalWitness) ∧
    v.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge

def supportBounded (S : List MemoryVertex) (bounds : FiniteRunBounds) : Prop :=
  S.length ≤ bounds.vertexBound

theorem residueWitness_defaults_bridge :
    MemoryKind.residueWitness.defaultSide = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge := by
  rfl

theorem refusalWitness_defaults_bridge :
    MemoryKind.refusalWitness.defaultSide = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge := by
  rfl

theorem sourceTreeNode_defaults_bridge :
    MemoryKind.sourceTreeNode.defaultSide = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge := by
  rfl

theorem noopVertex_is_default_boundary :
    noopVertex.usesDefaultBoundary := by
  rfl

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
```
