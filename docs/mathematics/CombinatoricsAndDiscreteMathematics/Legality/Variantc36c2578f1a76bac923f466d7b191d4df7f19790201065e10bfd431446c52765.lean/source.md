# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Legality.Variantc36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bbc632f0085e14db7d08570b5c505c997484df0` · SHA-256 `c36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Terrain.Move

/-!
# Terrain-local move legality

This module certifies only the terrain-owned portion of legality: exact locus,
adjacency/boundary, obstacles, capacity, conservation, and compatibility with
the fixed global ruleset.  Matrix, raster, torsion, determinant, prismatic, and
cross-layer checks belong to integration; this certificate is therefore never
presented as complete move legality.
-/

universe u v

namespace DAF.Terrain

/-- Conjunctive terrain-local legality for one globally located move. -/
structure TerrainMoveLegality
    {State : Type u} {G : KnownMaximalState State}
    {V : Type v} [Fintype V] [DecidableEq V]
    (move : TerrainMove G V) where
  exactGlobalLocus : Prop
  exactGlobalLocus_proof : exactGlobalLocus
  adjacencyCompliant : Prop
  adjacencyCompliant_proof : adjacencyCompliant
  boundaryCompliant : Prop
  boundaryCompliant_proof : boundaryCompliant
  obstacleCompliant : Prop
  obstacleCompliant_proof : obstacleCompliant
  capacityCompliant : Prop
  capacityCompliant_proof : capacityCompliant
  conservative : Prop
  conservative_proof : conservative
  globalRulesetCompatible : Prop
  globalRulesetCompatible_proof : globalRulesetCompatible

namespace TerrainMoveLegality

variable {State : Type u} {G : KnownMaximalState State}
  {V : Type v} [Fintype V] [DecidableEq V]
  {move : TerrainMove G V}

/-- All terrain-local obligations are available separately. -/
theorem conjunction (h : TerrainMoveLegality move) :
    h.exactGlobalLocus ∧
    h.adjacencyCompliant ∧
    h.boundaryCompliant ∧
    h.obstacleCompliant ∧
    h.capacityCompliant ∧
    h.conservative ∧
    h.globalRulesetCompatible :=
  ⟨h.exactGlobalLocus_proof,
   h.adjacencyCompliant_proof,
   h.boundaryCompliant_proof,
   h.obstacleCompliant_proof,
   h.capacityCompliant_proof,
   h.conservative_proof,
   h.globalRulesetCompatible_proof⟩

end TerrainMoveLegality

/-- A move admitted to terrain-local algorithms, paired with its certificate. -/
structure AdmittedTerrainMove
    {State : Type u} (G : KnownMaximalState State)
    (V : Type v) [Fintype V] [DecidableEq V] where
  move : TerrainMove G V
  legality : TerrainMoveLegality move

end DAF.Terrain
```
