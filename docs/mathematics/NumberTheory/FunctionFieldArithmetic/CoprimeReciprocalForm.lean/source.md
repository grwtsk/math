# Complete source: GRWTSK.NumberTheory.FunctionFieldArithmetic.CoprimeReciprocalForm

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fde40f1515e34da62f2c351dcadc8ecb0a7a07af` · SHA-256 `55dd19750b2c575e31425a0824388181182e840a9d92dd413b428febe0f8fa40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityFiniteSums

/-!
# Completed weighted coprime form as signed common-divisor rows

Human mathematical direction: grwtsk contributors.
Formal recovery: OpenAI Codex. 
The exact finite identity supplies no uniform arithmetic row bound or pickup budget.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.ArithmeticFunctions

/-- The complete ordered coprime scalar form equals its signed squared rows.
Weights are arbitrary real scalars; all closed inventory atoms are retained. -/
theorem weighted_coprime_divisor_quadratic (T : ℝ) (c : ℕ → ℝ) :
    (∑ m ∈ densityClosedInventory T, ∑ n ∈ densityClosedInventory T,
      if m.Coprime n then c m * c n else 0) =
    ∑ d ∈ densityClosedInventory T, moebiusReal d *
      (∑ n ∈ densityClosedInventory T, if d ∣ n then c n else 0) ^ 2 := by
  classical
  have pair (m n : ℕ) (hm : m ∈ densityClosedInventory T)
      (hn : n ∈ densityClosedInventory T) :
      (if m.Coprime n then c m * c n else 0) =
        ∑ d ∈ densityClosedInventory T, moebiusReal d *
          ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) := by
    have he (d : ℕ) : moebiusReal d *
        ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) =
        (if d ∣ m ∧ d ∣ n then moebiusReal d else 0) * (c m * c n) := by
      by_cases hdm : d ∣ m <;> by_cases hdn : d ∣ n <;> simp [hdm, hdn]
    simp_rw [he]
    rw [← Finset.sum_mul, density_coprime_indicator_moebius_sum hm hn]
    split_ifs <;> simp
  calc
    _ = ∑ m ∈ densityClosedInventory T, ∑ n ∈ densityClosedInventory T,
        ∑ d ∈ densityClosedInventory T, moebiusReal d *
          ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) := by
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      exact pair m n hm hn
    _ = ∑ m ∈ densityClosedInventory T, ∑ d ∈ densityClosedInventory T,
        ∑ n ∈ densityClosedInventory T, moebiusReal d *
          ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) := by
      apply Finset.sum_congr rfl
      intro m _
      exact Finset.sum_comm
    _ = ∑ d ∈ densityClosedInventory T, ∑ m ∈ densityClosedInventory T,
        ∑ n ∈ densityClosedInventory T, moebiusReal d *
          ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) := Finset.sum_comm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d _
      rw [pow_two, Finset.sum_mul_sum, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      rw [Finset.mul_sum]

end GRWTSK.NumberTheory.ArithmeticFunctions
```
