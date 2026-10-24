# Complete source: GRWTSK.NumberTheory.CriticalTwoModeSupremum.Variant3931bd1b0ba8032d0de8d4dbab15193a452b0a1a46fb004359037fcb6ce7b145

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `335bc0be5347a89faf3eb694ee305b44ee8ead47` · SHA-256 `3931bd1b0ba8032d0de8d4dbab15193a452b0a1a46fb004359037fcb6ce7b145`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeDiophantine
import Mathlib.NumberTheory.DiophantineApproximation.Basic

/-!
# Arbitrarily late near-maximal values of the literal two-frequency path

Dirichlet's exact approximation and the same fixed badly approximable
constant give arbitrarily large period indices. The literal unchanged path
then approaches two beyond every threshold, while its positive-time value
never attains two. No probabilistic replacement or frequency change occurs.
Human fixed-source direction: grwtsk contributors. Local late-value consumer:
OpenAI Codex. The pinned Mathlib Dirichlet and cosine estimates retain their
source attribution. A native record-energy instance remains a separate law.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeSupremum
open CriticalTwoModeBasic CriticalTwoModeDiophantine
noncomputable section

theorem literal_two_mode_near_two_after_every_threshold {α : ℝ}
    (hα : BadlyApproximable α) (ε R : ℝ) (hε : 0 < ε) :
    ∃ t : ℝ, R < t ∧ 0 < t ∧ 2-ε < twoMode α t := by
  obtain ⟨c,hc,hbad⟩ := hα
  let p : ℝ := 2*Real.pi
  have hp : 0 < p := by dsimp [p]; positivity
  obtain ⟨N,hN⟩ := exists_nat_gt (max 1 (max (R/(p*c)) (p^2/ε)))
  have hN1 : (1 : ℝ) < (N : ℝ) := (le_max_left _ _).trans_lt hN
  have hNR : R/(p*c) < (N : ℝ) :=
    (le_max_left _ _).trans_lt ((le_max_right _ _).trans_lt hN)
  have hNE : p^2/ε < (N : ℝ) :=
    (le_max_right _ _).trans_lt ((le_max_right _ _).trans_lt hN)
  have hNpos : 0 < N := by exact_mod_cast (by linarith : (0 : ℝ) < (N : ℝ))
  obtain ⟨j,hj,_hjN,herr⟩ := Real.exists_nat_abs_mul_sub_round_le α hNpos
  have hjR : (0 : ℝ) < (j : ℝ) := by exact_mod_cast hj
  have hjZ : (j : ℤ) ≠ 0 := by exact_mod_cast hj.ne'
  have hb := hbad (j : ℤ) hjZ (round ((j : ℝ)*α))
  simp only [Int.cast_natCast,abs_of_pos hjR] at hb
  have he : |α*(j : ℝ)-(round ((j : ℝ)*α) : ℝ)| =
      |(j : ℝ)*α-(round ((j : ℝ)*α) : ℝ)| := by rw [mul_comm α]
  rw [he] at hb
  have hpaid : c*((N : ℝ)+1) ≤ (j : ℝ) := by
    have h := hb.trans herr
    simpa only [one_mul] using
      (div_le_div_iff₀ hjR (by linarith : (0 : ℝ) < (N : ℝ)+1)).mp h
  have hRpaid := (div_lt_iff₀ (mul_pos hp hc)).mp hNR
  have hlate : R < p*(j : ℝ) := by nlinarith
  have hNEpaid := (div_lt_iff₀ hε).mp hNE
  have hdom : (N : ℝ) ≤ ((N : ℝ)+1)^2 := by nlinarith
  have hcost : p^2/((N : ℝ)+1)^2 < ε := by
    apply (div_lt_iff₀ (sq_pos_of_pos (by linarith : (0 : ℝ) < (N : ℝ)+1))).mpr
    have h := mul_le_mul_of_nonneg_left hdom hε.le
    nlinarith
  have he2 := pow_le_pow_left₀ (abs_nonneg _) herr 2
  rw [sq_abs,div_pow,one_pow] at he2
  have hscaled := mul_le_mul_of_nonneg_left he2 (sq_nonneg p)
  let r : ℝ := p*((j : ℝ)*α-(round ((j : ℝ)*α) : ℝ))
  have hr2 : r^2 < ε := by
    dsimp [r]
    rw [mul_pow]
    exact hscaled.trans_lt (by simpa only [mul_one_div] using hcost)
  have hcos : Real.cos r = Real.cos (α*(p*(j : ℝ))) := by
    have heq : r = α*(p*(j : ℝ))-(round ((j : ℝ)*α) : ℝ)*(2*Real.pi) := by
      dsimp [r,p]
      ring
    rw [heq,Real.cos_sub_int_mul_two_pi]
  have hvalue : twoMode α (p*(j : ℝ)) = 1+Real.cos r := by
    have h := literal_two_mode_integer_period_value α (j : ℤ)
    simp only [Int.cast_natCast] at h
    calc
      _ = twoMode α ((j : ℝ)*p) := by rw [mul_comm p]
      _ = 1+Real.cos (α*((j : ℝ)*p)) := h
      _ = _ := by rw [mul_comm (j : ℝ) p,← hcos]
  have hcoslow := Real.one_sub_sq_div_two_le_cos (x := r)
  refine ⟨p*(j : ℝ),hlate,mul_pos hp hjR,?_⟩
  rw [hvalue]
  linarith

theorem literal_two_mode_tail_supremum_unattained {α : ℝ}
    (hα : BadlyApproximable α) (t₀ : ℝ) (ht₀ : 0 < t₀) :
    (∀ t : ℝ, t₀ ≤ t → twoMode α t < 2) ∧
      (∀ ε : ℝ, 0 < ε → ∃ t : ℝ, t₀ ≤ t ∧ 2-ε < twoMode α t) := by
  constructor
  · intro t ht
    exact literal_two_mode_lt_two (badly_approximable_is_irrational hα) (ht₀.trans_le ht)
  · intro ε hε
    obtain ⟨t,ht,_hpos,hvalue⟩ := literal_two_mode_near_two_after_every_threshold hα ε t₀ hε
    exact ⟨t,ht.le,hvalue⟩

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeSupremum
```
