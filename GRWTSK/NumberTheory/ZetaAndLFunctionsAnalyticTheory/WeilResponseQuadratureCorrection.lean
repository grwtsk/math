/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilResponseResidualCorrection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineGammaQuadrature
import Mathlib.Tactic.Abel

/-!
# Source-paid quadrature for the residual-corrected response sign

The existing geometric gamma quadrature approximates the canonical
finite-sine output. This module uses that identity twice, for the primal
and the derivative-load trial, and separately pays the error in the scalar
residual correction. The prime/pole output remains exact in the definition.
Its numerical evaluation, the residual norms, and scalar rounding still
need certified enclosures; this is not an executable interval evaluator.

Every constant returns to the unchanged `responseDefect`. The existing
finite-response and cofinal consumers remain the consumers of its signs.
No fixed finite set of signs is promoted to universal coverage.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit, certified source evaluation and independent review:
NOT_RUN. See the adjacent individual analytical/provenance record.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ResponseQuadratureCorrection

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear ShiftedSourceSolve ResponseSignReturn
open FiniteSineOperator FiniteSineSolveResidual FiniteSineGammaQuadrature
open ResponseResidualCorrection

/-- The approximation uses beta-lambda, exactly as the original residual. -/
def approximateResidual {M : ℕ} (T β : ℝ) (h : WindowPhysical T)
    (x : ℕ → ℝ) (N : ℕ) (a : Fin M → ℝ) : Physical :=
  (h : Physical) - approximateOutput T (β - regularization T β) x N a

/-- Same complete output error as the canonical geometric quadrature. -/
def quadratureCharge {M : ℕ} (T : ℝ) (x : ℕ → ℝ) (mesh : ℝ)
    (a : Fin M → ℝ) : ℝ :=
  (x 0 + (x 0) ^ 2 + 5 * mesh) * slopeBound T a

