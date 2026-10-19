/-!
# Persistent parent-relative distinctions

A distinction projects only through an explicit transport witness.  No parity
or disappearance rule is implicit.
-/

namespace Mathematics.StratifiedBoundary

structure PersistentBitfieldProjection
    (ParentBitfield ChildBitfield : Type u) where
  project : ChildBitfield → ParentBitfield
  parentBitfield : ParentBitfield
  childBitfield : ChildBitfield
  projectionWitness :
    project childBitfield = parentBitfield
  dischargeWitnessRefs : List String

theorem persistent_bitfield_projects
    {ParentBitfield ChildBitfield : Type u}
    (certificate :
      PersistentBitfieldProjection
        ParentBitfield ChildBitfield) :
    certificate.project certificate.childBitfield =
      certificate.parentBitfield :=
  certificate.projectionWitness

end Mathematics.StratifiedBoundary
