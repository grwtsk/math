import Mathlib

/-!
# Weak dense-factor endpoint with an explicit factor list

Batches 20 and 21 use a smooth factor list to select a divisor in [R/Y,R].
The weak lower endpoint matters: R=Y=1 cannot satisfy a strict inequality.
The proof below chooses an actual prefix product, and the natural-number
consumer retains divisibility. It supplies factorization infrastructure only;
no Eisenstein ideal factorization, Type-III profile separation or prime
cancellation estimate follows from it.

Human programme and endpoint constraint: grwtsk contributors. Local finite
selection proof: OpenAI Codex. List, product and divisibility infrastructure
retains its Mathlib identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.DenseFactorSelection

noncomputable section

theorem real_prefix_in_weak_band (xs : List ℝ) {Y R : ℝ} (hY1 : 1 ≤ Y)
    (hf : ∀ a ∈ xs, 0 < a ∧ a ≤ Y) (hR : 1 ≤ R) (hfull : R ≤ xs.prod) :
    ∃ k : ℕ, k ≤ xs.length ∧ R / Y ≤ (xs.take k).prod ∧ (xs.take k).prod ≤ R := by
  have hY : 0 < Y := lt_of_lt_of_le (by norm_num) hY1
  induction xs generalizing R with
  | nil =>
      refine ⟨0, by simp, ?_, ?_⟩
      · simp only [List.take_nil, List.prod_nil]
        have hReq : R = 1 := by simpa using le_antisymm hfull hR
        subst R
        apply (div_le_iff₀ hY).mpr
        simpa using hY1
      · simpa using hR
  | cons a xs ih =>
      have ha := hf a (by simp)
      have htail : ∀ b ∈ xs, 0 < b ∧ b ≤ Y := by
        intro b hb
        exact hf b (by simp [hb])
      by_cases hlarge : R < a
      · refine ⟨0, by simp, ?_, by simpa using hR⟩
        simp only [List.take_zero, List.prod_nil]
        apply (div_le_iff₀ hY).mpr
        nlinarith [ha.2]
      · have haR : a ≤ R := le_of_not_gt hlarge
        have hRa : 1 ≤ R / a := (le_div_iff₀ ha.1).mpr (by simpa using haR)
        have hremain : R / a ≤ xs.prod := (div_le_iff₀ ha.1).mpr (by
          simpa only [List.prod_cons, mul_comm] using hfull)
        obtain ⟨k, hk, hlo, hhi⟩ := ih htail hRa hremain
        refine ⟨k + 1, by simpa using Nat.add_le_add_right hk 1, ?_, ?_⟩
        · simp only [List.take_succ_cons, List.prod_cons]
          have h := mul_le_mul_of_nonneg_left hlo ha.1.le
          have heq : a * (R / a / Y) = R / Y := by field_simp [ha.1.ne', hY.ne']
          rwa [heq] at h
        · simp only [List.take_succ_cons, List.prod_cons]
          have h := mul_le_mul_of_nonneg_left hhi ha.1.le
          simpa only [mul_div_cancel₀ _ ha.1.ne'] using h

theorem natural_prefix_divides (xs : List ℕ) (k : ℕ) : (xs.take k).prod ∣ xs.prod := by
  refine ⟨(xs.drop k).prod, ?_⟩
  have h := congrArg (fun ys : List ℕ => ys.prod) (List.take_append_drop k xs)
  simpa only [List.prod_append] using h.symm

/-- A bounded positive factor list supplies a genuine natural divisor. -/
theorem natural_divisor_in_weak_band (xs : List ℕ) {Y R : ℝ} (hY : 1 ≤ Y)
    (hf : ∀ a ∈ xs, 0 < a ∧ (a : ℝ) ≤ Y) (hR : 1 ≤ R) (hfull : R ≤ (xs.prod : ℝ)) :
    ∃ d : ℕ, d ∣ xs.prod ∧ R / Y ≤ d ∧ (d : ℝ) ≤ R := by
  have hfreal : ∀ a ∈ xs.map (fun n : ℕ => (n : ℝ)), 0 < a ∧ a ≤ Y := by
    intro a ha
    obtain ⟨n, hn, rfl⟩ := List.mem_map.mp ha
    exact ⟨by exact_mod_cast (hf n hn).1, (hf n hn).2⟩
  have hprod : (xs.map (fun n : ℕ => (n : ℝ))).prod = (xs.prod : ℝ) := by norm_cast
  obtain ⟨k, _hk, hlo, hhi⟩ := real_prefix_in_weak_band
    (xs.map (fun n : ℕ => (n : ℝ))) hY hfreal hR (by simpa only [hprod] using hfull)
  have htake : ((xs.take k).map (fun n : ℕ => (n : ℝ))).prod = ((xs.take k).prod : ℝ) :=
    by norm_cast
  refine ⟨(xs.take k).prod, natural_prefix_divides xs k, ?_, ?_⟩
  · simpa only [← List.map_take, htake] using hlo
  · simpa only [← List.map_take, htake] using hhi

end
end GRWTSK.RiemannHypothesis.Conversation.DenseFactorSelection
