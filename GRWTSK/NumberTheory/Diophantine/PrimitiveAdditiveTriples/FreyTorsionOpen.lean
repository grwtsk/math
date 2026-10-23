/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib localization and the existing Frey coordinate presentation.
Formalization assistance: OpenAI.

The full rational two-torsion pullback on C[1/X], not a truncated linear
parameter rescaling. The inverse of ab is an explicit coefficient witness.
This is a ring-level open-chart construction; no scheme, metric, integral
model at excluded primes, or completion identification is inferred.
Unelaborated source proof scripts. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAdicQuotients
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTranslation
import Mathlib.RingTheory.Localization.Away.Basic

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpen

open FreyJetQuotient FreyAdicQuotients

variable {R S : Type*} [CommRing R] [CommRing S]

/-- The same affine X class in the original two-variable coordinate algebra. -/
def affineX (a b : R) : Coordinate a b := coordinateMap a b (MvPolynomial.X 0)

/-- The actual Mathlib localization, not a renamed formal-parameter ring. -/
abbrev OpenCurve (a b : R) := Localization.Away (affineX a b)

def inclusion (a b : R) : Coordinate a b →+* OpenCurve a b := algebraMap _ _

/-- Coefficients are followed explicitly; no new global Algebra instance is installed. -/
def scalar (a b : R) : R →+* OpenCurve a b :=
  (inclusion a b).comp (algebraMap R (Coordinate a b))

def x (a b : R) : OpenCurve a b := inclusion a b (affineX a b)
def y (a b : R) : OpenCurve a b := inclusion a b (coordinateMap a b (MvPolynomial.X 1))
def invX (a b : R) : OpenCurve a b := IsLocalization.Away.invSelf (affineX a b)

@[simp] theorem x_mul_invX (a b : R) : x a b * invX a b = 1 :=
  IsLocalization.Away.mul_invSelf (affineX a b)

/-- The localization retains the original cubic relation. -/
theorem curve_equation (a b : R) :
    y a b ^ 2 = x a b * (x a b - scalar a b a) * (x a b + scalar a b b) := by
  have h : coordinateMap a b (equation a b) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span (by simp))
  have hm := congrArg (inclusion a b) h
  change inclusion a b (coordinateMap a b (equation a b)) = 0 at hm
  simp only [equation, map_sub, map_mul, map_add, map_pow, map_zero] at hm
  exact (sub_eq_zero.mp hm).symm

/-- Unique inverses are valid over rings with zero divisors as well. -/
theorem inverse_unique {A : Type*} [CommRing A] (z u v : A)
    (hu : z * u = 1) (hv : z * v = 1) : u = v := by
  calc
    u = (z * v) * u := by rw [hv, one_mul]
    _ = v * (z * u) := by ring
    _ = v := by rw [hu, mul_one]

/-- Evaluate the SAME affine presentation at a supplied solution. -/
def affineEvaluate (a b : R) (f : R →+* S) (X Y : S)
    (hE : Y ^ 2 = X * (X - f a) * (X + f b)) : Coordinate a b →+* S :=
  Ideal.Quotient.lift _ (MvPolynomial.eval₂Hom f ![X, Y]) (by
    apply Ideal.span_le.mpr
    intro p hp
    have hp' : p = equation a b := Set.mem_singleton_iff.mp hp
    subst p
    change MvPolynomial.eval₂Hom f ![X, Y] (equation a b) = 0
    simp [equation, hE])

/-- Universal evaluation on the open chart requires an ACTUAL inverse of X. -/
def evaluate (a b : R) (f : R →+* S) (X Y U : S)
    (hU : X * U = 1) (hE : Y ^ 2 = X * (X - f a) * (X + f b)) :
    OpenCurve a b →+* S :=
  IsLocalization.Away.lift (affineX a b)
    (g := affineEvaluate a b f X Y hE)
    (by
      have hx : affineEvaluate a b f X Y hE (affineX a b) = X := by
        simp [affineEvaluate, affineX, coordinateMap]
      rw [hx]
      exact ⟨⟨X, U, hU, by simpa [mul_comm] using hU⟩, rfl⟩)

@[simp] theorem evaluate_scalar (a b : R) (f : R →+* S) (X Y U : S)
    (hU : X * U = 1) (hE : Y ^ 2 = X * (X - f a) * (X + f b)) (c : R) :
    evaluate a b f X Y U hU hE (scalar a b c) = f c := by
  simp [evaluate, scalar, inclusion, affineEvaluate, Ideal.Quotient.algebraMap_eq]

@[simp] theorem evaluate_x (a b : R) (f : R →+* S) (X Y U : S)
    (hU : X * U = 1) (hE : Y ^ 2 = X * (X - f a) * (X + f b)) :
    evaluate a b f X Y U hU hE (x a b) = X := by
  simp [evaluate, x, inclusion, affineX, affineEvaluate, coordinateMap]

@[simp] theorem evaluate_y (a b : R) (f : R →+* S) (X Y U : S)
    (hU : X * U = 1) (hE : Y ^ 2 = X * (X - f a) * (X + f b)) :
    evaluate a b f X Y U hU hE (y a b) = Y := by
  simp [evaluate, y, inclusion, affineEvaluate, coordinateMap]

@[simp] theorem evaluate_invX (a b : R) (f : R →+* S) (X Y U : S)
    (hU : X * U = 1) (hE : Y ^ 2 = X * (X - f a) * (X + f b)) :
    evaluate a b f X Y U hU hE (invX a b) = U := by
  apply inverse_unique X _ U _ hU
  have h := congrArg (evaluate a b f X Y U hU hE) (x_mul_invX a b)
  simpa only [map_mul, evaluate_x, map_one] using h

/-- Scalars, X and Y determine a map on the WHOLE localization. -/
theorem hom_ext (a b : R) (F G : OpenCurve a b →+* S)
    (hs : ∀ c, F (scalar a b c) = G (scalar a b c))
    (hx : F (x a b) = G (x a b)) (hy : F (y a b) = G (y a b)) : F = G := by
  apply IsLocalization.ringHom_ext (Submonoid.powers (affineX a b))
  have hp : (F.comp (inclusion a b)).comp (coordinateMap a b) =
      (G.comp (inclusion a b)).comp (coordinateMap a b) := by
    apply MvPolynomial.ringHom_ext
    · intro c
      exact hs c
    · intro i
      fin_cases i
      · exact hx
      · exact hy
  apply RingHom.ext
  intro c
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective c
  exact DFunLike.congr_fun hp p

/-- A denominator-free residual calculation, valid also on nilpotent targets. -/
theorem translated_equation {A : Type*} [CommRing A] (a b X Y U : A)
    (hU : X * U = 1) (hE : Y ^ 2 = X * (X - a) * (X + b)) :
    (a * b * Y * U ^ 2) ^ 2 =
      (-(a * b) * U) * (-(a * b) * U - a) * (-(a * b) * U + b) := by
  linear_combination (a * b) ^ 2 * U ^ 4 * hE +
    (a * b) ^ 2 * U *
      (-a * b * U ^ 2 - a * U ^ 2 * X - a * U + b * U ^ 2 * X +
        b * U + U ^ 2 * X ^ 2 + U * X + 1) * hU

/-- The translated X has an inverse once ab does in the coefficient ring. -/
theorem translated_inverse (a b l : R) (hl : a * b * l = 1) :
    (-(scalar a b (a * b)) * invX a b) * (-(scalar a b l) * x a b) = 1 := by
  calc
    _ = scalar a b (a * b * l) * (x a b * invX a b) := by
      simp only [map_mul]; ring
    _ = 1 := by rw [hl, map_one, x_mul_invX, one_mul]

/-- Full nonlinear pullback on the actual localization C[1/X]. -/
def pullback (a b l : R) (hl : a * b * l = 1) : OpenCurve a b →+* OpenCurve a b :=
  evaluate a b (scalar a b)
    (-(scalar a b (a * b)) * invX a b)
    (scalar a b (a * b) * y a b * invX a b ^ 2)
    (-(scalar a b l) * x a b)
    (translated_inverse a b l hl)
    (by
      simpa only [map_mul] using
        translated_equation (scalar a b a) (scalar a b b)
          (x a b) (y a b) (invX a b) (x_mul_invX a b) (curve_equation a b))

