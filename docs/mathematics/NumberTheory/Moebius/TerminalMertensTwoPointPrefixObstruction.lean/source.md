# Complete source: GRWTSK.NumberTheory.Moebius.TerminalMertensTwoPointPrefixObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef6b6b12fa1676b5d4f7478f265db5d8f5302b30` · SHA-256 `a97fb7fd6e6acdc1c2697d82d798ebc24cb6ce06b53a74bed0713bbe1a0303c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #430 / #410 / #405 / #397 / #391 / #388 / #373 / #369 /
  #366 / #357 / #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicMaximalMertensTwoPointEnergy

/-!
# Terminal two-point correlation obstruction

The canonical maximal-energy criterion needs the maximum of every admissible
two-point Möbius prefix.  This module tests the weaker proposal that the
terminal correlation at one shift and scale could recover that maximum up to a
finite multiplicative constant.

The proposal already fails for the actual Möbius source at `j = 1`, `h = 1`.
The first prefix is `-1`, while the terminal admissible prefix is `0`.  Hence
the canonical prefix maximum is strictly positive but every multiple of the
terminal absolute value is zero.

This is an exact finite obstruction.  It does not provide a maximal inequality,
a maximal-energy estimate, a new positivity premise, or an unconditional
Riemann-hypothesis result.

All proof scripts await exact-head Lean elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- A terminal-only multiplicative recovery proposal.

For each admissible scale and positive shift, the proposal permits a separate
nonnegative finite real constant.  The conclusion still fails because the
terminal value can vanish while an earlier prefix does not. -/
def TerminalMultiplierRecovery : Prop :=
  ∀ j h : ℕ, 1 ≤ h → h < 2 ^ (j + 1) →
    ∃ C : ℝ, 0 ≤ C ∧
      mertensTwoPointPrefixMax j h ≤
        C * |mertensTwoPointPrefix h (2 ^ (j + 1) - h - 1)|

/-- Exact source value `μ(1) = 1`, cast to `ℝ`. -/
@[simp] theorem moebiusReal_one_for_terminal_obstruction :
    moebiusReal 1 = 1 := by
  change ((ArithmeticFunction.moebius 1 : ℤ) : ℝ) = 1
  rw [ArithmeticFunction.moebius_apply_one]
  norm_num

/-- Exact source value `μ(2) = -1`, cast to `ℝ`. -/
@[simp] theorem moebiusReal_two_for_terminal_obstruction :
    moebiusReal 2 = -1 := by
  change ((ArithmeticFunction.moebius 2 : ℤ) : ℝ) = -1
  rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2)]
  norm_num

/-- Exact source value `μ(3) = -1`, cast to `ℝ`. -/
@[simp] theorem moebiusReal_three_for_terminal_obstruction :
    moebiusReal 3 = -1 := by
  change ((ArithmeticFunction.moebius 3 : ℤ) : ℝ) = -1
  rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  norm_num

/-- The first prefix at shift one is exactly `-1`. -/
theorem mertensTwoPointPrefix_one_one_eq_neg_one :
    mertensTwoPointPrefix 1 1 = -1 := by
  calc
    mertensTwoPointPrefix 1 1 =
        mertensTwoPointPrefix 1 0 +
          moebiusReal 1 * moebiusReal 2 := by
      simpa using (mertensTwoPointPrefix_succ 1 0)
    _ = -1 := by norm_num

/-- The terminal admissible prefix at scale one and shift one is exactly zero. -/
theorem mertensTwoPointPrefix_one_two_eq_zero :
    mertensTwoPointPrefix 1 2 = 0 := by
  calc
    mertensTwoPointPrefix 1 2 =
        mertensTwoPointPrefix 1 1 +
          moebiusReal 2 * moebiusReal 3 := by
      simpa using (mertensTwoPointPrefix_succ 1 1)
    _ = 0 := by
      rw [mertensTwoPointPrefix_one_one_eq_neg_one]
      norm_num

/-- The first nonzero prefix supplies a unit lower bound for the canonical
maximum at scale one and shift one. -/
theorem one_le_mertensTwoPointPrefixMax_one_one :
    (1 : ℝ) ≤ mertensTwoPointPrefixMax 1 1 := by
  have hmax :=
    abs_mertensTwoPointPrefix_le_max
      (j := 1) (h := 1) (N := 1) (by norm_num)
  simpa [mertensTwoPointPrefix_one_one_eq_neg_one] using hmax

/-- The exact finite witness: the terminal endpoint vanishes while the
canonical prefix maximum is strictly positive. -/
theorem terminal_zero_but_prefixMax_positive :
    mertensTwoPointPrefix 1 (2 ^ (1 + 1) - 1 - 1) = 0 ∧
      0 < mertensTwoPointPrefixMax 1 1 := by
  constructor
  · norm_num [mertensTwoPointPrefix_one_two_eq_zero]
  · exact lt_of_lt_of_le (by norm_num) one_le_mertensTwoPointPrefixMax_one_one

/-- No terminal-only multiplicative recovery can control the canonical prefix
maximum for the actual Möbius source.  The obstruction is already visible at
the admissible pair `j = 1`, `h = 1`. -/
theorem not_terminalMultiplierRecovery :
    ¬ TerminalMultiplierRecovery := by
  intro hrecover
  obtain ⟨C, _hC, hbound⟩ :=
    hrecover 1 1 (by norm_num) (by norm_num)
  have hterminal :
      mertensTwoPointPrefix 1 (2 ^ (1 + 1) - 1 - 1) = 0 :=
    terminal_zero_but_prefixMax_positive.1
  rw [hterminal, abs_zero, mul_zero] at hbound
  exact
    (not_lt_of_ge hbound)
      terminal_zero_but_prefixMax_positive.2

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.terminal_zero_but_prefixMax_positive
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.not_terminalMultiplierRecovery
```
