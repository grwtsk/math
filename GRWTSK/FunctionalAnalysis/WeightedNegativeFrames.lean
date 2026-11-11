/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.NegativeFramePerturbation
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndexBounds

/-!
# Exact index from Program 2's surviving frame and a finite observation

MSC2020: 46C20, 47A55; arithmetic consumers 11M26, 11M41.
Program 2 published its whole-frame perturbation supplier while this increment
was being prepared. Reuse that supplier rather than duplicate its proof.
The lower certificate is its `hasNegativeFrame_of_weighted_approximation`;
the matching upper certificate is nonnegativity on the entire kernel of an
n-dimensional complex observation. Together they give exact negative index n
for the SAME `EvaluationModel.quadratic`, not a replacement positive pairing.

Source: grwtsk/math@c6f931e6ce84dc755c001176cc1d98b976f2ad7c,
NegativeFramePerturbation.lean blob ad1027a32525519477026631827daeab4c29f16b.
Earlier comparison baseline: 5f66eb82a40921253664f53602851091ccd01d94.
The finite-dimensionality and kernel sign are hypotheses, not consequences of
finite sampling. The uniform radius controls all coefficient combinations.
Arithmetic realization, admissible supports, and the exact full Weil return
with all prime powers, conductor, gamma/parity and both applicable pole terms
remain separate obligations. No actual arithmetic negative index is asserted.

Coordination: math#1808 and #1801. Individual provenance is adjacent.
FORMAL_SOURCE_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit,
and independent review: NOT_RUN. Standard composition; no novelty claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.FunctionalAnalysis.WeightedNegativeFrames

open GRWTSK.FunctionalAnalysis.WeightedConjugatePairing
open GRWTSK.FunctionalAnalysis.NegativeFramePerturbation
open GRWTSK.LinearAlgebra.NegativeIndex
open GRWTSK.LinearAlgebra.NegativeIndexBounds

/-- A matching finite observation upgrades the existing robust lower bound to exact inertia. -/
theorem negativeIndex_eq_of_weighted_approximation_and_observer
    {ι E W : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    [AddCommGroup W] [Module ℂ W] [FiniteDimensional ℂ W] {n : ℕ}
    (D : EvaluationModel ι E) (G F : (Fin n → ℂ) →ₗ[ℂ] E)
    (radius : (Fin n → ℂ) → ℝ) (S epsilon eta : ℝ)
    (hS : 0 ≤ S) (hepsilon : 0 ≤ epsilon)
    (hradius : ∀ v, 0 ≤ radius v)
    (hfaithful : ∀ v, v ≠ 0 → 0 < radius v)
    (hG : ∀ v, ‖G v‖ ≤ S * radius v)
    (happrox : ∀ v, ‖F v - G v‖ ≤ epsilon * radius v)
    (hnegative : ∀ v, D.quadratic (G v) ≤ -eta * radius v ^ 2)
    (hgap : D.mass * (2 * S * epsilon + epsilon ^ 2) < eta)
    (observe : E →ₗ[ℂ] W)
    (hkernel : ∀ v, observe v = 0 → 0 ≤ D.quadratic v)
    (hdimension : Module.finrank ℂ W = n) :
    negativeIndex (𝕜 := ℂ) D.quadratic = (n : ℕ∞) := by
  apply negativeIndex_eq_of_frame_and_observer observe hkernel hdimension
  exact hasNegativeFrame_of_weighted_approximation D G F radius S epsilon eta
    hS hepsilon hradius hfaithful hG happrox hnegative hgap

end GRWTSK.FunctionalAnalysis.WeightedNegativeFrames
