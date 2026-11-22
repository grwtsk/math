/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal
import Mathlib.RingTheory.Derivation.Basic
import Mathlib.Tactic

/-!
# Euler derivations of an integer-graded algebra

The degree-weighted finite homogeneous decomposition defines an actual
derivation of the algebra. It preserves homogeneous ideals. Composing it
with an algebra-valued point gives the point derivation used in the tangent
argument on a normalized homogeneous slice, without a characteristic
assumption on the construction itself.
-/

namespace GRWTSK.CommutativeAlgebra.GradedEulerDerivation

variable {O A : Type*} [CommRing O] [CommRing A] [Algebra O A]
variable (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]

/-- Multiply each homogeneous component by its integer degree. -/
noncomputable def eulerLinearMap : A →ₗ[O] A :=
  (DirectSum.toModule O ℤ A (fun j => (j : A) • (𝒜 j).subtype)).comp
    (DirectSum.decomposeLinearEquiv 𝒜).toLinearMap

/-- The degree-weighted map has its prescribed value on each actual grade. -/
theorem eulerLinearMap_apply_of_mem (j : ℤ) (a : A) (ha : a ∈ 𝒜 j) :
    eulerLinearMap 𝒜 a = (j : A) * a := by
  change DirectSum.toModule O ℤ A (fun i => (i : A) • (𝒜 i).subtype)
    (DirectSum.decompose 𝒜 a) = _
  rw [DirectSum.decompose_of_mem 𝒜 ha, ← DirectSum.lof_eq_of O,
    DirectSum.toModule_lof]
  rfl

/-- Additivity of degrees gives the product rule on all finite homogeneous sums. -/
theorem eulerLinearMap_mul (a b : A) :
    eulerLinearMap 𝒜 (a * b) =
      a * eulerLinearMap 𝒜 b + b * eulerLinearMap 𝒜 a := by
  induction a using DirectSum.Decomposition.inductionOn 𝒜 with
  | zero => simp
  | homogeneous a =>
    induction b using DirectSum.Decomposition.inductionOn 𝒜 with
    | zero => simp
    | homogeneous b =>
      rw [eulerLinearMap_apply_of_mem 𝒜 _ _ (SetLike.GradedMul.mul_mem a.2 b.2),
        eulerLinearMap_apply_of_mem 𝒜 _ _ b.2,
        eulerLinearMap_apply_of_mem 𝒜 _ _ a.2]
      push_cast
      ring
    | add b₁ b₂ h₁ h₂ =>
      simp only [mul_add, map_add, h₁, h₂]
      ring
  | add a₁ a₂ h₁ h₂ =>
    simp only [add_mul, map_add, h₁, h₂]
    ring

/-- The Euler map as a genuine Mathlib derivation, rather than a predicate. -/
noncomputable def euler : Derivation O A A :=
  Derivation.mk' (eulerLinearMap 𝒜) (by
    intro a b
    simpa only [smul_eq_mul] using eulerLinearMap_mul 𝒜 a b)

/-- The actual Euler derivation multiplies a homogeneous element by its degree. -/
theorem euler_apply_of_mem (j : ℤ) (a : A) (ha : a ∈ 𝒜 j) :
    euler 𝒜 a = (j : A) * a :=
  eulerLinearMap_apply_of_mem 𝒜 j a ha

/-- Every homogeneous ideal is preserved by the Euler derivation. -/
theorem euler_mem_of_mem_homogeneousIdeal
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜) (a : A) (ha : a ∈ I) :
    euler 𝒜 a ∈ I := by
  classical
  rw [← DirectSum.sum_support_decompose 𝒜 a, map_sum]
  apply I.sum_mem
  intro j _
  rw [euler_apply_of_mem 𝒜 j _ (SetLike.coe_mem _)]
  exact I.mul_mem_left _ (hI j ha)

variable {K : Type*} [CommRing K] [Algebra O K]

/-- Compose the actual Euler derivation with the chosen point. -/
noncomputable def pointEuler (ξ : A →ₐ[O] K) : A →ₗ[O] K :=
  ξ.toLinearMap.comp (euler 𝒜).toLinearMap

/-- The point derivation retains the exact integer degree and point value. -/
theorem pointEuler_apply_of_mem (ξ : A →ₐ[O] K)
    (j : ℤ) (a : A) (ha : a ∈ 𝒜 j) :
    pointEuler 𝒜 ξ a = (j : K) * ξ a := by
  change ξ (euler 𝒜 a) = _
  rw [euler_apply_of_mem 𝒜 j a ha, map_mul, map_intCast]

/-- The raw point-Leibniz identity used by the slice tangent argument. -/
theorem pointEuler_leibniz (ξ : A →ₐ[O] K) (a b : A) :
    pointEuler 𝒜 ξ (a * b) =
      ξ a * pointEuler 𝒜 ξ b + ξ b * pointEuler 𝒜 ξ a := by
  change ξ (euler 𝒜 (a * b)) =
    ξ a * ξ (euler 𝒜 b) + ξ b * ξ (euler 𝒜 a)
  rw [Derivation.leibniz]
  simp only [smul_eq_mul, map_add, map_mul]

/-- A point killing a homogeneous ideal also kills its Euler derivatives. -/
theorem pointEuler_eq_zero_of_mem
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜) (ξ : A →ₐ[O] K)
    (hξ : ∀ a ∈ I, ξ a = 0) (a : A) (ha : a ∈ I) :
    pointEuler 𝒜 ξ a = 0 :=
  hξ _ (euler_mem_of_mem_homogeneousIdeal 𝒜 I hI a ha)

/-- Any linear map with the Euler values on homogeneous elements has the
same ideal-vanishing return; this also retains the source's arbitrary-map form. -/
theorem eq_zero_of_degree_formula_on_homogeneousIdeal
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜) (ξ : A →ₐ[O] K)
    (hξ : ∀ a ∈ I, ξ a = 0) (E : A →ₗ[O] K)
    (hE : ∀ (j : ℤ) (a : A), a ∈ 𝒜 j → E a = (j : K) * ξ a)
    (a : A) (ha : a ∈ I) : E a = 0 := by
  have heq : E = pointEuler 𝒜 ξ := by
    apply DirectSum.decompose_lhom_ext 𝒜
    intro j
    ext b
    exact (hE j b b.property).trans (pointEuler_apply_of_mem 𝒜 ξ j b b.property).symm
  rw [heq]
  exact pointEuler_eq_zero_of_mem 𝒜 I hI ξ hξ a ha

/-- The exact existential point-derivation return, with no custom predicate
and no field or characteristic assumption. -/
theorem exists_pointDerivation_eq_degree_mul (ξ : A →ₐ[O] K) :
    ∃ E : A →ₗ[O] K,
      (∀ a b, E (a * b) = ξ a * E b + ξ b * E a) ∧
      ∀ (j : ℤ) (a : A), a ∈ 𝒜 j → E a = (j : K) * ξ a :=
  ⟨pointEuler 𝒜 ξ, pointEuler_leibniz 𝒜 ξ, pointEuler_apply_of_mem 𝒜 ξ⟩

end GRWTSK.CommutativeAlgebra.GradedEulerDerivation
