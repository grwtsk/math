/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.GreenMellinContinuation
import GRWTSK.NumberTheory.Zeta.LogDerivativeZeroExclusion
import GRWTSK.NumberTheory.Zeta.Riemann.ZetaZeroFreeHalfPlaneAdapter
import Mathlib.Analysis.Complex.Convex
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Graded dyadic energy and zero-free half-planes

The original RH-G01 source uses the critical exponent

  augmentedEnergy(X) << X^(-1+eta),

which corresponds to the half-plane threshold rho=1/2.

More generally, define the threshold-rho energy scale

  augmentedEnergy(X) << X^(-2(1-rho)+eta).

The Mellin dilation contributes X^(1-Re(s)); taking the square root of the
energy contributes X^(-(1-rho)+eta/2). Hence on Re(s)>=sigma>rho the block
decays geometrically like

  X^(-(sigma-rho-eta/2)).

Choosing eta=sigma-rho gives a positive geometric exponent
(sigma-rho)/2. Thus the literal dyadic block series is normally convergent on
Re(s)>rho.

For 1/2<=rho<1, the existing pole-removed zeta source is analytic on this
smaller half-plane. The denominator-free ODE continuation then excludes zeta
zeros in the same half-plane.

The threshold is preserved. No exponent improvement occurs in this linear
Abel/Mellin transport.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
GRADED_ENERGY_TO_SAME_HALF_PLANE_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology Set
open scoped Topology
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence
open GRWTSK.NumberTheory.VonMangoldt.MellinReadout
open GRWTSK.NumberTheory.VonMangoldt.MellinBlockHolomorphy
open GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications
open GRWTSK.NumberTheory.Zeta.DyadicGreenReturn
open GRWTSK.NumberTheory.Zeta.DyadicEulerIdentification
open GRWTSK.NumberTheory.Zeta.PoleRemovedSource
open GRWTSK.Analysis.Complex.AnalyticLinearODE
open GRWTSK.Analysis.MellinTransform.DyadicBounds

def rightHalfPlane (ρ : ℝ) : Set ℂ :=
  {s : ℂ | ρ < s.re}

theorem rightHalfPlane_open (ρ : ℝ) :
    IsOpen (rightHalfPlane ρ) :=
  isOpen_lt continuous_const Complex.continuous_re

theorem rightHalfPlane_preconnected (ρ : ℝ) :
    IsPreconnected (rightHalfPlane ρ) :=
  (convex_halfSpace_re_gt ρ).isPreconnected

theorem one_mem_rightHalfPlane
    {ρ : ℝ} (hρ : ρ < 1) :
    (1 : ℂ) ∈ rightHalfPlane ρ := by
  change ρ < (1 : ℂ).re
  simpa using hρ

theorem two_mem_rightHalfPlane
    {ρ : ℝ} (hρ : ρ < 1) :
    (2 : ℂ) ∈ rightHalfPlane ρ := by
  change ρ < (2 : ℂ).re
  norm_num
  linarith