/-- The scalar correction uses the approximate residual, so its own
quadrature charge must not be omitted. -/
def approximateCorrectedTrial {M K : ℕ} (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (x : ℕ → ℝ) (N : ℕ)
    (a : Fin M → ℝ) (b : Fin K → ℝ) : ℝ :=
  trialDefect T β ε h (finiteLift T hT a) +
    inner ℝ (approximateResidual T β h x N a) (finiteInput T b : Physical)

/-- The residual error is the negative of the output error; its norm is unchanged. -/
theorem physicalResidual_approximate_error_le {M : ℕ}
    (T β : ℝ) (hT : 0 < T) (h : WindowPhysical T)
    (x : ℕ → ℝ) (N : ℕ) (a : Fin M → ℝ) (mesh : ℝ)
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (hmesh : 0 ≤ mesh) (hwidth : ∀ i < N, x (i + 1) - x i ≤ mesh * x i) :
    ‖(physicalResidual T hT β h a : Physical) - approximateResidual T β h x N a‖ ≤
      quadratureCharge T x mesh a := by
  have he : (physicalResidual T hT β h a : Physical) - approximateResidual T β h x N a =
      -((finiteOutput T hT (β - regularization T β) a : Physical) -
        approximateOutput T (β - regularization T β) x N a) := by
    change ((h : Physical) - (finiteOutput T hT (β - regularization T β) a : Physical)) -
      ((h : Physical) - approximateOutput T (β - regularization T β) x N a) = _
    abel
  rw [he, norm_neg]
  exact finiteOutput_error_le T hT (β - regularization T β) x N a hx hx0 hfar hmesh hwidth

/-- A certified norm of the approximate physical residual plus the complete
quadrature charge bounds the original physical residual. -/
theorem physicalResidual_norm_le {M : ℕ}
    (T β : ℝ) (hT : 0 < T) (h : WindowPhysical T)
    (x : ℕ → ℝ) (N : ℕ) (a : Fin M → ℝ) (mesh observedNorm : ℝ)
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (hmesh : 0 ≤ mesh) (hwidth : ∀ i < N, x (i + 1) - x i ≤ mesh * x i)
    (hnorm : ‖approximateResidual T β h x N a‖ ≤ observedNorm) :
    ‖physicalResidual T hT β h a‖ ≤ observedNorm + quadratureCharge T x mesh a := by
  have he := physicalResidual_approximate_error_le T β hT h x N a mesh
    hx hx0 hfar hmesh hwidth
  have ht := norm_add_le
    ((physicalResidual T hT β h a : Physical) - approximateResidual T β h x N a)
    (approximateResidual T β h x N a)
  rw [sub_add_cancel] at ht
  change ‖(physicalResidual T hT β h a : Physical)‖ ≤ _
  linarith

/-- This is an additional scalar error, not part of either residual norm. -/
theorem correctedTrial_approximate_error_le {M K : ℕ}
    (T β : ℝ) (hT : 0 < T) (ε : ℝ) (h : WindowPhysical T)
    (x : ℕ → ℝ) (N : ℕ) (a : Fin M → ℝ) (b : Fin K → ℝ) (mesh : ℝ)
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (hmesh : 0 ≤ mesh) (hwidth : ∀ i < N, x (i + 1) - x i ≤ mesh * x i) :
    |finiteCorrectedTrial T β hT ε h a b - approximateCorrectedTrial T β hT ε h x N a b| ≤
      quadratureCharge T x mesh a * ‖finiteInput T b‖ := by
  have he := physicalResidual_approximate_error_le T β hT h x N a mesh
    hx hx0 hfar hmesh hwidth
  unfold finiteCorrectedTrial approximateCorrectedTrial
  rw [add_sub_add_left_eq_sub]
  change |inner ℝ (physicalResidual T hT β h a : Physical) (finiteInput T b : Physical) -
    inner ℝ (approximateResidual T β h x N a) (finiteInput T b : Physical)| ≤ _
  rw [← inner_sub_left]
  have hcs : |inner ℝ
      ((physicalResidual T hT β h a : Physical) - approximateResidual T β h x N a)
      (finiteInput T b : Physical)| ≤
      ‖(physicalResidual T hT β h a : Physical) - approximateResidual T β h x N a‖ *
        ‖(finiteInput T b : Physical)‖ := by
    simpa only [Real.norm_eq_abs] using norm_inner_le_norm
      ((physicalResidual T hT β h a : Physical) - approximateResidual T β h x N a)
      (finiteInput T b : Physical)
  exact hcs.trans (mul_le_mul_of_nonneg_right he (norm_nonneg _))

/-- Complete scalar lower bound: primal and dual norm observations,
quadrature errors for BOTH solves, correction error, and scalar rounding.
The mesh and both finite trial dimensions remain universally quantified. -/
theorem responseDefect_lower_of_quadrature_observation {M K : ℕ}
    (T β : ℝ) (hT : 0 < T) (ε : ℝ) (h : WindowPhysical T)
    (x : ℕ → ℝ) (N : ℕ) (a : Fin M → ℝ) (b : Fin K → ℝ)
    (mesh η σ observed rounding : ℝ)
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (hmesh : 0 ≤ mesh) (hwidth : ∀ i < N, x (i + 1) - x i ≤ mesh * x i)
    (hprimal : ‖approximateResidual T β h x N a‖ ≤ η)
    (hdual : ‖approximateResidual T β (dualLoad T β ε h (finiteLift T hT a)) x N b‖ ≤ σ)
    (hobs : |approximateCorrectedTrial T β hT ε h x N a b - observed| ≤ rounding) :
    observed - rounding - quadratureCharge T x mesh a * ‖finiteInput T b‖ -
        (η + quadratureCharge T x mesh a) * (σ + quadratureCharge T x mesh b) -
        max (regularization T β - ε) 0 * (η + quadratureCharge T x mesh a) ^ 2 ≤
      responseDefect T β hT ε h := by
  have hp := physicalResidual_norm_le T β hT h x N a mesh η
    hx hx0 hfar hmesh hwidth hprimal
  have hd := physicalResidual_norm_le T β hT
    (dualLoad T β ε h (finiteLift T hT a)) x N b mesh σ
    hx hx0 hfar hmesh hwidth hdual
  have hL := (finite_responseDefect_bounds T β hT ε h a b
    (η + quadratureCharge T x mesh a) (σ + quadratureCharge T x mesh b) hp hd).1
  have hc := (abs_le.mp (correctedTrial_approximate_error_le T β hT ε h x N a b mesh
    hx hx0 hfar hmesh hwidth)).1
  have ho := (abs_le.mp hobs).1
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ResponseQuadratureCorrection
