import Mathlib
import GRWTSK.LinearAlgebra.FramedFiberPort

namespace GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

open scoped BigOperators
open GRWTSK.LinearAlgebra.FramedFiberPort

universe u

variable {ι : Type u} [Fintype ι]

/-- The standard finite Euclidean pairing in coordinates. -/
def dot (x y : ι → ℝ) : ℝ :=
  ∑ i, x i * y i

/-- The standard finite coordinate pairing is positive semidefinite on the diagonal. -/
theorem dot_self_nonneg (x : ι → ℝ) : 0 ≤ dot x x := by
  unfold dot
  exact Finset.sum_nonneg fun i _ => mul_self_nonneg (x i)

/-- The standard finite coordinate pairing is positive definite. -/
theorem dot_self_eq_zero_iff (x : ι → ℝ) : dot x x = 0 ↔ x = 0 := by
  unfold dot
  exact
    (Finset.sum_eq_zero_iff_of_nonneg fun i _ => mul_self_nonneg (x i)).trans <| by
      simp [funext_iff]

/-- A coordinatewise linear operator. -/
def diagonal (a : ι → ℝ) : (ι → ℝ) →ₗ[ℝ] (ι → ℝ) where
  toFun x i := a i * x i
  map_add' x y := by
    ext i
    dsimp
    ring
  map_smul' r x := by
    ext i
    dsimp
    ring

@[simp]
theorem diagonal_apply (a x : ι → ℝ) (i : ι) :
    diagonal a x i = a i * x i := rfl

/-- A real finite two-term Hodge model whose differential is a diagonal operator and whose
codifferential is its Euclidean adjoint. -/
def positiveDiagonalHodge (a : ι → ℝ) :
    TwoTermHodgeData ℝ (ι → ℝ) (ι → ℝ) where
  delta := diagonal a
  deltaStar := diagonal a

/-- The selected codifferential is the adjoint of the differential for the standard
positive pairing. -/
theorem diagonal_adjoint (a x y : ι → ℝ) :
    dot (diagonal a x) y = dot x (diagonal a y) := by
  unfold dot
  apply Finset.sum_congr rfl
  intro i _
  simp only [diagonal_apply]
  ring

/-- The degree-zero Laplacian is the diagonal operator with squared coefficients. -/
@[simp]
theorem positiveDiagonalHodge_laplacian0_apply
    (a x : ι → ℝ) (i : ι) :
    (positiveDiagonalHodge a).laplacian0 x i = a i ^ 2 * x i := by
  simp [positiveDiagonalHodge, TwoTermHodgeData.laplacian0, LinearMap.comp_apply]
  ring

/-- The concrete quadratic Hodge energy. -/
def energy (a x : ι → ℝ) : ℝ :=
  dot (diagonal a x) (diagonal a x)

/-- Concrete finite Hodge energy is nonnegative. -/
theorem energy_nonneg (a x : ι → ℝ) : 0 ≤ energy a x :=
  dot_self_nonneg _

/-- If every diagonal coefficient is nonzero, the energy is strictly positive away from zero. -/
theorem energy_eq_zero_iff (a x : ι → ℝ) (ha : ∀ i, a i ≠ 0) :
    energy a x = 0 ↔ x = 0 := by
  rw [energy, dot_self_eq_zero_iff]
  constructor
  · intro h
    funext i
    have hi := congrFun h i
    simp only [diagonal_apply, Pi.zero_apply] at hi
    exact (mul_eq_zero.mp hi).resolve_left (ha i)
  · intro h
    subst x
    simp [diagonal]

/-- With nonzero coefficients the degree-zero harmonic kernel is trivial. -/
theorem harmonic0_iff_eq_zero (a x : ι → ℝ) (ha : ∀ i, a i ≠ 0) :
    (positiveDiagonalHodge a).IsHarmonic0 x ↔ x = 0 := by
  unfold TwoTermHodgeData.IsHarmonic0
  constructor
  · intro h
    funext i
    have hi := congrFun h i
    simp only [positiveDiagonalHodge_laplacian0_apply, Pi.zero_apply] at hi
    exact (mul_eq_zero.mp hi).resolve_left (pow_ne_zero 2 (ha i))
  · intro h
    subst x
    simp [TwoTermHodgeData.laplacian0, positiveDiagonalHodge]

