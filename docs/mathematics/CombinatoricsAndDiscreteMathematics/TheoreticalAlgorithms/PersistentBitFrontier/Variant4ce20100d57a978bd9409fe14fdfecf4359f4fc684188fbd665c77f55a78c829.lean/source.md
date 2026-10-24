# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PersistentBitFrontier.Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3bb5c822da22f8e9b92c8684bcbbf9a5b9e60bc` · SHA-256 `4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
