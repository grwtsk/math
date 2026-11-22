/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, transitive axiom audit, fresh kernel replay: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeJacobiGmDiscreteCurvature
import Mathlib.Tactic

/-!
# Discrete diffusion of the source signed prime-power curvature

For a finite Dirichlet lattice, the source-independent diffusion
A_t=I+t*L and the finite second-difference operator L commute
EXACTLY as matrices. Thus L*A_t^m f=A_t^m*(L f) for every m.
The actual signed prime-power second difference appears in L f,
plus two explicitly retained Dirichlet boundary terms. Omitting
those boundary terms is an invalid source identification.

The diffusion is a polynomial in L. Positivity or an RH theorem is
NOT derived from this commutation identity. Inverse conditioning
and the 0<t<1/4 source error bound are separate analytic results.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeGmDiscreteDiffusion

/-- The usual Dirichlet second difference, with the two exterior
samples set to zero, on the actually finite index interval. -/
def dirichletDifference (N : ℕ) : Matrix (Fin N) (Fin N) ℝ :=
  fun i j => if i = j then -2
    else if Nat.dist i.val j.val = 1 then 1 else 0

/-- A finite discrete heat step; not the zeta spectral heat operator. -/
def diffuseStep (N : ℕ) (t : ℝ) : Matrix (Fin N) (Fin N) ℝ :=
  1 + t • dirichletDifference N

/-- Source polynomial diffusion commutes with the SAME finite
second-difference matrix at every depth. No RH premise. -/
theorem dirichletDifference_commutes_diffuseStep (N : ℕ) (t : ℝ) :
    dirichletDifference N * diffuseStep N t =
      diffuseStep N t * dirichletDifference N := by
  unfold diffuseStep
  calc
    dirichletDifference N * (1 + t • dirichletDifference N) =
        dirichletDifference N +
          t • (dirichletDifference N * dirichletDifference N) := by
            rw [mul_add, mul_one, mul_smul]
    _ = (1 + t • dirichletDifference N) * dirichletDifference N := by
        rw [add_mul, one_mul, smul_mul]

theorem dirichletDifference_commutes_diffusion (N : ℕ) (t : ℝ) (m : ℕ) :
    dirichletDifference N * (diffuseStep N t) ^ m =
      (diffuseStep N t) ^ m * dirichletDifference N := by
  have h := dirichletDifference_commutes_diffuseStep N t
  induction m with
  | zero => simp
  | succ m ih =>
      calc
        dirichletDifference N * (diffuseStep N t) ^ (m + 1) =
          (dirichletDifference N * (diffuseStep N t)^m) *
            diffuseStep N t := by rw [pow_succ, mul_assoc]
        _ = ((diffuseStep N t)^m * dirichletDifference N) *
            diffuseStep N t := by rw [ih]
        _ = (diffuseStep N t)^m *
            (diffuseStep N t * dirichletDifference N) := by
              rw [mul_assoc, h]
        _ = ((diffuseStep N t)^m * diffuseStep N t) *
            dirichletDifference N := by rw [mul_assoc]
        _ = (diffuseStep N t) ^ (m + 1) *
            dirichletDifference N := by rw [pow_succ]

/-- Complete signed source + boundary vector is transported by
diffusion with no missing edge contribution. The source decomposition
is a hypothesis because the exact boundary samples are supplied
by the caller; their values are not invented or set to zero. -/
theorem diffusion_preserves_source_and_boundary
    (N : ℕ) (t : ℝ) (m : ℕ)
    (f source boundary : Fin N → ℝ)
    (hSource : (dirichletDifference N).mulVec f = source + boundary) :
    (dirichletDifference N).mulVec
        (((diffuseStep N t)^m).mulVec f) =
      ((diffuseStep N t)^m).mulVec source +
        ((diffuseStep N t)^m).mulVec boundary := by
  rw [← Matrix.mulVec_mulVec,
    dirichletDifference_commutes_diffusion,
    Matrix.mulVec_mulVec, hSource, Matrix.mulVec_add]

end GRWTSK.NumberTheory.AlpogeGmDiscreteDiffusion