/-- Energy premise associated to the desired zero-free threshold rho. -/
def AllDyadicEnergyAtThreshold (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        augmentedEnergy (dyadicScale j) ≤
          C * Real.rpow (dyadicScale j : ℝ)
            (-2 * (1 - ρ) + η)

theorem allDyadicEnergyAtThreshold_half_iff :
    AllDyadicEnergyAtThreshold (1 / 2 : ℝ) ↔
      AllDyadicEnergyBound := by
  constructor
  · intro h η hη
    obtain ⟨C, hC, j₀, hbound⟩ := h η hη
    refine ⟨C, hC, j₀, ?_⟩
    intro j hj
    have hexp :
        -2 * (1 - (1 / 2 : ℝ)) + η = -1 + η := by ring
    simpa [AllDyadicEnergyAtThreshold, hexp] using hbound j hj
  · intro h η hη
    obtain ⟨C, hC, j₀, hbound⟩ := h η hη
    refine ⟨C, hC, j₀, ?_⟩
    intro j hj
    have hexp :
        -2 * (1 - (1 / 2 : ℝ)) + η = -1 + η := by ring
    simpa [hexp] using hbound j hj

theorem uniform_energy_constant_atThreshold
    {ρ : ℝ} (hE : AllDyadicEnergyAtThreshold ρ)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ j,
      augmentedEnergy (dyadicScale j) ≤
        C * Real.exp
          ((-2 * (1 - ρ) + η) *
            Real.log (dyadicScale j : ℝ)) := by
  obtain ⟨C, hC, j₀, hbound⟩ := hE η hη
  apply extend_eventual_bound
    (fun j => augmentedEnergy (dyadicScale j))
    (fun j =>
      Real.exp
        ((-2 * (1 - ρ) + η) *
          Real.log (dyadicScale j : ℝ)))
    (fun j => augmentedEnergy_nonneg _)
    (fun j => Real.exp_pos _)
    hC j₀
  intro j hj
  have hx : (0 : ℝ) < dyadicScale j := by
    exact_mod_cast dyadicScale_pos j
  simpa only [Real.rpow_def_of_pos hx, mul_comm] using
    hbound j hj

/-- Exact exponent after Mellin dilation and square-root energy. -/
theorem energyThreshold_to_geometric_bound
    {X : ℕ} (hX : 0 < X)
    {s : ℂ} {ρ σ η C M : ℝ}
    (hC : 0 ≤ C) (hM : 0 ≤ M)
    (hs : ‖s‖ ≤ M) (hσ : σ ≤ s.re)
    (hE : augmentedEnergy X ≤
      C * Real.exp
        ((-2 * (1 - ρ) + η) * Real.log X)) :
    ‖dirichletBlock X s‖ ≤
      (Real.sqrt C * Real.sqrt (radiusBudget M)) *
        Real.exp
          (-(σ - ρ - η / 2) * Real.log X) := by
  have hlog : 0 ≤ Real.log (X : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hX)
  let q : ℝ :=
    (-(1 - ρ) + η / 2) * Real.log X
  have hexpsq :
      (Real.exp q)^2 =
        Real.exp
          ((-2 * (1 - ρ) + η) * Real.log X) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    dsimp [q]
    ring
  have hsqrt :
      Real.sqrt (augmentedEnergy X) ≤
        Real.sqrt C * Real.exp q := by
    have hsq := Real.sq_sqrt (augmentedEnergy_nonneg X)
    have hrootsq :
        (Real.sqrt C * Real.exp q)^2 =
          C * Real.exp
            ((-2 * (1 - ρ) + η) * Real.log X) := by
      rw [mul_pow, Real.sq_sqrt hC, hexpsq]
    have hp : 0 ≤ Real.sqrt C * Real.exp q := by positivity
    nlinarith [Real.sqrt_nonneg (augmentedEnergy X)]
  have hexp :
      Real.exp ((1 - s.re) * Real.log X) ≤
        Real.exp ((1 - σ) * Real.log X) := by
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right (by linarith) hlog
  calc
    ‖dirichletBlock X s‖
        ≤ Real.exp ((1 - s.re) * Real.log X) *
            (Real.sqrt (augmentedEnergy X) *
              Real.sqrt (radiusBudget M)) :=
      dirichletBlock_norm_bound hX hM hs
    _ ≤ Real.exp ((1 - σ) * Real.log X) *
        ((Real.sqrt C * Real.exp q) *
          Real.sqrt (radiusBudget M)) := by
      exact mul_le_mul hexp
        (mul_le_mul_of_nonneg_right hsqrt
          (Real.sqrt_nonneg _))
        (by positivity)
        (Real.exp_pos _).le
    _ = _ := by
      calc
        _ =
          (Real.sqrt C * Real.sqrt (radiusBudget M)) *
            (Real.exp ((1 - σ) * Real.log X) *
              Real.exp q) := by ring
        _ = _ := by
          rw [← Real.exp_add]
          congr 2
          dsimp [q]
          ring

theorem graded_uniform_majorant
    {ρ : ℝ} (hE : AllDyadicEnergyAtThreshold ρ)
    {σ M : ℝ} (hσ : ρ < σ) (hM : 0 ≤ M) :
    ∃ u : ℕ → ℝ, Summable u ∧
      (∀ j, 0 ≤ u j) ∧
      ∀ (j : ℕ) (s : ℂ),
        σ ≤ s.re → ‖s‖ ≤ M →
        ‖dirichletBlock (dyadicScale j) s‖ ≤ u j := by
  let η : ℝ := σ - ρ
  let a : ℝ := σ - ρ - η / 2
  have hη : 0 < η := by
    dsimp [η]
    linarith
  have ha : 0 < a := by
    dsimp [a, η]
    linarith
  obtain ⟨C, hC, hbound⟩ :=
    uniform_energy_constant_atThreshold hE hη
  let K : ℝ :=
    Real.sqrt C * Real.sqrt (radiusBudget M)
  refine ⟨fun j => K * dyadicWeight a j,
    (summable_dyadicWeight a ha).mul_left K, ?_, ?_⟩
  · intro j
    unfold K dyadicWeight
    positivity
  · intro j s hσs hs
    have h :=
      energyThreshold_to_geometric_bound
        (dyadicScale_pos j)
        hC hM hs hσs
        (hbound j)
    simpa [K, a, dyadicWeight, log_dyadicScale,
      mul_assoc] using h

theorem graded_absolute_summability
    {ρ : ℝ} (hE : AllDyadicEnergyAtThreshold ρ)
    {s : ℂ} (hs : ρ < s.re) :
    Summable
      (fun j =>
        ‖dirichletBlock (dyadicScale j) s‖) := by
  obtain ⟨u, hu, hu0, hbound⟩ :=
    graded_uniform_majorant hE hs (norm_nonneg s)
  exact Summable.of_nonneg_of_le
    (fun j => norm_nonneg _)
    (fun j => hbound j s le_rfl le_rfl)
    hu

/-- Normal convergence on the threshold-rho half-plane. -/
theorem graded_blockSeries_differentiableOn
    {ρ : ℝ} (hE : AllDyadicEnergyAtThreshold ρ) :
    DifferentiableOn ℂ blockSeries (rightHalfPlane ρ) := by
  intro s hs
  change ρ < s.re at hs
  let σ : ℝ := (s.re + ρ) / 2
  let M : ℝ := ‖s‖ + 1
  let U : Set ℂ :=
    {z : ℂ | σ < z.re ∧ ‖z‖ < M}
  have hσ : ρ < σ := by
    dsimp [σ]
    linarith [hs]
  have hM : 0 ≤ M := by
    dsimp [M]
    positivity
  have hsU : s ∈ U := by
    constructor
    · dsimp [σ]
      linarith [hs]
    · dsimp [M]
      linarith
  have hU : IsOpen U :=
    (isOpen_lt continuous_const Complex.continuous_re).inter
      (isOpen_lt continuous_norm continuous_const)
  obtain ⟨u, hu, hu0, hbound⟩ :=
    graded_uniform_majorant hE hσ hM
  have hsum :
      DifferentiableOn ℂ
        (fun z =>
          ∑' j,
            dirichletBlock (dyadicScale j) z)
        U := by
    apply Complex.differentiableOn_tsum_of_summable_norm
      hu
      (fun j =>
        (dirichletBlock_differentiable
          (dyadicScale_pos j)).differentiableOn)
      hU
    intro j z hz
    exact hbound j z hz.1.le hz.2.le
  have hfinite :=
    dirichletBlock_differentiable
      (X := 1) (by omega) s
  have htail :=
    hsum.differentiableAt (hU.mem_nhds hsU)
  exact (hfinite.add htail).differentiableWithinAt

/-- Graded analytic-continuation contract. -/
theorem graded_continuation
    {ρ : ℝ} (hE : AllDyadicEnergyAtThreshold ρ) :
    DifferentiableOn ℂ blockSeries (rightHalfPlane ρ) ∧
      ∀ s : ℂ, 1 < s.re →
        blockSeries s =
          -(deriv riemannZeta s) / riemannZeta s -
            1 / (s - 1) := by
  exact ⟨graded_blockSeries_differentiableOn hE,
    eulerIdentification⟩

/-- Pole-removed source remains analytic after restricting from Re>1/2 to
Re>rho. -/
theorem poleRemoved_analyticOn_rightHalfPlane
    {ρ : ℝ} (hρ : (1 / 2 : ℝ) ≤ ρ) :
    AnalyticOnNhd ℂ poleRemoved (rightHalfPlane ρ) := by
  intro s hs
  exact poleRemoved_analyticOn s
    (lt_of_le_of_lt hρ hs)

/-- The denominator-free ODE continues throughout any graded half-plane
1/2<=rho<1. -/
theorem ode_on_rightHalfPlane
    {ρ : ℝ}
    (hρhalf : (1 / 2 : ℝ) ≤ ρ)
    (hρone : ρ < 1)
    {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F (rightHalfPlane ρ))
    (hEuler : ∀ s : ℂ, 1 < s.re →
      F s =
        -(deriv riemannZeta s) / riemannZeta s -
          1 / (s - 1)) :
    ∀ s ∈ rightHalfPlane ρ,
      deriv poleRemoved s =
        (-F s) * poleRemoved s := by
  have hFa :
      AnalyticOnNhd ℂ F (rightHalfPlane ρ) :=
    hhol.analyticOnNhd (rightHalfPlane_open ρ)
  have hd :
      AnalyticOnNhd ℂ
        (deriv poleRemoved)
        (rightHalfPlane ρ) := by
    intro s hs
    exact
      (poleRemoved_analyticOn_rightHalfPlane hρhalf
        s hs).deriv
  have hr :
      AnalyticOnNhd ℂ
        (fun s => (-F s) * poleRemoved s)
        (rightHalfPlane ρ) := by
    intro s hs
    exact (hFa s hs).neg.mul
      (poleRemoved_analyticOn_rightHalfPlane
        hρhalf s hs)
  have he :
      deriv poleRemoved =ᶠ[𝓝 (2 : ℂ)]
        (fun s => (-F s) * poleRemoved s) := by
    have hopen : IsOpen {s : ℂ | 1 < s.re} :=
      isOpen_lt continuous_const Complex.continuous_re
    filter_upwards
      [hopen.mem_nhds
        (show 1 < (2 : ℂ).re by norm_num)]
      with s hs
    exact
      GRWTSK.NumberTheory.Zeta.LogDerivativeZeroExclusion.ode_on_euler_domain
        hEuler hs
  exact hd.eqOn_of_preconnected_of_eventuallyEq
    hr
    (rightHalfPlane_preconnected ρ)
    (two_mem_rightHalfPlane hρone)
    he

theorem poleRemoved_ne_zero_on_rightHalfPlane
    {ρ : ℝ}
    (hρhalf : (1 / 2 : ℝ) ≤ ρ)
    (hρone : ρ < 1)
    {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F (rightHalfPlane ρ))
    (hEuler : ∀ s : ℂ, 1 < s.re →
      F s =
        -(deriv riemannZeta s) / riemannZeta s -
          1 / (s - 1)) :
    ∀ s ∈ rightHalfPlane ρ,
      poleRemoved s ≠ 0 := by
  have hFa :=
    hhol.analyticOnNhd (rightHalfPlane_open ρ)
  apply nonvanishing
    (rightHalfPlane_open ρ)
    (rightHalfPlane_preconnected ρ)
    (poleRemoved_analyticOn_rightHalfPlane hρhalf)
    (show AnalyticOnNhd ℂ
      (fun s => -F s)
      (rightHalfPlane ρ) from
      fun s hs => (hFa s hs).neg)
    (one_mem_rightHalfPlane hρone)
    (show poleRemoved 1 ≠ 0 by
      rw [poleRemoved_one]
      exact one_ne_zero)
  exact ode_on_rightHalfPlane
    hρhalf hρone hhol hEuler

/-- Graded continuation excludes zeta zeros in exactly the same half-plane. -/
theorem riemannZetaZeroFreeRightHalfPlane_of_graded_extension
    {ρ : ℝ}
    (hρhalf : (1 / 2 : ℝ) ≤ ρ)
    (hρone : ρ < 1)
    {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F (rightHalfPlane ρ))
    (hEuler : ∀ s : ℂ, 1 < s.re →
      F s =
        -(deriv riemannZeta s) / riemannZeta s -
          1 / (s - 1)) :
    RiemannZetaZeroFreeRightHalfPlane ρ := by
  intro s hs
  by_cases hs1 : s = 1
  · subst s
    exact riemannZeta_one_ne_zero
  · intro hz
    have hp :
        poleRemoved s = 0 := by
      rw [poleRemoved_eq_mul hs1, hz, mul_zero]
    exact
      (poleRemoved_ne_zero_on_rightHalfPlane
        hρhalf hρone hhol hEuler
        s hs) hp

/-- Threshold-rho energy implies zeta nonvanishing on Re>rho. -/
theorem energyAtThreshold_to_zeroFree
    {ρ : ℝ}
    (hρhalf : (1 / 2 : ℝ) ≤ ρ)
    (hρone : ρ < 1)
    (hE : AllDyadicEnergyAtThreshold ρ) :
    RiemannZetaZeroFreeRightHalfPlane ρ := by
  obtain ⟨hhol, hEuler⟩ :=
    graded_continuation hE
  exact
    riemannZetaZeroFreeRightHalfPlane_of_graded_extension
      hρhalf hρone hhol hEuler

end GRWTSK.RiemannHypothesis
