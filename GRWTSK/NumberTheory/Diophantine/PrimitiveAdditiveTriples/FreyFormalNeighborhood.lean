/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib ideals and commutative rings (Apache-2.0).
Formalization assistance: OpenAI.

A natural equivalence of deformation SETS over arbitrary nilpotent ideals.
The cubic branch is selected by z in I, not by assuming e divides z.
This is not an algebra equivalence, a completed-local-ring isomorphism,
a global section-space theorem, or an arithmetic height upper bound.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRecursion
import Mathlib.RingTheory.Ideal.Operations

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood

open FreyJetRecursion

variable {A : Type*} [CommRing A]

/-- Every element of an ideal with I^N=0 has the same nilpotence bound. -/
theorem element_power_zero (I : Ideal A) (N : ℕ) (hI : I ^ N = ⊥)
    (e : A) (he : e ∈ I) : e ^ N = 0 := by
  have hm := Ideal.pow_mem_pow he N
  simpa only [hI, Ideal.mem_bot] using hm

/-- The previously constructed approximant lies in every ideal containing e. -/
theorem iterate_mem (I : Ideal A) (j h e : A) (he : e ∈ I) (n : ℕ) :
    iterate j h e n ∈ I := by
  obtain ⟨u, hu⟩ := square_dvd_iterate j h e n
  rw [hu, mul_comm]
  exact I.mul_mem_left u (by simpa only [pow_two] using I.mul_mem_left e he)

/-- One step contracts a general ideal-adic difference. I need not be principal. -/
theorem step_gain_ideal (I : Ideal A) (j h e z w : A) (n : ℕ)
    (hz : z ∈ I) (hw : w ∈ I) (hzw : z - w ∈ I ^ n) :
    step j h e z - step j h e w ∈ I ^ (n + 1) := by
  have hz2 : z ^ 2 ∈ I := by simpa only [pow_two] using I.mul_mem_left z hz
  have hw2 : w ^ 2 ∈ I := by simpa only [pow_two] using I.mul_mem_left w hw
  have hfactor : -j * (h * (z + w) + z ^ 2 + z * w + w ^ 2) ∈ I :=
    I.mul_mem_left (-j)
      (I.add_mem (I.add_mem (I.add_mem (I.mul_mem_left h (I.add_mem hz hw)) hz2)
        (I.mul_mem_left z hw)) hw2)
  have heq : step j h e z - step j h e w =
      (z - w) * (-j * (h * (z + w) + z ^ 2 + z * w + w ^ 2)) := by
    unfold step
    ring
  rw [heq, pow_succ I n]
  exact Ideal.mul_mem_mul hzw hfactor

/-- Uniqueness at the selected branch in ANY nilpotent ideal. No cancellation
by e, no e-divisibility premise on z, and no field assumption are used. -/
theorem solution_unique (I : Ideal A) (N : ℕ) (hI : I ^ N = ⊥)
    (d j h e z w : A) (hdj : d * j = 1) (hzI : z ∈ I) (hwI : w ∈ I)
    (hz : d * z + h * z ^ 2 + z ^ 3 = e ^ 2)
    (hw : d * w + h * w ^ 2 + w ^ 3 = e ^ 2) : z = w := by
  have hzf := solution_fixed d j h e z hdj hz
  have hwf := solution_fixed d j h e w hdj hw
  have hprec : ∀ n : ℕ, z - w ∈ I ^ n := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      have hh := step_gain_ideal I j h e z w n hzI hwI ih
      simpa only [hzf, hwf] using hh
  have hzero : z - w = 0 := by
    simpa only [hI, Ideal.mem_bot] using hprec N
  exact sub_eq_zero.mp hzero

/-- The finite recursion supplies a solution for every parameter in I. -/
theorem iterate_solves_ideal (I : Ideal A) (N : ℕ) (hI : I ^ N = ⊥)
    (d j h e : A) (hdj : d * j = 1) (he : e ∈ I) :
    d * iterate j h e N + h * iterate j h e N ^ 2 +
      iterate j h e N ^ 3 = e ^ 2 := by
  apply iterate_solves d j h e hdj N
  exact power_zero_of_le e (element_power_zero I N hI e he) (by omega)

/-- Exhaustion: an arbitrary solution on this infinitesimal branch is the
constructed one. The second-order divisibility follows, rather than being assumed. -/
theorem solution_eq_iterate (I : Ideal A) (N : ℕ) (hI : I ^ N = ⊥)
    (d j h e z : A) (hdj : d * j = 1) (he : e ∈ I) (hzI : z ∈ I)
    (hz : d * z + h * z ^ 2 + z ^ 3 = e ^ 2) : z = iterate j h e N :=
  solution_unique I N hI d j h e z _ hdj hzI (iterate_mem I j h e he N)
    hz (iterate_solves_ideal I N hI d j h e hdj he)

/-- The zero first jet is a consequence for all deformations, not just the
particular iterative construction. -/
theorem solution_square_dvd (I : Ideal A) (N : ℕ) (hI : I ^ N = ⊥)
    (d j h e z : A) (hdj : d * j = 1) (he : e ∈ I) (hzI : z ∈ I)
    (hz : d * z + h * z ^ 2 + z ^ 3 = e ^ 2) : e ^ 2 ∣ z := by
  rw [solution_eq_iterate I N hI d j h e z hdj he hzI hz]
  exact square_dvd_iterate j h e N

/-- Deformations of the selected root: z is x-r and e is y.
This set is generally nonlinear and is not given a module or ring structure. -/
def Branch (I : Ideal A) (d h : A) :=
  {p : A × A // p.1 ∈ I ∧ p.2 ∈ I ∧
    d * p.1 + h * p.1 ^ 2 + p.1 ^ 3 = p.2 ^ 2}

/-- Every y in I gives exactly one curve deformation reducing to the root.
The inverse is finite recursion; no completed ring is assumed as a premise. -/
def parameterEquiv (I : Ideal A) (N : ℕ) (hI : I ^ N = ⊥)
    (d j h : A) (hdj : d * j = 1) : Branch I d h ≃ I where
  toFun p := ⟨p.val.2, p.property.2.1⟩
  invFun e := ⟨(iterate j h e.val N, e.val),
    iterate_mem I j h e.val e.property N, e.property,
    iterate_solves_ideal I N hI d j h e.val hdj e.property⟩
  left_inv p := by
    apply Subtype.ext
    apply Prod.ext
    · exact (solution_eq_iterate I N hI d j h p.val.2 p.val.1 hdj
        p.property.2.1 p.property.1 p.property.2.2).symm
    · rfl
  right_inv e := rfl

/-- Ideal-preserving base change of deformation sets, with d and h mapped too. -/
def mapBranch {B : Type*} [CommRing B] (f : A →+* B)
    (I : Ideal A) (J : Ideal B) (hIJ : ∀ x, x ∈ I → f x ∈ J) (d h : A) :
    Branch I d h → Branch J (f d) (f h) := fun p =>
  ⟨(f p.val.1, f p.val.2), hIJ _ p.property.1, hIJ _ p.property.2.1, by
    simpa only [map_add, map_mul, map_pow] using congrArg f p.property.2.2⟩

/-- The coordinate projection is natural under the exact same base change. -/
theorem parameterEquiv_natural {B : Type*} [CommRing B] (f : A →+* B)
    (I : Ideal A) (J : Ideal B) (hIJ : ∀ x, x ∈ I → f x ∈ J)
    (N M : ℕ) (hI : I ^ N = ⊥) (hJ : J ^ M = ⊥)
    (d j h : A) (hdj : d * j = 1) (p : Branch I d h) :
    (parameterEquiv J M hJ (f d) (f j) (f h)
      (by simpa only [map_mul, map_one] using congrArg f hdj)
      (mapBranch f I J hIJ d h p)).val =
      f ((parameterEquiv I N hI d j h hdj p).val) := rfl

/-- The inverse coordinates are natural even when the source and target use
DIFFERENT nilpotence bounds. No injectivity of f is needed. -/
theorem lift_natural {B : Type*} [CommRing B] (f : A →+* B)
    (I : Ideal A) (J : Ideal B) (hIJ : ∀ x, x ∈ I → f x ∈ J)
    (N M : ℕ) (hI : I ^ N = ⊥) (hJ : J ^ M = ⊥)
    (d j h e : A) (hdj : d * j = 1) (he : e ∈ I) :
    f (iterate j h e N) = iterate (f j) (f h) (f e) M := by
  have hdj' : f d * f j = 1 := by
    simpa only [map_mul, map_one] using congrArg f hdj
  apply solution_eq_iterate J M hJ (f d) (f j) (f h) (f e)
    (f (iterate j h e N)) hdj' (hIJ e he) (hIJ _ (iterate_mem I j h e he N))
  simpa only [map_add, map_mul, map_pow] using
    congrArg f (iterate_solves_ideal I N hI d j h e hdj he)

/-- An auxiliary choice of nilpotence bound cannot change the deformation. -/
theorem lift_bound_independent (I : Ideal A) (N M : ℕ)
    (hI : I ^ N = ⊥) (hI' : I ^ M = ⊥)
    (d j h e : A) (hdj : d * j = 1) (he : e ∈ I) :
    iterate j h e N = iterate j h e M := by
  exact lift_natural (RingHom.id A) I I (fun _ hx => hx) N M hI hI'
    d j h e hdj he

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood
