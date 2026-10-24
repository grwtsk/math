/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib radical facts (Apache-2.0), due to Bhavik Mehta,
Arend Mellendijk and Jeremy Tan. OpenAI Codex formalization assistance. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions
import Mathlib.RingTheory.Radical.NatInt

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open UniqueFactorizationMonoid

namespace PrimitiveAdditiveTriple

/-- The canonical Mathlib radical of the product of the three coordinates. -/
noncomputable def radical (t : PrimitiveAdditiveTriple) : ℕ :=
  UniqueFactorizationMonoid.radical (t.a * t.b * t.c)

variable (t : PrimitiveAdditiveTriple)

theorem radical_pos : 0 < t.radical := Nat.radical_pos _

theorem radical_two_le : 2 ≤ t.radical := by
  apply Nat.two_le_radical_iff.mpr
  have ha : 1 ≤ t.a := t.a_pos
  have hb : 1 ≤ t.b := t.b_pos
  calc
    2 ≤ t.c := t.two_le_c
    _ ≤ t.a * t.b * t.c := Nat.le_mul_of_pos_left _ (Nat.mul_pos ha hb)

theorem radical_eq_product :
    t.radical = UniqueFactorizationMonoid.radical t.a *
      UniqueFactorizationMonoid.radical t.b * UniqueFactorizationMonoid.radical t.c := by
  have hab := Nat.coprime_iff_isRelPrime.mp t.coprime_ab
  have habc := Nat.coprime_iff_isRelPrime.mp (t.coprime_ac.mul_left t.coprime_bc)
  unfold PrimitiveAdditiveTriple.radical
  rw [UniqueFactorizationMonoid.radical_mul habc,
    UniqueFactorizationMonoid.radical_mul hab]

theorem radical_dvd_product : t.radical ∣ t.a * t.b * t.c :=
  UniqueFactorizationMonoid.radical_dvd_self

theorem radical_le_product : t.radical ≤ t.a * t.b * t.c :=
  Nat.radical_le_self_iff.mpr (Nat.ne_of_gt t.product_pos)

end PrimitiveAdditiveTriple
end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
