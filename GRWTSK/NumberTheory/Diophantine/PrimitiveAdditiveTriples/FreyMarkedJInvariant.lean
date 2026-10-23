/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

Bind the OLD marked ratio charts to the OLD Frey curve's actual j-invariant.
Compute its exact rational denominator, including cancellation at two, then
compare its OLD affine scalar height with the primitive source height.
This is not Faltings height, minimal discriminant, conductor, rational-curve
isomorphism from equal j, or a uniform upper bound in radical support.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts unelaborated.
-/
import GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryJInvariant
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedBoundaryCycle
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedJInvariant

open FreyMarkedBoundaryCycle FreyMarkedObservationHeight FreyMarkedSUnit
open GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryCycle
open GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryJInvariant
open GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
open GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm

/-- The quadratic factor of the same displayed c4 invariant. -/
def shape (t : PrimitiveAdditiveTriple) : ℕ := t.a^2 + t.a*t.b + t.b^2

def sourceProduct (t : PrimitiveAdditiveTriple) : ℕ := t.a*t.b*t.c

/-- The cancellation factor is computed, not independently supplied. -/
def cancellation (t : PrimitiveAdditiveTriple) : ℕ := Nat.gcd 256 (sourceProduct t)^2

theorem shape_coprime_product (t : PrimitiveAdditiveTriple) :
    Nat.Coprime (shape t) (sourceProduct t) := by
  have ha : Nat.Coprime t.a (shape t) := by
    have he : shape t = t.b^2 + (t.a+t.b)*t.a := by unfold shape; ring
    rw [he, Nat.coprime_add_mul_right_right]
    exact t.coprime_ab.pow_right 2
  have hb : Nat.Coprime t.b (shape t) := by
    have he : shape t = t.a^2 + (t.a+t.b)*t.b := by unfold shape; ring
    rw [he, Nat.coprime_add_mul_right_right]
    exact t.coprime_ab.symm.pow_right 2
  have hc : Nat.Coprime t.c (shape t) := by
    have he : shape t = t.a^2 + t.b*t.c := by
      rw [← t.sum_eq]; unfold shape; ring
    rw [he, Nat.coprime_add_mul_right_right]
    exact t.coprime_ac.symm.pow_right 2
  exact (ha.symm.mul_right hb.symm).mul_right hc.symm

/-- No odd prime from abc cancels against the quadratic numerator factor. -/
theorem numerator_gcd (t : PrimitiveAdditiveTriple) :
    Nat.gcd (256*(shape t)^3) (sourceProduct t)^2 = cancellation t := by
  have hp := (shape_coprime_product t).pow 3 2
  simpa only [cancellation, Nat.mul_comm] using hp.gcd_mul_left_cancel 256

theorem cancellation_dvd (t : PrimitiveAdditiveTriple) : cancellation t ∣ 256 :=
  Nat.gcd_dvd_left _ _

theorem cancellation_pos (t : PrimitiveAdditiveTriple) : 0 < cancellation t := by
  apply Nat.pos_of_ne_zero
  intro hz
  have h := cancellation_dvd t
  rw [hz] at h
  norm_num at h

theorem cancellation_bounds (t : PrimitiveAdditiveTriple) :
    1 ≤ cancellation t ∧ cancellation t ≤ 256 :=
  ⟨cancellation_pos t, Nat.le_of_dvd (by decide) (cancellation_dvd t)⟩

/-- c4 of the OLD rational curve, independently of the ratio-chart expression. -/
theorem curve_c4 (t : PrimitiveAdditiveTriple) :
    t.freyCurve.c₄ = 16*(shape t : ℚ) := by
  simp only [PrimitiveAdditiveTriple.freyCurve, freyWeierstrass,
    WeierstrassCurve.c₄, WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    shape, Nat.cast_add, Nat.cast_mul, Nat.cast_pow]
  ring

/-- Unfold the PINNED discriminant-unit definition; no newer j_eq API is assumed. -/
theorem curve_j_mul_delta (t : PrimitiveAdditiveTriple) :
    t.freyCurve.j * t.freyCurve.Δ = t.freyCurve.c₄^3 := by
  change ((↑((t.freyCurve.Δ')⁻¹) : ℚ) * t.freyCurve.c₄^3) *
    (↑t.freyCurve.Δ' : ℚ) = t.freyCurve.c₄^3
  calc
    _ = ((↑((t.freyCurve.Δ')⁻¹) : ℚ) * (↑t.freyCurve.Δ' : ℚ)) *
        t.freyCurve.c₄^3 := by ring
    _ = t.freyCurve.c₄^3 := by simp

/-- Mathlib's actual j of the OLD elliptic curve, not an invariant named by analogy. -/
theorem curve_j (t : PrimitiveAdditiveTriple) :
    t.freyCurve.j = 256*(shape t : ℚ)^3 / (sourceProduct t : ℚ)^2 := by
  have hp : (sourceProduct t : ℚ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.product_pos)
  apply (eq_div_iff (pow_ne_zero 2 hp)).mpr
  have h := curve_j_mul_delta t
  rw [curve_c4, t.freyCurve_Δ] at h
  have hd : 16*(t.a : ℚ)^2*(t.b : ℚ)^2*(t.c : ℚ)^2 =
      16*(sourceProduct t : ℚ)^2 := by simp only [sourceProduct, Nat.cast_mul]; ring
  rw [hd] at h
  nlinarith

/-- The old marked observer supplies the same j. No Legendre twist is identified over Q. -/
theorem source_invariant_eq_j (t : PrimitiveAdditiveTriple) :
    invariant (sourcePair t) = t.freyCurve.j := by
  have ha : (t.a : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.a_pos)
  have hb : (t.b : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.b_pos)
  have hs : (t.a : ℚ)+(t.b : ℚ) = (t.c : ℚ) := by exact_mod_cast t.sum_eq
  have hc : (t.a : ℚ)+(t.b : ℚ) ≠ 0 := by
    rw [hs]; exact Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.c_pos)
  rw [curve_j]
  simp only [invariant, sourcePair, (unit_values t).1, (unit_values t).2,
    shape, sourceProduct, Nat.cast_add, Nat.cast_mul, Nat.cast_pow]
  rw [← hs]
  field_simp [ha, hb, hc] <;> ring

theorem chart_invariant_eq_j (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool) :
    invariant (chart (sourcePair t) j reflected) = t.freyCurve.j := by
  rw [chart_invariant, source_invariant_eq_j]

theorem curve_j_ge_1728 (t : PrimitiveAdditiveTriple) : (1728 : ℚ) ≤ t.freyCurve.j := by
  rw [← source_invariant_eq_j]
  exact invariant_ge_1728 _

/-- Exact REDUCED rational denominator; the raw (abc)^2 is not silently used. -/
theorem j_denominator (t : PrimitiveAdditiveTriple) :
    t.freyCurve.j.den = (sourceProduct t)^2 / cancellation t := by
  have hd : (((sourceProduct t)^2 : ℕ) : ℤ) ≠ 0 := by
    exact_mod_cast pow_ne_zero 2 (Nat.ne_of_gt t.product_pos)
  have he : t.freyCurve.j =
      ((256*(shape t)^3 : ℕ) : ℤ) /. (((sourceProduct t)^2 : ℕ) : ℤ) := by
    rw [Rat.divInt_eq_div, curve_j]
    push_cast <;> rfl
  have hg : Int.gcd (((sourceProduct t)^2 : ℕ) : ℤ)
      ((256*(shape t)^3 : ℕ) : ℤ) = cancellation t := by
    simp only [Int.gcd, Int.natAbs_natCast]
    rw [Nat.gcd_comm, numerator_gcd]
  rw [he, Rat.den_divInt, if_neg hd, Int.natAbs_natCast, hg]

theorem j_denominator_mul (t : PrimitiveAdditiveTriple) :
    t.freyCurve.j.den * cancellation t = (sourceProduct t)^2 := by
  rw [j_denominator]
  exact Nat.div_mul_cancel (Nat.gcd_dvd_right _ _)

/-- Use the PREVIOUS affine height of [1:j], not absolute j or intrinsic Faltings height. -/
def jHeight (t : PrimitiveAdditiveTriple) : ℚ := height (fun _ : Fin 1 => t.freyCurve.j)

private theorem singleton_denominator (x : ℚ) :
    denominator (fun _ : Fin 1 => x) = x.den := by
  apply Nat.dvd_antisymm
  · exact (denominator_dvd_iff _ _).mpr (fun _ => dvd_refl _)
  · exact (denominator_dvd_iff _ _).mp (dvd_refl _) 0

/-- j is positive and at least 1728, so its affine scalar height is its positive numerator. -/
theorem jHeight_eq_den_mul (t : PrimitiveAdditiveTriple) :
    jHeight t = (t.freyCurve.j.den : ℚ) * t.freyCurve.j := by
  have hj : (1 : ℚ) ≤ t.freyCurve.j := le_trans (by norm_num) (curve_j_ge_1728 t)
  have hm : maxAbs (fun _ : Fin 1 => t.freyCurve.j) = t.freyCurve.j := by
    simp [maxAbs, abs_of_nonneg (le_trans (by norm_num) hj)]
  rw [jHeight, height, singleton_denominator, hm, max_eq_right hj]

/-- Exact arithmetic height with the only permitted cancellation retained. -/
theorem jHeight_times_cancellation (t : PrimitiveAdditiveTriple) :
    jHeight t * (cancellation t : ℚ) = 256*(shape t : ℚ)^3 := by
  have hp : (sourceProduct t : ℚ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.product_pos)
  have hd : (t.freyCurve.j.den : ℚ) * (cancellation t : ℚ) =
      (sourceProduct t : ℚ)^2 := by exact_mod_cast j_denominator_mul t
  rw [jHeight_eq_den_mul]
  calc
    _ = ((t.freyCurve.j.den : ℚ)*(cancellation t : ℚ))*t.freyCurve.j := by ring
    _ = (sourceProduct t : ℚ)^2 * (256*(shape t : ℚ)^3/(sourceProduct t : ℚ)^2) := by
      rw [hd, curve_j]
    _ = 256*(shape t : ℚ)^3 := by field_simp [hp]

theorem jHeight_shape_bounds (t : PrimitiveAdditiveTriple) :
    (shape t : ℚ)^3 ≤ jHeight t ∧ jHeight t ≤ 256*(shape t : ℚ)^3 := by
  have hh : 0 ≤ jHeight t := le_trans (by norm_num) (height_one_le _)
  have h1 : (1 : ℚ) ≤ cancellation t := by exact_mod_cast (cancellation_bounds t).1
  have h256 : (cancellation t : ℚ) ≤ 256 := by exact_mod_cast (cancellation_bounds t).2
  have he := jHeight_times_cancellation t
  constructor <;> nlinarith

/-- The quadratic numerator is uniformly comparable with the square of the ORIGINAL c. -/
theorem shape_bounds (t : PrimitiveAdditiveTriple) :
    3*(t.c : ℚ)^2 ≤ 4*(shape t : ℚ) ∧ (shape t : ℚ) ≤ (t.c : ℚ)^2 := by
  have hs : (t.a : ℚ)+(t.b : ℚ) = (t.c : ℚ) := by exact_mod_cast t.sum_eq
  have hcast : (shape t : ℚ) = (t.a : ℚ)^2+(t.a : ℚ)*(t.b : ℚ)+(t.b : ℚ)^2 := by
    simp [shape]
  have hab : (0 : ℚ) ≤ (t.a : ℚ)*(t.b : ℚ) := by positivity
  rw [← hs, hcast]
  constructor <;> nlinarith [sq_nonneg ((t.a : ℚ)-(t.b : ℚ))]

/-- An actual unmarked j-height comparison, with explicit constants and degree SIX.
This does not estimate c by radical support. -/
theorem jHeight_source_comparison (t : PrimitiveAdditiveTriple) :
    (27/64 : ℚ)*(t.c : ℚ)^6 ≤ jHeight t ∧
      jHeight t ≤ 256*(t.c : ℚ)^6 := by
  have hlow : (3*(t.c : ℚ)^2/4)^3 ≤ (shape t : ℚ)^3 := by
    gcongr
    linarith [(shape_bounds t).1]
  have hupp : (shape t : ℚ)^3 ≤ ((t.c : ℚ)^2)^3 := by
    gcongr
    exact (shape_bounds t).2
  constructor
  · calc
      (27/64 : ℚ)*(t.c : ℚ)^6 = (3*(t.c : ℚ)^2/4)^3 := by ring
      _ ≤ (shape t : ℚ)^3 := hlow
      _ ≤ jHeight t := (jHeight_shape_bounds t).1
  · calc
      jHeight t ≤ 256*(shape t : ℚ)^3 := (jHeight_shape_bounds t).2
      _ ≤ 256*((t.c : ℚ)^2)^3 := mul_le_mul_of_nonneg_left hupp (by norm_num)
      _ = 256*(t.c : ℚ)^6 := by ring

/-- The two pre-existing height constructions are now compared, not identified. -/
theorem jHeight_observation_comparison (t : PrimitiveAdditiveTriple) :
    (27/64 : ℚ)*(height (observation t))^6 ≤ jHeight t ∧
      jHeight t ≤ 256*(height (observation t))^6 := by
  rw [observation_height]
  exact jHeight_source_comparison t

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedJInvariant
