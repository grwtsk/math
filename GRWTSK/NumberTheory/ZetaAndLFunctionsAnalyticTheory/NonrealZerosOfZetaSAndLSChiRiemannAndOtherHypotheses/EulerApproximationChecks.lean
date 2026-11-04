/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.EulerHeightSix

/-!
# Scoped checks for finite Euler residual candidates

Imports seven new mathematical modules without promoting a root/default build.
The rational fixtures are not evaluations of zeta or Dirichlet L-functions.
SourceComparison is an unconstructed formal bridge to a standard classical
Euler summation identity; the fourth-order comparison is also an explicit input.
No value of SourceComparison, no all-core cell family,
and no RH/GRH proof is asserted. The universal truncation budgets and successful
low-height geometry must not be confused with the missing global lower bounds.

These commands await actual Lean execution. Compilation, fresh kernel checking,
transitive axiom audit and independent analytical review: NOT_RUN. Toolchain
and dependency pins unchanged. AI-assisted formalization; no novelty claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Conditional.EulerApproximation.Checks

open GRWTSK.Analysis.Division

example : RationalCell.passes 2 (-3, 0) (5 / 4) = true :=
  RationalCell.rational_gap_fixture

example : cutoff 1 3 2 = 5764801 := by norm_num [cutoff]

example (N n k : ℕ) : coreBudget N n (cutoff N n k) < 1 / (2 : ℝ) ^ k :=
  cutoff_budget_lt N n k

example (comparison : SourceComparison) (N : ℕ) [NeZero N]
    (χ : DirichletCharacter ℂ N) (n k : ℕ) {s : ℂ} (hs : s ∈ offCore n) :
    ‖χ.LFunction s - dirichletApprox χ (cutoff N n k) s‖ < 1 / (2 : ℝ) ^ k :=
  all_characters_dyadic_error comparison N χ n k hs

example (comparison : SourceComparison) {s : ℂ}
    (hs : dist s (3 / 4 : ℂ) ≤ (1 / 16 : ℝ)) :
    ‖riemannZeta s * GRWTSK.Analysis.MellinRemainder.firstReciprocal s - 1‖ < 1 :=
  (zeta_disk_residual comparison hs).trans_lt (by norm_num)

example {s : ℂ} (hlo : (1 / 2 : ℝ) ≤ s.re) (hhi : s.re ≤ 1)
    (ht : s.im ^ 2 ≤ 36) (hp : s ≠ 1) :
    ‖HeightSix.model s * HeightSix.reciprocal s - 1‖ < (4 / 5 : ℝ) :=
  HeightSix.model_height_six_residual hlo hhi ht hp

example {n : ℕ} (hn : n ≤ 6) {s : ℂ} (hs : s ∈ rightCore n)
    (source : riemannZeta s = HeightSix.model s) :
    ‖riemannZeta s * HeightSix.reciprocal s - 1‖ < (4 / 5 : ℝ) :=
  HeightSix.first_six_cores hn hs source

#print axioms GRWTSK.Analysis.MellinRemainder.tail_norm_le
#print axioms GRWTSK.Analysis.Division.FiniteInverse.residual_bound
#print axioms GRWTSK.Analysis.Division.RationalCell.passes_sound
#print axioms GRWTSK.NumberTheory.Conditional.EulerApproximation.cutoff_budget_lt
#print axioms GRWTSK.NumberTheory.Conditional.EulerApproximation.all_characters_dyadic_error
#print axioms GRWTSK.NumberTheory.Conditional.EulerApproximation.zeta_disk_residual
#print axioms GRWTSK.NumberTheory.Conditional.EulerApproximation.grh_of_all_euler_cells
#print axioms GRWTSK.NumberTheory.Conditional.EulerApproximation.HeightSix.first_six_cores

end GRWTSK.NumberTheory.Conditional.EulerApproximation.Checks
