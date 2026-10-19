import FormalResearch.RiemannHypothesis.Conversation.DenseFactorSelection

/-!
# A product budget bounds the number of rough factors

Batch 20 B20-L4 freezes a rough tuple above the threshold X^theta. For any
literal finite list of positive real factor norms with product at most X>1,
the weak threshold gives theta*card<=1 and card<=floor(1/theta). A strict
threshold and nonempty tuple give the strict inequality. At theta=1/6 the
weak bound is six; the strict bound is five. This adapter retains the product
and threshold hypotheses. Factorization of the actual Eisenstein/ray-class
modulus and its norm laws remain separate.

Human smooth/rough direction: grwtsk contributors. Local exact arity adapter and
Lean implementation: OpenAI Codex. Mathlib ordered products and real powers
are used under upstream names.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RoughFactorArity

open scoped BigOperators

theorem weak_rough_arity {ι : Type*} (s : Finset ι) (a : ι → ℝ) {X theta : ℝ}
    (hX : 1 < X) (hrough : ∀ i ∈ s, X ^ theta ≤ a i) (hprod : (∏ i ∈ s, a i) ≤ X) :
    theta * (s.card : ℝ) ≤ 1 := by
  have hX0 : 0 < X := zero_lt_one.trans hX
  have hlower : X ^ (theta * (s.card : ℝ)) ≤ ∏ i ∈ s, a i := by
    rw [Real.rpow_mul_natCast hX0.le]
    simpa only [Finset.prod_const] using
      Finset.prod_le_prod (fun _i _ => (Real.rpow_pos_of_pos hX0 theta).le) hrough
  have h : X ^ (theta * (s.card : ℝ)) ≤ X ^ (1 : ℝ) := by
    rw [Real.rpow_one]
    exact hlower.trans hprod
  exact (Real.rpow_le_rpow_left_iff hX).mp h

theorem strict_rough_arity {ι : Type*} (s : Finset ι) (a : ι → ℝ) {X theta : ℝ}
    (hX : 1 < X) (hs : s.Nonempty) (hrough : ∀ i ∈ s, X ^ theta < a i)
    (hprod : (∏ i ∈ s, a i) ≤ X) : theta * (s.card : ℝ) < 1 := by
  have hX0 : 0 < X := zero_lt_one.trans hX
  have hlower : X ^ (theta * (s.card : ℝ)) < ∏ i ∈ s, a i := by
    rw [Real.rpow_mul_natCast hX0.le]
    simpa only [Finset.prod_const] using
      Finset.prod_lt_prod_of_nonempty (fun _i _ => Real.rpow_pos_of_pos hX0 theta) hrough hs
  have h : X ^ (theta * (s.card : ℝ)) < X ^ (1 : ℝ) := by
    rw [Real.rpow_one]
    exact hlower.trans_le hprod
  exact (Real.rpow_lt_rpow_left_iff hX).mp h

theorem rough_arity_le_floor_inverse {ι : Type*} (s : Finset ι) (a : ι → ℝ) {X theta : ℝ}
    (hX : 1 < X) (htheta : 0 < theta) (hrough : ∀ i ∈ s, X ^ theta ≤ a i)
    (hprod : (∏ i ∈ s, a i) ≤ X) : s.card ≤ ⌊1 / theta⌋₊ := by
  apply Nat.le_floor
  apply (le_div_iff₀ htheta).mpr
  nlinarith [weak_rough_arity s a hX hrough hprod]

theorem sixth_threshold_has_at_most_six {ι : Type*} (s : Finset ι) (a : ι → ℝ) {X : ℝ}
    (hX : 1 < X) (hrough : ∀ i ∈ s, X ^ (1 / 6 : ℝ) ≤ a i)
    (hprod : (∏ i ∈ s, a i) ≤ X) : s.card ≤ 6 := by
  have h := rough_arity_le_floor_inverse s a hX (by norm_num : (0 : ℝ) < 1 / 6) hrough hprod
  norm_num at h
  exact h

theorem strict_sixth_threshold_has_at_most_five {ι : Type*} (s : Finset ι) (a : ι → ℝ)
    {X : ℝ} (hX : 1 < X) (hrough : ∀ i ∈ s, X ^ (1 / 6 : ℝ) < a i)
    (hprod : (∏ i ∈ s, a i) ≤ X) : s.card ≤ 5 := by
  by_cases hs : s.Nonempty
  · have h := strict_rough_arity s a hX hs hrough hprod
    have hc : (s.card : ℝ) < 6 := by nlinarith
    have hcNat : s.card < 6 := by exact_mod_cast hc
    omega
  · have he : s = ∅ := Finset.not_nonempty_iff_eq_empty.mp hs
    simp [he]

end GRWTSK.RiemannHypothesis.Conversation.RoughFactorArity
