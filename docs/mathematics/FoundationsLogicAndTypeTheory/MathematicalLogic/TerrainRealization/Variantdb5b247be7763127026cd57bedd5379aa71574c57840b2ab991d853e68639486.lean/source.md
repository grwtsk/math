# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TerrainRealization.Variantdb5b247be7763127026cd57bedd5379aa71574c57840b2ab991d853e68639486

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `929636fb82556fd6890acdfd35fdbb14ad1f3005` · SHA-256 `db5b247be7763127026cd57bedd5379aa71574c57840b2ab991d853e68639486`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Prismatic.SourceRealizationFunctoriality
import DAF.Terrain.GlobalReference

/-!
# Explicit terrain-to-prismatic source realization

A finite terrain state has no canonical arithmetic or prismatic meaning.  This
module therefore packages the representation choices needed to place every
absolute coordinate of a `KnownMaximalState` at an existing fabric cell and to
identify its declared state representation with the selected
`SourceRealization` object at that cell.

The record is representation data, not a construction of a prism.  In
particular, it neither creates `ConstructedBasePrism` nor discharges a
`BasePrismCertificate`.
-/

namespace DAF.Prismatic

universe uState uCoord

/-- A globally anchored terrain reference interpreted in one selected source. -/
structure TerrainSourceRealization
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (F : DAF.Fabric.Fabric)
    (P : Theory) where
  source : SourceRealization F P
  cellAt : G.Coord ↪ (Σ n : Nat, F.Cell n)
  stateRepresentation : State → P.DerivedAlg
  referenceRealizes :
    ∀ c : G.Coord,
      stateRepresentation (G.reference c) =
        source.cellCorrespondence (cellAt c).2

namespace TerrainSourceRealization

/-- The exact fabric cell globally assigned to one absolute coordinate. -/
def coordinateCell
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (R : TerrainSourceRealization G F P)
    (c : G.Coord) :
    F.Cell (R.cellAt c).1 :=
  (R.cellAt c).2

/-- Distinct global coordinates retain distinct located fabric cells. -/
theorem cellAt_injective
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (R : TerrainSourceRealization G F P) :
    Function.Injective R.cellAt :=
  R.cellAt.injective

/-- The state-to-cell realization square is the certificate stored in the record. -/
theorem reference_realization_commutes
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (R : TerrainSourceRealization G F P)
    (c : G.Coord) :
    R.stateRepresentation (G.reference c) =
      R.source.cellCorrespondence (R.cellAt c).2 :=
  R.referenceRealizes c

end TerrainSourceRealization

end DAF.Prismatic
```
