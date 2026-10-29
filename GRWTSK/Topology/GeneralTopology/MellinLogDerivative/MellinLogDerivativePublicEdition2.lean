module

public meta import Surface.Core.Classification
public import Surface.Core.Analysis.HolomorphicLinearODE
public import Surface.Core.DirichletGRH.MathlibLFunctionAdapters
public import Surface.Core.DirichletGRH.CriticalSummatory
public import Mathlib.Analysis.Complex.HasPrimitives
public import Mathlib.NumberTheory.LSeries.SumCoeff
import Mathlib.Tactic

/-!
# Centered Mellin/logarithmic-derivative square

This module isolates the exact analytic data needed to turn a centered
twisted-Chebyshev half-plus-epsilon estimate into zero-freeness on
`re s > 1 / 2`.

The principal channel is handled by a regularized `L`-function.  On the
half-plane of absolute convergence the centered Mellin transform differs
from its negative logarithmic derivative by the constant principal
indicator.  The structure below contains that identity, holomorphy of the
Mellin continuation, and the elementary zero correspondence for the
regularized function.  It contains no zero-free statement and no GRH field.
-/

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open Set Filter MeasureTheory Topology Complex

/-- Real interpolation used by the centered Mellin transform.

The twisted prime sum is held constant between integers, while the
principal main term is the real variable `t`, not `floor t`.  Consequently
the principal Mellin correction is exactly `s / (s - 1)`.  At natural
arguments this agrees with `centeredTwistedPsi`. -/
@[expose]
def centeredTwistedPsiStep
    {q : ℕ} (χ : DirichletCharacter ℂ q) (t : ℝ) : ℂ :=
  if 1 ≤ t then
    twistedPsi χ ⌊t⌋₊ -
      dirichletPrincipalIndicator χ * (t : ℂ)
  else 0

@[surface_novel, surface_published]
theorem centeredTwistedPsiStep_natCast
    {q : ℕ} (χ : DirichletCharacter ℂ q) (x : ℕ) :
    centeredTwistedPsiStep χ x = centeredTwistedPsi χ x := by
  by_cases hx : x = 0
  · simp [hx, centeredTwistedPsiStep, centeredTwistedPsi]
  · have hx1 : (1 : ℝ) ≤ (x : ℝ) := by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr hx)
    simp [centeredTwistedPsiStep, centeredTwistedPsi, hx1]

/-- The literal centered Mellin candidate.  Convergence and holomorphy are
properties, not part of this definition. -/
@[expose]
def centeredTwistedPsiMellin
    {q : ℕ} (χ : DirichletCharacter ℂ q) (s : ℂ) : ℂ :=
  s * mellin (centeredTwistedPsiStep χ) (-s)

/-- Open right half-plane used by the zero-exclusion argument. -/
@[expose]
def criticalRightHalfPlane : Set ℂ :=
  {s | (1 / 2 : ℝ) < s.re}

@[surface_novel, surface_published]
theorem isOpen_criticalRightHalfPlane : IsOpen criticalRightHalfPlane :=
  isOpen_lt continuous_const continuous_re

@[surface_novel, surface_published]
theorem isPreconnected_criticalRightHalfPlane :
    IsPreconnected criticalRightHalfPlane :=
  (convex_halfSpace_re_gt (1 / 2 : ℝ)).isPreconnected

/--
Typed analytic square for one Dirichlet character.

The regularized function is the fixed `poleRemovedLFunction chi` adapter,
not structure data chosen by an inhabitant.  The logarithmic-derivative
identity therefore has one canonical analytic target and keeps the pole at
`s = 1` outside the ODE argument.
-/
@[surface_interface]
structure MellinLogDerivativeSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  mellin : ℂ → ℂ

  mellin_eq_centeredIntegral :
    ∀ s, mellin s = centeredTwistedPsiMellin χ s

  mellin_differentiableOn :
    CenteredTwistedPsiHalfPlusEpsilon χ →
      DifferentiableOn ℂ mellin criticalRightHalfPlane

  regularizedLogDerivativeIdentity :
    ∀ s : ℂ, 1 < s.re →
      mellin s + dirichletPrincipalIndicator χ =
        -deriv (poleRemovedLFunction χ) s /
          poleRemovedLFunction χ s

/-- Holomorphic ODE residual for the regularized `L`-function. -/
@[expose]
def MellinLogDerivativeSquare.residual
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ) (s : ℂ) : ℂ :=
  deriv (poleRemovedLFunction χ) s +
    (square.mellin s + dirichletPrincipalIndicator χ) *
      poleRemovedLFunction χ s

