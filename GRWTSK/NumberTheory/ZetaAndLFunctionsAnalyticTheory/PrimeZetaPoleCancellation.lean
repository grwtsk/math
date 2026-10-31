/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Tactic

/-!
# The local cancellation of the actual zeta pole pair

Mathlib supplies the entire functions zeta_0 and g=zeta_1, with g(1)=1.
Their local logarithmic-derivative identity cancels the two exact residues.
This is local near one; it asserts no global real-axis nonvanishing, prime-sign
estimate, Landau abscissa theorem or RH conclusion.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
open Filter
open scoped Topology
namespace GRWTSK.NumberTheory.PrimePowerCorrection

/-- The removable completion of -zeta'/zeta-zeta, locally near one. -/
noncomputable def regularZetaPolePair (w : ℂ) : ℂ :=
  -deriv riemannZeta₁ w / riemannZeta₁ w - riemannZeta₀ w

/-- The completion is differentiable at one since its actual denominator is one. -/
theorem regularZetaPolePair_differentiableAt_one :
    DifferentiableAt ℂ regularZetaPolePair 1 := by
  exact (((differentiable_riemannZeta₁.deriv 1).neg.div
    (differentiable_riemannZeta₁ 1) (by simp)).sub
      (differentiable_riemannZeta₀ 1))

theorem regularZetaPolePair_one :
    regularZetaPolePair 1 = -2 * (Real.eulerMascheroniConstant : ℂ) := by
  simp only [regularZetaPolePair, deriv_riemannZeta₁_one, riemannZeta₁_one,
    riemannZeta₀_one, div_one]
  ring

/-- Equality is punctured-local, not a claim about a totalized pole value. -/
theorem zetaPolePair_eventually_eq_regular :
    ∀ᶠ w : ℂ in 𝓝[≠] 1,
      -deriv riemannZeta w / riemannZeta w - riemannZeta w = regularZetaPolePair w := by
  filter_upwards [log_deriv_riemannZeta_eq_neg_inv_sub_add,
    eventually_mem_nhdsWithin] with w hlog hw
  have hw1 : w ≠ 1 := by simpa using hw
  rw [neg_div, hlog, riemannZeta_eq_inv_sub_add hw1]
  unfold regularZetaPolePair
  ring

/-- The divided difference is used only off one; its completed value is -gamma. -/
theorem regularZetaPolePair_eq_divided_difference {w : ℂ} (hw : w ≠ 1) :
    regularZetaPolePair w =
      (1 - riemannZeta₁ w) / (w - 1) - deriv riemannZeta₁ w / riemannZeta₁ w := by
  have hd : w - 1 ≠ 0 := sub_ne_zero.mpr hw
  have hq : (1 - riemannZeta₁ w) / (w - 1) = -riemannZeta₀ w := by
    unfold riemannZeta₁
    field_simp [hd]
    <;> ring
  rw [hq]
  unfold regularZetaPolePair
  ring

/-- The local limit includes the cancellation's exact constant term. -/
theorem zetaPolePair_tendsto_one :
    Tendsto (fun w : ℂ => -deriv riemannZeta w / riemannZeta w - riemannZeta w)
      (𝓝[≠] 1) (𝓝 (-2 * (Real.eulerMascheroniConstant : ℂ))) := by
  have ht := regularZetaPolePair_differentiableAt_one.continuousAt.tendsto.mono_left
    nhdsWithin_le_nhds
  rw [regularZetaPolePair_one] at ht
  exact ht.congr' zetaPolePair_eventually_eq_regular.symm

end GRWTSK.NumberTheory.PrimePowerCorrection
