# Complete source: GRWTSK.Analysis.ZeroSeamCountermodels.Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6c8269c55e50e78719d2c7e456f14a4ebfe2efe` · SHA-256 `1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Zero endpoint seams do not bound a positive panel's height or scalar mass

Batch 05's literal family M*x*(1-x) is continuous, nonnegative on the unit
panel, and zero at both endpoints. Its midpoint height is M/4 and its scalar
integral is M/6. Both are arbitrarily large while the endpoint data remain
unchanged. This is a positive-profile information countermodel; it is not the
ordinary-prime storage and does not refute any arithmetic estimate.

Human seam/shape distinction: grwtsk contributors. Local exact family and Lean
proof: OpenAI Codex. Mathlib polynomial integration retains its source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ZeroSeamCountermodels

noncomputable section

/-- The bump in this module, with the following exact parameterization.

def bump (M x : ℝ) : ℝ := M * x * (1 - x)
-/
def bump (M x : ℝ) : ℝ := M * x * (1 - x)

theorem bump_continuous (M : ℝ) : Continuous (bump M) :=
  (continuous_const.mul continuous_id).mul (continuous_const.sub continuous_id)

theorem bump_endpoints (M : ℝ) : bump M 0 = 0 ∧ bump M 1 = 0 := by simp [bump]

theorem bump_nonneg {M x : ℝ} (hM : 0 ≤ M) (hx : x ∈ Set.Icc (0 : ℝ) 1) :
    0 ≤ bump M x := mul_nonneg (mul_nonneg hM hx.1) (sub_nonneg.mpr hx.2)

theorem bump_midpoint (M : ℝ) : bump M (1 / 2) = M / 4 := by unfold bump; ring

theorem bump_integral (M : ℝ) : (∫ x in (0 : ℝ)..1, bump M x) = M / 6 := by
  have hfun : bump M = fun x => M * (x ^ (1 : ℕ) - x ^ (2 : ℕ)) := by
    funext x
    unfold bump
    ring
  rw [hfun, intervalIntegral.integral_const_mul]
  rw [intervalIntegral.integral_sub (f := fun x : ℝ => x ^ (1 : ℕ))
    (g := fun x : ℝ => x ^ (2 : ℕ)) ((continuous_id.pow 1).intervalIntegrable 0 1)
    ((continuous_id.pow 2).intervalIntegrable 0 1)]
  rw [integral_pow, integral_pow]
  norm_num
  ring

theorem fixed_zero_seams_have_unbounded_height_and_mass (C : ℝ) :
    ∃ M : ℝ, 0 < M ∧ Continuous (bump M) ∧ bump M 0 = 0 ∧ bump M 1 = 0 ∧
      (∀ x ∈ Set.Icc (0 : ℝ) 1, 0 ≤ bump M x) ∧
        C < bump M (1 / 2) ∧ C < ∫ x in (0 : ℝ)..1, bump M x := by
  let M := 6 * (max C 0 + 1)
  have hM : 0 < M := by dsimp [M]; linarith [le_max_right C 0]
  refine ⟨M, hM, bump_continuous M, (bump_endpoints M).1, (bump_endpoints M).2,
    fun x hx => bump_nonneg hM.le hx, ?_, ?_⟩
  · rw [bump_midpoint]
    dsimp [M]
    linarith [le_max_left C 0, le_max_right C 0]
  · rw [bump_integral]
    dsimp [M]
    linarith [le_max_left C 0]

end
end GRWTSK.RiemannHypothesis.Conversation.ZeroSeamCountermodels
```
