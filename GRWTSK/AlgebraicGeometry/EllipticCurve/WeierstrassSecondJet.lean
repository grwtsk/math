/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

Actual parameter jets R[T]/(T^3), their truncation to the OLD dual-number
algebra, and the obstruction to lifting a curve-valued first jet. The full
Weierstrass equation is used before truncation. This is not a construction
of all intrinsic principal parts, a global section space or an adelic bound.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Basic
import Mathlib.Algebra.Polynomial.Div
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet

open Polynomial WeierstrassCurve
open GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder

variable (R : Type*) [CommRing R]

/-- This is the parameter algebra of length THREE, not the old length-two order. -/
def jetIdeal : Ideal R[X] := Ideal.span {(X : R[X])^3}
abbrev Jet2 := R[X] ⧸ jetIdeal R

def jetMap : R[X] →+* Jet2 R := Ideal.Quotient.mk (jetIdeal R)
def scalar : R →+* Jet2 R := (jetMap R).comp C

def normalPolynomial (a b c : R) : R[X] := C a + C b*X + C c*X^2
def jet (a b c : R) : Jet2 R := jetMap R (normalPolynomial R a b c)

theorem jetMap_zero_iff (f : R[X]) :
    jetMap R f=0 ↔ (X : R[X])^3 ∣ f := by
  rw [jetMap, Ideal.Quotient.eq_zero_iff_mem, jetIdeal, Ideal.mem_span_singleton]

/-- Exact quotient equality, using all three coefficients, not evaluation at samples. -/
theorem jetMap_eq_iff (f g : R[X]) :
    jetMap R f=jetMap R g ↔ ∀ n<3, f.coeff n=g.coeff n := by
  rw [← sub_eq_zero, ← map_sub, jetMap_zero_iff, X_pow_dvd_iff]
  simp only [coeff_sub, sub_eq_zero]

theorem normal_form (f : R[X]) :
    jetMap R f=jet R (f.coeff 0) (f.coeff 1) (f.coeff 2) := by
  apply (jetMap_eq_iff R _ _).mpr
  intro n hn
  interval_cases n <;> simp [normalPolynomial]

theorem jet_eq_iff (a b c d e f : R) :
    jet R a b c=jet R d e f ↔ a=d ∧ b=e ∧ c=f := by
  rw [jet, jet, jetMap_eq_iff]
  constructor
  · intro h
    exact ⟨by simpa [normalPolynomial] using h 0 (by decide),
      by simpa [normalPolynomial] using h 1 (by decide),
      by simpa [normalPolynomial] using h 2 (by decide)⟩
  · rintro ⟨rfl,rfl,rfl⟩ n hn
    rfl

/-- Every quotient class has this form; the later lifting obstruction is exhaustive. -/
theorem exists_normal_form (z : Jet2 R) : ∃ a b c : R, z=jet R a b c := by
  obtain ⟨f,rfl⟩ := Ideal.Quotient.mk_surjective z
  exact ⟨f.coeff 0,f.coeff 1,f.coeff 2,normal_form R f⟩

def epsilon : Jet2 R := jetMap R X

theorem epsilon_cube : epsilon R ^ 3=0 := by
  change (jetMap R X)^3=0
  rw [← map_pow]
  exact (jetMap_zero_iff R _).mpr (dvd_refl _)

theorem epsilon_square_ne_zero [Nontrivial R] : epsilon R ^ 2 ≠ 0 := by
  intro h
  have hh : (X : R[X])^3 ∣ X^2 :=
    (jetMap_zero_iff R _).mp (by simpa [epsilon, map_pow] using h)
  have hc := X_pow_dvd_iff.mp hh 2 (by decide)
  simpa using hc

/-- Evaluate into the EXISTING square-zero quadratic algebra. -/
def dualEval : R[X] →+* Carrier R 0 :=
  Polynomial.eval₂RingHom (algebraMap R (Carrier R 0)) (generator 0)

private theorem dualEval_cube : dualEval R (X^3)=0 := by
  apply QuadraticAlgebra.ext <;> simp [dualEval, generator, pow_succ]

/-- Actual quotient-ring truncation, not a projection on plotted values. -/
def truncate : Jet2 R →+* Carrier R 0 :=
  Ideal.Quotient.lift (jetIdeal R) (dualEval R) (by
    intro f hf
    obtain ⟨q,hq⟩ := Ideal.mem_span_singleton.mp hf
    rw [hq, map_mul, dualEval_cube, zero_mul])