/-- Finite diagonal functional calculus for the positive Laplacian. -/
def functionalCalculus (a : ι → ℝ) (f : ℝ → ℝ) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  diagonal fun i => f (a i ^ 2)

/-- Functional calculus sends the constant-one function to the identity. -/
theorem functionalCalculus_one (a : ι → ℝ) :
    functionalCalculus a (fun _ => 1) = LinearMap.id := by
  ext x i
  simp [functionalCalculus, diagonal]

/-- Pointwise multiplication of scalar functions becomes composition of diagonal operators. -/
theorem functionalCalculus_mul (a : ι → ℝ) (f g : ℝ → ℝ) :
    functionalCalculus a (fun λ => f λ * g λ) =
      (functionalCalculus a f).comp (functionalCalculus a g) := by
  ext x i
  change
    (f (a i ^ 2) * g (a i ^ 2)) * x i =
      f (a i ^ 2) * (g (a i ^ 2) * x i)
  ring

/-- The exact finite heat operator `exp (-t Δ)`. -/
def heat (a : ι → ℝ) (t : ℝ) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  functionalCalculus a fun λ => Real.exp (-t * λ)

/-- Heat at time zero is the identity. -/
theorem heat_zero (a : ι → ℝ) :
    heat a 0 = LinearMap.id := by
  ext x i
  simp [heat, functionalCalculus, diagonal]

/-- The exact finite heat operators satisfy the semigroup law. -/
theorem heat_add (a : ι → ℝ) (s t : ℝ) :
    heat a (s + t) = (heat a s).comp (heat a t) := by
  ext x i
  change
    Real.exp (-(s + t) * (a i ^ 2)) * x i =
      Real.exp (-s * (a i ^ 2)) *
        (Real.exp (-t * (a i ^ 2)) * x i)
  rw [show -(s + t) * (a i ^ 2) =
      (-s * (a i ^ 2)) + (-t * (a i ^ 2)) by ring]
  rw [Real.exp_add]
  ring

/-- The heat operator commutes with the diagonal Hodge Laplacian. -/
theorem heat_laplacian0_comm (a : ι → ℝ) (t : ℝ) :
    (heat a t).comp (positiveDiagonalHodge a).laplacian0 =
      (positiveDiagonalHodge a).laplacian0.comp (heat a t) := by
  ext x i
  change
    Real.exp (-t * (a i ^ 2)) * (a i ^ 2 * x i) =
      a i ^ 2 * (Real.exp (-t * (a i ^ 2)) * x i)
  ring

/-- Harmonic vectors are fixed by the exact finite heat flow. -/
theorem heat_fixed_of_harmonic
    (a x : ι → ℝ) (t : ℝ)
    (hx : (positiveDiagonalHodge a).IsHarmonic0 x) :
    heat a t x = x := by
  unfold TwoTermHodgeData.IsHarmonic0 at hx
  funext i
  have hi := congrFun hx i
  simp only [positiveDiagonalHodge_laplacian0_apply, Pi.zero_apply] at hi
  by_cases ha : a i = 0
  · simp [heat, functionalCalculus, diagonal, ha]
  · have hxi : x i = 0 :=
      (mul_eq_zero.mp hi).resolve_left (pow_ne_zero 2 ha)
    simp [heat, functionalCalculus, diagonal, hxi]

/-- For nonnegative time, exact finite heat flow contracts the standard squared norm. -/
theorem heat_contracts
    (a x : ι → ℝ) {t : ℝ} (ht : 0 ≤ t) :
    dot (heat a t x) (heat a t x) ≤ dot x x := by
  unfold dot
  apply Finset.sum_le_sum
  intro i _
  let e : ℝ := Real.exp (-t * (a i ^ 2))
  have he0 : 0 ≤ e := (Real.exp_pos _).le
  have he1 : e ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    exact neg_nonpos.mpr (mul_nonneg ht (sq_nonneg (a i)))
  have he2 : e ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr he1) (add_nonneg he0 (by norm_num))]
  change (e * x i) * (e * x i) ≤ x i * x i
  calc
    (e * x i) * (e * x i) = e ^ 2 * (x i) ^ 2 := by ring
    _ ≤ 1 * (x i) ^ 2 :=
      mul_le_mul_of_nonneg_right he2 (sq_nonneg (x i))
    _ = x i * x i := by ring

end GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat
