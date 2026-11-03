/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib analytic continuation by David Loeffler and Michael Stoll retains
its upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletAnalyticObservationError

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual Dirichlet zero to a nonzero full source vector

The full vector consists of the SAME genuine character at all residue
classes and is nonzero at residue 1. The analytic continuation formula
defines an explicit rectangular Hurwitz row annihilating that vector at
an actual analytic zero. Reconstructed samples with uniform error below
1 likewise give a nonzero full vector with controlled row residual.

The row depends on s, is rectangular, and is NOT the fixed self-adjoint
arithmetic Hamiltonian. It is a source analytic relation, not a replacement
for the signed cyclic operator. No implication from its kernel to a cyclic
eigenvalue at lambda(s) is supplied; such an identification remains the
missing spectral bridge.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No GRH or broader Grand RH conclusion is claimed.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletSourceVectorConstruction
open DirichletAnalyticObservationError

variable (level : ℕ) [NeZero level]

def sourceVector (χ : DirichletCharacter ℂ level) : EuclideanSpace ℂ (ZMod level) :=
  WithLp.toLp 2 (fun j => χ j)

def observedVector (r : ZMod level → ℂ) : EuclideanSpace ℂ (ZMod level) :=
  WithLp.toLp 2 r

def analyticRow (s : ℂ) : Matrix (Fin 1) (ZMod level) ℂ :=
  fun _ j => (level : ℂ) ^ (-s) * HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s

theorem sourceVector_ne_zero (χ : DirichletCharacter ℂ level) : sourceVector level χ ≠ 0 := by
  intro h
  have h1 := congrArg (fun x : EuclideanSpace ℂ (ZMod level) => x 1) h
  simp [sourceVector] at h1

theorem row_mulVec_eq_continuation (s : ℂ) (x : EuclideanSpace ℂ (ZMod level)) :
    (analyticRow level s).mulVec (WithLp.ofLp x) =
      fun _ => ZMod.LFunction (WithLp.ofLp x) s := by
  funext i
  simp only [Matrix.mulVec_apply_eq_sum]
  change (∑ j : ZMod level,
      ((level : ℂ) ^ (-s) * HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s) * x j) = _
  unfold ZMod.LFunction
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem source_row_eq_LFunction (χ : DirichletCharacter ℂ level) (s : ℂ) :
    (analyticRow level s).mulVec (WithLp.ofLp (sourceVector level χ)) =
      fun _ => DirichletCharacter.LFunction χ s := by
  rw [row_mulVec_eq_continuation]
  rfl

theorem source_vector_kernel_at_strip_zero (χ : DirichletCharacter ℂ level)
    (s : ℂ) (hz : DirichletStripZero level χ s) :
    sourceVector level χ ≠ 0 ∧
      (analyticRow level s).mulVec (WithLp.ofLp (sourceVector level χ)) = 0 := by
  refine ⟨sourceVector_ne_zero level χ, ?_⟩
  rw [source_row_eq_LFunction, hz.1]
  rfl

/-- The same uniform sample error controls nonvanishing at the genuine unit sample. -/
theorem observedVector_ne_zero_of_sample_error (χ : DirichletCharacter ℂ level)
    (r : ZMod level → ℂ) (δ : ℝ) (hδ : δ < 1)
    (hr : ∀ j, ‖χ j - r j‖ ≤ δ) : observedVector level r ≠ 0 := by
  intro h
  have h1 := congrArg (fun x : EuclideanSpace ℂ (ZMod level) => x 1) h
  change r 1 = 0 at h1
  have he := hr 1
  simp only [map_one, h1, sub_zero, norm_one] at he
  linarith

theorem observed_row_residual_at_strip_zero (χ : DirichletCharacter ℂ level)
    (s : ℂ) (hz : DirichletStripZero level χ s) (r : ZMod level → ℂ) (δ : ℝ)
    (hr : ∀ j, ‖χ j - r j‖ ≤ δ) :
    ‖(analyticRow level s).mulVec (WithLp.ofLp (observedVector level r)) 0‖ ≤
      δ * conditionMass level s := by
  rw [row_mulVec_eq_continuation]
  exact reconstructed_value_small_at_strip_zero level χ s hz r δ hr

/-- Constructed full observed vector, still only an analytic-row residual. -/
theorem observed_fullVector_at_strip_zero (χ : DirichletCharacter ℂ level)
    (s : ℂ) (hz : DirichletStripZero level χ s) (r : ZMod level → ℂ) (δ : ℝ)
    (hδ : δ < 1) (hr : ∀ j, ‖χ j - r j‖ ≤ δ) :
    observedVector level r ≠ 0 ∧
      ‖(analyticRow level s).mulVec (WithLp.ofLp (observedVector level r)) 0‖ ≤
        δ * conditionMass level s :=
  ⟨observedVector_ne_zero_of_sample_error level χ r δ hδ hr,
    observed_row_residual_at_strip_zero level χ s hz r δ hr⟩

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletSourceVectorConstruction
