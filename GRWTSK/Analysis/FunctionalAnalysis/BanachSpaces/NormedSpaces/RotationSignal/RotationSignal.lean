import Mathematics.Oracle.Naming.CyclicCubical
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.LinearAlgebra.LinearIndependent.Basic

/-!
# Banach-realized all-face naming signals

The Boolean cube remains combinatorial.  An `AdmissibleBanachRotation` supplies
the additional analytic data needed to interpret one cyclic turn as a genuine
surjective linear isometry of a Banach space.
-/

namespace Mathematics.Oracle.Naming

open scoped BigOperators
open Finset

variable {n : Nat} [NeZero n]
variable {B : Type*} [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B]

/--
A cyclic coordinate turn together with the data proving that it is admissible
for a Banach realization of the cube.
-/
structure AdmissibleBanachRotation (n : Nat) (B : Type*)
    [NeZero n] [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B] where
  turn : ZMod n
  center : B
  axes : Fin n → B
  axesIndependent : LinearIndependent ℝ axes
  isometry : B ≃ₗᵢ[ℝ] B
  fixesCenter : isometry center = center
  rotatesAxes :
    ∀ i, isometry (axes i) = axes (cyclicCoordinateEquiv turn i)
  weights : Fin n → ℝ
  weightsPositive : ∀ i, 0 < weights i
  weightsInvariant :
    ∀ i, weights (cyclicCoordinateEquiv turn i) = weights i

/-- A signal on every face in every cubical dimension. -/
structure CubicalFaceSignal (n : Nat) (B : Type*) where
  value : FaceAddress n → B

instance : CoeFun (CubicalFaceSignal n B) (fun _ ↦ FaceAddress n → B) :=
  ⟨CubicalFaceSignal.value⟩

/--
Pointwise all-face discrepancy after applying one admissible global turn.
This definition is separate from both event cohomology and Dirichlet energy.
-/
noncomputable def allDegreeDiscrepancy
    (rotation : AdmissibleBanachRotation n B)
    (oracle model : CubicalFaceSignal n B) :
    FaceAddress n → B :=
  fun face ↦
    model (rotateFace rotation.turn face) -
      rotation.isometry (oracle face)

/-- Exact equality on every face, using the same turn in every dimension. -/
def allDegreeSutured
    (rotation : AdmissibleBanachRotation n B)
    (oracle model : CubicalFaceSignal n B) : Prop :=
  ∀ face,
    model (rotateFace rotation.turn face) =
      rotation.isometry (oracle face)

/-- Flip one coordinate of a Boolean field. -/
def flipBitField (point : BitField n) (axis : Fin n) : BitField n :=
  fun i ↦ if i = axis then !(point i) else point i

/--
The ordered-edge Banach `p`-Dirichlet energy, divided by two so each
undirected hypercube edge is counted once.
-/
noncomputable def banachDirichletEnergy
    (p : Nat) (signal : BitField n → B) : ℝ := by
  classical
  exact
    (2 : ℝ)⁻¹ *
      ∑ point : BitField n, ∑ axis : Fin n,
        ‖signal (flipBitField point axis) - signal point‖ ^ p

/--
Weighted full-face residual.  `degreeWeight k` is the positive profile weight
for dimension `k` in an acceptance certificate.
-/
noncomputable def allFaceDirichletResidual
    (p : Nat)
    (degreeWeight : Nat → ℝ)
    (rotation : AdmissibleBanachRotation n B)
    (oracle model : CubicalFaceSignal n B) : ℝ := by
  classical
  exact
    ∑ face : FaceAddress n,
      degreeWeight face.dimension *
        ‖allDegreeDiscrepancy rotation oracle model face‖ ^ p

/-- Exact all-degree agreement forces the full-face quantitative residual to zero. -/
theorem dirichletEnergy_zero_of_allDegreeSutured
    (p : Nat)
    (hp : 0 < p)
    (degreeWeight : Nat → ℝ)
    (rotation : AdmissibleBanachRotation n B)
    (oracle model : CubicalFaceSignal n B)
    (sutured : allDegreeSutured rotation oracle model) :
    allFaceDirichletResidual p degreeWeight rotation oracle model = 0 := by
  classical
  unfold allFaceDirichletResidual
  apply Finset.sum_eq_zero
  intro face _
  have hzero : allDegreeDiscrepancy rotation oracle model face = 0 := by
    unfold allDegreeDiscrepancy
    rw [sutured face]
    exact sub_self _
  simp [hzero, Nat.ne_of_gt hp]

end Mathematics.Oracle.Naming
