# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryResidue.Variant686f558800e722c71ce1da3d363e172f649680d800d97dfc1a9a2a9ae518804f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b7954c49587a50ffda1efddccf4cd69ba677df0` · SHA-256 `686f558800e722c71ce1da3d363e172f649680d800d97dfc1a9a2a9ae518804f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.InnerOuter

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure BoundaryResidue where
  treeNode : Nat
  innerCoeff : Nat -> Int
  bridgeCoeff : Nat -> Int
  outerCoeff : Nat -> Int
  targetCoeff : Nat -> Int

def BoundaryResidue.value (R : BoundaryResidue) (n : Nat) : Int :=
  R.targetCoeff n - R.innerCoeff n - R.bridgeCoeff n - R.outerCoeff n

def BoundaryResidue.resolvedAt (R : BoundaryResidue) (n : Nat) : Prop :=
  R.value n = 0

def BoundaryResidue.totalValue (R : BoundaryResidue) (n : Nat) : Int :=
  R.value n + R.value n

theorem boundaryResidue_zero_resolved
    (R : BoundaryResidue) (n : Nat)
    (h : R.targetCoeff n = R.innerCoeff n + R.bridgeCoeff n + R.outerCoeff n) :
    R.resolvedAt n := by
  unfold BoundaryResidue.resolvedAt BoundaryResidue.value
  omega

structure ModularMemoryForm where
  vertex : MemoryVertex
  k : Nat
  evenWeight : k % 2 = 0
  qCoeff : Nat -> Int

def ModularMemoryForm.boundarySymmetric
    (inner outer : ModularMemoryForm) : Prop :=
  inner.k = outer.k ∧
    inner.vertex.residueClass = outer.vertex.residueClass

end Think.RadoProjectedModularHeatflow.MemoryCore
```
