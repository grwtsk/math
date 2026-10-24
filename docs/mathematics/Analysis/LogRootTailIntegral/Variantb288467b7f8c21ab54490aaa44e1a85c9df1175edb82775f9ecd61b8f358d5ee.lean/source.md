# Complete source: GRWTSK.Analysis.LogRootTailIntegral.Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89cc35ee7cf2e611a3ef7e3f72b402dcc191cde1` · SHA-256 `b288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeClockDecay
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Exact integral comparison for the log-weighted native crossing price

The actual crossing-cell price is bounded by log(x)/(x*sqrt(x)). Its exact
antiderivative and improper tail integral retain the source's numerical envelope.
The density is decreasing from two onward, and its nonnegative derivative
primitive has a zero limit at infinity. This analytic component is distinct
from reindexing and bounding the actual selected infinite crossing sum.

Human atomic-tail budget requirement: grwtsk contributors. Local calculus and
improper-integral consumer: OpenAI Codex. Qualified Mathlib derivative, asymptotic
and integral-test laws retain their upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.LogRootTailIntegral
open Filter MeasureTheory
open scoped Topology
noncomputable section

/-- The density in this module, with the following exact parameterization.

def density (x : ℝ) : ℝ := Real.log x / (x * Real.sqrt x)
-/
def density (x : ℝ) : ℝ := Real.log x / (x * Real.sqrt x)

/-- The primitive in this module, with the following exact parameterization.

def primitive (x : ℝ) : ℝ := -2 * (Real.log x + 2) / Real.sqrt x
-/
def primitive (x : ℝ) : ℝ := -2 * (Real.log x + 2) / Real.sqrt x

theorem exact_density_primitive {x : ℝ} (hx : 0 < x) :
    HasDerivAt primitive (density x) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.mpr hx).ne'
  have h : HasDerivAt (fun y : ℝ ↦ (Real.log y + 2) / Real.sqrt y)
      ((x⁻¹ * Real.sqrt x - (Real.log x + 2) * (1 / (2 * Real.sqrt x))) /
        (Real.sqrt x) ^ 2) x :=
    ((Real.hasDerivAt_log hx.ne').add_const 2).div (Real.hasDerivAt_sqrt hx.ne') hs
  have hm : HasDerivAt (fun y : ℝ ↦ -2 * ((Real.log y + 2) / Real.sqrt y))
      (-2 * ((x⁻¹ * Real.sqrt x - (Real.log x + 2) * (1 / (2 * Real.sqrt x))) /
        (Real.sqrt x) ^ 2)) x := h.const_mul (-2)
  have he : density x = -2 * ((x⁻¹ * Real.sqrt x -
      (Real.log x + 2) * (1 / (2 * Real.sqrt x))) / (Real.sqrt x) ^ 2) := by
    unfold density
    field_simp
    rw [Real.sq_sqrt hx.le]
    ring
  rw [← he] at hm
  have hf : primitive = (fun y : ℝ ↦ -2 * ((Real.log y + 2) / Real.sqrt y)) := by
    funext y; unfold primitive; ring
  rw [hf]
  exact hm

theorem exact_density_derivative {x : ℝ} (hx : 0 < x) :
    HasDerivAt density ((1 - (3 / 2) * Real.log x) / (x ^ 2 * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.mpr hx).ne'
  have h : HasDerivAt (fun y : ℝ ↦ Real.log y / (y * Real.sqrt y))
      ((x⁻¹ * (x * Real.sqrt x) - Real.log x *
        (Real.sqrt x + x * (1 / (2 * Real.sqrt x)))) / (x * Real.sqrt x) ^ 2) x := by
    simpa using! (Real.hasDerivAt_log hx.ne').div
      ((hasDerivAt_id x).mul (Real.hasDerivAt_sqrt hx.ne')) (mul_ne_zero hx.ne' hs)
  have he : (1 - (3 / 2) * Real.log x) / (x ^ 2 * Real.sqrt x) =
      (x⁻¹ * (x * Real.sqrt x) - Real.log x *
        (Real.sqrt x + x * (1 / (2 * Real.sqrt x)))) / (x * Real.sqrt x) ^ 2 := by
    field_simp
    rw [Real.sq_sqrt hx.le]
    ring
  rw [← he] at h
  exact h

theorem log_root_primitive_tends_to_zero : Tendsto primitive atTop (𝓝 0) := by
  have hl := (isLittleO_log_rpow_atTop (by norm_num : (0 : ℝ) < 1 / 2)).tendsto_div_nhds_zero
  have hlog : Tendsto (fun x : ℝ ↦ Real.log x / Real.sqrt x) atTop (𝓝 0) := by
    simpa only [Real.sqrt_eq_rpow] using hl
  have hi := tendsto_inv_atTop_zero.comp Real.tendsto_sqrt_atTop
  have h := (hlog.add (hi.const_mul 2)).const_mul (-2)
  simp only [mul_zero, zero_add] at h
  apply h.congr'
  filter_upwards [] with x
  dsimp only [primitive, Function.comp_def]
  ring

theorem density_nonnegative {x : ℝ} (hx : 1 ≤ x) : 0 ≤ density x := by
  unfold density
  exact div_nonneg (Real.log_nonneg hx) (mul_nonneg (by linarith) (Real.sqrt_nonneg _))

theorem density_antitone_on_tail : AntitoneOn density (Set.Ici (2 : ℝ)) := by
  apply antitoneOn_of_deriv_nonpos (convex_Ici 2)
  · intro x hx
    have hxpos : 0 < x := by
      change 2 ≤ x at hx
      linarith
    exact (exact_density_derivative hxpos).continuousAt.continuousWithinAt
  · intro x hx
    have hx3 : 2 ≤ x := Set.mem_Ici.mp (interior_subset hx)
    exact (exact_density_derivative (by linarith)).differentiableAt.differentiableWithinAt
  · intro x hx
    have hx3 : 2 ≤ x := Set.mem_Ici.mp (interior_subset hx)
    rw [(exact_density_derivative (by linarith : 0 < x)).deriv]
    have hl0 : (2 / 3 : ℝ) < Real.log 2 := by linarith [Real.log_two_gt_d9]
    have hl : (2 / 3 : ℝ) < Real.log x :=
      hl0.trans_le (Real.log_le_log (by norm_num) hx3)
    apply div_nonpos_of_nonpos_of_nonneg (by linarith)
    positivity

theorem density_integrable_tail {a : ℝ} (ha : 2 ≤ a) :
    IntegrableOn density (Set.Ioi a) := by
  apply integrableOn_Ioi_deriv_of_nonneg'
    (fun x hx => exact_density_primitive (by have := Set.mem_Ici.mp hx; linarith))
    (fun x hx => density_nonnegative (by have := Set.mem_Ioi.mp hx; linarith))
    log_root_primitive_tends_to_zero

theorem exact_tail_integral {a : ℝ} (ha : 2 ≤ a) :
    ∫ x in Set.Ioi a, density x = 2 * (Real.log a + 2) / Real.sqrt a := by
  rw [integral_Ioi_of_hasDerivAt_of_nonneg'
    (fun x hx => exact_density_primitive (by have := Set.mem_Ici.mp hx; linarith))
    (fun x hx => density_nonnegative (by have := Set.mem_Ioi.mp hx; linarith))
    log_root_primitive_tends_to_zero]
  unfold primitive
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.LogRootTailIntegral
```
