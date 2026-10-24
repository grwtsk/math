# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Boundary.Variant8c97c92759d8ead3daf9161b7f5119b74e4aebc2eb8804e0139396a35e2e6680

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ba4f08dc95f7c1b9c7d139091879d7bba2d0cbd` · SHA-256 `d9041ecab19d8bd5108c58253e9b364317c6eeee83b89706dfc3fd05dbf13a3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BoundaryState.Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BoundaryState.Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Terrain/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.WindowCover

/-!
# Terrain boundaries, obstacles, and resources

Boundary state and resource data are explicit and separate from adjacency.
`GlobalTerrain` locates every finite vertex injectively in one maximal absolute
coordinate frame and proves that its declared locus is exactly the image.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BoundaryState.Variant3bd197f4ebd78095ad3b47e183bcab257640a5e5a4dfb00c3475ea6ef8e2304e

universe u v

namespace DAF.Terrain

/-- Boundary and obstacle vertices of a finite terrain. -/
structure BoundaryState (V : Type u) [Fintype V] [DecidableEq V] where
  boundary : Finset V
  obstacles : Finset V
  boundary_obstacle_disjoint : Disjoint boundary obstacles

/-- Nonnegative local capacities and permeabilities. -/
structure ResourceState (V : Type u) [Fintype V] [DecidableEq V] where
  capacity : V → Real
  permeability : V → Real
  capacity_nonnegative : ∀ v, 0 ≤ capacity v
  permeability_nonnegative : ∀ v, 0 ≤ permeability v

/-- A terrain whose finite vertices have exact, injective global coordinates. -/
structure GlobalTerrain {State : Type u} (G : KnownMaximalState State)
    (V : Type v) [Fintype V] [DecidableEq V] where
  terrain : Terrain V
  globalCoordinate : V ↪ G.Coord
  locus : AbsoluteRegion G
  locus_exact :
    letI := G.coordDecEq
    ∀ c, c ∈ locus.coordinates ↔ ∃ v, globalCoordinate v = c
  boundary : BoundaryState V
  resources : ResourceState V

namespace GlobalTerrain

variable {State : Type u} {G : KnownMaximalState State}
  {V : Type v} [Fintype V] [DecidableEq V]

theorem vertex_mem_locus (T : GlobalTerrain G V) (v : V) :
    T.globalCoordinate v ∈ T.locus.coordinates := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact (T.locus_exact (T.globalCoordinate v)).2 ⟨v, rfl⟩

theorem globalCoordinate_injective (T : GlobalTerrain G V) :
    Function.Injective T.globalCoordinate :=
  T.globalCoordinate.injective

end GlobalTerrain

end DAF.Terrain
```
