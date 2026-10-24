# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryAdapter.Variant2f8c9eb2b9a9a13f9a82310c4b0ba454263e359459354edf450cd742d097ec54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `024fd345b8005fc17690b60eaac7b64ef17851dc` · SHA-256 `2f8c9eb2b9a9a13f9a82310c4b0ba454263e359459354edf450cd742d097ec54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Fabric.Patch

/-!
# Globally located fabric surgery adapters

This module does not introduce a second patch or filler language.  It attaches
an arbitrary, typed global-locus value to the existing `LocalPatch` selected at
one fabric cell, and retains the existing strict boundary equations.  The
meaning of the locus is supplied by the integration layer that owns the global
state; the generic fabric project therefore remains independent of terrain,
matrix, and prismatic representations.

An adapter is only a checked local candidate.  Global extension still requires
an existing `LocalPatch.Extension` or an explicit `CompleteFillerTheory`.
-/

namespace DAF.Fabric

universe uL

/--
A typed global locus attached to one existing fabric-local patch.

`selected` records the surrounding subfabric in which the cell is being
changed.  It does not assert that the patch extends outside that subfabric.
-/
structure SurgicalPatchAdapter
    (GlobalLocus : Type uL)
    (F : Fabric) where
  dimension : Nat
  cell : F.Cell dimension
  globalLocus : GlobalLocus
  selected : Subfabric F
  cell_selected : selected.selected dimension cell
  patch : LocalPatch F cell
  boundaryCompatible : patch.BoundaryCompatible

namespace SurgicalPatchAdapter

/-- The adapter exposes exactly the existing local patch boundary predicate. -/
theorem boundary_compatible
    {GlobalLocus : Type uL}
    {F : Fabric}
    (adapter : SurgicalPatchAdapter GlobalLocus F) :
    adapter.patch.BoundaryCompatible :=
  adapter.boundaryCompatible

/--
With an explicit complete-filler capability, a located patch has a genuine
global fabric extension.  The global-locus label itself supplies no filler.
-/
def extension
    {GlobalLocus : Type uL}
    {F : Fabric}
    (fillers : CompleteFillerTheory F)
    (adapter : SurgicalPatchAdapter GlobalLocus F) :
    adapter.patch.Extension :=
  fillers.fill adapter.patch adapter.boundaryCompatible

/-- A located patch therefore extends only through the supplied capability. -/
theorem extendsTo
    {GlobalLocus : Type uL}
    {F : Fabric}
    (fillers : CompleteFillerTheory F)
    (adapter : SurgicalPatchAdapter GlobalLocus F) :
    adapter.patch.ExtendsTo :=
  ⟨adapter.extension fillers⟩

end SurgicalPatchAdapter

end DAF.Fabric
```
