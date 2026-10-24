# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TorsionOffset.Variant009b79d3a34a3a37744973797b11fca23caa1f9875b41faf82ea4b0510a6e64c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fed18d00c364f68cf8a853d3b44edb4d38b4b182` · SHA-256 `009b79d3a34a3a37744973797b11fca23caa1f9875b41faf82ea4b0510a6e64c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.BSD.RankOrderCompatibility

/-!
# Folder.GrandChallenge.BSD.TorsionOffset

Radiation role: research-boundary
BinaryMatrix spine: This module records BSD torsion-offset obstruction scaffolding.
Ontology: bsd_torsion_offset
Pivot role: arithmetic
Zero typology: rank-order
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace BSD

/--
Torsion-offset stratum in a higher-dimensional crystalline/pivot space.

This is not a proof of BSD. It names the offset geometry that would be needed
to make torsion data obstruction-visible.
-/
structure TorsionOffsetStratum where
  curve : EllipticCurveObject
  label : String
  ambientDimensionLabel : String
  torsionClassLabel : String

/-- A pivot used by the BSD torsion-offset atlas. -/
structure Pivot where
  label : String

/-- A finite composite of pivots. -/
structure PivotComposite where
  pivots : List Pivot
  label : String

/--
Non-intersection target for higher-dimensional torsion-offset strata.

The half pivot is the critical-line pivot; the one pivot is the arithmetic
special-value normalization pivot.
-/
structure TorsionOffsetNonIntersection where
  stratum : TorsionOffsetStratum
  criticalHalfPivot : Pivot
  specialValueOnePivot : Pivot
  noIntersectionWithHalf : Prop
  noIntersectionWithHalf_certified : noIntersectionWithHalf
  noIntersectionWithOne : Prop
  noIntersectionWithOne_certified : noIntersectionWithOne
  noIntersectionWithComposites : Prop
  noIntersectionWithComposites_certified : noIntersectionWithComposites
  sourceLabel : String

/--
BSD pivot compatibility package.

Rank/order equality is exposed only from supplied compatibility data. Torsion
offsets provide obstruction accounting, not BSD by themselves.
-/
structure BSDPivotCompatibility where
  curve : EllipticCurveObject
  torsionOffsetSystem : Type
  rankOrderData : RankOrderData
  regulatorPeriodData : Type
  obstructionAccountedFor : Prop
  obstructionAccountedFor_certified : obstructionAccountedFor
  rankEqualsAnalyticOrder : Prop
  rankEqualsAnalyticOrder_certified : rankEqualsAnalyticOrder
  sourceLabel : String

/--
Fortification route connecting torsion offsets to crystalline Poincare/Ricci
flow ideas.

This is a theorem target. It does not say Perelman's methods directly apply.
-/
structure TorsionOffsetGeometricFortification where
  stratum : TorsionOffsetStratum
  crystallinePoincareControl : Prop
  crystallinePoincareControl_certified : crystallinePoincareControl
  ricciFlowTransferAvailable : Prop
  ricciFlowTransferAvailable_certified : ricciFlowTransferAvailable
  obstructionPersistence : Prop
  obstructionPersistence_certified : obstructionPersistence
  sourceLabel : String

theorem torsion_offset_no_intersection_with_half_if_supplied
    (N : TorsionOffsetNonIntersection) :
    N.noIntersectionWithHalf :=
  N.noIntersectionWithHalf_certified

theorem torsion_offset_no_intersection_with_one_if_supplied
    (N : TorsionOffsetNonIntersection) :
    N.noIntersectionWithOne :=
  N.noIntersectionWithOne_certified

theorem torsion_offset_no_intersection_with_composites_if_supplied
    (N : TorsionOffsetNonIntersection) :
    N.noIntersectionWithComposites :=
  N.noIntersectionWithComposites_certified

theorem bsd_obstruction_accounted_for_if_supplied
    (B : BSDPivotCompatibility) :
    B.obstructionAccountedFor :=
  B.obstructionAccountedFor_certified

theorem bsd_rank_order_if_compatibility_supplied
    (B : BSDPivotCompatibility) :
    B.rankEqualsAnalyticOrder :=
  B.rankEqualsAnalyticOrder_certified

theorem torsion_offset_obstruction_persistence_if_supplied
    (G : TorsionOffsetGeometricFortification) :
    G.obstructionPersistence :=
  G.obstructionPersistence_certified

end BSD
end GrandChallenge
end Folder
```
