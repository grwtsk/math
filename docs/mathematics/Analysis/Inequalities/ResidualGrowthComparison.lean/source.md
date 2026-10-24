# Complete source: GRWTSK.Analysis.Inequalities.ResidualGrowthComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed3349f8a9ac51c0a9a32aa137794d40e15e33ae` · SHA-256 `5d2c4bed1dcd3b23e22438538e2bac83faeb0dbde86bd291c1ae375701a37f61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.GCongr
import GRWTSK.Analysis.Inequalities.CenteredCubicMoment

/-!
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
This is authored Lean proof source; kernel replay with the pinned environment is required.
Inherited mathematics retains its attribution. No unproved arithmetic bound is asserted.
-/

noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.ResidualGrowthComparison
open GRWTSK.Analysis.CenteredCubicMoment

theorem sharp_five_ninths_identity («λ» μ : ℝ) :
    μ^3+(«λ»-μ)^2*(«λ»+2*μ)-(5/9:ℝ)*«λ»^3 =
      3*(μ-(2/3:ℝ)*«λ»)^2*(μ+«λ»/3) := by ring

theorem retained_spectrum_comparison {ι : Type*} (S : Finset ι)
    (x : ι → ℝ) (μ «λ» : ℝ) (hmean : ∑ i ∈ S, x i=(S.card:ℝ)*μ)
    (hx : ∀ i ∈ S, 0 ≤ x i) (hμ : 0 ≤ μ)
    (hmax : ∀ i ∈ S, x i ≤ «λ») {i : ι} (hi : i ∈ S) (hxi : x i=«λ») :
    (5/9:ℝ)*«λ»^3 ≤ μ^3+residual S x μ ∧
    μ^3+residual S x μ ≤ (S.card:ℝ)*«λ»^3 := by
  have h_lambda : 0 ≤ «λ» := by rw [← hxi]; exact hx i hi
  have hr := coordinate_contribution_le S x μ hmean hx hμ hi
  rw [hxi] at hr
  have hid := sharp_five_ninths_identity «λ» μ
  have hp : 0 ≤ 3*(μ-(2/3:ℝ)*«λ»)^2*(μ+«λ»/3) := by positivity
  constructor
  · nlinarith
  · have hcN : 1 ≤ S.card := Finset.one_le_card.mpr ⟨i,hi⟩
    have hc : (1:ℝ) ≤ S.card := by exact_mod_cast hcN
    have hs : (∑ i ∈ S, x i^3) ≤ (S.card:ℝ)*«λ»^3 := by
      calc
        (∑ i ∈ S, x i^3) ≤ ∑ i ∈ S, «λ»^3 := by
          apply Finset.sum_le_sum
          intro j hj
          gcongr
          · exact hx j hj
          · exact hmax j hj
        _ = (S.card:ℝ)*«λ»^3 := by simp
    unfold GRWTSK.Analysis.CenteredCubicMoment.residual
    nlinarith [pow_nonneg hμ 3, mul_nonneg (sub_nonneg.mpr hc) (pow_nonneg hμ 3)]

/-- The matrix spectral-theorem instantiation must identify λ=‖H‖² explicitly. -/
theorem normalized_comparison (A «λ» μ R h : ℝ) (n : ℕ) (hA : 0 < A)
    (hlower : (5/9:ℝ)*«λ»^3 ≤ μ^3+R)
    (hupper : μ^3+R ≤ (n:ℝ)*«λ»^3) (heq : «λ»=h^2) :
    (5/9:ℝ)*(h/A)^6 ≤ (μ^3+R)/A^6 ∧
    (μ^3+R)/A^6 ≤ (n:ℝ)*(h/A)^6 := by
  have hden : 0 < A^6 := pow_pos hA 6
  have hid : «λ»^3=h^6 := by rw [heq]; ring
  have hlo := (div_le_div_of_nonneg_right hlower (le_of_lt hden))
  have hup := (div_le_div_of_nonneg_right hupper (le_of_lt hden))
  constructor
  · simpa only [hid, div_pow, mul_div_assoc] using hlo
  · simpa only [hid, div_pow, mul_div_assoc] using hup

/-- Useful one-step form, keeping the boundary case β=0. -/
theorem relative_le_of_sixth (β J : ℝ) (hβ : 0 ≤ β) (hJ : 0 ≤ J)
    (h : (5/9:ℝ)*β^6 ≤ J) : 1+β ≤ 2*(1+J) := by
  by_cases hb : β ≤ 1
  · nlinarith
  · have hb1 : 1 ≤ β := le_of_lt (lt_of_not_ge hb)
    have hp : β ≤ β^6 := by
      have hpow : 1 ≤ β^5 := one_le_pow₀ hb1
      have hh := mul_le_mul_of_nonneg_left hpow hβ
      nlinarith [show β*β^5=β^6 by ring]
    nlinarith

/-- An upper comparison retaining the cardinality factor. -/
theorem residual_one_add_bound (β J : ℝ) (n : ℕ) (hβ : 0 ≤ β)
    (h : J ≤ (n:ℝ)*β^6) : 1+J ≤ (1+(n:ℝ))*(1+β)^6 := by
  have hp : β^6 ≤ (1+β)^6 := by gcongr; linarith
  have h1 : 1 ≤ (1+β)^6 := one_le_pow₀ (by linarith)
  have hh := mul_le_mul_of_nonneg_left hp (Nat.cast_nonneg n)
  nlinarith

end GRWTSK.Analysis.ResidualGrowthComparison
```
