/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.TwoSidedResidualInverse
import GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivativeRigidity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroCountCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResonanceDeterminantReturn
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.FieldSimp

/-!
# Normalized determinant return and exact-operator certificates

RP-OC-04, math issue #1800. MSC2020: 11M26, 11M41, 47A10, 30C15.
Reuses RP-OC-08 anchored log-derivative rigidity and RP-OC-06 finite divisors.
The comparator region is zero-free; zeros elsewhere are not excluded by fiat.
The same finite divisor and weights are returned, with actual analytic orders.

`D` remains a scalar parameter until a genuine Fredholm determinant is supplied.
The determinant nonvanishing implication is EXPLICIT, not proved or defined by
this file. No arithmetic operator, trace formula, universal error bound, GRH
predicate, or all-window coverage is manufactured. The primitive principal case
and all conductor/gamma/prime-power/pole normalization must be supplied upstream.

Source candidates: elaboration, kernel replay, axiom audit and review NOT_RUN.
Dependencies inspected at grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94.
See adjacent per-declaration provenance and the research reproducibility package
artifacts/reproducibility/program-4-residual-certification/2026-11-11/.
-/

set_option autoImplicit false
noncomputable section
open Filter Set
open scoped Topology

namespace GRWTSK.ResonanceDeterminantReturn

/-- Explicit regularization correction; neither a logarithm branch nor a zero list. -/
theorem logDeriv_exp_mul {h F : ℂ → ℂ} {s : ℂ}
    (hh : DifferentiableAt ℂ h s) (hF : DifferentiableAt ℂ F s) (hF0 : F s ≠ 0) :
    logDeriv (fun z => Complex.exp (h z) * F z) s = deriv h s + logDeriv F s := by
  have hd := hh.hasDerivAt.cexp.mul hF.hasDerivAt
  rw [logDeriv_apply, hd.deriv, logDeriv_apply]
  field_simp [Complex.exp_ne_zero, hF0] <;> ring

/-- Reconstruct a globally normalized return from one zero-free comparison region.
Analytic continuation permits zeros outside that region and keeps their orders. -/
theorem exactReturnOn_univ_of_logDeriv
    {D h F : ℂ → ℂ} {U : Set ℂ} {a : ℂ}
    (hD : AnalyticOnNhd ℂ D univ) (hh : AnalyticOnNhd ℂ h univ)
    (hF : AnalyticOnNhd ℂ F univ) (hU : IsOpen U) (hc : IsPreconnected U)
    (hDn : ∀ z ∈ U, D z ≠ 0) (hFn : ∀ z ∈ U, F z ≠ 0)
    (ha : a ∈ U) (hanchor : D a = Complex.exp (h a) * F a)
    (htrace : ∀ z ∈ U, logDeriv D z = deriv h z + logDeriv F z) :
    ExactReturnOn univ D h F := by
  have hG : AnalyticOnNhd ℂ (fun z => Complex.exp (h z) * F z) univ := by
    intro z hz
    exact (hh z hz).cexp.mul (hF z hz)
  have hGn : ∀ z ∈ U, Complex.exp (h z) * F z ≠ 0 :=
    fun z hz => mul_ne_zero (Complex.exp_ne_zero _) (hFn z hz)
  have hlogs : EqOn (logDeriv D) (logDeriv (fun z => Complex.exp (h z) * F z)) U := by
    intro z hz
    exact (htrace z hz).trans (logDeriv_exp_mul
      (hh z (mem_univ z)).differentiableAt (hF z (mem_univ z)).differentiableAt
      (hFn z hz)).symm
  have heq := GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivative.eq_of_logDeriv_eqOn_of_anchor
    hD hG hU hc hDn hGn ha hanchor hlogs
  intro z _
  exact congrFun heq z

/-- Transport the SAME finite divisor and actual multiplicities to the source.
No count of distinct roots is substituted for analytic order. -/
theorem finiteDivisor_source_return
    (d : GRWTSK.ZeroCountCertificates.FiniteDivisor)
    {D h F : ℂ → ℂ} {U : Set ℂ} (hU : IsOpen U)
    (hret : ExactReturnOn U D h F)
    (he : ∀ z ∈ U, AnalyticAt ℂ (fun w => Complex.exp (h w)) z)
    (hF : ∀ z ∈ U, AnalyticAt ℂ F z)
    (hzeros : d.IdentifiesZeros D U)
    (horders : ∀ z ∈ d.support, analyticOrderAt D z = d.multiplicity z) :
    d.IdentifiesZeros F U ∧
      ∀ z ∈ d.support, analyticOrderAt F z = d.multiplicity z := by
  constructor
  · intro z
    constructor
    · intro hz
      obtain ⟨hzu, hzd⟩ := (hzeros z).mp hz
      exact ⟨hzu, (zero_iff_of_exactReturnOn hret hzu).mp hzd⟩
    · rintro ⟨hzu, hzf⟩
      exact (hzeros z).mpr ⟨hzu, (zero_iff_of_exactReturnOn hret hzu).mpr hzf⟩
  · intro z hz
    have hzu := ((hzeros z).mp hz).1
    have hnear : D =ᶠ[𝓝 z] (fun w => Complex.exp (h w) * F w) :=
      Filter.mem_of_superset (hU.mem_nhds hzu) fun w hw => hret hw
    exact (analyticOrder_eq_of_exp_return (he z hzu) (hF z hzu) hnear).symm.trans
      (horders z hz)

section ResidualReturn

variable {A : Type*} [NormedRing A] [CompleteSpace A]

/-- The actual operator residuals exclude a source zero through an explicit
Fredholm determinant implication. That implication is not supplied here. -/
theorem source_ne_zero_of_operator_residual
    {U : Set ℂ} {D h F : ℂ → ℂ} (hret : ExactReturnOn U D h F)
    {s : ℂ} (hs : s ∈ U) (K r : A)
    (hdet : IsUnit (1 - K) → D s ≠ 0)
    (hl : ‖1 - r * (1 - K)‖ < 1) (hr : ‖1 - (1 - K) * r‖ < 1) : F s ≠ 0 := by
  intro hz
  exact hdet (GRWTSK.FunctionalAnalysis.TwoSidedResidual.isUnit_of_twoSidedResidual hl hr)
    ((zero_iff_of_exactReturnOn hret hs).mpr hz)

/-- Finite approximation plus certified tail error, with no omitted residual. -/
theorem source_ne_zero_of_operator_approximation
    {U : Set ℂ} {D h F : ℂ → ℂ} (hret : ExactReturnOn U D h F)
    {s : ℂ} (hs : s ∈ U) (K a₀ r : A) {ε : ℝ}
    (hdet : IsUnit (1 - K) → D s ≠ 0)
    (herr : ‖(1 - K) - a₀‖ ≤ ε)
    (hl : ‖1 - r * a₀‖ + ‖r‖ * ε < 1)
    (hr : ‖1 - a₀ * r‖ + ε * ‖r‖ < 1) : F s ≠ 0 := by
  intro hz
  exact hdet (GRWTSK.FunctionalAnalysis.TwoSidedResidual.isUnit_of_approximation herr hl hr)
    ((zero_iff_of_exactReturnOn hret hs).mpr hz)

/-- Return to the unchanged RH target; coverage and residual producers are premises. -/
theorem riemannHypothesis_of_operator_residuals
    {U : Set ℂ} {D h F : ℂ → ℂ} (K r : ℂ → A)
    (hsource : ∀ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero s → s ∈ U ∧ F s = 0)
    (hret : ExactReturnOn U D h F)
    (hdet : ∀ s ∈ U, IsUnit (1 - K s) → D s ≠ 0)
    (hl : ∀ s ∈ U, s.re ≠ 1 / 2 → ‖1 - r s * (1 - K s)‖ < 1)
    (hr : ∀ s ∈ U, s.re ≠ 1 / 2 → ‖1 - (1 - K s) * r s‖ < 1) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_return hsource hret
  intro s hs hoff
  exact hdet s hs (GRWTSK.FunctionalAnalysis.TwoSidedResidual.isUnit_of_twoSidedResidual
    (hl s hs hoff) (hr s hs hoff))

/-- Per-character open-strip consumer for the actual continued L-function.
No new definition of GRH and no claim of a primitive-family arithmetic producer. -/
theorem dirichlet_zero_re_eq_half_of_operator_residuals
    {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N)
    {U : Set ℂ} {D h F : ℂ → ℂ} (K r : ℂ → A)
    (hsource : ∀ s : ℂ, 0 < s.re → s.re < 1 →
      DirichletCharacter.LFunction χ s = 0 → s ∈ U ∧ F s = 0)
    (hret : ExactReturnOn U D h F)
    (hdet : ∀ s ∈ U, IsUnit (1 - K s) → D s ≠ 0)
    (hl : ∀ s ∈ U, s.re ≠ 1 / 2 → ‖1 - r s * (1 - K s)‖ < 1)
    (hr : ∀ s ∈ U, s.re ≠ 1 / 2 → ‖1 - (1 - K s) * r s‖ < 1)
    {s : ℂ} (hleft : 0 < s.re) (hright : s.re < 1)
    (hzero : DirichletCharacter.LFunction χ s = 0) : s.re = 1 / 2 := by
  apply dirichlet_zero_re_eq_half_of_return χ hsource hret _ hleft hright hzero
  intro z hz hoff
  exact hdet z hz (GRWTSK.FunctionalAnalysis.TwoSidedResidual.isUnit_of_twoSidedResidual
    (hl z hz hoff) (hr z hz hoff))

end ResidualReturn
end GRWTSK.ResonanceDeterminantReturn
