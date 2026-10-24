import Mathlib.LinearAlgebra.Matrix.ToLin
import Mathlib.LinearAlgebra.Matrix.DotProduct
import Mathlib.Analysis.InnerProductSpace.PiL2
import GRWTSK.Geometry.Hodge.FiniteGraphCellular
import GRWTSK.Algebra.LinearAlgebra.FramedFiberPort

namespace GRWTSK.Geometry.Hodge.FiniteMatrixHodge

open Matrix
open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.FiniteGraphCellular

universe u v

variable {Vertex : Type u} {Edge : Type v}
variable [Fintype Vertex] [Fintype Edge] [DecidableEq Vertex]

/-- Exact signed incidence matrix of a finite oriented incidence object. -/
def incidenceMatrix (G : OrientedIncidence Vertex Edge) :
    Matrix Edge Vertex ℝ :=
  fun e v =>
    (if G.target e = v then 1 else 0) -
      (if G.source e = v then 1 else 0)

/-- Matrix realization of the cellular coboundary. -/
def delta (G : OrientedIncidence Vertex Edge) :
    (Vertex → ℝ) →ₗ[ℝ] (Edge → ℝ) :=
  (incidenceMatrix G).mulVecLin

/-- Euclidean adjoint of the cellular coboundary. -/
def deltaStar (G : OrientedIncidence Vertex Edge) :
    (Edge → ℝ) →ₗ[ℝ] (Vertex → ℝ) :=
  (incidenceMatrix G)ᵀ.mulVecLin

/-- Finite graph Hodge datum `δ, δ*`. -/
def hodgeData (G : OrientedIncidence Vertex Edge) :
    TwoTermHodgeData ℝ (Vertex → ℝ) (Edge → ℝ) where
  delta := delta G
  deltaStar := deltaStar G

omit [Fintype Edge] in
@[simp]
theorem delta_apply
    (G : OrientedIncidence Vertex Edge) (x : Vertex → ℝ) :
    delta G x = (incidenceMatrix G) *ᵥ x := rfl

omit [Fintype Vertex] in
@[simp]
theorem deltaStar_apply
    (G : OrientedIncidence Vertex Edge) (y : Edge → ℝ) :
    deltaStar G y = (incidenceMatrix G)ᵀ *ᵥ y := rfl

omit [Fintype Edge] in
/-- The matrix differential agrees with the direct cellular coboundary. -/
theorem delta_eq_coboundary
    (G : OrientedIncidence Vertex Edge) :
    delta G = G.coboundary ℝ := by
  apply LinearMap.ext
  intro x
  funext e
  classical
  simp [delta, incidenceMatrix, Matrix.mulVec,
    dotProduct,
    OrientedIncidence.coboundary, sub_mul, Finset.sum_sub_distrib, eq_comm]

/-- `Bᵀ` is the actual Euclidean adjoint of `B`. -/
theorem adjoint_identity
    (G : OrientedIncidence Vertex Edge)
    (x : Vertex → ℝ) (y : Edge → ℝ) :
    (delta G x) ⬝ᵥ y = x ⬝ᵥ (deltaStar G y) := by
  calc
    (delta G x) ⬝ᵥ y = y ⬝ᵥ (delta G x) :=
      dotProduct_comm _ _
    _ = x ⬝ᵥ (deltaStar G y) := by
      simpa [delta_apply, deltaStar_apply] using
        (Matrix.dotProduct_transpose_mulVec (incidenceMatrix G) x y).symm

/-- The finite graph Laplacian. -/
def laplacian (G : OrientedIncidence Vertex Edge) :
    (Vertex → ℝ) →ₗ[ℝ] (Vertex → ℝ) :=
  (deltaStar G).comp (delta G)

@[simp]
theorem hodgeData_laplacian0
    (G : OrientedIncidence Vertex Edge) :
    (hodgeData G).laplacian0 = laplacian G := rfl

/-- Quadratic-form identity `⟨x, BᵀBx⟩ = ⟨Bx,Bx⟩`. -/
theorem laplacian_quadratic
    (G : OrientedIncidence Vertex Edge) (x : Vertex → ℝ) :
    x ⬝ᵥ (laplacian G x) = (delta G x) ⬝ᵥ (delta G x) := by
  exact (adjoint_identity G x (delta G x)).symm

/-- The graph Laplacian is positive semidefinite in the Euclidean metric. -/
theorem laplacian_nonneg
    (G : OrientedIncidence Vertex Edge) (x : Vertex → ℝ) :
    0 ≤ x ⬝ᵥ (laplacian G x) := by
  rw [laplacian_quadratic]
  unfold dotProduct
  exact Finset.sum_nonneg fun i _ => mul_self_nonneg (delta G x i)

/-- The graph Laplacian is self-adjoint. -/
theorem laplacian_selfAdjoint
    (G : OrientedIncidence Vertex Edge)
    (x y : Vertex → ℝ) :
    (laplacian G x) ⬝ᵥ y = x ⬝ᵥ (laplacian G y) := by
  calc
    (laplacian G x) ⬝ᵥ y = y ⬝ᵥ (laplacian G x) :=
      dotProduct_comm _ _
    _ = (delta G y) ⬝ᵥ (delta G x) :=
      (adjoint_identity G y (delta G x)).symm
    _ = (delta G x) ⬝ᵥ (delta G y) :=
      dotProduct_comm _ _
    _ = x ⬝ᵥ (laplacian G y) :=
      adjoint_identity G x (delta G y)

/-- Exact finite Hodge kernel theorem: `ker(BᵀB) = ker B`. -/
theorem laplacian_eq_zero_iff_delta_eq_zero
    (G : OrientedIncidence Vertex Edge) (x : Vertex → ℝ) :
    laplacian G x = 0 ↔ delta G x = 0 := by
  constructor
  · intro hx
    have hquad : (delta G x) ⬝ᵥ (delta G x) = 0 := by
      rw [← laplacian_quadratic]
      rw [hx]
      exact dotProduct_zero x
    exact dotProduct_self_eq_zero.mp hquad
  · intro hx
    unfold laplacian
    rw [LinearMap.comp_apply]
    rw [hx]
    exact (deltaStar G).map_zero

/-- Submodule form of the exact finite Hodge kernel theorem. -/
theorem laplacian_ker_eq_delta_ker
    (G : OrientedIncidence Vertex Edge) :
    LinearMap.ker (laplacian G) = LinearMap.ker (delta G) := by
  ext x
  simp [LinearMap.mem_ker, laplacian_eq_zero_iff_delta_eq_zero]

/-- A compatible global section is harmonic in the finite graph Hodge datum. -/
theorem harmonic_of_coboundary_zero
    (G : OrientedIncidence Vertex Edge) {x : Vertex → ℝ}
    (hx : G.coboundary ℝ x = 0) :
    (hodgeData G).IsHarmonic0 x := by
  unfold TwoTermHodgeData.IsHarmonic0
  rw [hodgeData_laplacian0, laplacian_eq_zero_iff_delta_eq_zero,
    delta_eq_coboundary]
  exact hx


/-!
## Euclidean realization of the existing finite graph Laplacian

The operator here is the already-defined incidence Hodge Laplacian
\`deltaStar G\` composed with \`delta G\`. It is lifted to the actual
Euclidean L² norm and the existing adjoint quadratic identity proves
positive semidefiniteness. No spectral positivity is assumed.
-/

/-- The Euclidean continuous-linear representation of the existing graph
Hodge Laplacian, with its literal incidence Gram matrix. -/
noncomputable def euclideanLaplacian
    (G : OrientedIncidence Vertex Edge) :
    EuclideanSpace ℝ Vertex →L[ℝ] EuclideanSpace ℝ Vertex :=
  LinearMap.toContinuousLinearMap
    (Matrix.toLpLin 2 2 ((incidenceMatrix G)ᵀ * incidenceMatrix G))

/-- The new Euclidean map is precisely the original cellular Laplacian
after the standard finite L² coordinate identification. -/
theorem euclideanLaplacian_apply
    (G : OrientedIncidence Vertex Edge) (x : Vertex → ℝ) :
    euclideanLaplacian G (WithLp.toLp 2 x) =
      WithLp.toLp 2 (laplacian G x) := by
  change WithLp.toLp 2 (((incidenceMatrix G)ᵀ * incidenceMatrix G) *ᵥ x) =
    WithLp.toLp 2 ((incidenceMatrix G)ᵀ *ᵥ (incidenceMatrix G *ᵥ x))
  rw [Matrix.mulVec_mulVec]

/-- The original finite graph Hodge quadratic identity supplies a genuine
nonnegative real-Hilbert-space operator, with no coercivity or spectral-gap
assumption. -/
theorem euclideanLaplacian_nonneg
    (G : OrientedIncidence Vertex Edge)
    (y : EuclideanSpace ℝ Vertex) :
    0 ≤ inner ℝ (euclideanLaplacian G y) y := by
  let x : Vertex → ℝ := WithLp.ofLp y
  have hy : y = WithLp.toLp 2 x := (WithLp.toLp_ofLp y).symm
  rw [hy, euclideanLaplacian_apply]
  simpa [EuclideanSpace.inner_toLp_toLp, Matrix.dotProduct] using
    (laplacian_nonneg G x)

end GRWTSK.Geometry.Hodge.FiniteMatrixHodge
