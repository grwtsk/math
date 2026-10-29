/- Local attribution: grwtsk contributors. Source candidates; verification NOT_RUN. -/
import FinalCheck

namespace GRWTSK.NumberTheory.AnthropicMath.Fermat

/-- The upstream theorem, preserving its positive-natural and exponent hypotheses. -/
theorem noPositivePowerSum (n a b c : ℕ) (hn : 3 ≤ n)
    (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) : a ^ n + b ^ n ≠ c ^ n :=
  _root_.flt_pinned n hn a b c ha hb hc

/-- A Diophantine consumer: positive natural cubes cannot sum to a positive cube. -/
theorem noPositiveCubeSum (a b c : ℕ)
    (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) : a ^ 3 + b ^ 3 ≠ c ^ 3 :=
  noPositivePowerSum 3 a b c (by decide) ha hb hc

/-- A natural-number power-sum solver may retain only degenerate solutions:
for exponent at least three, one summand must vanish. The zero-output case is
handled explicitly rather than imposing a positivity premise on the solver. -/
theorem powerSum_eq_forces_zero_factor (n a b c : ℕ) (hn : 3 ≤ n)
    (heq : a ^ n + b ^ n = c ^ n) : a = 0 ∨ b = 0 := by
  by_cases ha : a = 0
  · exact Or.inl ha
  by_cases hb : b = 0
  · exact Or.inr hb
  have hapos : 0 < a := Nat.pos_of_ne_zero ha
  have hbpos : 0 < b := Nat.pos_of_ne_zero hb
  have hnzero : n ≠ 0 := by omega
  have hcpos : 0 < c := by
    by_contra hc
    have hczero : c = 0 := Nat.eq_zero_of_not_pos hc
    have hpow : 0 < a ^ n := pow_pos hapos n
    rw [hczero, zero_pow hnzero] at heq
    omega
  exact False.elim (noPositivePowerSum n a b c hn hapos hbpos hcpos heq)

end GRWTSK.NumberTheory.AnthropicMath.Fermat
