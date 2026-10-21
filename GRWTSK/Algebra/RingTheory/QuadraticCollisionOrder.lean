/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

The rank-two algebra with tau^2=delta*tau, its two labelled evaluations,
and its NONREDUCED dyadic fiber. This is not the product algebra integrally
when delta is a nonunit. Multiplicity is retained without claiming that
point values recover the nilpotent direction after specialization.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import Mathlib.Algebra.QuadraticAlgebra.Basic
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder

/-- Concrete coefficient algebra, with the declared relation tau^2=delta*tau. -/
abbrev Carrier (R : Type*) [CommRing R] (δ : R) := QuadraticAlgebra R 0 δ

section Ring
variable {R : Type*} [CommRing R]

def generator (δ : R) : Carrier R δ := ⟨0,1⟩

/-- The actual two-coordinate basis, not a count of two distinct residue points. -/
def basis (δ : R) : Module.Basis (Fin 2) R (Carrier R δ) :=
  QuadraticAlgebra.basis 0 δ

theorem rank_two [StrongRankCondition R] (δ : R) :
    Module.finrank R (Carrier R δ) = 2 := QuadraticAlgebra.finrank_eq_two 0 δ

theorem generator_relation (δ : R) :
    generator δ ^ 2 = algebraMap R (Carrier R δ) δ * generator δ := by
  ext <;> simp [generator, pow_two]

/-- Every element has the unique coefficient normal form supplied by the basis. -/
theorem normal_form (δ : R) (z : Carrier R δ) :
    algebraMap R (Carrier R δ) z.re +
      algebraMap R (Carrier R δ) z.im * generator δ = z := by
  ext <;> simp [generator]

/-- The evaluations are at the ordered roots 0 and delta, not basis coordinates. -/
def values (δ : R) : Carrier R δ →+* R × R where
  toFun z := (z.re, z.re + δ*z.im)
  map_zero' := by ext <;> simp
  map_one' := by ext <;> simp [QuadraticAlgebra.re_one, QuadraticAlgebra.im_one]
  map_add' z w := by ext <;> simp <;> ring
  map_mul' z w := by ext <;> simp <;> ring

@[simp] theorem values_mk (δ x y : R) : values δ ⟨x,y⟩ = (x,x+δ*y) := rfl

/-- Coefficient extension keeps the SAME relation, rather than supplying a new rational model. -/
def mapCoefficients {S : Type*} [CommRing S] (δ : R) (f : R →+* S) :
    Carrier R δ →+* Carrier S (f δ) where
  toFun z := ⟨f z.re,f z.im⟩
  map_zero' := by ext <;> simp
  map_one' := by ext <;> simp [QuadraticAlgebra.re_one,QuadraticAlgebra.im_one]
  map_add' z w := by ext <;> simp
  map_mul' z w := by ext <;> simp

theorem values_map {S : Type*} [CommRing S] (δ : R) (f : R →+* S)
    (z : Carrier R δ) :
    values (f δ) (mapCoefficients δ f z) = (f (values δ z).1,f (values δ z).2) := by
  ext <;> simp [values,mapCoefficients]

/-- A pair is integral in this order exactly when its difference is delta-divisible. -/
theorem values_image_iff (δ : R) (v : R × R) :
    (∃ z : Carrier R δ, values δ z = v) ↔ δ ∣ v.2-v.1 := by
  constructor
  · rintro ⟨z,rfl⟩
    exact ⟨z.im, by dsimp [values]; ring⟩
  · rintro ⟨y,hy⟩
    refine ⟨⟨v.1,y⟩,?_⟩
    apply Prod.ext rfl
    change v.1+δ*y=v.2
    linear_combination -hy

theorem values_injective [IsDomain R] (δ : R) (hδ : δ ≠ 0) :
    Function.Injective (values δ) := by
  intro z w h
  have hr : z.re=w.re := congrArg Prod.fst h
  have hi : z.re+δ*z.im=w.re+δ*w.im := congrArg Prod.snd h
  apply QuadraticAlgebra.ext hr
  apply mul_left_cancel₀ hδ
  rw [hr] at hi
  exact add_left_cancel hi

