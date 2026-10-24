# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetCharts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0921d583705c3b381c4a4ee70bd5655a2c4c3ae` · SHA-256 `49adcbb1007db635243cd180f14d06a3e9562714aa557f110c30dadacd4af7fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib localization away from an element (Apache-2.0).
Formalization assistance: OpenAI.

Explicit coefficient localizations Z[1/d_i] for the three selected branches.
Their basic opens cover the ARITHMETIC BASE. Distinct torsion branches are not
identified with one another on overlaps. No curve-cover, global sections,
completed-local-ring isomorphism, conductor or ABC estimate is claimed.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyHigherJet
import Mathlib.RingTheory.Localization.Away.Basic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Polynomial

/-- The existing source roots, now over Z so reduction never needs Q -> F_p. -/
def PrimitiveAdditiveTriple.freyPortRootInt (t : PrimitiveAdditiveTriple) : Fin 3 → ℤ :=
  ![0, (t.a : ℤ), -(t.b : ℤ)]

@[simp] theorem PrimitiveAdditiveTriple.freyPortRootInt_cast
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    (t.freyPortRootInt i : ℚ) = t.freyPortRoot i := by
  fin_cases i <;> simp [PrimitiveAdditiveTriple.freyPortRootInt,
    PrimitiveAdditiveTriple.freyPortRoot]

/-- Explicit partition of unity for the three Jacobians. This is stronger than
finding a good index separately at finitely many sampled primes. -/
theorem PrimitiveAdditiveTriple.freyJacobian_partition_one
    (t : PrimitiveAdditiveTriple) :
    (t.bezoutA - t.bezoutB) ^ 2 * t.freyPortJacobian 0 +
      t.bezoutA ^ 2 * t.freyPortJacobian 1 +
      t.bezoutB ^ 2 * t.freyPortJacobian 2 = 1 := by
  calc
    _ = (t.bezoutA * (t.a : ℤ) + t.bezoutB * (t.b : ℤ)) ^ 2 := by
      simp [PrimitiveAdditiveTriple.freyPortJacobian] <;> ring
    _ = 1 := by rw [t.bezout_identity]; ring

/-- The three Jacobians generate the unit ideal in Z. This is an algebraic
basic-open-cover certificate for Spec Z, not an open cover of the Frey curve. -/
theorem PrimitiveAdditiveTriple.freyJacobian_span_eq_top
    (t : PrimitiveAdditiveTriple) :
    Ideal.span (Set.range t.freyPortJacobian) = (⊤ : Ideal ℤ) := by
  let I : Ideal ℤ := Ideal.span (Set.range t.freyPortJacobian)
  have hd (i : Fin 3) : t.freyPortJacobian i ∈ I :=
    Ideal.subset_span ⟨i, rfl⟩
  apply Ideal.eq_top_iff_one.mpr
  rw [← t.freyJacobian_partition_one]
  exact I.add_mem
    (I.add_mem (I.mul_mem_left _ (hd 0)) (I.mul_mem_left _ (hd 1)))
    (I.mul_mem_left _ (hd 2))

/-- After any base-ring map, no proper ideal contains all three Jacobians.
Primes are a special case; no field or characteristic assumption is needed. -/
theorem PrimitiveAdditiveTriple.freyJacobian_avoids_proper_ideal
    (t : PrimitiveAdditiveTriple) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (I : Ideal A) (hI : I ≠ ⊤) :
    ∃ i : Fin 3, f (t.freyPortJacobian i) ∉ I := by
  classical
  by_contra hn
  have hall : ∀ i : Fin 3, f (t.freyPortJacobian i) ∈ I := by
    simpa only [not_exists, not_not] using hn
  have h := congrArg f t.freyJacobian_partition_one
  simp only [map_add, map_mul, map_pow, map_sub, map_one] at h
  have h1 : (1 : A) ∈ I := by
    rw [← h]
    exact I.add_mem
      (I.add_mem (I.mul_mem_left _ (hall 0)) (I.mul_mem_left _ (hall 1)))
      (I.mul_mem_left _ (hall 2))
  exact hI (Ideal.eq_top_iff_one.mpr h1)

/-- Actual coefficient chart; only powers of the source Jacobian are inverted. -/
abbrev FreyJetChart (t : PrimitiveAdditiveTriple) (i : Fin 3) :=
  Localization (Submonoid.powers (t.freyPortJacobian i))

/-- The inverse required by recursion is constructed in the localization. -/
noncomputable def PrimitiveAdditiveTriple.freyChartInverse
    (t : PrimitiveAdditiveTriple) (i : Fin 3) : FreyJetChart t i :=
  IsLocalization.Away.invSelf (t.freyPortJacobian i)

@[simp] theorem PrimitiveAdditiveTriple.freyChart_mul_inverse
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    algebraMap ℤ (FreyJetChart t i) (t.freyPortJacobian i) * t.freyChartInverse i = 1 :=
  IsLocalization.Away.mul_invSelf (t.freyPortJacobian i)

/-- The universal localization map to any target where this SAME d_i is a unit. -/
noncomputable def PrimitiveAdditiveTriple.freyChartMap
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (hd : IsUnit (f (t.freyPortJacobian i))) : FreyJetChart t i →+* A :=
  IsLocalization.Away.lift (t.freyPortJacobian i) hd

@[simp] theorem PrimitiveAdditiveTriple.freyChartMap_integer
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (hd : IsUnit (f (t.freyPortJacobian i))) (z : ℤ) :
    t.freyChartMap i f hd (algebraMap ℤ (FreyJetChart t i) z) = f z :=
  IsLocalization.Away.lift_eq _ _ _

/-- Same-anchor localization transport composes on the whole coefficient ring. -/
theorem PrimitiveAdditiveTriple.freyChartMap_comp
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A B : Type*} [CommRing A] [CommRing B]
    (f : ℤ →+* A) (g : A →+* B) (hd : IsUnit (f (t.freyPortJacobian i))) :
    g.comp (t.freyChartMap i f hd) =
      t.freyChartMap i (g.comp f) (hd.map g) := by
  apply IsLocalization.ringHom_ext (Submonoid.powers (t.freyPortJacobian i))
  ext z
  simp only [RingHom.comp_apply, PrimitiveAdditiveTriple.freyChartMap_integer]

/-- The mapped inverse agrees with any proved inverse in the target ring.
There is no reliance on a field inverse or on an injective specialization. -/
theorem PrimitiveAdditiveTriple.freyChartMap_inverse
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (hd : IsUnit (f (t.freyPortJacobian i)))
    (j : A) (hj : f (t.freyPortJacobian i) * j = 1) :
    t.freyChartMap i f hd (t.freyChartInverse i) = j := by
  have h := congrArg (t.freyChartMap i f hd) (t.freyChart_mul_inverse i)
  simp only [map_mul, map_one, PrimitiveAdditiveTriple.freyChartMap_integer] at h
  calc
    _ = t.freyChartMap i f hd (t.freyChartInverse i) *
        (f (t.freyPortJacobian i) * j) := by rw [hj, mul_one]
    _ = (f (t.freyPortJacobian i) *
        t.freyChartMap i f hd (t.freyChartInverse i)) * j := by ring
    _ = j := by rw [h, one_mul]

/-- Finite approximants are actual polynomials over Z[1/d_i]. -/
noncomputable def PrimitiveAdditiveTriple.freyChartApproximant
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (n : ℕ) : (FreyJetChart t i)[X] :=
  FreyJetRecursion.iterate (C (t.freyChartInverse i))
    (C (algebraMap ℤ (FreyJetChart t i) (t.freyPortQuadraticCoefficientInt i))) X n

