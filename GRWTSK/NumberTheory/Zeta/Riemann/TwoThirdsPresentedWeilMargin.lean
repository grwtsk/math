/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source/comparison: Levent Alpöge and Ralph Furman,
"More than two thirds of the zeta zeros are simple and on the critical line",
2026, arXiv:2608.13637, Section 3, Sylvester inertia pullback.
Original independent formalization: Claude (Anthropic), Apache-2.0,
anthropics/formal-math@e1a4e6508154ea59f030480661590a9fe3018011,
zeta23/Zeta23/LinAlg/Inertia.lean, blob
0d1de40376288d80e4938f69d81479c62835bf16.
Local GRWTSK proof bodies/byline: grwtsk contributors.
No upstream Lean proof is imported; no analytic zeta theorem is asserted.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.TwoThirdsPresentedWeilInertia
import GRWTSK.Algebra.LinearAlgebra.TwoThirdsSignedMarginObstruction
import Mathlib.Tactic

/-!
# Realized Weil diagonals: unavoidable signed-inertia error at excess dimension

The independently defined `WeilHermitianForm.diagonal` is compared with a
two-stage signed-congruence matrix through an explicit certificate
`PresentedWeilComparison`.  The earlier theorem needs a strict
source-versus-error margin on every nonzero vector of W.

The new result quantifies that boundary: if the selected real coordinate
subspace W has dimension greater than the model's +1-sector count, and
the actual Weil diagonal is bounded below by μ times the existing
positive Hodge energy while the complete comparison error is bounded
above by δ times that same energy, then μ ≤ δ.

The source-form is never defined to equal its finite realization. The
certificate, its arithmetic normalization and any growing cutoffs
remain genuine external suppliers. No finite rank bound is promoted to
a zeta zero-density theorem without the full source-count map.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.TwoThirdsPresentedWeilMargin

open GRWTSK.RiemannHypothesis.TwoThirdsPresentedWeilInertia
open GRWTSK.Algebra.LinearAlgebra.TwoThirdsCongruenceInertia
open GRWTSK.Algebra.LinearAlgebra.TwoThirdsSignedMarginObstruction
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
open GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge
open scoped BigOperators

universe u

variable {ι ν κ : Type*}
variable [Fintype ι] [Fintype ν] [Fintype κ] [DecidableEq ι]

/-- Actual pointwise comparison of the typed Weil diagonal with
GRWTSK's signed Hodge energy after the *composite* compression.

The only mathematical input is the comparison field of P plus the
already-proved exact real signed-congruence identity. This does not
supply P or assert that P.realize is an isometry. -/
theorem presentedWeil_signedEnergy_comparison
    {T : Type u} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (P : PresentedWeilComparison form ι ν κ) (x : κ → ℝ) :
    |form.diagonal (P.realize x) -
      signedEnergy P.mask ((P.presentation * P.compression) *ᵥ x)| ≤
      P.error x := by
  have h := P.comparison x
  rw [compressPresentedMatrix_quadratic,
    Matrix.mulVec_mulVec] at h
  exact h

/-- An excess-dimensional real coordinate subspace provides an actual
nonzero vector on which the genuine Weil diagonal is no larger than
the FULL comparison error. This does not construct a negative
Weil-zero divisor; it is a finite, conditional obstruction witness. -/
theorem excess_dimension_has_Weil_error_witness
    {T : Type u} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (P : PresentedWeilComparison form ι ν κ)
    (W : Submodule ℝ (κ → ℝ))
    (hexcess :
      Fintype.card (PositiveCoordinates P.mask) < Module.finrank ℝ W) :
    ∃ x : κ → ℝ, x ∈ W ∧ x ≠ 0 ∧
      form.diagonal (P.realize x) ≤ P.error x := by
  exact excess_dimension_has_source_error_witness
    P.mask (P.presentation * P.compression)
    (fun x => form.diagonal (P.realize x)) P.error
    (presentedWeil_signedEnergy_comparison P) W hexcess

/-- Strongest typed Weil-facing error threshold.

The lower bound on `form.diagonal (P.realize x)` is an explicit
independent analytic/cohomological assumption for every x∈W; the error
bound includes every normalization, approximation, remainder,
completion, and truncation loss supplied in P.error. Nothing here
proves those prerequisites or a 2/3 zeta-zero density claim. -/
theorem excess_Weil_positive_dimension_forces_relative_error
    {T : Type u} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (P : PresentedWeilComparison form ι ν κ)
    (W : Submodule ℝ (κ → ℝ))
    (hexcess :
      Fintype.card (PositiveCoordinates P.mask) < Module.finrank ℝ W)
    (μ δ : ℝ)
    (hWeil : ∀ x : κ → ℝ, x ∈ W →
      μ * positiveEnergy x ≤ form.diagonal (P.realize x))
    (hError : ∀ x : κ → ℝ, x ∈ W →
      P.error x ≤ δ * positiveEnergy x) :
    μ ≤ δ := by
  exact excess_dimension_forces_relative_error_at_least_margin
    P.mask (P.presentation * P.compression)
    (fun x => form.diagonal (P.realize x)) P.error
    (presentedWeil_signedEnergy_comparison P)
    W hexcess μ δ hWeil hError

/-- Contrapositive stable form: a *strict* error-to-margin ratio
rules out any source-positive subspace larger than the declared
signed-inertia capacity. This proves no universal positivity for
an unconstructed Weil comparison. -/
theorem Weil_strict_relative_error_bounds_positive_dimension
    {T : Type u} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (P : PresentedWeilComparison form ι ν κ)
    (W : Submodule ℝ (κ → ℝ))
    (μ δ : ℝ) (hgap : δ < μ)
    (hWeil : ∀ x : κ → ℝ, x ∈ W →
      μ * positiveEnergy x ≤ form.diagonal (P.realize x))
    (hError : ∀ x : κ → ℝ, x ∈ W →
      P.error x ≤ δ * positiveEnergy x) :
    Module.finrank ℝ W ≤ Fintype.card (PositiveCoordinates P.mask) := by
  exact strict_relative_error_preserves_positive_index_bound
    P.mask (P.presentation * P.compression)
    (fun x => form.diagonal (P.realize x)) P.error
    (presentedWeil_signedEnergy_comparison P)
    W μ δ hgap hWeil hError

end GRWTSK.RiemannHypothesis.TwoThirdsPresentedWeilMargin
