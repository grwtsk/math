/- Local attribution: grwtsk contributors.
Source proof candidates; native compilation, fresh replay and axiom audit NOT_RUN.
Imported Anthropic formalization retains its exact upstream attribution/license. -/
import GRWTSK.NumberTheory.Fermat

namespace GRWTSK.NumberTheory.DiophantineEquations.FermatSolutionFibers

/-- Complete natural-number solution classification, including all zero cases.
The exponent bound is essential: exponent two has positive Pythagorean solutions. -/
theorem power_sum_eq_iff_degenerate (n a b c : ℕ) (hn : 3 ≤ n) :
    a ^ n + b ^ n = c ^ n ↔ (a = 0 ∧ b = c) ∨ (b = 0 ∧ a = c) := by
  have hn0 : n ≠ 0 := by omega
  constructor
  · intro h
    rcases GRWTSK.NumberTheory.AnthropicMath.Fermat.powerSum_eq_forces_zero_factor
      n a b c hn h with ha | hb
    · exact Or.inl ⟨ha, Nat.pow_left_injective hn0 (by
        simpa only [ha, zero_pow hn0, zero_add] using h)⟩
    · exact Or.inr ⟨hb, Nat.pow_left_injective hn0 (by
        simpa only [hb, zero_pow hn0, add_zero] using h)⟩
  · rintro (⟨ha, hbc⟩ | ⟨hb, hac⟩)
    · simp only [ha, hbc, zero_pow hn0, zero_add]
    · simp only [hb, hac, zero_pow hn0, add_zero]

/-- An exact solution fiber for a fixed output. A search over arbitrary natural
pairs reduces to the two axis candidates; at output zero the candidates coincide. -/
theorem fixed_output_solution_fiber (n c : ℕ) (hn : 3 ≤ n) :
    {p : ℕ × ℕ | p.1 ^ n + p.2 ^ n = c ^ n} = {(0, c), (c, 0)} := by
  ext p
  rcases p with ⟨a, b⟩
  change a ^ n + b ^ n = c ^ n ↔ (a, b) = (0, c) ∨ (a, b) = (c, 0)
  simpa only [Prod.mk.injEq, and_comm] using power_sum_eq_iff_degenerate n a b c hn

/-- The classification eliminates positive candidates at every finite cutoff;
no unproved finite-to-infinite transition is involved. -/
theorem positive_search_empty (n bound c : ℕ) (hn : 3 ≤ n) :
    ¬ ∃ a b : ℕ, 0 < a ∧ a ≤ bound ∧ 0 < b ∧ b ≤ bound ∧
      a ^ n + b ^ n = c ^ n := by
  rintro ⟨a, b, ha, _, hb, _, h⟩
  rcases (power_sum_eq_iff_degenerate n a b c hn).mp h with h | h
  · omega
  · omega

end GRWTSK.NumberTheory.DiophantineEquations.FermatSolutionFibers
