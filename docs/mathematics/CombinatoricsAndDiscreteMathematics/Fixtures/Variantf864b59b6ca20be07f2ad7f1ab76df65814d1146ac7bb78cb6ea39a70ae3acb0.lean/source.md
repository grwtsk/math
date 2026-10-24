# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Fixtures.Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9be99e6df56c3c8d9749eaa2247e12cc461ca7f` · SHA-256 `f864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Nat.Cast.Order.Field
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Tactic

/-!
Finite synthetic hostile fixtures only: these are not claims about zeta zeros.
-/
namespace ShellCountHostile

/-- Each individual synthetic shell is finite. -/
example (n : ℕ) : Finite (Fin ((n + 1) ^ 5)) := inferInstance

/-- Local finiteness alone does not imply the quartic counting growth proposition. -/
theorem finite_shells_not_quartic :
    ¬ ∃ C : ℝ, 0 < C ∧ ∀ n : ℕ,
      (Nat.card (Fin ((n + 1) ^ 5)) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4 := by
  rintro ⟨C, _hC, hbound⟩
  obtain ⟨n, hn⟩ := exists_nat_gt C
  have hb := hbound n
  simp only [Nat.card_eq_fintype_card, Fintype.card_fin, Nat.cast_pow,
    Nat.cast_add, Nat.cast_one] at hb
  have hp : 0 < (n + 1 : ℝ) ^ 4 := by positivity
  have he : (n + 1 : ℝ) ^ 5 = (n + 1 : ℝ) * (n + 1 : ℝ) ^ 4 := by ring
  rw [he] at hb
  have hc : (n + 1 : ℝ) ≤ C := (mul_le_mul_iff_left₀ hp).mp (by
    simpa only [mul_comm] using hb)
  linarith

/-- Two points can carry three multiplicity slots. -/
def SyntheticOccurrences := Σ p : Fin 2, Fin (p.val + 1)

/-- Forgetting multiplicity changes the cardinality in this finite fixture. -/
theorem multiplicity_slots_three : Nat.card SyntheticOccurrences = 3 := by
  unfold SyntheticOccurrences
  rw [Nat.card_eq_fintype_card]
  decide

/-- The point set has cardinality two, unlike the occurrence set. -/
theorem point_count_two : Nat.card (Fin 2) = 2 := by simp

/-- Point counting cannot stand in for occurrence counting. -/
theorem forgetting_multiplicity_changes_count :
    Nat.card SyntheticOccurrences ≠ Nat.card (Fin 2) := by
  rw [multiplicity_slots_three, point_count_two]
  decide

/-- A synthetic point exactly on a shifted unit-shell boundary belongs to index one. -/
theorem shifted_shell_boundary :
    ⌊‖(3 / 2 : ℂ) - (1 / 2 : ℂ)‖⌋₊ = 1 := by norm_num

/-- The boundary point must not be silently kept in the preceding shell. -/
theorem shifted_boundary_not_previous_shell :
    ⌊‖(3 / 2 : ℂ) - (1 / 2 : ℂ)‖⌋₊ ≠ 0 := by
  rw [shifted_shell_boundary]
  decide

/-- Omitting the half-shift can change the shell index on a synthetic point. -/
theorem omitting_shift_changes_shell :
    ⌊‖(1 : ℂ) - (1 / 2 : ℂ)‖⌋₊ ≠ ⌊‖(1 : ℂ)‖⌋₊ := by
  have hf : ⌊(1 / 2 : ℝ)⌋₊ = 0 := Nat.floor_eq_zero.mpr (by norm_num)
  norm_num [hf]

end ShellCountHostile
#print axioms ShellCountHostile.finite_shells_not_quartic
#print axioms ShellCountHostile.forgetting_multiplicity_changes_count
```
