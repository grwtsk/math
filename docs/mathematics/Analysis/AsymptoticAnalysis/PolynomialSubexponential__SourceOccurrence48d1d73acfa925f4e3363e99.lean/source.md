# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.PolynomialSubexponential

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c488224fc6f14dfc478d7b7bc3c5bd32f6d8f65c` · SHA-256 `993d082021f5df1a25165e840064712f232d08bade32d7fddb0f53e1782c1519`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
# Explicit bounds across the polynomial and subexponential growth classes

Constants may depend on the strictly positive rate. Nothing here supplies
an arithmetic witness or a rate-zero bound.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC

/-- Every positive rate has its own constant, uniformly over every real time. -/
def SubexponentialUpper (f : ℝ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ T : ℝ, 0 ≤ T → f T ≤ C * Real.exp (ε * T)

/-- A natural power is dominated with the complete factorial and damping cost. -/
theorem pow_le_factorial_mul_exp {ε T : ℝ} (hε : 0 < ε) (hT : 0 ≤ T) (k : ℕ) :
    T ^ k ≤ ((k.factorial : ℝ) / ε ^ k) * Real.exp (ε * T) := by
  have hp := (div_le_iff₀ (by positivity : (0 : ℝ) < k.factorial)).mp
    (Real.pow_div_factorial_le_exp (ε * T) (mul_nonneg hε.le hT) k)
  rw [mul_pow] at hp
  calc
    T ^ k = (ε ^ k * T ^ k) / ε ^ k := by field_simp [ne_of_gt hε]
    _ ≤ (Real.exp (ε * T) * (k.factorial : ℝ)) / ε ^ k :=
      div_le_div_of_nonneg_right hp (pow_nonneg hε.le k)
    _ = _ := by ring

/-- All real exponents and all nonnegative real times; the constant is explicit. -/
theorem shifted_rpow_le_exponential (q : ℝ) {ε T : ℝ}
    (hε : 0 < ε) (hT : 0 ≤ T) :
    (1 + T) ^ q ≤
      (((⌈q⌉₊.factorial : ℝ) / ε ^ ⌈q⌉₊) * Real.exp ε) *
        Real.exp (ε * T) := by
  have hp := Real.rpow_le_rpow_of_exponent_le (by linarith : (1 : ℝ) ≤ 1 + T)
    (Nat.le_ceil q)
  rw [Real.rpow_natCast] at hp
  calc
    (1 + T) ^ q ≤ (1 + T) ^ ⌈q⌉₊ := hp
    _ ≤ ((⌈q⌉₊.factorial : ℝ) / ε ^ ⌈q⌉₊) * Real.exp (ε * (1 + T)) :=
      pow_le_factorial_mul_exp hε (by linarith) _
    _ = _ := by rw [mul_add, mul_one, Real.exp_add]; ring

theorem subexponentialUpper_of_polynomial {f : ℝ → ℝ} {C q : ℝ}
    (hC : 0 ≤ C)
    (hb : ∀ T : ℝ, 0 ≤ T → f T ≤ C * (1 + T) ^ q) :
    SubexponentialUpper f := by
  intro ε hε
  refine ⟨C * (((⌈q⌉₊.factorial : ℝ) / ε ^ ⌈q⌉₊) * Real.exp ε), by positivity, ?_⟩
  intro T hT
  exact (hb T hT).trans (by
    simpa only [mul_assoc] using
      mul_le_mul_of_nonneg_left (shifted_rpow_le_exponential q hε hT) hC)

theorem SubexponentialUpper.mono {f g : ℝ → ℝ} (hg : SubexponentialUpper g)
    (hfg : ∀ T : ℝ, 0 ≤ T → f T ≤ g T) : SubexponentialUpper f := by
  intro ε hε
  obtain ⟨C, hC, hb⟩ := hg ε hε
  exact ⟨C, hC, fun T hT ↦ (hfg T hT).trans (hb T hT)⟩

theorem SubexponentialUpper.add {f g : ℝ → ℝ}
    (hf : SubexponentialUpper f) (hg : SubexponentialUpper g) :
    SubexponentialUpper (fun T ↦ f T + g T) := by
  intro ε hε
  obtain ⟨C, hC, hb⟩ := hf ε hε
  obtain ⟨D, hD, hd⟩ := hg ε hε
  refine ⟨C + D, add_nonneg hC hD, fun T hT ↦ ?_⟩
  simpa only [add_mul] using add_le_add (hb T hT) (hd T hT)

theorem SubexponentialUpper.const_mul {f : ℝ → ℝ}
    (hf : SubexponentialUpper f) {a : ℝ} (ha : 0 ≤ a) :
    SubexponentialUpper (fun T ↦ a * f T) := by
  intro ε hε
  obtain ⟨C, hC, hb⟩ := hf ε hε
  exact ⟨a * C, mul_nonneg ha hC, fun T hT ↦ by
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left (hb T hT) ha⟩

end GRWTSK.RiemannHypothesis.CCC
```
