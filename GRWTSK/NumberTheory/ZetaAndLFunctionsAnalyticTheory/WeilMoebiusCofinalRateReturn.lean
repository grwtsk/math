/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain

/-!
# Cofinal signed Möbius zero-free margins in the primitive Weil stage chain

The supplied margin is the actual zeta nonvanishing conclusion of
`OriginalSingleRateZeroFreeReturn.zero_free_of_original_grid_energy_rate`
(producer source: `37e9fcbe6d944295e29093deaee01b873146d0d5`), with
`StrongFixedPowerPR103.ZetaZeroFreeRightOf` written as its definition.
This leaves the producer's Laplace, ceiling and arithmetic inputs to its
caller; the bridge does not need to import the arithmetic construction.

For each point to the right of the critical line choose a certified positive
rate smaller than twice its distance from that line. Then the point is in
the certified half-plane. Zeta reflection handles the opposite half via
`Conditional.rh_of_zeta_zero_free`. This supplies the principal branch of
`DirichletStageChain.dirichletGRH_of_source_chains` (stage-chain source:
`2ceec84246b42efec174f734eb31685d809746a5`).

A single positive rate leaves an uncovered band: the real part `1/2 + r/4`
lies outside the certified right half-plane for rate `r > 0`. This is a
failure of coverage, not a claim of a zero there. Neither finite-height
nonvanishing nor finitely many rates supplies the cofinal premise.
The primitive nonprincipal negative witness and all small-conductor stages
remain separate hypotheses, including every stage at conductor three.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open GRWTSK.NumberTheory.Conditional

/-- The conditional Möbius-to-Weil return with no assumed RH or GRH. -/
theorem dirichletGRH_of_cofinal_zeta_margins_and_source_stages
    (hmargins : ∀ ε : ℝ, 0 < ε → ∃ r : ℝ, 0 < r ∧ r < ε ∧
      ∀ s : ℂ, (1 + r) / 2 < s.re → s ≠ 1 → riemannZeta s ≠ 0)
    (hreturn : PrimitiveNegativeWitness)
    (hsmall : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1), SmallConductorStages χ hp hn) :
    DirichletGRH := by
  apply dirichletGRH_of_source_chains _ hreturn hsmall
  apply rh_of_zeta_zero_free
  intro s hs hne
  obtain ⟨r, _, hr, hzeroFree⟩ := hmargins (2 * s.re - 1) (by linarith)
  exact hzeroFree s (by linarith) hne

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
