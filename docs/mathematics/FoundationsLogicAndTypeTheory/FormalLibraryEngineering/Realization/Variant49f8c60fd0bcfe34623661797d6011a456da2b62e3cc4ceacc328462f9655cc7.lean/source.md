# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Realization.Variant49f8c60fd0bcfe34623661797d6011a456da2b62e3cc4ceacc328462f9655cc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fe0e46d36b5e44af088983e20a41a4ee8dcecd3` · SHA-256 `49f8c60fd0bcfe34623661797d6011a456da2b62e3cc4ceacc328462f9655cc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.ArithmeticAuthorities
import Boolean.Cube.CountableBooleanCylinder
import Boolean.Cube.PrismaticGeometry.Sphere

/-!
# Prismatic realization and analytic limits for finite geometry

This module connects finite prismatic geometry to δ-ring/prismatic authority
and to analytic completion, keeping the three layers separate:

* δ-ring/prismatic realization requires `PrismaticGeometryRealization`,
  which wraps the existing `PrismaticSiteAuthority` proof fields;
* analytic completion requires `PrismaticGeometryAnalyticLimit` — finite
  cell complexes alone never create completion;
* a named prismatic comparison requires
  `GeometryToPrismaticComparisonBridge`, whose proof field explicitly maps
  the realized class to the comparison statement.

Finite geometry syntax is not prismatic theorem authority
(`finite_prismatic_geometry_not_comparison_authority`), and no full
prismatic cohomology is claimed from finite geometry.

Object index: `PrismaticGeometryRealization`,
`PrismaticGeometryAnalyticLimit`, `RealizedPrismaticHomologyClass`,
`realized_prismatic_homology_class_sound`,
`finite_prismatic_geometry_not_comparison_authority`,
`GeometryToPrismaticComparisonBridge`,
`geometry_yields_prismatic_comparison`.
-/

universe u w

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-- Proof-carrying δ-ring/prismatic realization of a finite cell complex. -/
structure PrismaticGeometryRealization
    (X : FiniteCellComplex)
    (R : Type w) where
  prismaticAuthority :
    ArithmeticAuthorities.PrismaticSiteAuthority

  realizeCell :
    ∀ k : Nat, X.Cell k → R

  realizeChain :
    ∀ k : Nat, Chain X k → R

  delta : R → R
  frobeniusLift : R → R

  deltaRingStructure :
    prismaticAuthority.deltaRingStructure
  boundedPrism :
    prismaticAuthority.boundedPrism
  frobeniusLiftSound :
    prismaticAuthority.frobeniusLift
  siteConstructed :
    prismaticAuthority.siteConstructed

  boundaryCompatible : Prop
  boundaryCompatibleProof : boundaryCompatible

  dimensionCompatible : Prop
  dimensionCompatibleProof : dimensionCompatible

/-- Proof-carrying analytic limit for finite geometry. Finite cell
complexes alone never create completion. -/
structure PrismaticGeometryAnalyticLimit
    (X : FiniteCellComplex) where
  Completion : Type w
  embedCell :
    ∀ k : Nat, X.Cell k → Completion
  embedChain :
    ∀ k : Nat, Chain X k → Completion
  completionSound : Prop
  completionProof : completionSound
  limitSound : Prop
  limitProof : limitSound

/-- A homology class together with its prismatic realization and analytic
limit, all proof-carrying. -/
structure RealizedPrismaticHomologyClass
    (X : FiniteCellComplex)
    (R : Type w)
    (k : Nat) where
  homologyClass : HomologyClass X k
  realization : PrismaticGeometryRealization X R
  analyticLimit : PrismaticGeometryAnalyticLimit.{u, w} X
  realizesClass : Prop
  realizesClassProof : realizesClass
  nontrivialAfterRealization : Prop
  nontrivialAfterRealizationProof : nontrivialAfterRealization

theorem realized_prismatic_homology_class_sound
    {X : FiniteCellComplex} {R : Type w} {k : Nat}
    (C : RealizedPrismaticHomologyClass X R k) :
    C.homologyClass.classNontrivial ∧
      C.realization.prismaticAuthority.deltaRingStructure ∧
      C.realization.prismaticAuthority.frobeniusLift ∧
      C.analyticLimit.completionSound ∧
      C.analyticLimit.limitSound ∧
      C.realizesClass ∧
      C.nontrivialAfterRealization :=
  ⟨C.homologyClass.classNontrivialProof,
    C.realization.deltaRingStructure,
    C.realization.frobeniusLiftSound,
    C.analyticLimit.completionProof,
    C.analyticLimit.limitProof,
    C.realizesClassProof,
    C.nontrivialAfterRealizationProof⟩

/-- Finite prismatic geometry does not own a prismatic comparison theorem. -/
def FinitePrismaticGeometryOwnsPrismaticComparison
    (_X : FiniteCellComplex) : Prop :=
  False

theorem finite_prismatic_geometry_not_comparison_authority
    (X : FiniteCellComplex) :
    ¬ FinitePrismaticGeometryOwnsPrismaticComparison X := by
  intro h
  exact h

/-- Bridge from a realized class to a named prismatic comparison statement.
The proof field is the only route to the comparison. -/
structure GeometryToPrismaticComparisonBridge
    {X : FiniteCellComplex} {R : Type w} {k : Nat}
    (C : RealizedPrismaticHomologyClass X R k) where
  comparisonStatement : Prop
  comparisonProof :
    C.homologyClass.classNontrivial →
    C.realization.prismaticAuthority.deltaRingStructure →
    C.realization.prismaticAuthority.siteConstructed →
    C.analyticLimit.limitSound →
    C.nontrivialAfterRealization →
    comparisonStatement

theorem geometry_yields_prismatic_comparison
    {X : FiniteCellComplex} {R : Type w} {k : Nat}
    (C : RealizedPrismaticHomologyClass X R k)
    (B : GeometryToPrismaticComparisonBridge C) :
    B.comparisonStatement :=
  B.comparisonProof
    C.homologyClass.classNontrivialProof
    C.realization.deltaRingStructure
    C.realization.siteConstructed
    C.analyticLimit.limitProof
    C.nontrivialAfterRealizationProof

end PrismaticGeometry
end Cube
end Boolean
```
