# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryBridge.Variant5b1617899758ec76eb94275d081a225f55e89fa9e0fb7fcd8b2cd9bf58a35f12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9c3041092d3420d5e35c4ccd5b60a8072d37116` · SHA-256 `5b1617899758ec76eb94275d081a225f55e89fa9e0fb7fcd8b2cd9bf58a35f12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Fabric.SurgeryAdapter
import DAF.Prismatic.SourceRealizationFunctoriality
import DAF.Terrain.Surgery

/-!
# Globally located prismatic surgery witnesses

This module connects an existing fabric `LocalPatch` to an explicit arithmetic
source morphism at the same terrain-owned global locus.  It does not duplicate
fabric patch semantics and it does not turn `BasePrismDatum` into a constructed
prism.  Whenever a prism descriptor is referenced, a constructed object and a
`BasePrismCertificate` are retained together.
-/

namespace DAF.Prismatic

universe uState

/-- Certified construction data for one named base-prism descriptor. -/
structure CertifiedConstructedBasePrism where
  descriptor : BasePrismDatum
  constructed : ConstructedBasePrism descriptor
  certificate : BasePrismCertificate descriptor constructed

/--
An arithmetic/fabric patch located at one exact maximal-state region.
The realization square remains an explicit obligation of the chosen model.
-/
structure PrismaticSurgeryWitness
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (F : DAF.Fabric.Fabric)
    (P : Theory)
    (before after : SourceRealization F P) where
  locus : DAF.Terrain.GlobalSurgeryLocus G
  fabric : DAF.Fabric.SurgicalPatchAdapter
    (DAF.Terrain.GlobalSurgeryLocus G) F
  fabric_locus : fabric.globalLocus = locus
  sourceChange : SourceRealization.Hom before after
  realizationSquare : Prop
  realizationSquare_proof : realizationSquare
  constructedPrism : Option CertifiedConstructedBasePrism
  globalRulesetCompatible : Prop
  globalRulesetCompatible_proof : globalRulesetCompatible
  unresolvedObligations : List String

namespace PrismaticSurgeryWitness

/-- The fabric patch and arithmetic change target exactly the named locus. -/
theorem targets_same_global_locus
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {before after : SourceRealization F P}
    (witness : PrismaticSurgeryWitness G F P before after) :
    witness.fabric.globalLocus = witness.locus :=
  witness.fabric_locus

/-- Boundary compatibility is inherited from the existing fabric patch. -/
theorem fabric_boundary_compatible
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {before after : SourceRealization F P}
    (witness : PrismaticSurgeryWitness G F P before after) :
    witness.fabric.patch.BoundaryCompatible :=
  witness.fabric.boundaryCompatible

/-- The arithmetic realization square is supplied, never inferred from metadata. -/
theorem realization_commutes
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {before after : SourceRealization F P}
    (witness : PrismaticSurgeryWitness G F P before after) :
    witness.realizationSquare :=
  witness.realizationSquare_proof

end PrismaticSurgeryWitness

end DAF.Prismatic
```