@[simp] theorem pullback_scalar (a b l : R) (hl : a * b * l = 1) (c : R) :
    pullback a b l hl (scalar a b c) = scalar a b c := evaluate_scalar _ _ _ _ _ _ _ _ _
@[simp] theorem pullback_x (a b l : R) (hl : a * b * l = 1) :
    pullback a b l hl (x a b) = -(scalar a b (a * b)) * invX a b :=
  evaluate_x _ _ _ _ _ _ _ _
@[simp] theorem pullback_y (a b l : R) (hl : a * b * l = 1) :
    pullback a b l hl (y a b) = scalar a b (a * b) * y a b * invX a b ^ 2 :=
  evaluate_y _ _ _ _ _ _ _ _
@[simp] theorem pullback_invX (a b l : R) (hl : a * b * l = 1) :
    pullback a b l hl (invX a b) = -(scalar a b l) * x a b :=
  evaluate_invX _ _ _ _ _ _ _ _

/-- Both rounds agree on the full open ring, not only on a bounded Taylor prefix. -/
theorem pullback_comp_self (a b l : R) (hl : a * b * l = 1) :
    (pullback a b l hl).comp (pullback a b l hl) = RingHom.id (OpenCurve a b) := by
  apply hom_ext a b
  · intro c
    simp
  · simp only [RingHom.comp_apply, pullback_x, map_neg, map_mul,
      pullback_scalar, pullback_invX, RingHom.id_apply]
    calc
      _ = scalar a b (a * b * l) * x a b := by simp only [map_mul]; ring
      _ = x a b := by rw [hl, map_one, one_mul]
  · simp only [RingHom.comp_apply, pullback_y, map_mul, map_pow,
      pullback_scalar, pullback_invX, RingHom.id_apply]
    calc
      _ = scalar a b (a * b * l) ^ 2 * (x a b * invX a b) ^ 2 * y a b := by
        simp only [map_mul]; ring
      _ = y a b := by rw [hl, map_one, x_mul_invX]; ring

/-- Ring involution with an explicit fixed-coefficient law; not a metric certificate. -/
def pullbackEquiv (a b l : R) (hl : a * b * l = 1) : OpenCurve a b ≃+* OpenCurve a b where
  toFun := pullback a b l hl
  invFun := pullback a b l hl
  left_inv u := DFunLike.congr_fun (pullback_comp_self a b l hl) u
  right_inv u := DFunLike.congr_fun (pullback_comp_self a b l hl) u
  map_add' := (pullback a b l hl).map_add
  map_mul' := (pullback a b l hl).map_mul

/-- The same displayed rational formulas are recovered by evaluation. -/
theorem evaluate_pullback_coordinates (a b l : R) (hl : a * b * l = 1)
    (f : R →+* S) (X Y U : S) (hU : X * U = 1)
    (hE : Y ^ 2 = X * (X - f a) * (X + f b)) :
    evaluate a b f X Y U hU hE (pullback a b l hl (x a b)) = -(f a * f b) * U ∧
    evaluate a b f X Y U hU hE (pullback a b l hl (y a b)) = f a * f b * Y * U ^ 2 := by
  constructor <;> simp [map_mul]

/-- On rational points this ring pullback evaluates to the PREVIOUS point-translation formulas. -/
theorem rational_point_coordinates (a b l X Y : ℚ) (hl : a * b * l = 1)
    (hX : X ≠ 0) (hE : Y ^ 2 = X * (X - a) * (X + b)) :
    evaluate a b (RingHom.id ℚ) X Y X⁻¹ (mul_inv_cancel₀ hX) hE
        (pullback a b l hl (x a b)) = freyT0TranslateX a b X ∧
    evaluate a b (RingHom.id ℚ) X Y X⁻¹ (mul_inv_cancel₀ hX) hE
        (pullback a b l hl (y a b)) = freyT0TranslateY a b X Y := by
  obtain ⟨hx, hy⟩ := evaluate_pullback_coordinates a b l hl (RingHom.id ℚ)
    X Y X⁻¹ (mul_inv_cancel₀ hX) hE
  constructor
  · simpa [freyT0TranslateX, div_eq_mul_inv, neg_mul] using hx
  · simpa [freyT0TranslateY, div_eq_mul_inv] using hy

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpen
