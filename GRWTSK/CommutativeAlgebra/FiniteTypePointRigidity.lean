/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.FiniteTypeResiduePoints
import GRWTSK.CommutativeAlgebra.PointDerivationUnramified
import GRWTSK.CommutativeAlgebra.GradedSlicePointDerivation
import Mathlib.FieldTheory.Fixed
import Mathlib.RingTheory.Localization.FractionRing
import Mathlib.RingTheory.Unramified.Field
import Mathlib.Tactic

/-!
# Finite and separating points from tangent rigidity

Vanishing point derivations gives formal unramifiedness through the actual
module of Kähler differentials. Over a field, finite type then gives a finite,
reduced algebra and finitely many points. For coefficients in a domain whose
nonzero elements become units, actual fraction-field scalar structures return
these conclusions to the original coefficient-valued algebra homomorphisms.

The final statements apply to the genuine graded quotient/localization slice.
Finite type and inversion of nonzero coefficients remain explicit suppliers;
the earlier Euler/M4 theorem supplies the vanishing point derivations.
-/

namespace GRWTSK.CommutativeAlgebra.FiniteTypePointRigidity

/-- Over a field, finite type and vanishing point derivations produce an
actual finite reduced algebra, a finite point set, and point separation. -/
theorem field_rigidity_of_pointDerivations
    (E K C : Type*) [Field E] [Field K] [Algebra E K] [IsAlgClosed K]
    [CommRing C] [Algebra E C] [Algebra.FiniteType E C]
    (hD : ∀ (ξ : C →ₐ[E] K) (D : C →ₗ[E] K),
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) → D = 0) :
    Module.Finite E C ∧ IsReduced C ∧ Finite (C →ₐ[E] K) ∧
      ∀ x : C, (∀ ξ : C →ₐ[E] K, ξ x = 0) → x = 0 := by
  have hpoints : ∀ m : Ideal C, m.IsMaximal →
      ∃ ι : (C ⧸ m) →ₐ[E] K, Function.Injective ι := by
    intro m hm
    let := hm
    exact FiniteTypeResiduePoints.exists_residueField_embedding E K C m
  let : Algebra.FormallyUnramified E C :=
    PointDerivationUnramified.formallyUnramified_of_pointDerivations E K C hpoints hD
  let : Module.Finite E C := Algebra.FormallyUnramified.finite_of_free E C
  let : IsReduced C := Algebra.FormallyUnramified.isReduced_of_field E C
  have hfinite : Finite (C →ₐ[E] K) := (linearIndependent_toLinearMap E C K).finite
  let : IsJacobsonRing C := isJacobsonRing_of_finiteType (A := E)
  exact ⟨inferInstance, inferInstance, hfinite,
    FiniteTypeResiduePoints.eq_zero_of_all_points E K C hpoints⟩

/-- An original coefficient-algebra point respects compatible fraction-field
scalars, by the uniqueness property of localization. -/
theorem pointHom_respects_fractionScalars
    (O K C : Type*) [CommRing O] [IsDomain O] [Field K] [CommRing C]
    [Algebra O K] [Algebra O C]
    [Algebra (FractionRing O) K] [Algebra (FractionRing O) C]
    [IsScalarTower O (FractionRing O) K] [IsScalarTower O (FractionRing O) C]
    (ξ : C →ₐ[O] K) (q : FractionRing O) :
    ξ (algebraMap (FractionRing O) C q) = algebraMap (FractionRing O) K q := by
  have hmaps : ξ.toRingHom.comp (algebraMap (FractionRing O) C) =
      algebraMap (FractionRing O) K := by
    apply IsLocalization.ringHom_ext (nonZeroDivisors O)
    ext a
    change ξ (algebraMap (FractionRing O) C (algebraMap O (FractionRing O) a)) =
      algebraMap (FractionRing O) K (algebraMap O (FractionRing O) a)
    rw [← IsScalarTower.algebraMap_apply O (FractionRing O) C,
      ← IsScalarTower.algebraMap_apply O (FractionRing O) K]
    exact ξ.commutes a
  exact RingHom.congr_fun hmaps q

/-- The actual coefficient-inversion return. No discrete valuation,
completeness, or characteristic-zero hypothesis is needed for this implication. -/
theorem rigidity_of_invertible_coefficients
    (O K C : Type*) [CommRing O] [IsDomain O] [Field K]
    [Algebra O K] [IsAlgClosed K] [FaithfulSMul O K]
    [CommRing C] [Algebra O C] [Algebra.FiniteType O C]
    (hunit : ∀ a : O, a ≠ 0 → IsUnit (algebraMap O C a))
    (hD : ∀ (ξ : C →ₐ[O] K) (D : C →ₗ[O] K),
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) → D = 0) :
    IsReduced C ∧ Finite (C →ₐ[O] K) ∧
      ∀ x : C, (∀ ξ : C →ₐ[O] K, ξ x = 0) → x = 0 := by
  have hC : ∀ s : nonZeroDivisors O, IsUnit (algebraMap O C s) :=
    fun s => hunit s (nonZeroDivisors.ne_zero s.2)
  have hK : ∀ s : nonZeroDivisors O, IsUnit (algebraMap O K s) := by
    intro s
    apply isUnit_iff_ne_zero.mpr
    intro hs
    apply nonZeroDivisors.ne_zero s.2
    apply FaithfulSMul.algebraMap_injective O K
    simpa only [map_zero] using hs
  let : Algebra (FractionRing O) C :=
    (IsLocalization.lift (M := nonZeroDivisors O) (S := FractionRing O) hC).toAlgebra
  let : Algebra (FractionRing O) K :=
    (IsLocalization.lift (M := nonZeroDivisors O) (S := FractionRing O) hK).toAlgebra
  let : IsScalarTower O (FractionRing O) C :=
    IsScalarTower.of_algebraMap_eq fun a =>
      (IsLocalization.lift_eq (M := nonZeroDivisors O) (S := FractionRing O) hC a).symm
  let : IsScalarTower O (FractionRing O) K :=
    IsScalarTower.of_algebraMap_eq fun a =>
      (IsLocalization.lift_eq (M := nonZeroDivisors O) (S := FractionRing O) hK a).symm
  let : Algebra.FiniteType (FractionRing O) C :=
    Algebra.FiniteType.of_restrictScalars_finiteType O (FractionRing O) C
  have hpoints : ∀ m : Ideal C, m.IsMaximal →
      ∃ ι : (C ⧸ m) →ₐ[O] K, Function.Injective ι := by
    intro m hm
    let := hm
    obtain ⟨ι, hι⟩ :=
      FiniteTypeResiduePoints.exists_residueField_embedding (FractionRing O) K C m
    exact ⟨ι.restrictScalars O, hι⟩
  let : Algebra.FormallyUnramified O C :=
    PointDerivationUnramified.formallyUnramified_of_pointDerivations O K C hpoints hD
  let : Algebra.FormallyUnramified (FractionRing O) C :=
    Algebra.FormallyUnramified.of_restrictScalars O (FractionRing O) C
  let : Module.Finite (FractionRing O) C :=
    Algebra.FormallyUnramified.finite_of_free (FractionRing O) C
  let : IsReduced C := Algebra.FormallyUnramified.isReduced_of_field (FractionRing O) C
  let : Finite (C →ₐ[FractionRing O] K) :=
    (linearIndependent_toLinearMap (FractionRing O) C K).finite
  let extendPoint : (C →ₐ[O] K) → (C →ₐ[FractionRing O] K) := fun ξ =>
    { ξ.toRingHom with commutes' := pointHom_respects_fractionScalars O K C ξ }
  have hextend : Function.Injective extendPoint := by
    intro ξ η h
    exact AlgHom.ext fun x => AlgHom.congr_fun h x
  have hfinite : Finite (C →ₐ[O] K) := Finite.of_injective extendPoint hextend
  let : IsJacobsonRing C := isJacobsonRing_of_finiteType (A := FractionRing O)
  exact ⟨inferInstance, hfinite,
    FiniteTypeResiduePoints.eq_zero_of_all_points O K C hpoints⟩

/-- The exact finite-point and separation conclusion used by the source's
slice argument, returned to the original `O`-algebra points. -/
theorem finite_points_and_separation_of_invertible_coefficients
    (O K C : Type*) [CommRing O] [IsDomain O] [Field K]
    [Algebra O K] [IsAlgClosed K] [FaithfulSMul O K]
    [CommRing C] [Algebra O C] [Algebra.FiniteType O C]
    (hunit : ∀ a : O, a ≠ 0 → IsUnit (algebraMap O C a))
    (hD : ∀ (ξ : C →ₐ[O] K) (D : C →ₗ[O] K),
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) → D = 0) :
    Finite (C →ₐ[O] K) ∧ ∀ x : C, (∀ ξ : C →ₐ[O] K, ξ x = 0) → x = 0 :=
  (rigidity_of_invertible_coefficients O K C hunit hD).2

