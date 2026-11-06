/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineProjection
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurReferenceAccounting
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RankOneResidualCertificate
import Mathlib.LinearAlgebra.Matrix.BilinearForm

/-!
# Literal odd Weil projections with paid pole and reference energies

Reuse OddRootProjection.zetaSineMatrix, with its actual integral-defined
sine entries, both pole orientations, zero extension, and the existing complete
prime-power inventory. No new arithmetic root or independently fitted matrix
is introduced. The pole rows are the half-sum and half-difference of the SAME
source moments. Algebra gives pole=2*c*c^t-2*s*s^t.

The retained core below is the existing full matrix plus 2*s*s^t. Its explicit
entry theorem shows that it is archimedean-minus-prime PLUS 2*c*c^t. For genuine
odd sine tests c vanishes analytically; this file DOES NOT assume that fact
without proving the integral return. Retaining it is harmless and prevents
silent deletion of either source pole. Positive definiteness of this retained
core is an independent premise, never a consequence of its name.

The generic rank-one criterion now has a concrete consumer on the literal
source compression. Matrix.toBilin' and the existing quadratic evaluator are
identified exactly. The checked-reference adapter tests the remaining matrix
AFTER its reference allocation, using the original certificate checker.

These are finite-projection statements. A passing finite compression is NOT a
lower bound on the infinite-dimensional odd channel. The continuum consumer
must additionally use the existing full Schur square completion, high-block
coercivity and COMPLETE residual-tail enclosure. RankOneResidualCertificate
supplies the form-domain scalar return; it does not supply those arithmetic
bounds. No cofinal odd sign, RH, GRH, operator-domain realization, or passing
arithmetic certificate is claimed here. Existing source candidates retain
their own unverified status.

Primary source scope: CCM arXiv:2511.22755v1 (3.19)--(3.20), as realized in the
literal zetaSineMatrix at grwtsk/math 41d523fbccff6a9fc6d844415632d15114bf93b2.
Connes arXiv:2602.04022v1, Sections 4.1 and 6.6, retains the separate continuum
positivity and minimizer obligations. Desogus arXiv:2609.20367v3 Corollary 8.2
is an audit comparison only, not a proof dependency.
AI-assisted manual drafting. Elaboration, fresh kernel checking, transitive
axiom audit and independent analytical review: NOT_RUN. No novelty claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSchurAccounting

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.LinearAlgebra.SchurObserver
open GRWTSK.LinearAlgebra.SchurReference
open GRWTSK.LinearAlgebra.RankOneResidual
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- No new moment integrals: use the exact two source orientations. -/
def coshMomentRow (T : ℝ) (M : ℕ) (i : Fin M) : ℝ :=
  (sinePoleMoment T (1 / 2) (i.val + 1) +
    sinePoleMoment T (-1 / 2) (i.val + 1)) / 2

def sinhMomentRow (T : ℝ) (M : ℕ) (i : Fin M) : ℝ :=
  (sinePoleMoment T (1 / 2) (i.val + 1) -
    sinePoleMoment T (-1 / 2) (i.val + 1)) / 2

theorem literal_pole_entry (T : ℝ) (M : ℕ) (i j : Fin M) :
    sinePoleEntry T (i.val + 1) (j.val + 1) =
      2 * coshMomentRow T M i * coshMomentRow T M j -
        2 * sinhMomentRow T M i * sinhMomentRow T M j := by
  unfold sinePoleEntry coshMomentRow sinhMomentRow
  ring

/-- Add back only the negative rank-one pole to the existing full matrix.
The definition does not assert that this core is positive. -/
def retainedCoreMatrix (T : ℝ) (M : ℕ) : Matrix (Fin M) (Fin M) ℝ :=
  zetaSineMatrix T M + (2 : ℝ) • Matrix.vecMulVec (sinhMomentRow T M) (sinhMomentRow T M)

/-- All original arithmetic entries and the remaining pole are visible. -/
theorem retainedCoreMatrix_entry (T : ℝ) (M : ℕ) (i j : Fin M) :
    retainedCoreMatrix T M i j =
      sineArchimedeanEntry T (gammaConstant 1 0) 0 (i.val + 1) (j.val + 1) -
        (∑ n ∈ activePrimePowers T, primeWeight n *
          sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ))) +
        2 * coshMomentRow T M i * coshMomentRow T M j := by
  change zetaSineMatrix T M i j +
    2 * (sinhMomentRow T M i * sinhMomentRow T M j) = _
  unfold zetaSineMatrix
  rw [literal_pole_entry]
  ring

theorem zetaSineMatrix_decomposition (T : ℝ) (M : ℕ) :
    zetaSineMatrix T M = retainedCoreMatrix T M -
      (2 : ℝ) • Matrix.vecMulVec (sinhMomentRow T M) (sinhMomentRow T M) := by
  simp [retainedCoreMatrix]

/-- Quadratic equality, not merely equality of diagonal entries or spectra. -/
theorem zetaSineMatrix_quadratic (T : ℝ) (M : ℕ) (u : Fin M → ℝ) :
    quadratic (zetaSineMatrix T M) u = quadratic (retainedCoreMatrix T M) u -
      2 * (sinhMomentRow T M ⬝ᵥ u) ^ 2 := by
  rw [zetaSineMatrix_decomposition]
  calc
    _ = quadratic (retainedCoreMatrix T M) u -
        2 * quadratic (Matrix.vecMulVec (sinhMomentRow T M) (sinhMomentRow T M)) u := by
      simp only [quadratic, Matrix.sub_mulVec, Matrix.smul_mulVec,
        dotProduct_sub, dotProduct_smul, smul_eq_mul]
    _ = _ := by rw [outer_quadratic]

/-- The literal finite source with its negative rank-one pole retained as a
scalar coordinate. The positive pole is already included in the core. -/
def borderedSourceMatrix (T : ℝ) (M : ℕ) : Matrix (Fin M ⊕ Unit) (Fin M ⊕ Unit) ℝ :=
  poleBorderedBlock (retainedCoreMatrix T M) (sinhMomentRow T M)

/-- The auxiliary pole coordinate receives no shift. Completing its square
returns the physical finite sine energy and exhibits the exact minimizing
pole value. This identity is on the finite source compression. -/
theorem borderedSourceMatrix_quadratic (T : ℝ) (M : ℕ) (β : ℝ) (u : Fin M → ℝ)
    (a : ℝ) :
    quadratic (shiftedBlock (borderedSourceMatrix T M) poleShiftMetric β)
        (Sum.elim u fun _ => a) =
      quadratic (zetaSineMatrix T M - β • 1) u +
        (a + 2 * (sinhMomentRow T M ⬝ᵥ u))^2 / 2 := by
  rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock, poleBorderedBlock_quadratic]
  have hshift (A : Matrix (Fin M) (Fin M) ℝ) :
      quadratic (A - β • 1) u = quadratic A u - β * quadratic 1 u := by
    simp only [quadratic, Matrix.sub_mulVec, Matrix.smul_mulVec, dotProduct_sub, dotProduct_smul,
      smul_eq_mul]
  rw [hshift, hshift, zetaSineMatrix_quadratic]
  ring

/-- Existing Mathlib matrix/form equivalence, not a second bilinear form API. -/
def coreForm (T : ℝ) (M : ℕ) : LinearMap.BilinForm ℝ (Fin M → ℝ) :=
  Matrix.toBilin' (retainedCoreMatrix T M)

@[simp] theorem coreForm_self (T : ℝ) (M : ℕ) (u : Fin M → ℝ) :
    coreForm T M u u = quadratic (retainedCoreMatrix T M) u := by
  exact Matrix.toBilin'_apply' _ u u

def poleFunctional (T : ℝ) (M : ℕ) : (Fin M → ℝ) →ₗ[ℝ] ℝ where
  toFun u := sinhMomentRow T M ⬝ᵥ u
  map_add' u v := by simp [dotProduct, mul_add, Finset.sum_add_distrib]
  map_smul' c u := by
    simp [dotProduct, Pi.smul_apply, smul_eq_mul, Finset.mul_sum,
      mul_comm, mul_left_comm, mul_assoc]

@[simp] theorem poleFunctional_apply (T : ℝ) (M : ℕ) (u : Fin M → ℝ) :
    poleFunctional T M u = sinhMomentRow T M ⬝ᵥ u := rfl

/-- Exact finite source criterion. Coercivity and the solve must concern this
literal core. This theorem does NOT certify the infinite complement. -/
theorem finite_odd_rankOne_criterion (T : ℝ) (M : ℕ)
    (hsym : ∀ u v, coreForm T M u v = coreForm T M v u)
    (hpositive : ∀ u, u ≠ 0 → 0 < coreForm T M u u)
    (x : Fin M → ℝ) (hsolve : ∀ u, coreForm T M x u = poleFunctional T M u) :
    (∀ u, 0 ≤ quadratic (zetaSineMatrix T M) u) ↔
      2 * poleFunctional T M x ≤ 1 := by
  have h := rankOne_nonnegative_iff (coreForm T M) (poleFunctional T M)
    hsym hpositive x hsolve (tau := 2) (by norm_num)
  simpa only [zetaSineMatrix_quadratic, coreForm_self, poleFunctional_apply] using h

/-- A reference comparison is paid out of the actual retained source core,
not an independently supplied target diagonal. The positive gain is separate. -/
theorem checked_reference_lower_for_projection {ν : Type*} [Fintype ν]
    (T : ℝ) (M : ℕ) (E G : Matrix (Fin M) (Fin M) ℝ)
    (C : Certificate ℝ (Fin M) Empty Empty ν)
    (hcheck : check (matrixProblem (retainedCoreMatrix T M - E - G)) C = true)
    (gain : (Fin M → ℝ) → ℝ)
    (hgain : ∀ u, gain u ≤ quadratic E u - 2 * (poleFunctional T M u) ^ 2)
    (u : Fin M → ℝ) :
    quadratic G u + gain u ≤ quadratic (zetaSineMatrix T M) u := by
  have h := checked_reference_allocation (retainedCoreMatrix T M) E G C hcheck u
  rw [zetaSineMatrix_quadratic]
  have hg := hgain u
  simp only [poleFunctional_apply] at hg
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSchurAccounting
