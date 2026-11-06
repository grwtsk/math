/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalObservation

set_option autoImplicit false

/-!
# Scoped RH/Dirichlet-GRH implication entry point

This module imports the six subject modules without modifying GRWTSK.lean or
promoting them into its default verification scope. The examples are integration
checks, not independent mathematical proofs or certificates of the hypotheses.

Dependency path: exact RH and zeta reflection -> conditional zero-free domains
-> analytic division -> finite Euler-factor transport -> diagonal observations.
The independent quantitative component uses complete residuals and explicit
positive margins, with a separate compactness-based existence result.

All numerical and analytic obligations remain visible. The scalar observational
criterion is equivalent to RH, so asserting it universally without a hypothesis
would assert RH itself. Principal-character consumers use RH alone; arbitrary
Dirichlet characters require their own critical-line premises or DirichletGRH.

Source publication only. Compilation, fresh kernel checking, transitive axiom
audit and independent mathematical review: NOT_RUN. No execution is dispatched
by this module. Target: leanprover/lean4:v4.34.1; original dependency pins retained.
-/

namespace GRWTSK.NumberTheory.Conditional.Checks

example : GRWTSK.RiemannHypothesis.Target.Statement = _root_.RiemannHypothesis :=
  GRWTSK.RiemannHypothesis.Target.statement_eq_mathlib

example (h : DirichletGRH) : _root_.RiemannHypothesis := grh_implies_rh h

example (h : _root_.RiemannHypothesis) (N : ℕ) [NeZero N] :
    DirichletCriticalLine (1 : DirichletCharacter ℂ N) :=
  (principal_critical_line_iff_rh N).mpr h

example (h : _root_.RiemannHypothesis) (s : ℂ) (hs : s ∈ zetaDomain) :
    Function.Injective
      (GRWTSK.LinearAlgebra.Diagonal.observe (fun _ : Unit => riemannZeta s)) :=
  rh_iff_scalar_observation_injective.mp h s hs

example {a u y : ℂ} {ε : ℝ}
    (hmargin : 1 ≤ ‖a‖) (hresidual : ‖a * u - y‖ ≤ ε) :
    ‖u - y / a‖ ≤ ε := by
  simpa only [div_one] using
    (GRWTSK.Analysis.Division.error_le_of_residual
      (a := a) (u := u) (y := y) (δ := 1) (ε := ε)
      (by norm_num) hmargin hresidual)

example : ¬ Function.Injective
    (GRWTSK.LinearAlgebra.Diagonal.observe (fun _ : Unit => riemannZeta (-2))) :=
  trivial_zero_observation_not_injective

example : 1 - (1 : ℂ) * (2 : ℂ) ^ (0 : ℂ) = 0 := euler_factor_boundary_zero

end GRWTSK.NumberTheory.Conditional.Checks