section GradedSlice

variable {O A K : Type*} [CommRing O] [IsDomain O] [CommRing A] [Field K]
variable [Algebra O A] [Algebra O K] [IsAlgClosed K] [FaithfulSMul O K]
variable (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]
variable (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
variable (hM4 : ∀ ξ : A →ₐ[O] K, (∀ a ∈ I, ξ a = 0) →
    ((¬ ∀ j : ℤ, j < 0 → ∀ a ∈ 𝒜 j, ξ a = 0) ∧
      (¬ ∀ j : ℤ, 0 < j → ∀ a ∈ 𝒜 j, ξ a = 0)) →
    ∀ D E : A →ₗ[O] K,
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) →
      (∀ a b, E (a * b) = ξ a * E b + ξ b * E a) →
      (∀ a ∈ I, D a = 0) → (∀ a ∈ I, E a = 0) →
      ∃ c c' : K, (c ≠ 0 ∨ c' ≠ 0) ∧ c • D + c' • E = 0)

include hI hM4

/-- On the actual normalized graded slice, the previously proved Euler/M4
argument supplies all zero point derivations. Only finite type and invertible
nonzero coefficients remain as geometric suppliers to this return. -/
theorem slice_finite_points_and_separation
    (d e : ℤ) (hdneg : d < 0) (hepos : 0 < e)
    (f g : A) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 e) (hd : (d : K) ≠ 0) (π : O) :
    let J := I ⊔ Ideal.span ({f - 1} : Set A)
    let s : A ⧸ J := algebraMap O (A ⧸ J) π * Ideal.Quotient.mk J g
    let C := Localization.Away s
    Algebra.FiniteType O C → (∀ a : O, a ≠ 0 → IsUnit (algebraMap O C a)) →
      Finite (C →ₐ[O] K) ∧ ∀ x : C, (∀ ξ : C →ₐ[O] K, ξ x = 0) → x = 0 := by
  dsimp only
  intro hfiniteType hunit
  let := hfiniteType
  exact finite_points_and_separation_of_invertible_coefficients O K _ hunit
    (GradedSlicePointDerivation.slice_point_eq_zero 𝒜 I hI hM4
      d e hdneg hepos f g hf hg hd π)

/-- Source degrees `−2,+2`, with the nonzero degree cast supplied by faithful
characteristic-zero coefficients, on the literal quotient-localization slice. -/
theorem slice_finite_points_and_separation_of_charZero [CharZero O]
    (f g : A) (hf : f ∈ 𝒜 (-2)) (hg : g ∈ 𝒜 2) (π : O) :
    let J := I ⊔ Ideal.span ({f - 1} : Set A)
    let s : A ⧸ J := algebraMap O (A ⧸ J) π * Ideal.Quotient.mk J g
    let C := Localization.Away s
    Algebra.FiniteType O C → (∀ a : O, a ≠ 0 → IsUnit (algebraMap O C a)) →
      Finite (C →ₐ[O] K) ∧ ∀ x : C, (∀ ξ : C →ₐ[O] K, ξ x = 0) → x = 0 := by
  have : CharZero K :=
    charZero_of_injective_algebraMap (FaithfulSMul.algebraMap_injective O K)
  exact slice_finite_points_and_separation 𝒜 I hI hM4 (-2) 2 (by norm_num) (by norm_num)
    f g hf hg (by norm_num) π

end GradedSlice

end GRWTSK.CommutativeAlgebra.FiniteTypePointRigidity