/-- Coefficient transport commutes with the recurrence, retaining the inverse.
This includes valid residue-field maps and further localizations. -/
theorem PrimitiveAdditiveTriple.freyChartApproximant_map
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (hd : IsUnit (f (t.freyPortJacobian i)))
    (j : A) (hj : f (t.freyPortJacobian i) * j = 1) (n : ℕ) :
    (t.freyChartApproximant i n).map (t.freyChartMap i f hd) =
      FreyJetRecursion.iterate (C j) (C (f (t.freyPortQuadraticCoefficientInt i))) X n := by
  have h := FreyJetRecursion.map_iterate (Polynomial.mapRingHom (t.freyChartMap i f hd))
    (C (t.freyChartInverse i))
    (C (algebraMap ℤ (FreyJetChart t i) (t.freyPortQuadraticCoefficientInt i))) X n
  simpa only [PrimitiveAdditiveTriple.freyChartApproximant, Polynomial.coe_mapRingHom,
    Polynomial.map_C, Polynomial.map_X, PrimitiveAdditiveTriple.freyChartMap_integer,
    t.freyChartMap_inverse i f hd j hj] using h

/-- Rationalization gives the existing approximant, not a newly fitted jet. -/
theorem PrimitiveAdditiveTriple.freyChartApproximant_toRat
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (n : ℕ) :
    (t.freyChartApproximant i n).map
      (t.freyChartMap i (Int.castRingHom ℚ)
        (isUnit_iff_ne_zero.mpr (t.freyPortJacobian_ne_zero i))) =
      t.freyJetApproximantPolynomial i n := by
  have h := t.freyChartApproximant_map i (Int.castRingHom ℚ)
    (isUnit_iff_ne_zero.mpr (t.freyPortJacobian_ne_zero i))
    ((t.freyPortJacobian i : ℚ)⁻¹)
    (mul_inv_cancel₀ (t.freyPortJacobian_ne_zero i)) n
  simpa [PrimitiveAdditiveTriple.freyJetApproximantPolynomial,
    t.freyPortQuadraticCoefficient_cast i] using h

/-- Exact shifted-cubic identity after any integral base change, before quotienting.
It ties the generic deformation theorem to the selected source root. -/
theorem PrimitiveAdditiveTriple.freyPort_shifted_cubic
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (z : A) :
    (f (t.freyPortRootInt i) + z) *
        (f (t.freyPortRootInt i) + z - f (t.a : ℤ)) *
        (f (t.freyPortRootInt i) + z + f (t.b : ℤ)) =
      f (t.freyPortJacobian i) * z +
        f (t.freyPortQuadraticCoefficientInt i) * z ^ 2 + z ^ 3 := by
  fin_cases i <;>
    simp [PrimitiveAdditiveTriple.freyPortRootInt,
      PrimitiveAdditiveTriple.freyPortJacobian,
      PrimitiveAdditiveTriple.freyPortQuadraticCoefficientInt] <;> ring

/-- Actual curve deformations reducing to the selected marked root modulo I.
No claim is made that these are all global points or global sections. -/
def PrimitiveAdditiveTriple.freyCurveNeighborhood
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (I : Ideal A) :=
  {p : A × A // p.1 - f (t.freyPortRootInt i) ∈ I ∧ p.2 ∈ I ∧
    p.1 * (p.1 - f (t.a : ℤ)) * (p.1 + f (t.b : ℤ)) = p.2 ^ 2}

/-- The factored equation used by the deformation set is Mathlib's affine
Equation for the SAME integral coefficient tuple after the declared ring map. -/
theorem PrimitiveAdditiveTriple.freyIntegralEquation_iff
    (t : PrimitiveAdditiveTriple) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (x y : A) :
    (t.freyIntegralModel.map f).toAffine.Equation x y ↔
      y ^ 2 = x * (x - f (t.a : ℤ)) * (x + f (t.b : ℤ)) := by
  rw [WeierstrassCurve.Affine.equation_iff]
  simp only [PrimitiveAdditiveTriple.freyIntegralModel, freyWeierstrassInt,
    WeierstrassCurve.map, map_zero, map_sub, map_neg, map_mul, zero_mul, add_zero]
  have hfactor : x ^ 3 + (f (t.b : ℤ) - f (t.a : ℤ)) * x ^ 2 +
      (-f (t.a : ℤ) * f (t.b : ℤ)) * x =
        x * (x - f (t.a : ℤ)) * (x + f (t.b : ℤ)) := by ring
  rw [hfactor]

/-- Each deformation satisfies the actual mapped affine equation. This is an
Equation statement over nilpotents, not a field-valued Point assertion. -/
theorem PrimitiveAdditiveTriple.freyCurveNeighborhood_equation
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (I : Ideal A) (p : t.freyCurveNeighborhood i f I) :
    (t.freyIntegralModel.map f).toAffine.Equation p.val.1 p.val.2 :=
  (t.freyIntegralEquation_iff f p.val.1 p.val.2).mpr p.property.2.2.symm

/-- Translation by the source root identifies the factored curve deformation
with the generic shifted branch. This does not identify different roots. -/
def PrimitiveAdditiveTriple.freyCurveNeighborhood_shift
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (I : Ideal A) :
    t.freyCurveNeighborhood i f I ≃
      FreyFormalNeighborhood.Branch I (f (t.freyPortJacobian i))
        (f (t.freyPortQuadraticCoefficientInt i)) where
  toFun p := ⟨(p.val.1 - f (t.freyPortRootInt i), p.val.2),
    p.property.1, p.property.2.1, by
      have h := t.freyPort_shifted_cubic i f (p.val.1 - f (t.freyPortRootInt i))
      have hr : f (t.freyPortRootInt i) + (p.val.1 - f (t.freyPortRootInt i)) =
          p.val.1 := by ring
      rw [hr] at h
      exact h.symm.trans p.property.2.2⟩
  invFun p := ⟨(f (t.freyPortRootInt i) + p.val.1, p.val.2),
    by simpa only [add_sub_cancel_left] using p.property.1,
    p.property.2.1, (t.freyPort_shifted_cubic i f p.val.1).trans p.property.2.2⟩
  left_inv p := by apply Subtype.ext; apply Prod.ext <;> dsimp <;> ring
  right_inv p := by apply Subtype.ext; apply Prod.ext <;> dsimp <;> ring

/-- The source-bound nilpotent deformation set is parametrized by I when the
chosen Jacobian has a genuine inverse. The equivalence is nonlinear, not isometric. -/
def PrimitiveAdditiveTriple.freyCurveNeighborhood_equiv
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (I : Ideal A) (N : ℕ) (hI : I ^ N = ⊥)
    (j : A) (hj : f (t.freyPortJacobian i) * j = 1) :
    t.freyCurveNeighborhood i f I ≃ I :=
  (t.freyCurveNeighborhood_shift i f I).trans
    (FreyFormalNeighborhood.parameterEquiv I N hI (f (t.freyPortJacobian i)) j
      (f (t.freyPortQuadraticCoefficientInt i)) hj)

/-- Over the concrete coefficient localization the inverse is already constructed. -/
noncomputable def PrimitiveAdditiveTriple.freyIntegralNeighborhood_equiv
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (g : FreyJetChart t i →+* A) (I : Ideal A) (N : ℕ) (hI : I ^ N = ⊥) :
    t.freyCurveNeighborhood i (g.comp (algebraMap ℤ (FreyJetChart t i))) I ≃ I :=
  t.freyCurveNeighborhood_equiv i (g.comp (algebraMap ℤ (FreyJetChart t i))) I N hI
    (g (t.freyChartInverse i)) (by
      simpa only [RingHom.comp_apply, map_mul, map_one] using
        congrArg g (t.freyChart_mul_inverse i))

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
