import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.PoleCover

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TorsionClass where
  modulus : Nat
  representative : Nat
  label : String
deriving Repr

structure CompactTorsion where
  compact : CompactPatch
  torsion : TorsionClass
  coboundaryResidue : Int
  poleResidue : Int

def CompactTorsion.residueValue (T : CompactTorsion) : Int :=
  T.coboundaryResidue + T.poleResidue

def CompactTorsion.resolved (T : CompactTorsion) : Prop :=
  T.residueValue = 0

structure TorsionRestriction where
  source : CompactPatch
  target : CompactPatch
  sourceTorsion : TorsionClass
  targetTorsion : TorsionClass
  naturalUnderRestriction : Prop

def TorsionRestriction.admitted (r : TorsionRestriction) : Prop :=
  r.naturalUnderRestriction

theorem torsion_resolved_iff_value_zero
    (T : CompactTorsion) :
    T.resolved ↔ T.residueValue = 0 := by
  rfl

theorem natural_torsion_restriction_admitted
    (r : TorsionRestriction)
    (h : r.naturalUnderRestriction) :
    r.admitted := by
  exact h

end Think.RadoProjectedModularHeatflow.MemoryCore
