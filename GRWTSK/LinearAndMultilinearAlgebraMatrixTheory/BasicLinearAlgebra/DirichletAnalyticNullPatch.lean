/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib analytic continuation retains upstream authorship and licenses. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletSourceVectorConstruction

set_option autoImplicit false
noncomputable section

/-!
# Two-coordinate corrections preserving the actual analytic row

For row entries R0,R1, put d=u*R1*e0-u*R0*e1. Then R*d=0
identically, even at a small modulus where the coordinates coincide.
The repaired full character vector remains an actual analytic-row kernel
vector at genuine zeros. Nonvanishing is proved from an untouched nonzero
sample, not assumed from row cancellation. This does not satisfy the
cyclic eigenvector equations automatically. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletAnalyticNullPatch
open DirichletSourceVectorConstruction DirichletAnalyticObservationError

variable (level : ℕ) [NeZero level]

def nullPatch (s u : ℂ) : EuclideanSpace ℂ (ZMod level) :=
  PiLp.single 2 0 (u * analyticRow level s 0 1) -
    PiLp.single 2 1 (u * analyticRow level s 0 0)

def repairedVector (χ : DirichletCharacter ℂ level) (s u : ℂ) :
    EuclideanSpace ℂ (ZMod level) := sourceVector level χ + nullPatch level s u

theorem nullPatch_row_zero (s u : ℂ) :
    (analyticRow level s).mulVec (WithLp.ofLp (nullPatch level s u)) 0 = 0 := by
  simp only [nullPatch, WithLp.ofLp_sub, PiLp.ofLp_single, Matrix.sub_mulVec,
    Matrix.mulVec_single, Pi.sub_apply]
  ring

theorem repaired_row_at_zero (χ : DirichletCharacter ℂ level) (s u : ℂ)
    (hz : DirichletStripZero level χ s) :
    (analyticRow level s).mulVec (WithLp.ofLp (repairedVector level χ s u)) 0 = 0 := by
  simp only [repairedVector, WithLp.ofLp_add, Matrix.mulVec_add, Pi.add_apply]
  rw [source_row_eq_LFunction, nullPatch_row_zero, hz.1, zero_add]

theorem repairedVector_ne_zero_of_untouched_sample
    (χ : DirichletCharacter ℂ level) (s u : ℂ) (j : ZMod level)
    (hj0 : j ≠ 0) (hj1 : j ≠ 1) (hχ : χ j ≠ 0) : repairedVector level χ s u ≠ 0 := by
  intro h
  have he := congrArg (fun x : EuclideanSpace ℂ (ZMod level) => x j) h
  have hx : repairedVector level χ s u j = χ j := by
    simp [repairedVector, nullPatch, sourceVector, PiLp.single_apply, hj0, hj1]
  rw [hx] at he
  exact hχ he

theorem repair_norm_bound (χ : DirichletCharacter ℂ level) (s u : ℂ) :
    ‖repairedVector level χ s u - sourceVector level χ‖ ≤
      ‖u‖ * (‖analyticRow level s 0 1‖ + ‖analyticRow level s 0 0‖) := by
  simp only [repairedVector, add_sub_cancel_left]
  calc
    ‖nullPatch level s u‖ ≤ ‖PiLp.single 2 (0 : ZMod level) (u * analyticRow level s 0 1)‖ +
        ‖PiLp.single 2 (1 : ZMod level) (u * analyticRow level s 0 0)‖ := norm_sub_le _ _
    _ = _ := by rw [PiLp.norm_single, PiLp.norm_single, norm_mul, norm_mul]; ring

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletAnalyticNullPatch
