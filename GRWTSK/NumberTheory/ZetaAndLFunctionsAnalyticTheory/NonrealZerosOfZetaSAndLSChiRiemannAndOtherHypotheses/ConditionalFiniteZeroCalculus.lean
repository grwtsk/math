/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalZeroFree
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalLinePowerSums
import GRWTSK.FunctionsOfAComplexVariable.VerticalLineProducts

set_option autoImplicit false

noncomputable section

/-!
# RH and Dirichlet-GRH consumers on actual finite zero families

RH here is exactly Mathlib.RiemannHypothesis. A zeta zero retains the existing
NontrivialZetaZero predicate, including both exclusions. A Dirichlet zero is
explicitly in the open critical strip of the actual character LFunction.
The one-character critical-line hypothesis suffices for every Dirichlet result;
full GRH and bounded-modulus GRH are only stronger ways to provide it.

The return is exact: these very same complex zeros are used in the powers,
denominators, Cauchy transforms and root products. No source transport, zero
enumeration, or numerical certificate is assumed by resemblance. The proofs
apply RH/GRH once per selected zero and then the separately argued analytic
lemmas. Finite indices need not be injective; their chosen multiplicities are
retained, not certified to be the analytic multiplicities of all zeros below
a height. Finite-product derivative localization is NOT a theorem about zeta'
or L', as the imported exponential-factor counterexample demonstrates.

Consumers include the explicit remainder bound here and the prime-interval
certificate in ConditionalPrimeIntervals. Actual explicit formulae, complete
truncation inventories, tail estimates, and prime-power correction estimates
remain separate obligations. No unconditional RH/GRH proof is asserted.

Existing source inspected at f81464dccb75b45f736523c70950d48e76876c2d;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Hypothesis,
RiemannZeroSymmetry and ConditionalZeroFree are reused, not redefined.
Classical conditional consequences; no theorem-level novelty claim.
AI-assisted formalization. Independent review, compilation, fresh kernel
checking and transitive axiom audit: NOT_RUN. Dependency pins unchanged.
-/

namespace GRWTSK.NumberTheory.Conditional.FiniteZeros

open scoped BigOperators
open GRWTSK.Analysis.VerticalLine GRWTSK.NumberTheory.CriticalLine

variable {ι : Type*}

theorem zeta_re (hRH : _root_.RiemannHypothesis) {ρ : ℂ}
    (hρ : GRWTSK.RiemannHypothesis.NontrivialZetaZero ρ) : ρ.re = 1 / 2 :=
  hRH ρ hρ.1 hρ.2.1 hρ.2.2

theorem zeta_power_norm (hRH : _root_.RiemannHypothesis) {ρ : ℂ}
    (hρ : GRWTSK.RiemannHypothesis.NontrivialZetaZero ρ) {x : ℝ} (hx : 0 < x) :
    ‖(x : ℂ) ^ ρ‖ = Real.sqrt x := power_norm (zeta_re hRH hρ) hx

theorem zeta_powerSum_bound (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots coefficient : ι → ℂ)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    {x : ℝ} (hx : 0 < x) :
    ‖powerSum s roots coefficient x‖ ≤ Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ :=
  powerSum_norm_le s roots coefficient (fun i hi => zeta_re hRH (hzero i hi)) hx

theorem zeta_dividedPowerSum_bound (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots coefficient : ι → ℂ)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    {x : ℝ} (hx : 0 < x) :
    ‖dividedPowerSum s roots coefficient x‖ ≤
      Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖ :=
  dividedPowerSum_norm_le s roots coefficient (fun i hi => zeta_re hRH (hzero i hi)) hx

/-- This bound retains the number of selected indices and claims no cancellation. -/
theorem zeta_unweighted_coarse_bound (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots : ι → ℂ)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    {x : ℝ} (hx : 0 < x) :
    ‖dividedPowerSum s roots (fun _ => 1) x‖ ≤ 2 * Real.sqrt x * s.card := by
  simpa using dividedPowerSum_coarse_bound s roots (fun _ => 1)
    (fun i hi => zeta_re hRH (hzero i hi)) hx

theorem zeta_positive_resolvent (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots : ι → ℂ) (weight : ι → ℝ)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    (hw : ∀ i ∈ s, 0 ≤ weight i) (hpos : ∃ i ∈ s, 0 < weight i)
    {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    0 < (resolvent s roots weight z).re :=
  resolvent_re_pos s roots weight (fun i hi => zeta_re hRH (hzero i hi)) hw hpos hz

theorem zeta_resolvent_bound (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots : ι → ℂ) (weight : ι → ℝ)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    {z : ℂ} {δ : ℝ} (hδ : 0 < δ) (hz : δ ≤ |z.re - 1 / 2|) :
    ‖resolvent s roots weight z‖ ≤ (∑ i ∈ s, |weight i|) / δ :=
  resolvent_norm_le s roots weight (fun i hi => zeta_re hRH (hzero i hi)) hδ hz

theorem zeta_product_derivative_zero (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots : ι → ℂ) (hs : s.Nonempty)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    {z : ℂ} (hz : deriv (rootProduct s roots) z = 0) : z.re = 1 / 2 :=
  derivative_zero_on_line s roots hs (fun i hi => zeta_re hRH (hzero i hi)) hz

theorem zeta_product_margin (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots : ι → ℂ)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    {z : ℂ} {δ : ℝ} (hδ : 0 < δ) (hz : δ ≤ |z.re - 1 / 2|) :
    δ ^ s.card ≤ ‖rootProduct s roots z‖ :=
  rootProduct_norm_lower s roots (fun i hi => zeta_re hRH (hzero i hi)) hδ hz

/-- RH supplies the finite zero estimate, not the formula or its remainder estimate. -/
theorem zeta_remainder_bound (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots coefficient : ι → ℂ)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    {x : ℝ} (hx : 0 < x) {observed main remainder : ℂ} {R : ℝ}
    (formula : observed = main - dividedPowerSum s roots coefficient x + remainder)
    (hR : ‖remainder‖ ≤ R) :
    ‖observed - main‖ ≤
      Real.sqrt x * (∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖) + R :=
  residual_bound s roots coefficient (fun i hi => zeta_re hRH (hzero i hi)) hx formula hR

/-- The domain of a Dirichlet zero is explicit, including imprimitive characters. -/
def DirichletStripZero {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) (ρ : ℂ) : Prop :=
  0 < ρ.re ∧ ρ.re < 1 ∧ χ.LFunction ρ = 0

variable {N : ℕ} [NeZero N] {χ : DirichletCharacter ℂ N}

theorem dirichlet_re (hχ : DirichletCriticalLine χ) {ρ : ℂ}
    (hρ : DirichletStripZero χ ρ) : ρ.re = 1 / 2 :=
  hχ ρ hρ.1 hρ.2.1 hρ.2.2

theorem dirichlet_dividedPowerSum_bound (hχ : DirichletCriticalLine χ)
    (s : Finset ι) (roots coefficient : ι → ℂ)
    (hzero : ∀ i ∈ s, DirichletStripZero χ (roots i)) {x : ℝ} (hx : 0 < x) :
    ‖dividedPowerSum s roots coefficient x‖ ≤
      Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖ :=
  dividedPowerSum_norm_le s roots coefficient (fun i hi => dirichlet_re hχ (hzero i hi)) hx

theorem dirichlet_product_derivative_zero (hχ : DirichletCriticalLine χ)
    (s : Finset ι) (roots : ι → ℂ) (hs : s.Nonempty)
    (hzero : ∀ i ∈ s, DirichletStripZero χ (roots i))
    {z : ℂ} (hz : deriv (rootProduct s roots) z = 0) : z.re = 1 / 2 :=
  derivative_zero_on_line s roots hs (fun i hi => dirichlet_re hχ (hzero i hi)) hz

theorem grh_dividedPowerSum_bound (hGRH : DirichletGRH)
    (s : Finset ι) (roots coefficient : ι → ℂ)
    (hzero : ∀ i ∈ s, DirichletStripZero χ (roots i)) {x : ℝ} (hx : 0 < x) :
    ‖dividedPowerSum s roots coefficient x‖ ≤
      Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖ :=
  dirichlet_dividedPowerSum_bound (hGRH N χ) s roots coefficient hzero hx

/-- Only the selected character's modulus is consumed from a finite GRH cutoff. -/
theorem cutoff_dividedPowerSum_bound {Q : ℕ} (hGRH : DirichletGRHUpTo Q) (hN : N ≤ Q)
    (s : Finset ι) (roots coefficient : ι → ℂ)
    (hzero : ∀ i ∈ s, DirichletStripZero χ (roots i)) {x : ℝ} (hx : 0 < x) :
    ‖dividedPowerSum s roots coefficient x‖ ≤
      Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖ :=
  dirichlet_dividedPowerSum_bound (hGRH N hN χ) s roots coefficient hzero hx

end GRWTSK.NumberTheory.Conditional.FiniteZeros
