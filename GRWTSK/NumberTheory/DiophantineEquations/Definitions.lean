/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib coprimality facts (Apache-2.0). OpenAI Codex formalization assistance.
No abc inequality is assumed or proved in this module. -/
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Set.Finite.Lattice
import Mathlib.Data.Finite.Prod
import Mathlib.Order.Interval.Finset.Nat

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- A positive primitive additive triple. The additive relation is a ternary
constraint, independent of the pairwise coprimality consequences below. -/
@[ext] structure PrimitiveAdditiveTriple where
  a : ℕ
  b : ℕ
  c : ℕ
  a_pos : 0 < a
  b_pos : 0 < b
  sum_eq : a + b = c
  coprime_ab : Nat.Coprime a b
  deriving DecidableEq

namespace PrimitiveAdditiveTriple

variable (t : PrimitiveAdditiveTriple)

theorem c_pos : 0 < t.c := by
  rw [← t.sum_eq]
  exact Nat.add_pos_left t.a_pos _

theorem two_le_c : 2 ≤ t.c := by
  have ha := t.a_pos
  have hb := t.b_pos
  have hs := t.sum_eq
  omega

theorem a_lt_c : t.a < t.c := by
  rw [← t.sum_eq]
  exact Nat.lt_add_of_pos_right t.b_pos

theorem b_lt_c : t.b < t.c := by
  rw [← t.sum_eq]
  exact Nat.lt_add_of_pos_left t.a_pos

theorem coprime_ac : Nat.Coprime t.a t.c := by
  rw [← t.sum_eq, Nat.coprime_self_add_right]
  exact t.coprime_ab

theorem coprime_bc : Nat.Coprime t.b t.c := by
  rw [← t.sum_eq, Nat.coprime_add_self_right]
  exact t.coprime_ab.symm

/-- All three coprimality conclusions are derived from the stored primitive
and additive hypotheses; they do not replace the additive relation. -/
theorem pairwise_coprime :
    Nat.Coprime t.a t.b ∧ Nat.Coprime t.a t.c ∧ Nat.Coprime t.b t.c :=
  ⟨t.coprime_ab, t.coprime_ac, t.coprime_bc⟩

theorem product_pos : 0 < t.a * t.b * t.c :=
  Nat.mul_pos (Nat.mul_pos t.a_pos t.b_pos) t.c_pos

/-- The first two coordinates determine the entire triple. -/
theorem coordinates_injective :
    Function.Injective (fun t : PrimitiveAdditiveTriple => (t.a, t.b)) := by
  intro s t h
  have ha : s.a = t.a := congrArg Prod.fst h
  have hb : s.b = t.b := congrArg Prod.snd h
  apply PrimitiveAdditiveTriple.ext ha hb
  rw [← s.sum_eq, ← t.sum_eq, ha, hb]

/-- Only finitely many primitive triples have bounded third coordinate.
This is a finite-height fact, not an all-height radical estimate. -/
theorem finite_height (N : ℕ) : {t : PrimitiveAdditiveTriple | t.c ≤ N}.Finite := by
  apply Set.Finite.of_injOn
    (t := Set.Iic N ×ˢ Set.Iic N) (f := fun t : PrimitiveAdditiveTriple => (t.a, t.b))
  · intro t ht
    exact ⟨le_trans (Nat.le_of_lt t.a_lt_c) ht,
      le_trans (Nat.le_of_lt t.b_lt_c) ht⟩
  · intro s _ t _ h
    exact coordinates_injective h
  · exact (Set.finite_Iic N).prod (Set.finite_Iic N)

end PrimitiveAdditiveTriple
end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
