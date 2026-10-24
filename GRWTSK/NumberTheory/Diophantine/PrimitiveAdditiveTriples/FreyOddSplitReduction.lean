/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Odd-prime SPLIT multiplicative reduction of the same marked Frey curve.
Construct the genuine residue-field equivalence with ZMod p, reconcile the
chosen integral model, and consume Mathlib's actual tangent-polynomial
predicate. Source labels and the minus sign at primes dividing b are retained.
No dyadic splitness, conductor, Tate uniformization, Tamagawa or height claim.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyGlobalMinimalDiscriminant
import Mathlib.RingTheory.LocalRing.ResidueField.Basic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddSplitReduction

open WeierstrassCurve Polynomial
open FreyOddReduction
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting

/-- Reduction is defined on the OLD localization, not on arbitrary rationals. -/
def localMod (p : ℕ) [Fact p.Prime] : LocalRing p →+* ZMod p :=
  IsLocalization.lift (S := LocalRing p) (M := (primePlace p).asIdeal.primeCompl)
    (g := Int.castRingHom (ZMod p)) (by
      intro y
      apply isUnit_iff_ne_zero.mpr
      intro hy
      apply y.property
      change (y : ℤ) ∈ Ideal.span {(p : ℤ)}
      rw [Ideal.mem_span_singleton]
      exact (ZMod.intCast_zmod_eq_zero_iff_dvd (y : ℤ) p).mp hy)

@[simp] theorem localMod_int (p : ℕ) [Fact p.Prime] (z : ℤ) :
    localMod p (z : LocalRing p) = (z : ZMod p) := map_intCast _ _

/-- Reflect units by the exact numerator test for the actual localization. -/
instance localMod_isLocalHom (p : ℕ) [Fact p.Prime] : IsLocalHom (localMod p) := by
  constructor
  intro x hx
  obtain ⟨n, d, rfl⟩ := IsLocalization.exists_mk'_eq
    (M := (primePlace p).asIdeal.primeCompl) x
  apply (IsLocalization.AtPrime.isUnit_mk'_iff (LocalRing p)
    (primePlace p).asIdeal n d).mpr
  intro hn
  have hn0 : (n : ZMod p) = 0 := by
    apply (ZMod.intCast_zmod_eq_zero_iff_dvd n p).mpr
    simpa only [primePlace, Ideal.mem_span_singleton] using hn
  have hd : IsUnit (localMod p (algebraMap ℤ (LocalRing p) d)) :=
    (IsLocalization.map_units (LocalRing p) d).map (localMod p)
  have he := congrArg (localMod p) (IsLocalization.mk'_spec (LocalRing p) n d)
  have he' : localMod p (IsLocalization.mk' (LocalRing p) n d) *
      localMod p (algebraMap ℤ (LocalRing p) d) = 0 := by
    simpa only [map_mul, map_intCast, hn0] using he
  exact (mul_ne_zero (isUnit_iff_ne_zero.mp hx) (isUnit_iff_ne_zero.mp hd)) he'

/-- No residue field or finite-field identification is supplied as an assumption. -/
def residueEquiv (p : ℕ) [Fact p.Prime] :
    IsLocalRing.ResidueField (LocalRing p) ≃+* ZMod p :=
  RingEquiv.ofBijective (IsLocalRing.ResidueField.lift (localMod p))
    ⟨(IsLocalRing.ResidueField.lift (localMod p)).injective, by
      intro z
      refine ⟨(z.val : IsLocalRing.ResidueField (LocalRing p)), ?_⟩
      simp⟩

@[simp] theorem residueEquiv_int (p : ℕ) [Fact p.Prime] (z : ℤ) :
    residueEquiv p (z : IsLocalRing.ResidueField (LocalRing p)) = (z : ZMod p) :=
  map_intCast _ _

/-- Both integral-model selection and coefficient-field transport are reconciled. -/
theorem split_iff_residuePolynomial (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) (hbad : p ∣ t.a*t.b*t.c) :
    HasSplitMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      (tangentPolynomial (t.freyResidueModel p)).Splits := by
  have hm : HasMultiplicativeReduction (LocalRing p)
      ((localizedModel t p).baseChange ℚ) := by
    simpa only [localizedModel_baseChange] using multiplicative_at_odd_prime t p hp2 hbad
  have hs := split_iff_supplied_model (LocalRing p) (K := ℚ) (localizedModel t p) hm
  rw [localizedModel_baseChange] at hs
  let f := (tangentPolynomial (localizedModel t p)).map
    (algebraMap (LocalRing p) (IsLocalRing.ResidueField (LocalRing p)))
  have he := splits_map_equiv (residueEquiv p) f
  have hf : f.map (residueEquiv p).toRingHom =
      tangentPolynomial (t.freyResidueModel p) := by
    dsimp only [f]
    rw [Polynomial.map_map, map_tangentPolynomial]
    congr 1
    ext <;> simp [localizedModel, PrimitiveAdditiveTriple.freyResidueModel,
      PrimitiveAdditiveTriple.freyIntegralModel, freyWeierstrassInt, WeierstrassCurve.map]
  exact hs.trans (he.symm.trans (by rw [hf]))

/-- One literal residue polynomial; the source model and signs are not refitted. -/
theorem residue_tangent_polynomial (t : PrimitiveAdditiveTriple) (p : ℕ) :
    tangentPolynomial (t.freyResidueModel p) =
      C (16*((t.a : ZMod p)^2 + (t.a : ZMod p)*t.b + (t.b : ZMod p)^2))*X^2 -
      C (8*((t.b : ZMod p)-t.a)*(2*(t.a : ZMod p)+t.b)*((t.a : ZMod p)+2*t.b)) := by
  simp [tangentPolynomial, PrimitiveAdditiveTriple.freyResidueModel,
    PrimitiveAdditiveTriple.freyIntegralModel, freyWeierstrassInt,
    WeierstrassCurve.map, WeierstrassCurve.c₄, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆] <;> ring

/-- At p|a the repeated branch is x=0, with tangent slopes squared equal to b. -/
theorem tangent_polynomial_of_dvd_a (t : PrimitiveAdditiveTriple)
    (p : ℕ) (ha : p ∣ t.a) :
    tangentPolynomial (t.freyResidueModel p) =
      C (16*(t.b : ZMod p)^2)*(X^2-C (t.b : ZMod p)) := by
  have hz := (ZMod.natCast_eq_zero_iff t.a p).mpr ha
  rw [residue_tangent_polynomial, hz]
  simp only [zero_pow (by decide : (2 : ℕ) ≠ 0), zero_mul, mul_zero,
    zero_add, add_zero, sub_zero, map_mul, map_pow, map_ofNat]
  ring

/-- At p|b the square test is -a, NOT a. -/
theorem tangent_polynomial_of_dvd_b (t : PrimitiveAdditiveTriple)
    (p : ℕ) (hb : p ∣ t.b) :
    tangentPolynomial (t.freyResidueModel p) =
      C (16*(t.a : ZMod p)^2)*(X^2-C (-(t.a : ZMod p))) := by
  have hz := (ZMod.natCast_eq_zero_iff t.b p).mpr hb
  rw [residue_tangent_polynomial, hz]
  simp only [zero_pow (by decide : (2 : ℕ) ≠ 0), zero_mul, mul_zero,
    zero_add, add_zero, zero_sub, map_mul, map_pow, map_neg, map_ofNat]
  ring

/-- At p|c the node is at x=a, not at the origin. -/
theorem residue_b_of_dvd_c (t : PrimitiveAdditiveTriple)
    (p : ℕ) (hc : p ∣ t.c) : (t.b : ZMod p) = -(t.a : ZMod p) := by
  have hs : (t.a : ZMod p)+(t.b : ZMod p)=(t.c : ZMod p) := by
    exact_mod_cast t.sum_eq
  have hz := (ZMod.natCast_eq_zero_iff t.c p).mpr hc
  rw [hz] at hs
  linear_combination hs

theorem tangent_polynomial_of_dvd_c (t : PrimitiveAdditiveTriple)
    (p : ℕ) (hc : p ∣ t.c) :
    tangentPolynomial (t.freyResidueModel p) =
      C (16*(t.a : ZMod p)^2)*(X^2-C (t.a : ZMod p)) := by
  rw [residue_tangent_polynomial, residue_b_of_dvd_c t p hc]
  simp only [map_mul, map_add, map_sub, map_neg, map_pow, map_ofNat]
  ring

/-- Exact split-reduction criterion in the actual residue field, identified with F_p. -/
theorem split_iff_of_dvd_a (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) (ha : p ∣ t.a) :
    HasSplitMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      ∃ r : ZMod p, r^2 = (t.b : ZMod p) := by
  have hbad : p ∣ t.a*t.b*t.c := dvd_mul_of_dvd_left (dvd_mul_of_dvd_left ha _) _
  have ha0 := (ZMod.natCast_eq_zero_iff t.a p).mpr ha
  have hb0 : (t.b : ZMod p) ≠ 0 := by
    simpa only [ha0, ne_eq, not_true_eq_false, false_or] using t.freyResidueParameters_nonzero p
  have h16 := frey_sixteen_ne_zero (frey_two_ne_zero_mod p hp2)
  rw [split_iff_residuePolynomial t p hp2 hbad, tangent_polynomial_of_dvd_a t p ha]
  exact splits_scaled_quadratic_iff _ _ (mul_ne_zero h16 (pow_ne_zero 2 hb0))

theorem split_iff_of_dvd_b (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) (hb : p ∣ t.b) :
    HasSplitMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      ∃ r : ZMod p, r^2 = -(t.a : ZMod p) := by
  have hbad : p ∣ t.a*t.b*t.c := dvd_mul_of_dvd_left (dvd_mul_of_dvd_right hb _) _
  have hb0 := (ZMod.natCast_eq_zero_iff t.b p).mpr hb
  have ha0 : (t.a : ZMod p) ≠ 0 := by
    simpa only [hb0, ne_eq, not_true_eq_false, or_false] using t.freyResidueParameters_nonzero p
  have h16 := frey_sixteen_ne_zero (frey_two_ne_zero_mod p hp2)
  rw [split_iff_residuePolynomial t p hp2 hbad, tangent_polynomial_of_dvd_b t p hb]
  exact splits_scaled_quadratic_iff _ _ (mul_ne_zero h16 (pow_ne_zero 2 ha0))

theorem split_iff_of_dvd_c (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) (hc : p ∣ t.c) :
    HasSplitMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      ∃ r : ZMod p, r^2 = (t.a : ZMod p) := by
  have hbad : p ∣ t.a*t.b*t.c := dvd_mul_of_dvd_right hc _
  have hb := residue_b_of_dvd_c t p hc
  have ha0 : (t.a : ZMod p) ≠ 0 := by
    simpa [hb] using t.freyResidueParameters_nonzero p
  have h16 := frey_sixteen_ne_zero (frey_two_ne_zero_mod p hp2)
  rw [split_iff_residuePolynomial t p hp2 hbad, tangent_polynomial_of_dvd_c t p hc]
  exact splits_scaled_quadratic_iff _ _ (mul_ne_zero h16 (pow_ne_zero 2 ha0))

/-- Covers EVERY odd prime. No good prime is assigned a spurious split flag. -/
theorem split_at_odd_iff (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) :
    HasSplitMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      (p ∣ t.a ∧ ∃ r : ZMod p, r^2 = (t.b : ZMod p)) ∨
      (p ∣ t.b ∧ ∃ r : ZMod p, r^2 = -(t.a : ZMod p)) ∨
      (p ∣ t.c ∧ ∃ r : ZMod p, r^2 = (t.a : ZMod p)) := by
  constructor
  · intro h
    have hp : p.Prime := Fact.out
    have hd := (multiplicative_iff_at_odd_prime t p hp2).mp h.toHasMultiplicativeReduction
    rcases hp.dvd_mul.mp hd with hab | hc
    · rcases hp.dvd_mul.mp hab with ha | hb
      · exact Or.inl ⟨ha, (split_iff_of_dvd_a t p hp2 ha).mp h⟩
      · exact Or.inr (Or.inl ⟨hb, (split_iff_of_dvd_b t p hp2 hb).mp h⟩)
    · exact Or.inr (Or.inr ⟨hc, (split_iff_of_dvd_c t p hp2 hc).mp h⟩)
  · rintro (⟨ha, h⟩ | ⟨hb, h⟩ | ⟨hc, h⟩)
    · exact (split_iff_of_dvd_a t p hp2 ha).mpr h
    · exact (split_iff_of_dvd_b t p hp2 hb).mpr h
    · exact (split_iff_of_dvd_c t p hp2 hc).mpr h

/-- The node calculation is on the literal old residue curve and its actual first jets. -/
theorem singular_at_origin_of_dvd_a (t : PrimitiveAdditiveTriple)
    (p : ℕ) (ha : p ∣ t.a) :
    (t.freyResidueModel p).toAffine.Equation 0 0 ∧
    (t.freyResidueModel p).toAffine.polynomialX.evalEval 0 0 = 0 ∧
    (t.freyResidueModel p).toAffine.polynomialY.evalEval 0 0 = 0 := by
  have hz := (ZMod.natCast_eq_zero_iff t.a p).mpr ha
  simp [Affine.equation_iff, Affine.evalEval_polynomialX, Affine.evalEval_polynomialY,
    PrimitiveAdditiveTriple.freyResidueModel, PrimitiveAdditiveTriple.freyIntegralModel,
    freyWeierstrassInt, WeierstrassCurve.map, hz]

theorem singular_at_origin_of_dvd_b (t : PrimitiveAdditiveTriple)
    (p : ℕ) (hb : p ∣ t.b) :
    (t.freyResidueModel p).toAffine.Equation 0 0 ∧
    (t.freyResidueModel p).toAffine.polynomialX.evalEval 0 0 = 0 ∧
    (t.freyResidueModel p).toAffine.polynomialY.evalEval 0 0 = 0 := by
  have hz := (ZMod.natCast_eq_zero_iff t.b p).mpr hb
  simp [Affine.equation_iff, Affine.evalEval_polynomialX, Affine.evalEval_polynomialY,
    PrimitiveAdditiveTriple.freyResidueModel, PrimitiveAdditiveTriple.freyIntegralModel,
    freyWeierstrassInt, WeierstrassCurve.map, hz]

theorem singular_at_a_of_dvd_c (t : PrimitiveAdditiveTriple)
    (p : ℕ) (hc : p ∣ t.c) :
    (t.freyResidueModel p).toAffine.Equation (t.a : ZMod p) 0 ∧
    (t.freyResidueModel p).toAffine.polynomialX.evalEval (t.a : ZMod p) 0 = 0 ∧
    (t.freyResidueModel p).toAffine.polynomialY.evalEval (t.a : ZMod p) 0 = 0 := by
  have hb := residue_b_of_dvd_c t p hc
  refine ⟨?_, ?_, ?_⟩ <;>
    simp [Affine.equation_iff, Affine.evalEval_polynomialX, Affine.evalEval_polynomialY,
    PrimitiveAdditiveTriple.freyResidueModel, PrimitiveAdditiveTriple.freyIntegralModel,
    freyWeierstrassInt, WeierstrassCurve.map, hb] <;> ring

/-- Full local expansion: the tangent cone is quadratic but the curve retains -u^3. -/
theorem expansion_of_dvd_a (t : PrimitiveAdditiveTriple) (p : ℕ)
    (ha : p ∣ t.a) (u v : ZMod p) :
    (t.freyResidueModel p).toAffine.polynomial.evalEval u v =
      v^2-(t.b : ZMod p)*u^2-u^3 := by
  have hz := (ZMod.natCast_eq_zero_iff t.a p).mpr ha
  simp [Affine.evalEval_polynomial, PrimitiveAdditiveTriple.freyResidueModel,
    PrimitiveAdditiveTriple.freyIntegralModel, freyWeierstrassInt, WeierstrassCurve.map, hz] <;> ring

theorem expansion_of_dvd_b (t : PrimitiveAdditiveTriple) (p : ℕ)
    (hb : p ∣ t.b) (u v : ZMod p) :
    (t.freyResidueModel p).toAffine.polynomial.evalEval u v =
      v^2+(t.a : ZMod p)*u^2-u^3 := by
  have hz := (ZMod.natCast_eq_zero_iff t.b p).mpr hb
  simp [Affine.evalEval_polynomial, PrimitiveAdditiveTriple.freyResidueModel,
    PrimitiveAdditiveTriple.freyIntegralModel, freyWeierstrassInt, WeierstrassCurve.map, hz] <;> ring

theorem expansion_of_dvd_c (t : PrimitiveAdditiveTriple) (p : ℕ)
    (hc : p ∣ t.c) (u v : ZMod p) :
    (t.freyResidueModel p).toAffine.polynomial.evalEval ((t.a : ZMod p)+u) v =
      v^2-(t.a : ZMod p)*u^2-u^3 := by
  have hb := residue_b_of_dvd_c t p hc
  simp [Affine.evalEval_polynomial, PrimitiveAdditiveTriple.freyResidueModel,
    PrimitiveAdditiveTriple.freyIntegralModel, freyWeierstrassInt, WeierstrassCurve.map, hb] <;> ring

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddSplitReduction
