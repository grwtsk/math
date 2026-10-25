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
