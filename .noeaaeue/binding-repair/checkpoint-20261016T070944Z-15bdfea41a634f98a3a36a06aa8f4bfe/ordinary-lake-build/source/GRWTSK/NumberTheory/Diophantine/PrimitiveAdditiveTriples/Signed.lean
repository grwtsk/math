/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib integer coprimality and absolute values (Apache-2.0).
OpenAI Codex formalization assistance. Signed primitive representatives
carry an exact three-term relation; no projective comparison is assumed. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement
import Mathlib.RingTheory.Int.Basic

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Nonzero primitive integral representatives of signed projective triples.
The numerical bound below is over every representative. No choice of quotient
representative or identification of different normalizations is implicit. -/
structure SignedPrimitiveAdditiveTriple where
  a : ℤ
  b : ℤ
  c : ℤ
  a_ne_zero : a ≠ 0
  b_ne_zero : b ≠ 0
  c_ne_zero : c ≠ 0
  sum_eq_zero : a + b + c = 0
  coprime_ab : Nat.Coprime a.natAbs b.natAbs

namespace SignedPrimitiveAdditiveTriple

variable (s : SignedPrimitiveAdditiveTriple)

/-- The standard height of a primitive integral representative. -/
def height : ℕ := max s.a.natAbs (max s.b.natAbs s.c.natAbs)

/-- Radical of the absolute product, using the same Mathlib invariant as the
positive target. -/
noncomputable def radical : ℕ :=
  UniqueFactorizationMonoid.radical (s.a.natAbs * s.b.natAbs * s.c.natAbs)

theorem coprime_ac : Nat.Coprime s.a.natAbs s.c.natAbs := by
  have h := (Int.isCoprime_iff_nat_coprime.mpr s.coprime_ab).add_mul_right_right 1
  have heq : s.b + 1 * s.a = -s.c := by have := s.sum_eq_zero; omega
  rw [heq] at h
  exact Int.isCoprime_iff_nat_coprime.mp (by simpa using h.neg_right)

theorem coprime_bc : Nat.Coprime s.b.natAbs s.c.natAbs := by
  have h := (Int.isCoprime_iff_nat_coprime.mpr s.coprime_ab).symm.add_mul_right_right 1
  have heq : s.a + 1 * s.b = -s.c := by have := s.sum_eq_zero; omega
  rw [heq] at h
  exact Int.isCoprime_iff_nat_coprime.mp (by simpa using h.neg_right)

/-- The absolute values of a signed zero-sum triple have one exact additive
orientation. This is proved from the integer relation by sign cases. -/
theorem natAbs_add_cases :
    s.a.natAbs + s.b.natAbs = s.c.natAbs ∨
    s.a.natAbs + s.c.natAbs = s.b.natAbs ∨
    s.b.natAbs + s.c.natAbs = s.a.natAbs := by
  have hs := s.sum_eq_zero
  have hA := Int.natCast_natAbs s.a
  have hB := Int.natCast_natAbs s.b
  have hC := Int.natCast_natAbs s.c
  rcases le_total 0 s.a with ha | ha <;>
    rcases le_total 0 s.b with hb | hb <;>
    rcases le_total 0 s.c with hc | hc
  all_goals
    simp only [abs_of_nonneg, abs_of_nonpos, ha, hb, hc] at hA hB hC
    omega

/-- Normalizing signs and permuting coordinates preserves both height and the
literal absolute product. This is the arithmetic bridge for the signed form. -/
theorem exists_positive_normalization :
    ∃ t : PrimitiveAdditiveTriple,
      t.c = s.height ∧ t.a * t.b * t.c = s.a.natAbs * s.b.natAbs * s.c.natAbs := by
  have ha := Int.natAbs_pos.mpr s.a_ne_zero
  have hb := Int.natAbs_pos.mpr s.b_ne_zero
  have hc := Int.natAbs_pos.mpr s.c_ne_zero
  rcases s.natAbs_add_cases with h | h | h
  · refine ⟨⟨s.a.natAbs, s.b.natAbs, s.c.natAbs, ha, hb, h, s.coprime_ab⟩, ?_, rfl⟩
    dsimp [height]
    omega
  · refine ⟨⟨s.a.natAbs, s.c.natAbs, s.b.natAbs, ha, hc, h, s.coprime_ac⟩, ?_, ?_⟩
    · dsimp [height]
      omega
    · dsimp
      ring
  · refine ⟨⟨s.b.natAbs, s.c.natAbs, s.a.natAbs, hb, hc, h, s.coprime_bc⟩, ?_, ?_⟩
    · dsimp [height]
      omega
    · dsimp
      ring

/-- A positive primitive triple gives the signed representative `(a,b,-c)`. -/
def ofPositive (t : PrimitiveAdditiveTriple) : SignedPrimitiveAdditiveTriple where
  a := t.a
  b := t.b
  c := -(t.c : ℤ)
  a_ne_zero := by exact_mod_cast (Nat.ne_of_gt t.a_pos)
  b_ne_zero := by exact_mod_cast (Nat.ne_of_gt t.b_pos)
  c_ne_zero := neg_ne_zero.mpr (by exact_mod_cast (Nat.ne_of_gt t.c_pos))
  sum_eq_zero := by
    have h : (t.a : ℤ) + (t.b : ℤ) = (t.c : ℤ) := by exact_mod_cast t.sum_eq
    omega
  coprime_ab := by simpa only [Int.natAbs_natCast] using t.coprime_ab

@[simp] theorem ofPositive_height (t : PrimitiveAdditiveTriple) :
    (ofPositive t).height = t.c := by
  dsimp [ofPositive, height]
  simp only [Int.natAbs_natCast, Int.natAbs_neg]
  have ha := t.a_lt_c
  have hb := t.b_lt_c
  omega

@[simp] theorem ofPositive_radical (t : PrimitiveAdditiveTriple) :
    (ofPositive t).radical = t.radical := by
  simp only [radical, ofPositive, Int.natAbs_natCast, Int.natAbs_neg,
    PrimitiveAdditiveTriple.radical]

end SignedPrimitiveAdditiveTriple

/-- The signed primitive representative formulation uses maximum absolute
height and the radical of the absolute product. -/
def ABCSignedBound (ε : ℝ) : Prop :=
  ∃ K : ℝ, 0 < K ∧ ∀ s : SignedPrimitiveAdditiveTriple,
    (s.height : ℝ) ≤ K * Real.rpow (s.radical : ℝ) (1 + ε)

theorem abcBound_iff_signedBound (ε : ℝ) : ABCBound ε ↔ ABCSignedBound ε := by
  constructor
  · rintro ⟨K, hK, h⟩
    refine ⟨K, hK, fun s => ?_⟩
    obtain ⟨t, hc, hp⟩ := s.exists_positive_normalization
    have hr : t.radical = s.radical := congrArg UniqueFactorizationMonoid.radical hp
    simpa only [hc, hr] using h t
  · rintro ⟨K, hK, h⟩
    refine ⟨K, hK, fun t => ?_⟩
    simpa only [SignedPrimitiveAdditiveTriple.ofPositive_height,
      SignedPrimitiveAdditiveTriple.ofPositive_radical] using
      h (SignedPrimitiveAdditiveTriple.ofPositive t)

theorem abcConjecture_iff_signed :
    ABCConjecture ↔ ∀ ε : ℝ, 0 < ε → ABCSignedBound ε := by
  simp only [ABCConjecture, abcBound_iff_signedBound]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
