/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Normalize three ORDERED rational observations by their nonzero marked gap.
For a primitive numerator pair, bounded normalized coordinates retain the
entire common denominator. The height is the old affine H([1:coordinates]),
not homogeneous H([coordinates]) or an intrinsic elliptic moduli height.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Height.PrimitivePairNormalization

open RationalVectorAffineHeight
open GRWTSK.Algebra.LinearAlgebra.FourFieldArchimedeanNorm

/-- Ordered marked gap. Its nonvanishing is part of every normalized observation. -/
def gap (y : Fin 3 → ℚ) : ℚ := y 1 - y 2

def normalize (y : Fin 3 → ℚ) (_hgap : gap y ≠ 0) : Fin 3 → ℚ :=
  fun i => (y i - y 0) / gap y

/-- The sum-minus-south sign and the source labels are fixed. -/
def profile (a b c : ℕ) : Fin 3 → ℚ := ![0, (a : ℚ) / c, -(b : ℚ) / c]

@[simp] theorem normalize_zero (y : Fin 3 → ℚ) (hy : gap y ≠ 0) :
    normalize y hy 0 = 0 := by simp [normalize]

theorem normalize_gap (y : Fin 3 → ℚ) (hy : gap y ≠ 0) :
    gap (normalize y hy) = 1 := by
  unfold gap normalize
  have h := hy
  unfold gap at h
  field_simp [gap, h]
  <;> ring

/-- Simultaneous translation and NONZERO scaling do not change the marked ratio. -/
theorem normalize_affine (y : Fin 3 → ℚ) (hy : gap y ≠ 0)
    (u v : ℚ) (hv : v ≠ 0)
    (hz : gap (fun i => u + v * y i) ≠ 0) :
    normalize (fun i => u + v * y i) hz = normalize y hy := by
  have hg : gap (fun i => u + v * y i) = v * gap y := by unfold gap; ring
  funext i
  change ((u + v * y i) - (u + v * y 0)) / gap (fun j => u + v * y j) = _
  rw [hg]
  change ((u + v * y i) - (u + v * y 0)) / (v * gap y) = (y i - y 0) / gap y
  field_simp [hv, hy]
  <;> ring

/-- Recover 1/c from the two normalized entries by the SUPPLIED integer Bezout identity.
This includes d=0 as a clearing test, not as a positive denominator. -/
theorem profile_clears_iff (a b c d : ℕ) (hc : c ≠ 0)
    (r s : ℤ) (hrs : r * (a : ℤ) + s * (b : ℤ) = 1) :
    (∀ i, ClearsValue d (profile a b c i)) ↔ c ∣ d := by
  have hcz : (c : ℤ) ≠ 0 := Int.natCast_ne_zero.mpr hc
  constructor
  · intro h
    have hq : (r : ℚ) * (a : ℚ) + (s : ℚ) * (b : ℚ) = 1 := by exact_mod_cast hrs
    have hrec := clears_sub d _ _
      (clears_int_mul d r (profile a b c 1) (h 1))
      (clears_int_mul d s (profile a b c 2) (h 2))
    have he : (r : ℚ) * profile a b c 1 - (s : ℚ) * profile a b c 2 = 1 / (c : ℚ) := by
      change (r : ℚ) * ((a : ℚ) / c) - (s : ℚ) * (-(b : ℚ) / c) = _
      calc
        _ = ((r : ℚ) * (a : ℚ) + (s : ℚ) * (b : ℚ)) / (c : ℚ) := by ring
        _ = _ := by rw [hq]
    rw [he] at hrec
    apply Int.natCast_dvd_natCast.mp
    exact (clears_reciprocal_iff d (c : ℤ) hcz).mp (by simpa only [Int.cast_natCast] using hrec)
  · intro h i
    have hrec : ClearsValue d (1 / (c : ℚ)) := by
      simpa only [Int.cast_natCast] using
        (clears_reciprocal_iff d (c : ℤ) hcz).mpr (Int.natCast_dvd_natCast.mpr h)
    fin_cases i
    · exact ⟨0, by simp [profile]⟩
    · simpa [profile, div_eq_mul_inv] using clears_int_mul d (a : ℤ) (1 / (c : ℚ)) hrec
    · simpa [profile, div_eq_mul_inv] using clears_int_mul d (-(b : ℤ)) (1 / (c : ℚ)) hrec

/-- Exact least denominator, not just divisibility or occupied prime support. -/
theorem profile_denominator (a b c : ℕ) (hc : c ≠ 0)
    (r s : ℤ) (hrs : r * (a : ℤ) + s * (b : ℤ) = 1) :
    denominator (profile a b c) = c := by
  apply Nat.dvd_antisymm
  · apply (denominator_dvd_iff_clears _ c).mpr
    exact (profile_clears_iff a b c c hc r s hrs).mpr (dvd_refl c)
  · exact (profile_clears_iff a b c (denominator (profile a b c)) hc r s hrs).mp
      (denominator_clears (profile a b c))

/-- A real-coordinate bound is proved separately from the denominator theorem. -/
theorem profile_max_le_one (a b c : ℕ) (hc : c ≠ 0) (ha : a ≤ c) (hb : b ≤ c) :
    maxAbs (profile a b c) ≤ 1 := by
  have hcp : (0 : ℚ) < c := Nat.cast_pos.mpr (Nat.pos_of_ne_zero hc)
  apply (maxAbs_le_iff _ _).mpr
  intro i
  fin_cases i
  · norm_num [profile]
  · change |(a : ℚ) / c| ≤ 1
    rw [abs_div, abs_of_nonneg (Nat.cast_nonneg a), abs_of_pos hcp]
    apply (div_le_iff₀ hcp).mpr
    simpa only [one_mul] using (show (a : ℚ) ≤ c by exact_mod_cast ha)
  · change |-(b : ℚ) / c| ≤ 1
    rw [abs_div, abs_neg, abs_of_nonneg (Nat.cast_nonneg b), abs_of_pos hcp]
    apply (div_le_iff₀ hcp).mpr
    simpa only [one_mul] using (show (b : ℚ) ≤ c by exact_mod_cast hb)

theorem profile_height (a b c : ℕ) (hc : c ≠ 0) (ha : a ≤ c) (hb : b ≤ c)
    (r s : ℤ) (hrs : r * (a : ℤ) + s * (b : ℤ) = 1) :
    height (profile a b c) = (c : ℚ) := by
  rw [height, profile_denominator a b c hc r s hrs,
    max_eq_left (profile_max_le_one a b c hc ha hb), mul_one]

/-- The actual primitive numerators retain the two marked source coordinates. -/
theorem profile_numerator (a b c : ℕ) (hc : c ≠ 0)
    (r s : ℤ) (hrs : r * (a : ℤ) + s * (b : ℤ) = 1) :
    numerator (profile a b c) = ![0, (a : ℤ), -(b : ℤ)] := by
  have hcq : (c : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr hc
  funext i
  unfold numerator
  rw [profile_denominator a b c hc r s hrs]
  have he : (c : ℚ) * profile a b c i =
      ((![0, (a : ℤ), -(b : ℤ)] : Fin 3 → ℤ) i : ℚ) := by
    fin_cases i <;> simp [profile] <;> field_simp [hcq]
  rw [he]
  simp

/-- The source of large height may be the denominator of a scaled section itself. -/
theorem reciprocal_section_height (c : ℕ) (hc : c ≠ 0) :
    height (![0, 1 / (c : ℚ)] : Fin 2 → ℚ) = (c : ℚ) := by
  let q : Fin 2 → ℚ := ![0, 1 / (c : ℚ)]
  have hcz : (c : ℤ) ≠ 0 := Int.natCast_ne_zero.mpr hc
  have hD : denominator q = c := by
    apply Nat.dvd_antisymm
    · apply (denominator_dvd_iff_clears q c).mpr
      intro i
      fin_cases i
      · exact ⟨0, by simp [q]⟩
      · simpa only [Int.cast_natCast] using
          (clears_reciprocal_iff c (c : ℤ) hcz).mpr (dvd_refl (c : ℤ))
    · apply Int.natCast_dvd_natCast.mp
      exact (clears_reciprocal_iff (denominator q) (c : ℤ) hcz).mp
        (by simpa [q] using denominator_clears q 1)
  have hc1 : (1 : ℚ) ≤ c := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hc
  have hM : maxAbs q ≤ 1 := by
    apply (maxAbs_le_iff _ _).mpr
    intro i
    fin_cases i
    · norm_num [q]
    · change |1 / (c : ℚ)| ≤ 1
      rw [abs_div, abs_one, abs_of_nonneg (Nat.cast_nonneg c)]
      exact (div_le_iff₀ (lt_of_lt_of_le (by norm_num) hc1)).mpr (by simpa using hc1)
  change height q = _
  rw [height, hD, max_eq_left hM, mul_one]

end GRWTSK.NumberTheory.Height.PrimitivePairNormalization
