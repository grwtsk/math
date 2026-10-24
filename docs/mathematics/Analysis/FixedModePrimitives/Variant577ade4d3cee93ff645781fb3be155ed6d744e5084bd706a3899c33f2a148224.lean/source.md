# Complete source: GRWTSK.Analysis.FixedModePrimitives.Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0216c0b6e5bbdddc1f34e6a45d5647e28d359ac0` · SHA-256 `577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.FiniteMobiusJet
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# A fixed nonzero exponential mode survives every fixed primitive order

Batch 03 LT03-08 is checked here for the degree-zero complex mode. Its literal
k-th primitive has the factor lambda inverse to the k-th power, differentiates
to the previous order, and has unchanged exponential norm rate along real time.
Every strictly smaller exponential comparison rate fails after any fixed order.
Polynomial multipliers, fixed-endpoint correction polynomials, real oscillatory
limsup and the gamma-integral representation of tail primitives remain separate.

Human surviving-mode constraint: grwtsk contributors. Local derivative and rate
consumer: OpenAI Codex. Mathlib complex exponential and limit laws stay upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FixedModePrimitives
open Filter
open scoped Topology
noncomputable section

/-- The primitive in this module, with the following exact parameterization.

def primitive (z : ℂ) (k : ℕ) (s : ℂ) : ℂ := z⁻¹ ^ k * Complex.exp (z * s)
-/
def primitive (z : ℂ) (k : ℕ) (s : ℂ) : ℂ := z⁻¹ ^ k * Complex.exp (z * s)

theorem order_zero (z s : ℂ) : primitive z 0 s = Complex.exp (z * s) := by
  simp [primitive]

theorem primitive_derivative {z : ℂ} (hz : z ≠ 0) (k : ℕ) (s : ℂ) :
    HasDerivAt (primitive z (k + 1)) (primitive z k s) s := by
  have h := (((hasDerivAt_id s).const_mul z).cexp).const_mul (z⁻¹ ^ (k + 1))
  change HasDerivAt (primitive z (k + 1))
    (z⁻¹ ^ (k + 1) * (Complex.exp (z * s) * (z * 1))) s at h
  convert h using 1
  simp only [primitive, pow_succ]
  field_simp

theorem exact_real_time_norm (z : ℂ) (k : ℕ) (t : ℝ) :
    ‖primitive z k (t : ℂ)‖ = ‖z‖⁻¹ ^ k * Real.exp (z.re * t) := by
  simp [primitive, norm_pow, norm_inv, Complex.norm_exp, Complex.mul_re]

theorem unchanged_exponential_rate (z : ℂ) (k : ℕ) (t : ℝ) :
    ‖primitive z k (t : ℂ)‖ / Real.exp (z.re * t) = ‖z‖⁻¹ ^ k := by
  rw [exact_real_time_norm, mul_div_cancel_right₀ _ (Real.exp_ne_zero _)]

theorem faster_exponential_comparison {z : ℂ} (hz : z ≠ 0) (k : ℕ) {beta : ℝ}
    (hgap : beta < z.re) :
    Tendsto (fun t : ℝ ↦ ‖primitive z k (t : ℂ)‖ / Real.exp (beta * t)) atTop atTop := by
  have hp : 0 < ‖z‖⁻¹ ^ k := pow_pos (inv_pos.mpr (norm_pos_iff.mpr hz)) _
  have ht : Tendsto (fun t : ℝ ↦ (z.re - beta) * t) atTop atTop :=
    tendsto_id.const_mul_atTop (sub_pos.mpr hgap)
  have he := (Real.tendsto_exp_atTop.comp ht).const_mul_atTop hp
  apply he.congr
  intro t
  rw [exact_real_time_norm, mul_div_assoc, ← Real.exp_sub]
  dsimp only [Function.comp_def]
  rw [sub_mul]

/-- A fixed-order primitive cannot satisfy a globally smaller exponential cap. -/
theorem no_eventual_smaller_rate_cap {z : ℂ} (hz : z ≠ 0) (k : ℕ) {beta C : ℝ}
    (hgap : beta < z.re) :
    ¬ ∀ᶠ t : ℝ in atTop, ‖primitive z k (t : ℂ)‖ ≤ C * Real.exp (beta * t) := by
  intro hcap
  have hlarge := (faster_exponential_comparison hz k hgap).eventually (eventually_gt_atTop C)
  have hfalse : ∀ᶠ t : ℝ in atTop, False := by
    filter_upwards [hcap, hlarge] with t hc hl
    exact (not_lt_of_ge hc) ((lt_div_iff₀ (Real.exp_pos _)).mp hl)
  rcases hfalse.exists with ⟨t, ht⟩
  exact ht

end
end GRWTSK.RiemannHypothesis.Conversation.FixedModePrimitives
```
