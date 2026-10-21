/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

First-order torsion in the UNSATURATED integral origin quotient of the SAME
Weierstrass model. This source quotient is not the torsion-free rational
image lattice. At order one X^2=XY=Y^2=0 and B*X=0. At every prime p|B,
X survives in a dual-number specialization, proving genuine source torsion.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOriginJet
import GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder
import Mathlib.GroupTheory.OrderOfElement

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOrderOneTorsion

open WeierstrassCurve
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder
open WeierstrassSecondJet WeierstrassOriginJet

abbrev Source (A B : ℤ) := WeierstrassOriginJet.Jet A B 1

def x (A B : ℤ) : Source A B := WeierstrassOriginJet.x A B 1
def y (A B : ℤ) : Source A B := WeierstrassOriginJet.y A B 1
def scalar (A B : ℤ) : ℤ →+* Source A B := WeierstrassOriginJet.scalar A B 1

theorem neighborhood_square (A B : ℤ) :
    WeierstrassOriginJet.neighborhood A B 1 ^ 2 = ⊥ := by
  simpa using WeierstrassOriginJet.neighborhood_pow A B 1

theorem product_zero (A B : ℤ) {u v : Source A B}
    (hu : u ∈ WeierstrassOriginJet.neighborhood A B 1)
    (hv : v ∈ WeierstrassOriginJet.neighborhood A B 1) : u*v=0 := by
  rw [← Ideal.mem_bot,← neighborhood_square A B,pow_two]
  exact Ideal.mul_mem_mul hu hv

theorem x_square_zero (A B : ℤ) : x A B ^ 2=0 := by
  rw [pow_two]
  exact product_zero A B (WeierstrassOriginJet.x_mem A B 1)
    (WeierstrassOriginJet.x_mem A B 1)

theorem x_mul_y_zero (A B : ℤ) : x A B * y A B=0 :=
  product_zero A B (WeierstrassOriginJet.x_mem A B 1)
    (WeierstrassOriginJet.y_mem A B 1)

theorem y_square_zero (A B : ℤ) : y A B ^ 2=0 := by
  rw [pow_two]
  exact product_zero A B (WeierstrassOriginJet.y_mem A B 1)
    (WeierstrassOriginJet.y_mem A B 1)

/-- The linearized curve relation creates genuine B-torsion in the source.
This statement is in the source quotient, not its rational image. -/
theorem B_mul_x_zero (A B : ℤ) :
    scalar A B B * x A B=0 := by
  have h := WeierstrassOriginJet.quotient_equation A B 1
  rw [Affine.equation_iff] at h
  simp only [model,one_mul,zero_mul,add_zero] at h
  have hx2 := x_square_zero A B
  have hxy := x_mul_y_zero A B
  have hy2 := y_square_zero A B
  change y A B ^ 2 + x A B * y A B =
    x A B ^ 3 + scalar A B A * x A B ^ 2 + scalar A B B * x A B at h
  rw [hy2,hxy,hx2,pow_succ,x_square_zero,mul_zero,zero_add,zero_add] at h
  exact h.symm

abbrev Dual (p : ℕ) := Carrier (ZMod p) (0 : ZMod p)

def epsilon (p : ℕ) : Dual p := generator 0

theorem epsilon_square (p : ℕ) : epsilon p ^ 2=0 := by
  simpa [epsilon] using generator_relation (0 : ZMod p)

theorem epsilon_ne_zero (p : ℕ) [NeZero p] : epsilon p ≠ 0 := by
  intro h
  have hi := congrArg QuadraticAlgebra.im h
  simpa [epsilon,generator] using hi

/-- Reduction X↦epsilon,Y↦0. It is defined before quotienting. -/
def specialEval (p : ℕ) : WeierstrassOriginJet.Plane ℤ →+* Dual p :=
  MvPolynomial.eval₂Hom (Int.castRingHom (Dual p)) ![epsilon p,0]

theorem special_equation_zero (A B : ℤ) (p : ℕ)
    (hpB : (p : ℤ) ∣ B) :
    specialEval p (WeierstrassOriginJet.equation A B)=0 := by
  have hB : (B : ZMod p)=0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd B p).mpr hpB
  simp [specialEval,WeierstrassOriginJet.equation,epsilon_square,hB,pow_succ]

theorem special_origin_map_le (p : ℕ) :
    WeierstrassOriginJet.origin.map (specialEval p) ≤
      Ideal.span {epsilon p} := by
  apply Ideal.map_le_iff_le_comap.mpr
  apply Ideal.span_le.mpr
  intro q hq
  simp only [Set.mem_insert_iff,Set.mem_singleton_iff] at hq
  rcases hq with rfl | rfl
  · change epsilon p ∈ Ideal.span {epsilon p}
    exact Ideal.subset_span (by simp)
  · change (0 : Dual p) ∈ Ideal.span {epsilon p}
    exact Ideal.zero_mem _

theorem special_origin_square_zero (p : ℕ) :
    (WeierstrassOriginJet.origin ^ 2).map (specialEval p)=⊥ := by
  apply le_antisymm _ bot_le
  calc
    _ = (WeierstrassOriginJet.origin.map (specialEval p))^2 := Ideal.map_pow _ _ _
    _ ≤ (Ideal.span {epsilon p})^2 :=
      Ideal.pow_right_mono (special_origin_map_le p) 2
    _ = ⊥ := by
      rw [Ideal.span_singleton_pow,epsilon_square,Ideal.span_singleton_zero]

theorem special_relations_le_kernel (A B : ℤ) (p : ℕ)
    (hpB : (p : ℤ) ∣ B) :
    WeierstrassOriginJet.relations A B 1 ≤ RingHom.ker (specialEval p) := by
  apply sup_le
  · apply Ideal.span_le.mpr
    intro q hq
    rcases Set.mem_singleton_iff.mp hq with rfl
    exact RingHom.mem_ker.mpr (special_equation_zero A B p hpB)
  · exact Ideal.map_eq_bot_iff_le_ker.mp (special_origin_square_zero p)

/-- Actual specialization of the unsaturated source quotient. -/
def specialWitness (A B : ℤ) (p : ℕ) (hpB : (p : ℤ) ∣ B) :
    Source A B →+* Dual p :=
  Ideal.Quotient.lift _ (specialEval p) (special_relations_le_kernel A B p hpB)

@[simp] theorem specialWitness_x (A B : ℤ) (p : ℕ) (hpB : (p : ℤ) ∣ B) :
    specialWitness A B p hpB (x A B)=epsilon p := by
  rfl

@[simp] theorem specialWitness_y (A B : ℤ) (p : ℕ) (hpB : (p : ℤ) ∣ B) :
    specialWitness A B p hpB (y A B)=0 := by
  rfl

/-- Prime divisors of B witness that the X source class is genuinely nonzero.
This is stronger than observing an enlarged special-fiber dimension. -/
theorem x_ne_zero_of_prime_dvd (A B : ℤ) (p : ℕ)
    (hp : p.Prime) (hpB : (p : ℤ) ∣ B) : x A B ≠ 0 := by
  letI : NeZero p := ⟨hp.ne_zero⟩
  intro hx
  have h := congrArg (specialWitness A B p hpB) hx
  simpa using (epsilon_ne_zero p h)

end GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOrderOneTorsion
