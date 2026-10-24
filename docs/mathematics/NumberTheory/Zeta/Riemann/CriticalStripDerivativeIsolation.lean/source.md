# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripDerivativeIsolation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f378227390bbb9559399c2df24157ed40994e1da` · SHA-256 `237c3b4a4024d50098fc802607e5eb9ea28fb44fc839ac6fec3520f1317a6c80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAnalyticPatch

set_option autoImplicit false

/-!
# Derivative enclosures that permit a source zero

A strict disk enclosure for the ACTUAL derivative on a convex region yields a
lower Lipschitz bound, hence injectivity and at most one zero location. It does
not prove existence. Derivative-model error is separate from value-model error.
The source function, region, linear part and every error radius are parameters.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
open Complex Set
noncomputable section

/-- A capacity bound for locations, not existence or an analytic multiplicity. -/
def AtMostOneZero (F : ℂ → ℂ) (U : Set ℂ) : Prop :=
  ∀ z ∈ U, ∀ w ∈ U, F z = 0 → F w = 0 → z = w

/-- A zero-preserving certificate: the derivative lies in a disk excluding zero. -/
structure DerivativeDisk (F : ℂ → ℂ) (U : Set ℂ) where
  linearPart : ℂ
  radius : ℝ
  radius_nonneg : 0 ≤ radius
  convex : Convex ℝ U
  differentiable : ∀ z ∈ U, DifferentiableAt ℂ F z
  encloses : ∀ z ∈ U, ‖deriv F z - linearPart‖ ≤ radius
  strict_margin : radius < ‖linearPart‖

namespace DerivativeDisk
variable {F : ℂ → ℂ} {U : Set ℂ}

def residual (C : DerivativeDisk F U) (z : ℂ) : ℂ := F z - C.linearPart * z

lemma residual_hasDerivAt (C : DerivativeDisk F U) {z : ℂ} (hz : z ∈ U) :
    HasDerivAt C.residual (deriv F z - C.linearPart) z := by
  simpa only [residual, mul_one] using
    (C.differentiable z hz).hasDerivAt.sub ((hasDerivAt_id z).const_mul C.linearPart)

/-- The mean-value inequality is applied to F(z)-a*z, not to sampled derivatives. -/
theorem residual_variation (C : DerivativeDisk F U) {z w : ℂ}
    (hz : z ∈ U) (hw : w ∈ U) :
    ‖(F z - F w) - C.linearPart * (z - w)‖ ≤ C.radius * ‖z - w‖ := by
  have hF : ∀ q ∈ U, DifferentiableAt ℂ C.residual q :=
    fun q hq => (C.residual_hasDerivAt hq).differentiableAt
  have hd : ∀ q ∈ U, ‖deriv C.residual q‖ ≤ C.radius := by
    intro q hq
    rw [(C.residual_hasDerivAt hq).deriv]
    exact C.encloses q hq
  have h := Convex.norm_image_sub_le_of_norm_deriv_le hF hd C.convex hw hz
  have heq : C.residual z - C.residual w =
      (F z - F w) - C.linearPart * (z - w) := by unfold residual; ring
  rwa [heq] at h

/-- Distinct points cannot have equal images when the derivative error is strict. -/
theorem lower_lipschitz (C : DerivativeDisk F U) {z w : ℂ}
    (hz : z ∈ U) (hw : w ∈ U) :
    (‖C.linearPart‖ - C.radius) * ‖z - w‖ ≤ ‖F z - F w‖ := by
  have hr := C.residual_variation hz hw
  have ht : ‖C.linearPart * (z - w)‖ ≤ ‖F z - F w‖ +
      ‖(F z - F w) - C.linearPart * (z - w)‖ := by
    calc
      _ = ‖(F z - F w) - ((F z - F w) - C.linearPart * (z - w))‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  rw [norm_mul] at ht
  nlinarith

theorem injective (C : DerivativeDisk F U) : Set.InjOn F U := by
  intro z hz w hw heq
  have h := C.lower_lipschitz hz hw
  rw [heq, sub_self, norm_zero] at h
  have hp : 0 < ‖C.linearPart‖ - C.radius := sub_pos.mpr C.strict_margin
  have hn : 0 ≤ ‖z - w‖ := norm_nonneg _
  have hd : ‖z - w‖ = 0 := by nlinarith
  exact sub_eq_zero.mp (norm_eq_zero.mp hd)

theorem atMostOneZero (C : DerivativeDisk F U) : AtMostOneZero F U := by
  intro z hz w hw hz0 hw0
  exact C.injective hz hw (hz0.trans hw0.symm)

/-- Nondegeneracy is stronger than mere uniqueness of zero locations. -/
theorem deriv_ne_zero (C : DerivativeDisk F U) {z : ℂ} (hz : z ∈ U) : deriv F z ≠ 0 := by
  intro hzero
  have h := C.encloses z hz
  rw [hzero, zero_sub, norm_neg] at h
  exact (not_le_of_gt C.strict_margin) h

/-- A known source zero and a source-value upper bound give a location radius.
The theorem does not supply the source zero or confuse a model value with F. -/
theorem distance_to_zero_le (C : DerivativeDisk F U) {z w : ℂ} {e : ℝ}
    (hz : z ∈ U) (hw : w ∈ U) (hw0 : F w = 0) (hvalue : ‖F z‖ ≤ e) :
    ‖z - w‖ ≤ e / (‖C.linearPart‖ - C.radius) := by
  have h := C.lower_lipschitz hz hw
  rw [hw0, sub_zero] at h
  apply (le_div_iff₀ (sub_pos.mpr C.strict_margin)).mpr
  simpa only [mul_comm] using h.trans hvalue

/-- Restriction keeps the source and constants, and requires a convex new region. -/
def restrict (C : DerivativeDisk F U) {V : Set ℂ}
    (hVU : V ⊆ U) (hconv : Convex ℝ V) : DerivativeDisk F V where
  linearPart := C.linearPart
  radius := C.radius
  radius_nonneg := C.radius_nonneg
  convex := hconv
  differentiable := fun z hz => C.differentiable z (hVU hz)
  encloses := fun z hz => C.encloses z (hVU hz)
  strict_margin := C.strict_margin

/-- Both analytic functions are retained. The derivative comparison is NOT inferred
from a uniform bound on F-P or from a coefficient table. -/
def ofDerivativeModel {P : ℂ → ℂ} (a : ℂ) (eModel eSource : ℝ)
    (heModel : 0 ≤ eModel) (heSource : 0 ≤ eSource) (hconv : Convex ℝ U)
    (hF : ∀ z ∈ U, DifferentiableAt ℂ F z)
    (hP : ∀ z ∈ U, DifferentiableAt ℂ P z)
    (hmodel : ∀ z ∈ U, ‖deriv P z - a‖ ≤ eModel)
    (hsource : ∀ z ∈ U, ‖deriv F z - deriv P z‖ ≤ eSource)
    (hmargin : eModel + eSource < ‖a‖) : DerivativeDisk F U where
  linearPart := a
  radius := eModel + eSource
  radius_nonneg := add_nonneg heModel heSource
  convex := hconv
  differentiable := hF
  encloses := by
    intro z hz
    have htriangle : ‖deriv F z - a‖ ≤
        ‖deriv F z - deriv P z‖ + ‖deriv P z - a‖ := by
      calc
        _ = ‖(deriv F z - deriv P z) + (deriv P z - a)‖ := by congr 1; ring
        _ ≤ _ := norm_add_le _ _
    linarith [hsource z hz, hmodel z hz]
  strict_margin := hmargin

/-- An inhabited affine certificate shows that a zero is permitted, not rejected. -/
def affine (a c : ℂ) {U : Set ℂ} (ha : a ≠ 0) (hconv : Convex ℝ U) :
    DerivativeDisk (fun z => a * (z - c)) U where
  linearPart := a
  radius := 0
  radius_nonneg := le_rfl
  convex := hconv
  differentiable := by intro z hz; fun_prop
  encloses := by
    intro z hz
    have hd : HasDerivAt (fun w : ℂ => a * (w - c)) a z := by
      simpa only [mul_one] using ((hasDerivAt_id z).sub_const c).const_mul a
    rw [hd.deriv, sub_self, norm_zero]
  strict_margin := norm_pos_iff.mpr ha

end DerivativeDisk
end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
```
