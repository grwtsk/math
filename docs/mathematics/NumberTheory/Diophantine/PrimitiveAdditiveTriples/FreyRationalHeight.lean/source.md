# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyRationalHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66daa33898476c13817eedf6fb11ec9ac4d2e3c4` · SHA-256 `a98fc8c6651eb5c2a4c0d3866c943941299ff86dedb7f63ef899d0fbf40d5013`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's reduced rational fractions, coprimality and projective heights
(Apache-2.0). Formalization assistance: OpenAI.

Explicit primitive representatives complete the rational base-coordinate
height comparison. This does not construct an intrinsic section basis or
bound observation heights by radicals. The zero vector is handled using
Mathlib's total height convention, not as a projective point. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyProjectiveHeight
import Mathlib.RingTheory.Coprime.Lemmas

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- A canonical primitive integer representative: the first nonzero
coordinate is positive. At the zero vector this returns the explicit fallback
`(0,1)`; the accompanying scale is zero. -/
def freyPrimitiveRepresentative (w : FreyRationalSectionCoordinates) :
    FreySectionCoordinates :=
  if w 0 = 0 then ![0, 1]
  else ![((w 1 / w 0).den : ℤ), (w 1 / w 0).num]

/-- The exact rational scale of the canonical integer representative.
This is zero precisely at the zero vector. -/
def freyRepresentativeScale (w : FreyRationalSectionCoordinates) : ℚ :=
  if w 0 = 0 then w 1 else w 0 / ((w 1 / w 0).den : ℚ)

/-- The selected integer tuple has normalized content one, including in the
explicit zero-vector fallback. -/
theorem freyPrimitiveRepresentative_gcd (w : FreyRationalSectionCoordinates) :
    Finset.univ.gcd (freyPrimitiveRepresentative w) = 1 := by
  by_cases h0 : w 0 = 0
  · rw [freyPrimitiveRepresentative, if_pos h0]
    exact frey_gcd_eq_one_of_combination ![0, 1] 0 1 0 1 (by norm_num)
  · let q : ℚ := w 1 / w 0
    obtain ⟨r, s, hrs⟩ := Rat.isCoprime_num_den q
    rw [freyPrimitiveRepresentative, if_neg h0]
    apply frey_gcd_eq_one_of_combination _ 0 1 s r
    change s * (q.den : ℤ) + r * q.num = 1
    simpa only [add_comm] using hrs

/-- Reconstruction holds for all vectors. Only the nonzero vectors have a
nonzero scale and therefore represent projective points. -/
theorem freyPrimitiveRepresentative_reconstruct
    (w : FreyRationalSectionCoordinates) :
    w = freyRepresentativeScale w •
      freySectionCoordinatesToRat (freyPrimitiveRepresentative w) := by
  by_cases h0 : w 0 = 0
  · ext i
    fin_cases i <;>
      simp [freyPrimitiveRepresentative, freyRepresentativeScale,
        freySectionCoordinatesToRat, h0]
  · let q : ℚ := w 1 / w 0
    have hd : (q.den : ℚ) ≠ 0 := by exact_mod_cast q.den_nz
    have hr : (q.num : ℚ) / (q.den : ℚ) = q := q.num_div_den
    ext i
    fin_cases i
    · simp only [freyPrimitiveRepresentative, freyRepresentativeScale,
        if_neg h0, freySectionCoordinatesToRat, Pi.smul_apply,
        smul_eq_mul, Matrix.cons_val_zero, Int.cast_natCast]
      exact (div_mul_cancel₀ (w 0) hd).symm
    · change w 1 = freyRepresentativeScale w *
        ((freyPrimitiveRepresentative w 1 : ℤ) : ℚ)
      simp only [freyPrimitiveRepresentative, freyRepresentativeScale,
        if_neg h0, Matrix.cons_val_one, Matrix.cons_val_zero]
      change w 1 = (w 0 / (q.den : ℚ)) * (q.num : ℚ)
      calc
        w 1 = w 0 * q := by dsimp [q]; field_simp [h0] <;> ring
        _ = w 0 * ((q.num : ℚ) / (q.den : ℚ)) := by rw [hr]
        _ = (w 0 / (q.den : ℚ)) * (q.num : ℚ) := by ring

/-- Nonzero input gives a nonzero reconstruction scalar; this premise cannot
be dropped when invoking projective scaling invariance. -/
theorem freyRepresentativeScale_ne_zero
    (w : FreyRationalSectionCoordinates) (hw : w ≠ 0) :
    freyRepresentativeScale w ≠ 0 := by
  intro hk
  have h := freyPrimitiveRepresentative_reconstruct w
  rw [hk, zero_smul] at h
  exact hw h

/-- Existence of primitive integer coordinates is derived, rather than
retained as a caller-supplied hypothesis. -/
theorem frey_exists_primitive_representative
    (w : FreyRationalSectionCoordinates) (hw : w ≠ 0) :
    ∃ (v : FreySectionCoordinates) (k : ℚ),
      Finset.univ.gcd v = 1 ∧ k ≠ 0 ∧ w = k • freySectionCoordinatesToRat v :=
  ⟨freyPrimitiveRepresentative w, freyRepresentativeScale w,
    freyPrimitiveRepresentative_gcd w, freyRepresentativeScale_ne_zero w hw,
    freyPrimitiveRepresentative_reconstruct w⟩

/-- The canonical representative is unchanged by any nonzero rational
scaling, including negative scalars. This is exact chart normalization. -/
theorem freyPrimitiveRepresentative_smul
    (k : ℚ) (hk : k ≠ 0) (w : FreyRationalSectionCoordinates) :
    freyPrimitiveRepresentative (k • w) = freyPrimitiveRepresentative w := by
  by_cases h0 : w 0 = 0
  · simp [freyPrimitiveRepresentative, h0]
  · have hkw : (k • w) 0 ≠ 0 := mul_ne_zero hk h0
    have hratio : (k • w) 1 / (k • w) 0 = w 1 / w 0 := by
      change (k * w 1) / (k * w 0) = w 1 / w 0
      field_simp [hk, h0] <;> ring
    simp only [freyPrimitiveRepresentative, if_neg h0, if_neg hkw, hratio]

/-- The zero-vector fallback has zero scale, so it cannot masquerade as a
nonzero representative witness. -/
theorem freyRepresentativeScale_zero :
    freyRepresentativeScale (0 : FreyRationalSectionCoordinates) = 0 := by
  simp [freyRepresentativeScale]

/-- Complete base-coordinate projective-height recovery over Q. The earlier
primitive-representative premise is discharged by explicit normalization.
For w=0 this is only Mathlib's total-height convention. -/
theorem PrimitiveAdditiveTriple.frey_logHeight_lower
    (t : PrimitiveAdditiveTriple) (w : FreyRationalSectionCoordinates) :
    Height.logHeight w ≤ Height.logHeight (t.freyAffinePortEval w) := by
  by_cases hw : w = 0
  · rw [hw, Height.logHeight_zero]
    exact Height.logHeight_nonneg _
  · obtain ⟨v, k, hv, hk, hrep⟩ := frey_exists_primitive_representative w hw
    exact t.frey_logHeight_lower_of_representative w v hv k hk hrep

/-- Regression with two different nontrivial denominators and mixed signs. -/
theorem freyPrimitiveRepresentative_mixed_fixture :
    freyPrimitiveRepresentative ![(2 / 3 : ℚ), (-5 / 7 : ℚ)] = ![14, -15] := by
  decide

/-- The exact reconstruction scale for the mixed-denominator fixture. -/
theorem freyRepresentativeScale_mixed_fixture :
    freyRepresentativeScale ![(2 / 3 : ℚ), (-5 / 7 : ℚ)] = 1 / 21 := by
  decide

/-- The chart w0=0 is not omitted; its negative second coordinate is carried
by the scale rather than by a negative primitive representative. -/
theorem freyPrimitiveRepresentative_vertical_fixture :
    freyPrimitiveRepresentative ![(0 : ℚ), (-7 / 5 : ℚ)] = ![0, 1] ∧
      freyRepresentativeScale ![(0 : ℚ), (-7 / 5 : ℚ)] = -7 / 5 := by
  decide

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