theorem truncate_jet (a b c : R) : truncate R (jet R a b c)=⟨a,b⟩ := by
  apply QuadraticAlgebra.ext <;>
    simp [truncate, jet, jetMap, normalPolynomial, dualEval, generator, pow_two]

/-- Characterizes ALL lifts of a given first jet, including arbitrary quadratic correction. -/
theorem truncate_fiber (z : Jet2 R) (a b : R) :
    truncate R z=⟨a,b⟩ ↔ ∃ c : R, z=jet R a b c := by
  constructor
  · intro h
    obtain ⟨d,e,f,rfl⟩ := exists_normal_form R z
    rw [truncate_jet] at h
    have hd : d=a := congrArg QuadraticAlgebra.re h
    have he : e=b := congrArg QuadraticAlgebra.im h
    subst d
    subst e
    exact ⟨f,rfl⟩
  · rintro ⟨c,rfl⟩
    exact truncate_jet R a b c

theorem truncate_surjective : Function.Surjective (truncate R) := by
  intro z
  exact ⟨jet R z.re z.im 0,truncate_jet R _ _ _⟩

/-- Fixed normalization Y=T modulo T^2; this does not permit rescaling by a nonunit. -/
def HasVerticalLift (W : WeierstrassCurve R) : Prop :=
  ∃ x y : Jet2 R, truncate R x=0 ∧ truncate R y=generator 0 ∧
    (W.map (scalar R)).toAffine.Equation x y

/-- Generic shape of the OLD selected equation on its descending domain. -/
def model (A B : R) : WeierstrassCurve R where
  a₁ := 1
  a₂ := A
  a₃ := 0
  a₄ := B
  a₆ := 0

def arcPolynomial (u a : R) : R[X] := C u*X+C a*X^2

def residual (A B u v a b : R) : R[X] :=
  ((model R A B).map C).toAffine.polynomial.evalEval
    (arcPolynomial R u a) (arcPolynomial R v b)

/-- Exact full expansion: the T^3 remainder is retained, never identified with zero in R[T]. -/
theorem residual_expansion (A B u v a b : R) :
    residual R A B u v a b =
      C (-B*u)*X + C (v^2+u*v-A*u^2-B*a)*X^2 + X^3 *
        (C (2*v*b+u*b+a*v-u^3-2*A*u*a) +
          C (b^2+a*b-3*u^2*a-A*a^2)*X - C (3*u*a^2)*X^2 - C (a^3)*X^3) := by
  simp only [residual, Affine.evalEval_polynomial, WeierstrassCurve.map,
    model, arcPolynomial, map_one, map_zero, one_mul, zero_mul, add_zero,
    map_add, map_sub, map_neg, map_mul, map_pow, map_ofNat]
  ring

theorem residual_coefficients (A B u v a b : R) :
    (residual R A B u v a b).coeff 0=0 ∧
    (residual R A B u v a b).coeff 1= -B*u ∧
    (residual R A B u v a b).coeff 2=v^2+u*v-A*u^2-B*a := by
  rw [residual_expansion]
  simp [coeff_X_pow_mul']

/-- Polynomial congruence in the ACTUAL quotient is the curve-equation condition. -/
theorem mapped_residual (A B u v a b : R) :
    jetMap R (residual R A B u v a b) =
      ((model R A B).map (scalar R)).toAffine.polynomial.evalEval
        (jet R 0 u a) (jet R 0 v b) := by
  simp [residual, Affine.evalEval_polynomial, WeierstrassCurve.map,
    model, arcPolynomial, jet, normalPolynomial, scalar, RingHom.comp_apply]

/-- First equation is the differential; second equation is the quadratic obstruction. -/
theorem equation_iff (A B u v a b : R) :
    ((model R A B).map (scalar R)).toAffine.Equation
      (jet R 0 u a) (jet R 0 v b) ↔
        B*u=0 ∧ B*a=v^2+u*v-A*u^2 := by
  change ((model R A B).map (scalar R)).toAffine.polynomial.evalEval
    (jet R 0 u a) (jet R 0 v b)=0 ↔ _
  rw [← mapped_residual, jetMap_zero_iff, X_pow_dvd_iff]
  obtain ⟨h0,h1,h2⟩ := residual_coefficients R A B u v a b
  constructor
  · intro h
    have hu := h 1 (by decide)
    have ha := h 2 (by decide)
    rw [h1] at hu
    rw [h2] at ha
    exact ⟨by simpa only [neg_mul, neg_eq_zero] using hu,
      (sub_eq_zero.mp ha).symm⟩
  · rintro ⟨hu,ha⟩ n hn
    interval_cases n
    · exact h0
    · simpa only [h1,neg_mul,hu,neg_zero]
    · rw [h2,ha,sub_self]

/-- Exhaustive lift criterion: arbitrary quotient coordinates, not an ansatz. -/
theorem vertical_lift_iff_unit (A B : R) :
    HasVerticalLift R (model R A B) ↔ IsUnit B := by
  constructor
  · rintro ⟨x,y,hx,hy,he⟩
    obtain ⟨a,rfl⟩ := (truncate_fiber R x 0 0).mp hx
    obtain ⟨b,rfl⟩ := (truncate_fiber R y 0 1).mp hy
    have hh := ((equation_iff R A B 0 1 a b).mp he).2
    have hb : B*a=1 := by simpa using hh
    exact isUnit_iff_exists_inv.mpr ⟨a,hb⟩
  · intro hB
    obtain ⟨a,ha⟩ := isUnit_iff_exists_inv.mp hB
    refine ⟨jet R 0 0 a,jet R 0 1 0,?_,?_,?_⟩
    · exact truncate_jet R 0 0 a
    · exact truncate_jet R 0 1 0
    · rw [equation_iff]
      simpa using And.intro (mul_zero B) ha

/-- The obstruction is the surviving square of the parameter, for EVERY correction. -/
theorem vertical_node_residual (A a b : R) :
    jetMap R (residual R A 0 0 1 a b)=epsilon R^2 := by
  rw [epsilon, ← map_pow]
  apply (jetMap_eq_iff R _ _).mpr
  obtain ⟨h0,h1,h2⟩ := residual_coefficients R A 0 0 1 a b
  intro n hn
  interval_cases n <;> simp_all

/-- No second jet in the specified vertical direction at ANY singular B=0 model. -/
theorem no_vertical_lift_at_node [Nontrivial R] (A : R) :
    ¬ HasVerticalLift R (model R A 0) := by
  rw [vertical_lift_iff_unit]
  exact not_isUnit_zero

/-- Exact coefficient of a normalized vertical lift, over any field. -/
theorem vertical_field_coefficient {K : Type*} [Field K]
    (A B a b : K) (hB : B ≠ 0) :
    ((model K A B).map (scalar K)).toAffine.Equation
      (jet K 0 0 a) (jet K 0 1 b) ↔ a=1/B := by
  rw [equation_iff]
  simp only [mul_zero,zero_mul,zero_pow (by decide : (2 : ℕ) ≠ 0),
    one_pow,zero_add,add_zero,sub_zero,true_and]
  constructor
  · intro ha
    apply (eq_div_iff hB).mpr
    simpa only [mul_comm] using ha
  · rintro rfl
    field_simp [hB]

/-- Clearing this one rational second-jet coefficient retains the FULL integer B. -/
theorem reciprocal_clearing_iff (B d : ℤ) (hB : B ≠ 0) :
    (∃ z : ℤ, (z : ℚ)=(d : ℚ)/(B : ℚ)) ↔ B ∣ d := by
  have hq : (B : ℚ) ≠ 0 := by exact_mod_cast hB
  constructor
  · rintro ⟨z,hz⟩
    refine ⟨z,?_⟩
    have he := (eq_div_iff hq).mp hz
    exact_mod_cast (by simpa only [mul_comm] using he.symm : (d : ℚ)=(B : ℚ)*z)
  · rintro ⟨z,hz⟩
    refine ⟨z,?_⟩
    apply (eq_div_iff hq).mpr
    exact_mod_cast (by simpa only [mul_comm] using hz.symm : z*B=d)

/-- Complete binary tangent-cone test. Unlike a finite source grid, F_2 is exhausted. -/
theorem binary_tangent_test (A u v : ZMod 2) :
    ((u ≠ 0 ∨ v ≠ 0) ∧ v^2+u*v-A*u^2=0) ↔ A=0 ∧ u=1 := by
  revert A u v
  decide

/-- At a node, nonzero directions lift to order two only on the actual tangent cone. -/
theorem binary_node_directions (A u v a b : ZMod 2) :
    ((u ≠ 0 ∨ v ≠ 0) ∧
      ((model (ZMod 2) A 0).map (scalar (ZMod 2))).toAffine.Equation
        (jet (ZMod 2) 0 u a) (jet (ZMod 2) 0 v b)) ↔ A=0 ∧ u=1 := by
  rw [equation_iff]
  simp only [zero_mul,true_and]
  rw [eq_comm (a := (0 : ZMod 2))]
  exact binary_tangent_test A u v

end GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet
