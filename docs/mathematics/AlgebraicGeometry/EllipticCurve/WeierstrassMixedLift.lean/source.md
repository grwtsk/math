# Complete source: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassMixedLift

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eccdce322f9011544c39df1331a1e90ad7bcb957` · SHA-256 `8d5edf655c88b033bcdf7493f54d8d1bb15a15ae0930089f8bbd06300913546b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Reuse the OLD nilpotent cubic solver for Y^2+XY=X^3+A X^2+B X.
The linear coefficient is B-Y, not B. Its inverse is a finite geometric
sum with the SAME explicit inverse of B. All statements are algebraic;
no analytic convergence, completed-ring identification or height bound.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassMixedLift

open Polynomial WeierstrassCurve
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open WeierstrassSecondJet

variable {R S : Type*} [CommRing R] [CommRing S]

/-- j*(1+j*e+...+(j*e)^(N-1)), with no division by an integer. -/
def resolvent (j e : R) : ℕ → R
  | 0 => 0
  | N+1 => j+j*e*resolvent j e N

theorem resolvent_balance (B j e : R) (hj : B*j=1) (N : ℕ) :
    (B-e)*resolvent j e N=1-(j*e)^N := by
  induction N with
  | zero => simp [resolvent]
  | succ N ih =>
    calc
      (B-e)*resolvent j e (N+1) =
          B*j-e*j+j*e*((B-e)*resolvent j e N) := by rw [resolvent]; ring
      _ = 1-(j*e)^(N+1) := by rw [hj,ih,pow_succ]; ring

/-- Nilpotence turns the finite sum into an EXACT inverse. -/
theorem resolvent_inverse (B j e : R) (hj : B*j=1)
    (N : ℕ) (he : e^N=0) : (B-e)*resolvent j e N=1 := by
  rw [resolvent_balance B j e hj N,mul_pow,he,mul_zero,sub_zero]

theorem map_resolvent (f : R →+* S) (j e : R) (N : ℕ) :
    f (resolvent j e N)=resolvent (f j) (f e) N := by
  induction N with
  | zero => simp [resolvent]
  | succ N ih => simp [resolvent,ih]

/-- The inherited solver, now with the parameter-dependent linear inverse. -/
def lift (A j e : R) (N : ℕ) : R :=
  FreyJetRecursion.iterate (resolvent j e N) A e N

theorem map_lift (f : R →+* S) (A j e : R) (N : ℕ) :
    f (lift A j e N)=lift (f A) (f j) (f e) N := by
  simp only [lift,FreyJetRecursion.map_iterate,map_resolvent]

theorem lift_mem (I : Ideal R) (A j e : R) (he : e ∈ I) (N : ℕ) :
    lift A j e N ∈ I :=
  FreyFormalNeighborhood.iterate_mem I _ A e he N

theorem lift_square_dvd (A j e : R) (N : ℕ) : e^2 ∣ lift A j e N :=
  FreyJetRecursion.square_dvd_iterate _ A e N

/-- The literal equation of the OLD selected-model shape. -/
theorem equation_iff_shift (A B z e : R) :
    (model R A B).toAffine.Equation z e ↔ (B-e)*z+A*z^2+z^3=e^2 := by
  rw [Affine.equation_iff]
  simp only [model,one_mul,zero_mul,add_zero]
  constructor <;> intro h <;> linear_combination -h

/-- Every finite nilpotence bound produces an exact curve-valued lift. -/
theorem lift_equation (A B j e : R) (hj : B*j=1)
    (N : ℕ) (he : e^N=0) :
    (model R A B).toAffine.Equation (lift A j e N) e := by
  rw [equation_iff_shift]
  exact FreyJetRecursion.iterate_solves (B-e) (resolvent j e N) A e
    (resolvent_inverse B j e hj N he) N
    (FreyJetRecursion.power_zero_of_le e he (by omega))

/-- Exhaustion on the WHOLE nilpotent origin ideal, not only a principal ansatz. -/
theorem solution_eq_lift (I : Ideal R) (N : ℕ) (hI : I^N=⊥)
    (A B j e z : R) (hj : B*j=1) (he : e ∈ I) (hz : z ∈ I)
    (hsol : (model R A B).toAffine.Equation z e) : z=lift A j e N := by
  have hn := FreyFormalNeighborhood.element_power_zero I N hI e he
  exact FreyFormalNeighborhood.solution_eq_iterate I N hI (B-e)
    (resolvent j e N) A e z (resolvent_inverse B j e hj N hn) he hz
    ((equation_iff_shift A B z e).mp hsol)

/-- A different nilpotence bound or coefficient map does not alter the branch. -/
theorem lift_natural (f : R →+* S) (I : Ideal R) (J : Ideal S)
    (hIJ : ∀ z, z ∈ I → f z ∈ J) (N M : ℕ) (hI : I^N=⊥) (hJ : J^M=⊥)
    (A B j e : R) (hj : B*j=1) (he : e ∈ I) :
    f (lift A j e N)=lift (f A) (f j) (f e) M := by
  apply solution_eq_lift J M hJ (f A) (f B) (f j) (f e) _
    (by simpa only [map_mul,map_one] using congrArg f hj)
    (hIJ e he) (hIJ _ (lift_mem I A j e he N))
  rw [equation_iff_shift]
  have hs := (equation_iff_shift A B _ e).mp
    (lift_equation A B j e hj N
      (FreyFormalNeighborhood.element_power_zero I N hI e he))
  simpa only [map_add,map_sub,map_mul,map_pow] using congrArg f hs

/-- The actual next coefficient test, with fixed normalization Y=T. -/
def cubicResidual (A B a g : R) : R[X] :=
  ((model R A B).map C).toAffine.polynomial.evalEval
    (C a*X^2+C g*X^3) X

theorem cubic_residual_expansion (A B a g : R) :
    cubicResidual A B a g = C (1-B*a)*X^2+C (a-B*g)*X^3+X^4*
      (C (g-A*a^2)-C (2*A*a*g)*X-C (A*g^2+a^3)*X^2-
        C (3*a^2*g)*X^3-C (3*a*g^2)*X^4-C (g^3)*X^5) := by
  simp only [cubicResidual,Affine.evalEval_polynomial,WeierstrassCurve.map,
    model,map_one,map_zero,one_mul,zero_mul,add_zero]
  simp only [map_add,map_sub,map_mul,map_pow,map_ofNat]
  ring

/-- Divisibility by T^4 is the full equation modulo T^4, not a sampled test. -/
theorem cubic_equation_iff (A B a g : R) :
    (X : R[X])^4 ∣ cubicResidual A B a g ↔ B*a=1 ∧ B*g=a := by
  rw [cubic_residual_expansion,X_pow_dvd_iff]
  constructor
  · intro h
    have h2 := h 2 (by decide)
    have h3 := h 3 (by decide)
    simp only [coeff_add,coeff_C_mul_X_pow,coeff_X_pow_mul'] at h2 h3
    norm_num at h2 h3
    exact ⟨(sub_eq_zero.mp h2).symm,(sub_eq_zero.mp h3).symm⟩
  · rintro ⟨h2,h3⟩ n hn
    interval_cases n <;> simp [coeff_X_pow_mul',h2,h3]

/-- Denominator SQUARING is forced at third order; no inverse-index surrogate. -/
theorem cubic_field_coefficients {K : Type*} [Field K] (A B a g : K) (hB : B≠0) :
    (X : K[X])^4 ∣ cubicResidual A B a g ↔ a=1/B ∧ g=1/B^2 := by
  rw [cubic_equation_iff]
  constructor
  · rintro ⟨ha,hg⟩
    have ha' : a=1/B := (eq_div_iff hB).mpr (by simpa [mul_comm] using ha)
    refine ⟨ha',?_⟩
    apply (eq_div_iff (pow_ne_zero 2 hB)).mpr
    rw [ha'] at hg
    calc
      g*B^2 = (B*g)*B := by ring
      _ = 1 := by rw [hg]; field_simp [hB]
  · rintro ⟨rfl,rfl⟩
    constructor <;> field_simp [hB] <;> ring

end GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassMixedLift
```
