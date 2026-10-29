import DAF.Arithmetic.GammaSpindle
import DAF.Hilbert.FiniteTensor
import DAF.Hilbert.PointCarrier
import DAF.Hilbert.SpectralPacket
import Mathlib.Tactic.FinCases

/-!
# Pointed finite Gamma-spindle states

Continuous spectral delta functions are deliberately absent.  A state uses
an exact terrain point vector, a normalized finite spectral packet, and a
unit vector in the two-sheet character-orbit carrier.
-/

noncomputable section

namespace DAF.Hilbert

universe u

/-- Two-sheet carrier used for a character conjugacy orbit.  A real orbit may
occupy one sheet; a non-real orbit has both sheets available. -/
def canonicalOrbitVector : FiniteHilbert (Fin 2) :=
  WithLp.toLp 2 fun sheet ↦ if sheet = 0 then 1 else 0

@[simp]
theorem canonicalOrbitVector_apply_zero : canonicalOrbitVector 0 = 1 := by
  simp [canonicalOrbitVector]

@[simp]
theorem canonicalOrbitVector_apply_one : canonicalOrbitVector 1 = 0 := by
  simp [canonicalOrbitVector]

theorem canonicalOrbitVector_norm : ‖canonicalOrbitVector‖ = 1 := by
  have square : ‖canonicalOrbitVector‖ ^ 2 = 1 := by
    rw [EuclideanSpace.norm_sq_eq, Fin.sum_univ_two]
    norm_num [canonicalOrbitVector]
  nlinarith [norm_nonneg canonicalOrbitVector]

/-- Exact finite pointed state over a terrain cube, spectral grid, and
conjugacy-closed arithmetic orbit. -/
structure PointedSpindleState
    (dimension : Nat) (Grid : Type u)
    [Fintype Grid] [Nonempty Grid] where
  terrainPoint : TerrainPoint dimension
  characterOrbit : Arithmetic.CharacterOrbit
  packet : SpectralPacketData Grid
  orbitVector : FiniteHilbert (Fin 2)
  orbitVector_norm_one : ‖orbitVector‖ = 1

namespace PointedSpindleState

variable {dimension : Nat} {Grid : Type u}
variable [Fintype Grid] [Nonempty Grid]

/-- The exact carried vector
`Ω_terrain ⊗ η_packet ⊗ e_[χ]`. -/
def vector (state : PointedSpindleState dimension Grid) :
    FiniteHilbert
      (HypercubeVertex dimension × ((Grid × Fin 2) × Fin 2)) :=
  tensorVector state.terrainPoint.pointVector
    (tensorVector state.packet.vector state.orbitVector)

/-- Every pointed finite spindle state is normalized. -/
theorem vector_norm (state : PointedSpindleState dimension Grid) :
    ‖state.vector‖ = 1 := by
  apply tensorVector_norm state.terrainPoint.pointVector_norm
  exact tensorVector_norm state.packet.vector_norm state.orbitVector_norm_one

/-- Public vector-state projection. -/
def vectorState (state : PointedSpindleState dimension Grid) := state.vector

/-- Rank-one projection associated with a pointed spindle state. -/
def projection (state : PointedSpindleState dimension Grid) :
    FiniteHilbert
        (HypercubeVertex dimension × ((Grid × Fin 2) × Fin 2)) →L[ℂ]
      FiniteHilbert
        (HypercubeVertex dimension × ((Grid × Fin 2) × Fin 2)) :=
  InnerProductSpace.rankOne ℂ state.vector state.vector

theorem projection_selfAdjoint (state : PointedSpindleState dimension Grid) :
    state.projection.adjoint = state.projection := by
  simp [projection]

theorem projection_idempotent (state : PointedSpindleState dimension Grid) :
    IsIdempotentElem state.projection :=
  InnerProductSpace.isIdempotentElem_rankOne_self state.vector_norm

/-- Canonical one-sheet vector inside the two-sheet orbit carrier. -/
def canonical
    (terrainPoint : TerrainPoint dimension)
    (characterOrbit : Arithmetic.CharacterOrbit)
    (packet : SpectralPacketData Grid) :
    PointedSpindleState dimension Grid where
  terrainPoint := terrainPoint
  characterOrbit := characterOrbit
  packet := packet
  orbitVector := canonicalOrbitVector
  orbitVector_norm_one := canonicalOrbitVector_norm

end PointedSpindleState

end DAF.Hilbert