/-- The standard quadratic involution swaps the TWO generic evaluation labels.
It is not a Euclidean reflection or an assertion of two special-fiber points. -/
theorem values_star (δ : R) (z : Carrier R δ) :
    values δ (star z) = ((values δ z).2,(values δ z).1) := by
  ext <;> simp [values] <;> ring

/-- Exact quadratic remainder: after delta=0 only a FIRST jet survives. -/
theorem quadratic_remainder (δ c₀ c₁ c₂ : R) :
    algebraMap R (Carrier R δ) c₀ +
      algebraMap R (Carrier R δ) c₁ * generator δ +
      algebraMap R (Carrier R δ) c₂ * generator δ ^ 2 = ⟨c₀,c₁+δ*c₂⟩ := by
  ext <;> simp [generator,pow_two] <;> ring

/-- The rank-two trace form is derived from the actual quadratic-algebra trace. -/
theorem trace_entries (δ : R) :
    QuadraticAlgebra.trace (1 : Carrier R δ)=2 ∧
    QuadraticAlgebra.trace (generator δ)=δ ∧
    QuadraticAlgebra.trace (generator δ ^ 2)=δ^2 := by
  simp [QuadraticAlgebra.trace_def,generator,pow_two,
    QuadraticAlgebra.re_one,QuadraticAlgebra.im_one]

/-- Its determinant is delta squared, not the radical of delta. -/
theorem trace_discriminant (δ : R) :
    QuadraticAlgebra.trace (1 : Carrier R δ) *
        QuadraticAlgebra.trace (generator δ ^ 2) -
      QuadraticAlgebra.trace (generator δ)^2 = δ^2 := by
  obtain ⟨h1,h2,h3⟩ := trace_entries δ
  rw [h1,h2,h3]
  ring

end Ring

section Field
variable {K : Type*} [Field K]

/-- Generic splitting uses delta inverse explicitly; it is not integral CRT. -/
def genericSplit (δ : K) (hδ : δ ≠ 0) : Carrier K δ ≃+* K × K where
  toFun := values δ
  invFun v := ⟨v.1,(v.2-v.1)/δ⟩
  left_inv z := by
    apply QuadraticAlgebra.ext rfl
    change (z.re+δ*z.im-z.re)/δ=z.im
    field_simp [hδ] <;> ring
  right_inv v := by
    apply Prod.ext rfl
    change v.1+δ*((v.2-v.1)/δ)=v.2
    field_simp [hδ] <;> ring
  map_add' := (values δ).map_add
  map_mul' := (values δ).map_mul

end Field

/-- Exact universal clearing for the INTEGER image, including signed deltas. -/
theorem universal_clearing_iff (δ d : ℤ) :
    (∀ v : ℤ × ℤ, ∃ z : Carrier ℤ δ,
      values δ z = (d*v.1,d*v.2)) ↔ δ ∣ d := by
  constructor
  · intro h
    have hh := (values_image_iff δ (d*0,d*1)).mp (h (0,1))
    simpa using hh
  · rintro ⟨k,hk⟩ v
    apply (values_image_iff δ _).mpr
    refine ⟨k*(v.2-v.1),?_⟩
    rw [hk]
    ring

/-- This is the coefficient reduction map only on the EVEN-delta domain. -/
def binaryReduction (δ : ℤ) (hδ : (2 : ℤ) ∣ δ) :
    Carrier ℤ δ →+* Carrier (ZMod 2) 0 where
  toFun z := ⟨(z.re : ZMod 2),(z.im : ZMod 2)⟩
  map_zero' := by ext <;> simp
  map_one' := by ext <;> simp [QuadraticAlgebra.re_one,QuadraticAlgebra.im_one]
  map_add' z w := by ext <;> simp
  map_mul' z w := by
    have hz : (δ : ZMod 2)=0 := (ZMod.intCast_zmod_eq_zero_iff_dvd δ 2).mpr hδ
    ext <;> simp [hz]

theorem binaryReduction_surjective (δ : ℤ) (hδ : (2 : ℤ) ∣ δ) :
    Function.Surjective (binaryReduction δ hδ) := by
  intro z
  refine ⟨⟨(z.re.val : ℤ),(z.im.val : ℤ)⟩,?_⟩
  ext <;> simp [binaryReduction]

/-- The kernel is precisely twice the coefficient algebra, not its nilradical. -/
theorem binaryReduction_kernel (δ : ℤ) (hδ : (2 : ℤ) ∣ δ)
    (z : Carrier ℤ δ) : binaryReduction δ hδ z=0 ↔ ∃ w : Carrier ℤ δ, z=2*w := by
  constructor
  · intro hz
    have hr : (z.re : ZMod 2)=0 := congrArg QuadraticAlgebra.re hz
    have hi : (z.im : ZMod 2)=0 := congrArg QuadraticAlgebra.im hz
    obtain ⟨r,hr⟩ := (ZMod.intCast_zmod_eq_zero_iff_dvd z.re 2).mp hr
    obtain ⟨i,hi⟩ := (ZMod.intCast_zmod_eq_zero_iff_dvd z.im 2).mp hi
    refine ⟨⟨r,i⟩,?_⟩
    ext <;> simp [hr,hi]
  · rintro ⟨w,rfl⟩
    ext <;> simp [binaryReduction]

theorem binaryReduction_ker_ideal (δ : ℤ) (hδ : (2 : ℤ) ∣ δ) :
    RingHom.ker (binaryReduction δ hδ) = Ideal.span {(2 : Carrier ℤ δ)} := by
  ext z
  rw [RingHom.mem_ker,binaryReduction_kernel,Ideal.mem_span_singleton]
  exact ⟨fun ⟨w,hw⟩ => ⟨w,hw⟩,fun ⟨w,hw⟩ => ⟨w,hw⟩⟩

/-- An ACTUAL quotient equivalence; the preceding lemma identifies its ideal as (2). -/
def binaryFiberEquiv (δ : ℤ) (hδ : (2 : ℤ) ∣ δ) :
    (Carrier ℤ δ ⧸ RingHom.ker (binaryReduction δ hδ)) ≃+* Carrier (ZMod 2) 0 :=
  RingHom.quotientKerEquivOfSurjective (binaryReduction_surjective δ hδ)

/-- The special fiber has a nonzero square-zero element; it is not F_2 x F_2. -/
theorem binary_nilpotent :
    generator (0 : ZMod 2) ≠ 0 ∧ generator (0 : ZMod 2)^2=0 := by
  constructor
  · intro h
    have hi := congrArg QuadraticAlgebra.im h
    norm_num [generator] at hi
  · simpa using generator_relation (0 : ZMod 2)

theorem binary_values (z : Carrier (ZMod 2) 0) : values 0 z=(z.re,z.re) := by
  simp [values]

/-- Value-only observations lose a nonzero direction after specialization. -/
theorem binary_values_not_injective :
    ¬ Function.Injective (values (0 : ZMod 2)) := by
  intro h
  apply binary_nilpotent.1
  apply h
  simp [values,generator]

/-- The two coefficient slots, unlike two coincident values, retain the first jet. -/
theorem binary_quadratic_jet (c₀ c₁ c₂ : ZMod 2) :
    algebraMap (ZMod 2) (Carrier (ZMod 2) 0) c₀ +
      algebraMap (ZMod 2) (Carrier (ZMod 2) 0) c₁ * generator 0 +
      algebraMap (ZMod 2) (Carrier (ZMod 2) 0) c₂ * generator 0 ^ 2 = ⟨c₀,c₁⟩ := by
  simpa using quadratic_remainder (0 : ZMod 2) c₀ c₁ c₂

end GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder
