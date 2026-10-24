# Complete source: GRWTSK.Analysis.TriangularAllFixedP.Variantc65929dff73abd2186efa7e070d9e7d6271c397ecfefcec53b5528609dbac795

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `241543a5e90a949de8afee24a5042fa2fedb5dc1` · SHA-256 `c65929dff73abd2186efa7e070d9e7d6271c397ecfefcec53b5528609dbac795`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularLinearBank
import FormalResearch.RiemannHypothesis.Conversation.TriangularPulseRealP
import Mathlib.Analysis.PSeries

/-!
# One positive source-pulse bank pays infinitely at every fixed exponent

For the admissible literal radii M_j=j+2, the complete pulse price is bounded
below by a positive multiple of (j+2)^(p-2). The pinned real p-series theorem
therefore proves nonsummability for each fixed real p>=1. The same single bank
has strictly positive counting weights and the all-real square-root error.
This is the complete source pulse-payment countermodel; transport of each
pulse debt to its exact primitive record interval is a separate adapter.
These coefficients are not prime or von Mangoldt weights. Human full-pulse,
fixed-exponent and arithmetic-boundary direction: grwtsk contributors. Local
integer-radius and p-series consumer: OpenAI Codex. Mathlib's p-series theorem
retains its upstream name and source attribution.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularAllFixedP
open TriangularLinearBank TriangularPulseRealP TriangularDisjointBank
open scoped BigOperators
noncomputable section

theorem complete_linear_pulse_prices_not_summable {a p : ℝ} (ha : 0 < a) (hp : 1 ≤ p) :
    ¬ Summable (fun j ↦ price (linearSize j) a p) := by
  intro hs
  let C : ℝ := a ^ p / ((16 : ℝ) ^ p * (3 : ℝ) ^ (p - 1))
  have hC : 0 < C := by
    unfold C
    exact div_pos (Real.rpow_pos_of_pos ha _) (mul_pos
      (Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 16) _)
      (Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 3) _))
  have hcomp : Summable (fun j ↦ C * (linearSize j : ℝ) ^ (p - 2)) := by
    apply hs.of_nonneg_of_le
    · intro j
      exact mul_nonneg hC.le (Real.rpow_nonneg (Nat.cast_nonneg _) _)
    · intro j
      exact full_real_pulse_price_lower (by unfold linearSize; omega) ha.le hp
  have hpower : Summable (fun j ↦ (linearSize j : ℝ) ^ (p - 2)) :=
    (summable_mul_left_iff hC.ne').mp hcomp
  have hfull : Summable (fun j : ℕ ↦ (j : ℝ) ^ (p - 2)) :=
    (summable_nat_add_iff 2).mp (by simpa only [linearSize] using hpower)
  have hstrict := Real.summable_nat_rpow.mp hfull
  linarith

theorem every_starting_pulse_has_infinite_fixed_p_price {a p : ℝ}
    (ha : 0 < a) (hp : 1 ≤ p) (J : ℕ) :
    ¬ Summable (fun j ↦ price (linearSize (j + J)) a p) := by
  intro hs
  apply complete_linear_pulse_prices_not_summable ha hp
  exact (summable_nat_add_iff J).mp hs

theorem one_positive_counting_bank_with_every_fixed_p_pulse_obstruction :
    (∀ n : ℕ, 0 < bankWeight linearSize (1 / 2) n) ∧
    (∀ x : ℝ, 1 ≤ x → |count linearSize (1 / 2) x - x| ≤ (3 / 2) * Real.sqrt x) ∧
    ∀ p : ℝ, 1 ≤ p → ∀ J : ℕ, ¬ Summable
      (fun j ↦ price (linearSize (j + J)) (1 / 2) p) := by
  refine ⟨linear_positive_counting_square_root_error.1,
    linear_positive_counting_square_root_error.2, ?_⟩
  intro p hp J
  exact every_starting_pulse_has_infinite_fixed_p_price (by norm_num) hp J

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularAllFixedP
```
