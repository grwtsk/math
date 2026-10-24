# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vertex.Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4bffac35133d31d23e5d83d85bb823eba81d99f` · SHA-256 `4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Boundary
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Residue

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
