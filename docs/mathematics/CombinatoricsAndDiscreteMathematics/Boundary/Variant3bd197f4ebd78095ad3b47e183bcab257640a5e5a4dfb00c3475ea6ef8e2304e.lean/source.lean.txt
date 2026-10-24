import DAF.Terrain.WindowCover

/-!
# Terrain boundaries, obstacles, and resources

Boundary state and resource data are explicit and separate from adjacency.
`GlobalTerrain` locates every finite vertex injectively in one maximal absolute
coordinate frame and proves that its declared locus is exactly the image.
-/

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
