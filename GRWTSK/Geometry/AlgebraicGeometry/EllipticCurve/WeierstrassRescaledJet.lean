/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Integral rescaling of the OLD normalized origin lift. The substitution
Y=B*T, X=B*Z has determinant costs and is not a local-unit coordinate
change when B is not a unit. Compare the resulting finite polynomial with
the OLD lift by its nilpotent uniqueness theorem, before extracting costs.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.WeierstrassOriginJet
import Mathlib.Algebra.Polynomial.Eval.Degree

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.WeierstrassRescaledJet

open Polynomial WeierstrassCurve
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

variable {R S : Type*} [CommRing R] [CommRing S]

/-- Integral Picard iteration for Z=T^2+T*Z-A*Z^2-B*Z^3. -/
def iterate (A B e : R) : ℕ → R
  | 0 => 0
  | n+1 => e^2+e*iterate A B e n-A*(iterate A B e n)^2-B*(iterate A B e n)^3

theorem map_iterate (f : R →+* S) (A B e : R) (n : ℕ) :
    f (iterate A B e n)=iterate (f A) (f B) (f e) n := by
  induction n with
  | zero => simp [iterate]
  | succ n ih => simp only [iterate,map_add,map_sub,map_mul,map_pow,ih]

/-- Square divisibility retains zero constant and linear terms at every stage. -/
theorem square_dvd (A B e : R) (n : ℕ) : e^2 ∣ iterate A B e n := by
  induction n with
  | zero => exact dvd_zero _
  | succ n ih =>
    obtain ⟨z,hz⟩ := ih
    refine ⟨1+e*z-A*e^2*z^2-B*e^4*z^3, ?_⟩
    rw [iterate,hz]
    ring

/-- The extra parameter factor, not a real analytic contraction estimate. -/
theorem improvement (A B e x y : R) (n : ℕ)
    (hx : e ∣ x) (hy : e ∣ y) (hxy : e^n ∣ x-y) :
    e^(n+1) ∣ (e^2+e*x-A*x^2-B*x^3)-(e^2+e*y-A*y^2-B*y^3) := by
  obtain ⟨a,ha⟩ := hx
  obtain ⟨b,hb⟩ := hy
  obtain ⟨z,hz⟩ := hxy
  refine ⟨z*(1-A*(a+b)-B*e*(a^2+a*b+b^2)), ?_⟩
  calc
    _ = (x-y)*(e-A*(x+y)-B*(x^2+x*y+y^2)) := by ring
    _ = e^(n+1)*(z*(1-A*(a+b)-B*e*(a^2+a*b+b^2))) := by
      rw [hz,ha,hb,pow_succ]
      ring

theorem successive (A B e : R) (n : ℕ) :
    e^(n+2) ∣ iterate A B e (n+1)-iterate A B e n := by
  induction n with
  | zero => simpa [iterate] using (dvd_refl (e^2))
  | succ n ih =>
    have h1 : e ∣ iterate A B e (n+1) :=
      dvd_trans (by exact ⟨e,by ring⟩) (square_dvd A B e (n+1))
    have h0 : e ∣ iterate A B e n :=
      dvd_trans (by exact ⟨e,by ring⟩) (square_dvd A B e n)
    simpa only [iterate, Nat.add_assoc] using improvement A B e _ _ (n+2) h1 h0 ih

/-- Higher approximations have the same low coefficients. -/
theorem stable (A B e : R) (m n : ℕ) (hmn : m≤n) :
    e^(m+2) ∣ iterate A B e n-iterate A B e m := by
  induction n, hmn using Nat.le_induction with
  | base => simp
  | succ n hmn ih =>
    have hs : e^(m+2) ∣ iterate A B e (n+1)-iterate A B e n :=
      dvd_trans (pow_dvd_pow e (by omega)) (successive A B e n)
    convert dvd_add hs ih using 1 <;> ring

theorem solves (A B e : R) (n : ℕ) (he : e^n=0) :
    let z := iterate A B e n
    e^2+e*z-A*z^2-B*z^3=z := by
  have hz : e^(n+2)=0 := by rw [pow_add,he,zero_mul]
  have hh := successive A B e n
  rw [hz,zero_dvd_iff] at hh
  exact sub_eq_zero.mp hh

/-- Restoring the ORIGINAL parameter: x=B*Z(e/B), Y=e. -/
theorem rescaled_equation (A B j e : R) (hj : B*j=1)
    (n : ℕ) (he : e^n=0) :
    (WeierstrassSecondJet.model R A B).toAffine.Equation
      (B*iterate A B (j*e) n) e := by
  let t := j*e
  let z := iterate A B t n
  have ht : t^n=0 := by dsimp only [t]; rw [mul_pow,he,mul_zero]
  have hs : t^2+t*z-A*z^2-B*z^3=z := solves A B t n ht
  have hBe : e=B*t := by dsimp only [t]; rw [← mul_assoc,hj,one_mul]
  rw [WeierstrassMixedLift.equation_iff_shift]
  change (B-e)*(B*z)+A*(B*z)^2+(B*z)^3=e^2
  rw [hBe]
  linear_combination -B^2*hs

/-- Same OLD solution, proved by exhaustion in the nilpotent parameter ideal. -/
theorem equals_old_lift (A B j e : R) (hj : B*j=1)
    (n : ℕ) (he : e^n=0) :
    B*iterate A B (j*e) n=WeierstrassMixedLift.lift A j e n := by
  let I : Ideal R := Ideal.span {e}
  have hI : I^n=⊥ := by rw [I,Ideal.span_singleton_pow,he,Ideal.span_singleton_zero]
  have hem : e ∈ I := Ideal.subset_span (by simp)
  have hz : B*iterate A B (j*e) n ∈ I := by
    apply Ideal.mem_span_singleton.mpr
    obtain ⟨z,hz⟩ := square_dvd A B (j*e) n
    refine ⟨B*j^2*e*z, ?_⟩
    rw [hz]
    ring
  exact WeierstrassMixedLift.solution_eq_lift I n hI A B j e _ hj hem hz
    (rescaled_equation A B j e hj n he)

/-- Integer polynomials are produced BEFORE passing to rational coefficients. -/
def numeratorPolynomial (A B : ℤ) (N : ℕ) : ℤ[X] := iterate (C A) (C B) X N

theorem evaluate_numerator (A B : ℤ) (f : ℤ →+* S) (e : S) (N : ℕ) :
    (numeratorPolynomial A B N).eval₂ f e=iterate (f A) (f B) e N := by
  simpa only [numeratorPolynomial,eval₂RingHom_apply,eval₂_C,eval₂_X] using
    map_iterate (eval₂RingHom f e) (C A) (C B) (X : ℤ[X]) N

/-- Rational rescaling, with all factors B and B inverse retained. -/
def rationalPolynomial (A B : ℤ) (N : ℕ) : ℚ[X] :=
  C (B : ℚ) * ((numeratorPolynomial A B N).map (Int.castRingHom ℚ)).comp
    (C ((B : ℚ)⁻¹)*X)

theorem numerator_low (A B : ℤ) (N k : ℕ) (hk : k<2) :
    (numeratorPolynomial A B N).coeff k=0 :=
  (X_pow_dvd_iff.mp (square_dvd (C A) (C B) (X : ℤ[X]) N)) k hk

theorem numerator_stable (A B : ℤ) (M N k : ℕ) (hMN : M≤N) (hk : k<M+2) :
    (numeratorPolynomial A B N).coeff k=(numeratorPolynomial A B M).coeff k := by
  have h := (X_pow_dvd_iff.mp (stable (C A) (C B) (X : ℤ[X]) M N hMN)) k hk
  simpa only [coeff_sub,sub_eq_zero,numeratorPolynomial] using h

/-- The coefficient identity is read from exact composition, not pixel data or sampling. -/
theorem rational_coefficient (A B : ℤ) (hB : B≠0) (N k : ℕ) (hk : 1≤k) :
    (rationalPolynomial A B N).coeff k=
      ((numeratorPolynomial A B N).coeff k : ℚ)/(B : ℚ)^(k-1) := by
  have hb : (B : ℚ)≠0 := by exact_mod_cast hB
  rw [rationalPolynomial,coeff_C_mul,comp_C_mul_X_coeff,coeff_map]
  have hp : k=(k-1)+1 := by omega
  rw [hp,pow_succ]
  simp only [Nat.add_sub_cancel,Int.castRingHom_apply]
  field_simp [hb]
  <;> ring

theorem rational_low (A B : ℤ) (N k : ℕ) (hk : k<2) :
    (rationalPolynomial A B N).coeff k=0 := by
  simp [rationalPolynomial,coeff_C_mul,comp_C_mul_X_coeff,coeff_map,numerator_low A B N k hk]

/-- This exact polynomial represents x in the OLD finite parameter quotient. -/
theorem represents_old_lift (A B : ℤ) (hB : B≠0) (N : ℕ) :
    (rationalPolynomial A B (N+1)).eval₂ (FreyJetQuotient.parameterScalar ℚ N)
      (FreyJetQuotient.parameter ℚ N)=
      WeierstrassMixedLift.lift (FreyJetQuotient.parameterScalar ℚ N (A : ℚ))
        (FreyJetQuotient.parameterScalar ℚ N ((B : ℚ)⁻¹))
        (FreyJetQuotient.parameter ℚ N) (N+1) := by
  let c := FreyJetQuotient.parameterScalar ℚ N
  let e := FreyJetQuotient.parameter ℚ N
  have hb : (B : ℚ)≠0 := by exact_mod_cast hB
  have hj : c (B : ℚ)*c ((B : ℚ)⁻¹)=1 := by rw [← map_mul,mul_inv_cancel₀ hb,map_one]
  have hev : (rationalPolynomial A B (N+1)).eval₂ c e=
      c (B : ℚ)*iterate (c (A : ℚ)) (c (B : ℚ)) (c ((B : ℚ)⁻¹)*e) (N+1) := by
    simp only [rationalPolynomial,eval₂_mul,eval₂_C,eval₂_comp,eval₂_X,eval₂_map]
    rw [evaluate_numerator]
    rfl
  rw [hev]
  exact equals_old_lift (c (A : ℚ)) (c (B : ℚ)) (c ((B : ℚ)⁻¹)) e hj
    (N+1) (FreyJetQuotient.parameter_pow N)

/-- Stable low coefficients are independent of the chosen sufficiently high order. -/
theorem rational_stable (A B : ℤ) (hB : B≠0) (M N k : ℕ)
    (hMN : M≤N) (hk : k≤M) :
    (rationalPolynomial A B (N+1)).coeff k=(rationalPolynomial A B (M+1)).coeff k := by
  by_cases hz : k=0
  · subst k; rw [rational_low A B (N+1) 0 (by decide),rational_low A B (M+1) 0 (by decide)]
  · rw [rational_coefficient A B hB _ _ (by omega),rational_coefficient A B hB _ _ (by omega),
      numerator_stable A B (M+1) (N+1) k (by omega) (by omega)]

end GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.WeierstrassRescaledJet
