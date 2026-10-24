import Mathlib.LinearAlgebra.Matrix.ToLin
import Mathlib.LinearAlgebra.Matrix.DotProduct
import Mathlib.Analysis.InnerProductSpace.PiL2
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SchurFeshbachJet
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


/-!
## The genuine graph Hodge Laplacian as a coercive moment-Schur supplier

For a finite oriented incidence object, the independently defined graph
Laplacian deltaStar ∘ delta is positive semidefinite. Taking B to be its
Euclidean continuous operator and C=id provides the global moment
coercivity certificate with ε=1 and R=the real inner product. The earlier
identity-block Schur construction now supplies an explicit full coupled
block matrix, invertible at every parameter even if the unshifted graph
Laplacian has harmonic zero modes.

The graph is a finite Hodge model, not a Navier--Stokes fluid solution.
-/

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SchurFeshbachJet

/-- Coupled Schur pencil constructed directly from the previously defined
finite graph Hodge Laplacian; parameter dependence is entirely in the
unrestricted off-diagonal coupling matrices U and V. -/
noncomputable def graphHodgeMomentSchurLift
    {Z : Type*} {n m : ℕ}
    (G : OrientedIncidence (Fin n) Edge)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) :
    BlockPencil Z (Fin n) (Fin m) ℝ :=
  BlockPencil.momentSchurLift
    (fun _ : Z => euclideanLaplacian G)
    (fun _ : Z => ContinuousLinearMap.id ℝ
      (EuclideanSpace ℝ (Fin n))) U V

/-- In every parameter fiber the effective Schur matrix is the exact
finite Euclidean coordinate matrix of the shifted graph Laplacian I+Δ. -/
theorem graphHodgeMomentSchurLift_effective
    {Z : Type*} {n m : ℕ}
    (G : OrientedIncidence (Fin n) Edge)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    (graphHodgeMomentSchurLift G U V).effective z =
      GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.euclideanOperatorMatrix
        (momentMatrix (euclideanLaplacian G)
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))) := by
  exact BlockPencil.momentSchurLift_effective
    (fun _ : Z => euclideanLaplacian G)
    (fun _ : Z => ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))
    U V z

/-- The full coupled determinant equals the determinant of the actually
shifted graph Hodge Laplacian, independently of all off-diagonal couplings. -/
theorem graphHodgeMomentSchurLift_full_det
    {Z : Type*} {n m : ℕ}
    (G : OrientedIncidence (Fin n) Edge)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    ((graphHodgeMomentSchurLift G U V).full z).det =
      (momentMatrix (euclideanLaplacian G)
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))).det := by
  exact BlockPencil.momentSchurLift_full_det
    (fun _ : Z => euclideanLaplacian G)
    (fun _ : Z => ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))
    U V z

/-- The positive-semidefinite finite graph Hodge Laplacian supplies, rather
than assumes, the global moment coercivity needed for nonvanishing of the
entire coupled Schur determinant. No connectedness or Laplacian spectral
gap is assumed, and U,V may be arbitrary. -/
theorem graphHodgeMomentSchurLift_full_det_ne_zero
    {Z : Type*} {n m : ℕ}
    (G : OrientedIncidence (Fin n) Edge)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    ((graphHodgeMomentSchurLift G U V).full z).det ≠ 0 := by
  rw [graphHodgeMomentSchurLift_full_det]
  have hinj :
      Function.Injective
        (momentMatrix (euclideanLaplacian G)
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))) :=
    positive_operator_moment_injective
      (euclideanLaplacian G) (euclideanLaplacian_nonneg G)
  have hker :
      LinearMap.ker
        (momentMatrix (euclideanLaplacian G)
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))).toLinearMap = ⊥ :=
    LinearMap.ker_eq_bot.mpr hinj
  intro hzero
  exact (LinearMap.det_eq_zero_iff_ker_ne_bot.mp hzero) hker

/-- At any two parameters the full coupled Schur determinants agree:
only U and V change and the unperturbed shifted graph Laplacian is fixed. -/
theorem graphHodgeMomentSchurLift_full_det_eq
    {Z : Type*} {n m : ℕ}
    (G : OrientedIncidence (Fin n) Edge)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z w : Z) :
    ((graphHodgeMomentSchurLift G U V).full z).det =
      ((graphHodgeMomentSchurLift G U V).full w).det := by
  rw [graphHodgeMomentSchurLift_full_det,
    graphHodgeMomentSchurLift_full_det]

/-- Hence the full Schur determinant orientation is the same at every two
parameters, without a perturbation condition: the effective Hodge operator
is fixed and the eliminated block is the identity. -/
theorem graphHodgeMomentSchurLift_full_det_sign
    {Z : Type*} {n m : ℕ}
    (G : OrientedIncidence (Fin n) Edge)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z w : Z) :
    0 < ((graphHodgeMomentSchurLift G U V).full z).det *
      ((graphHodgeMomentSchurLift G U V).full w).det := by
  rw [← graphHodgeMomentSchurLift_full_det_eq G U V z w]
  have h := graphHodgeMomentSchurLift_full_det_ne_zero G U V z
  nlinarith [sq_pos_of_ne_zero h]


/-!
## Exact obstruction to an unshifted graph-Laplacian norm gap

For any nonempty vertex set, the constant cochain has zero coboundary
and hence zero Laplacian. Consequently the graph Laplacian itself is
never injective, irrespective of graph connectivity. Its positive
shift I+Δ, used in the moment Schur lift above, does not inherit this
zero-mode obstruction. No positive gap is inferred for the unshifted
operator.
-/

/-- The nonzero constant cochain is always annihilated by the graph
Laplacian, independently of connectivity or edge count. -/
theorem euclideanLaplacian_constant_zero
    (G : OrientedIncidence Vertex Edge) :
    euclideanLaplacian G
      (WithLp.toLp 2 (fun _ : Vertex => (1 : ℝ))) = 0 := by
  rw [euclideanLaplacian_apply]
  have hzero : laplacian G (fun _ : Vertex => (1 : ℝ)) = 0 := by
    apply (laplacian_eq_zero_iff_delta_eq_zero G _).mpr
    rw [delta_eq_coboundary]
    ext e
    simp [OrientedIncidence.coboundary_apply]
  simp [hzero]

/-- Any nonempty finite graph Hodge Laplacian has a nontrivial kernel. -/
theorem euclideanLaplacian_not_injective [Nonempty Vertex]
    (G : OrientedIncidence Vertex Edge) :
    ¬ Function.Injective (euclideanLaplacian G) := by
  intro hinj
  have hzero := euclideanLaplacian_constant_zero G
  have heq :
      (WithLp.toLp 2 (fun _ : Vertex => (1 : ℝ)) :
        EuclideanSpace ℝ Vertex) = 0 :=
    hinj (hzero.trans (map_zero (euclideanLaplacian G)).symm)
  obtain ⟨v⟩ := ‹Nonempty Vertex›
  have hv : (1 : ℝ) = 0 := by
    simpa using congrArg (fun x : EuclideanSpace ℝ Vertex => x v) heq
  norm_num at hv

/-- The unshifted Laplacian cannot have a *global positive* least-norm
gap when there is a vertex; the constant zero mode is an explicit
counterexample. This does not obstruct the shifted operator I+Δ. -/
theorem euclideanLaplacian_no_positive_gap [Nonempty Vertex]
    (G : OrientedIncidence Vertex Edge) :
    ¬ ∃ γ : ℝ, 0 < γ ∧ ∀ y : EuclideanSpace ℝ Vertex,
      γ * ‖y‖ ≤ ‖euclideanLaplacian G y‖ := by
  rintro ⟨γ, hγ, hgap⟩
  have hinj : Function.Injective (euclideanLaplacian G) :=
    GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap.injective_of_perturbation
      (euclideanLaplacian G) (euclideanLaplacian G) hgap
      (by simpa only [sub_self, norm_zero] using hγ)
  exact euclideanLaplacian_not_injective G hinj


/-!
## Sharp unit gap for the actual shifted finite graph Hodge operator

The existing incidence-graph quadratic identity proves positive
semidefiniteness. The sharp positive-operator moment theorem therefore
supplies a unit least-norm bound for I+Δ, even though Δ itself has
constant zero modes. For nonempty vertices this unit bound is optimal.
-/

/-- The actual shifted graph Hodge Laplacian has the sharp unit norm
lower bound, independent of degree, incidence, and graph connectivity. -/
theorem graphHodge_shift_unit_gap
    (G : OrientedIncidence Vertex Edge) (y : EuclideanSpace ℝ Vertex) :
    ‖y‖ ≤
      ‖momentMatrix (euclideanLaplacian G)
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ Vertex)) y‖ :=
  positive_operator_moment_sharp_gap
    (euclideanLaplacian G) (euclideanLaplacian_nonneg G) y

/-- A perturbed graph Hodge shift retains a quantitative margin
1-‖P-(I+Δ)‖, without assuming positivity of P. -/
theorem graphHodge_shift_perturbed_unit_gap
    (G : OrientedIncidence Vertex Edge)
    (P : EuclideanSpace ℝ Vertex →L[ℝ] EuclideanSpace ℝ Vertex)
    (y : EuclideanSpace ℝ Vertex) :
    (1 - ‖P - momentMatrix (euclideanLaplacian G)
      (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ Vertex))‖) * ‖y‖ ≤
      ‖P y‖ :=
  positive_operator_perturbed_sharp_gap
    (euclideanLaplacian G) P (euclideanLaplacian_nonneg G) y

/-- Finite graph Hodge positivity preserves the determinant orientation
under every continuous-linear perturbation of its shift of norm < 1. -/
theorem graphHodge_shift_perturbed_det_sign
    (G : OrientedIncidence Vertex Edge)
    (P : EuclideanSpace ℝ Vertex →L[ℝ] EuclideanSpace ℝ Vertex)
    (hpert : ‖P - momentMatrix (euclideanLaplacian G)
      (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ Vertex))‖ < 1) :
    0 < (momentMatrix (euclideanLaplacian G)
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ Vertex))).det * P.det :=
  positive_operator_perturbed_det_sign
    (euclideanLaplacian G) P (euclideanLaplacian_nonneg G) hpert

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent

/-- The concrete finite-coordinate adjoint reconstruction based on I+Δ
contracts with relative factor 1-damping, not the weaker factor from
the general norm-dependent moment bound. -/
theorem graphHodge_shift_adjoint_unit_contraction
    {n : ℕ} (G : OrientedIncidence (Fin n) Edge) (v : Fin n → ℝ) :
    let A := euclideanOperatorMatrix
      (momentMatrix (euclideanLaplacian G)
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))))
    energy (Finset.univ : Finset (Fin n))
        (fun c => v c - reconstruction Finset.univ Finset.univ A
          (applyMatrix Finset.univ A v) c) ≤
      (1 - damping Finset.univ Finset.univ A) * energy Finset.univ v ∧
    1 - damping Finset.univ Finset.univ A < 1 :=
  positive_euclidean_moment_sharp_contraction
    (euclideanLaplacian G) (euclideanLaplacian_nonneg G) v

/-- The constant graph cochain is fixed by the shifted Laplacian I+Δ.
This is the equality witness for the unit lower norm bound. -/
theorem graphHodge_shift_constant_fixed
    (G : OrientedIncidence Vertex Edge) :
    momentMatrix (euclideanLaplacian G)
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ Vertex))
        (WithLp.toLp 2 (fun _ : Vertex => (1 : ℝ))) =
      WithLp.toLp 2 (fun _ : Vertex => (1 : ℝ)) := by
  have hJ :
      momentMatrix (euclideanLaplacian G)
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ Vertex))
        (WithLp.toLp 2 (fun _ : Vertex => (1 : ℝ))) =
      WithLp.toLp 2 (fun _ : Vertex => (1 : ℝ)) +
        euclideanLaplacian G (WithLp.toLp 2 (fun _ : Vertex => (1 : ℝ))) := by
    simp [momentMatrix, add_comm]
  rw [hJ, euclideanLaplacian_constant_zero G, add_zero]

/-- On every nonempty finite graph, the unit constant is genuinely optimal:
no global bound with a coefficient greater than one can hold for I+Δ. -/
theorem graphHodge_shift_unit_gap_optimal [Nonempty Vertex]
    (G : OrientedIncidence Vertex Edge) (γ : ℝ)
    (hgap : ∀ y : EuclideanSpace ℝ Vertex,
      γ * ‖y‖ ≤
        ‖momentMatrix (euclideanLaplacian G)
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ Vertex)) y‖) :
    γ ≤ 1 := by
  let c : EuclideanSpace ℝ Vertex :=
    WithLp.toLp 2 (fun _ : Vertex => (1 : ℝ))
  have hc : c ≠ 0 := by
    intro hzero
    obtain ⟨v⟩ := ‹Nonempty Vertex›
    have hv : (1 : ℝ) = 0 := by
      simpa [c] using
        congrArg (fun w : EuclideanSpace ℝ Vertex => w v) hzero
    norm_num at hv
  have hcpos : 0 < ‖c‖ := norm_pos_iff.mpr hc
  have hfixed :
      momentMatrix (euclideanLaplacian G)
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ Vertex)) c = c :=
    graphHodge_shift_constant_fixed G
  have h := hgap c
  rw [hfixed] at h
  have hbound : γ * ‖c‖ ≤ (1 : ℝ) * ‖c‖ := by
    simpa only [one_mul] using h
  exact (mul_le_mul_iff_of_pos_right hcpos).mp hbound

end GRWTSK.Geometry.Hodge.FiniteMatrixHodge