theorem MellinLogDerivativeSquare.differentiableOn_residual
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    DifferentiableOn ℂ square.residual criticalRightHalfPlane := by
  have hL : DifferentiableOn ℂ (poleRemovedLFunction χ)
      criticalRightHalfPlane :=
    (differentiable_poleRemovedLFunction χ).differentiableOn
  have hL' : DifferentiableOn ℂ (deriv (poleRemovedLFunction χ))
      criticalRightHalfPlane :=
    hL.deriv isOpen_criticalRightHalfPlane
  exact hL'.add
    (((square.mellin_differentiableOn hBound).add
      (by fun_prop)).mul hL)

theorem MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ) {s : ℂ} (hs : 1 < s.re) :
    square.residual s = 0 := by
  have hEq := square.regularizedLogDerivativeIdentity s hs
  have hne := poleRemovedLFunction_ne_zero_of_one_lt_re χ hs
  unfold MellinLogDerivativeSquare.residual
  rw [hEq, div_mul_cancel₀ _ hne]
  ring

/-- Identity-theorem continuation of the regularized logarithmic-derivative
ODE to the whole critical right half-plane. -/
@[surface_novel, surface_interface]
theorem MellinLogDerivativeSquare.residual_eq_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ)
    {s : ℂ} (hs : s ∈ criticalRightHalfPlane) :
    square.residual s = 0 := by
  have hAnalytic : AnalyticOnNhd ℂ square.residual criticalRightHalfPlane :=
    (square.differentiableOn_residual hBound).analyticOnNhd
      isOpen_criticalRightHalfPlane
  have hZero : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ))
      criticalRightHalfPlane := analyticOnNhd_const
  have hTwo : (2 : ℂ) ∈ criticalRightHalfPlane := by
    norm_num [criticalRightHalfPlane]
  have hEventually : square.residual =ᶠ[nhds (2 : ℂ)]
      (fun _ : ℂ ↦ (0 : ℂ)) := by
    have hOpen : IsOpen {z : ℂ | 1 < z.re} :=
      isOpen_lt continuous_const continuous_re
    have hMem : (2 : ℂ) ∈ {z : ℂ | 1 < z.re} := by norm_num
    filter_upwards [hOpen.mem_nhds hMem] with z hz
    exact square.residual_eq_zero_of_one_lt_re hz
  exact (hAnalytic.eqOn_of_preconnected_of_eventuallyEq hZero
    isPreconnected_criticalRightHalfPlane hTwo hEventually) hs

/-- The centered half-plus-epsilon estimate excludes critical-strip zeros
to the right of the critical line.  The proof is local ODE uniqueness plus
global analytic continuation of `regularizedL`; no pole theorem is assumed
as a black-box conclusion. -/
@[surface_novel, surface_interface]
theorem zeroFree_rightHalfPlane_of_mellinHolomorphic
    {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q}
    (_hPrimitive : DirichletCharacter.IsPrimitive χ)
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    ∀ s : ℂ,
      (1 / 2 : ℝ) < s.re →
      s.re < 1 →
      DirichletCharacter.LFunction χ s ≠ 0 := by
  have hCoefficient : DifferentiableOn ℂ
      (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
      criticalRightHalfPlane :=
    ((square.mellin_differentiableOn hBound).add (by fun_prop)).neg
  have hODE : ∀ z ∈ criticalRightHalfPlane,
      deriv (poleRemovedLFunction χ) z =
        -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by
    intro z hz
    have hResidual := square.residual_eq_zero hBound hz
    change deriv (poleRemovedLFunction χ) z +
      (square.mellin z + dirichletPrincipalIndicator χ) *
        poleRemovedLFunction χ z = 0 at hResidual
    calc
      deriv (poleRemovedLFunction χ) z =
          -((square.mellin z + dirichletPrincipalIndicator χ) *
            poleRemovedLFunction χ z) :=
        eq_neg_of_add_eq_zero_left hResidual
      _ = -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by ring
  have hAtTwo : poleRemovedLFunction χ (2 : ℂ) ≠ 0 :=
    poleRemovedLFunction_ne_zero_of_one_lt_re χ (by norm_num)
  have hNowhereZero := Surface.Core.Analysis.nowhereZero_of_deriv_eq_mul
    isOpen_criticalRightHalfPlane
    isPreconnected_criticalRightHalfPlane
    (poleRemovedLFunction χ)
    (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
    (differentiable_poleRemovedLFunction χ).differentiableOn
    hCoefficient hODE (2 : ℂ) (by norm_num [criticalRightHalfPlane]) hAtTwo
  intro s hsHalf hsOne hLs
  have hsNeOne : s ≠ 1 := by
    intro h
    subst s
    norm_num at hsOne
  exact hNowhereZero s hsHalf
    ((poleRemovedLFunction_zero_iff_LFunction_zero χ hsNeOne).2 hLs)

end

end Surface.Core.DirichletGRH
