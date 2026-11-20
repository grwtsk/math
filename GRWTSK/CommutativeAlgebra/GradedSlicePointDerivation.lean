/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.GradedEulerDerivation
import GRWTSK.CommutativeAlgebra.LocalizedPointDerivation
import Mathlib.Tactic

/-!
# Point derivations on a normalized graded slice

The actual Euler derivation detects a homogeneous normalizing element when
its degree remains nonzero in the point field. Pairwise tangent dependence
then kills point derivations that kill this element. On the genuine quotient
and localization slice, pullback injectivity returns this conclusion to the
original localized algebra. The tangent-dependence hypothesis stays explicit;
no finite-type, reducedness, or point-separation conclusion is assumed.
-/

namespace GRWTSK.CommutativeAlgebra.GradedSlicePointDerivation

open GradedEulerDerivation

variable {O A K : Type*} [CommRing O] [CommRing A] [Field K]
variable [Algebra O A] [Algebra O K]

private theorem linearMap_eq_zero_of_dependent
    (D E : A →ₗ[O] K) (f : A) (hDf : D f = 0) (hEf : E f ≠ 0)
    (hdep : ∃ c c' : K, (c ≠ 0 ∨ c' ≠ 0) ∧ c • D + c' • E = 0) : D = 0 := by
  obtain ⟨c, c', hnonzero, hrelation⟩ := hdep
  have hc' : c' = 0 := by
    have hvalue : c * D f + c' * E f = 0 := LinearMap.congr_fun hrelation f
    rw [hDf, mul_zero, zero_add] at hvalue
    exact (mul_eq_zero.mp hvalue).resolve_right hEf
  have hc : c ≠ 0 := hnonzero.resolve_right (fun h => h hc')
  ext a
  have hvalue : c * D a + c' * E a = 0 := LinearMap.congr_fun hrelation a
  rw [hc', zero_mul, add_zero] at hvalue
  exact (mul_eq_zero.mp hvalue).resolve_left hc

/-- At a fixed field point, tangent dependence and a visible Euler value
kill every point derivation vanishing on the homogeneous normalizing element. -/
theorem point_eq_zero_of_normalizing_element
    (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (ξ : A →ₐ[O] K) (hξ : ∀ a ∈ I, ξ a = 0)
    (hdep : ∀ D E : A →ₗ[O] K,
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) →
      (∀ a b, E (a * b) = ξ a * E b + ξ b * E a) →
      (∀ a ∈ I, D a = 0) → (∀ a ∈ I, E a = 0) →
      ∃ c c' : K, (c ≠ 0 ∨ c' ≠ 0) ∧ c • D + c' • E = 0)
    (d : ℤ) (f : A) (hf : f ∈ 𝒜 d) (hd : (d : K) ≠ 0) (hξf : ξ f ≠ 0)
    (D : A →ₗ[O] K) (hD : ∀ a b, D (a * b) = ξ a * D b + ξ b * D a)
    (hDI : ∀ a ∈ I, D a = 0) (hDf : D f = 0) : D = 0 := by
  apply linearMap_eq_zero_of_dependent D (pointEuler 𝒜 ξ) f hDf
  · rw [pointEuler_apply_of_mem 𝒜 ξ d f hf]
    exact mul_ne_zero hd hξf
  · exact hdep D (pointEuler 𝒜 ξ) hD (pointEuler_leibniz 𝒜 ξ)
      hDI (pointEuler_eq_zero_of_mem 𝒜 I hI ξ hξ)

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

/-- Nonzero values in a negative and a positive degree supply precisely
the two-signed point premise of the source tangent condition. -/
theorem point_eq_zero_of_twoSigned
    (d e : ℤ) (hdneg : d < 0) (hepos : 0 < e)
    (f g : A) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 e) (hd : (d : K) ≠ 0)
    (ξ : A →ₐ[O] K) (hξ : ∀ a ∈ I, ξ a = 0) (hξf : ξ f ≠ 0) (hξg : ξ g ≠ 0)
    (D : A →ₗ[O] K) (hD : ∀ a b, D (a * b) = ξ a * D b + ξ b * D a)
    (hDI : ∀ a ∈ I, D a = 0) (hDf : D f = 0) : D = 0 := by
  have htwo : (¬ ∀ j : ℤ, j < 0 → ∀ a ∈ 𝒜 j, ξ a = 0) ∧
      (¬ ∀ j : ℤ, 0 < j → ∀ a ∈ 𝒜 j, ξ a = 0) :=
    ⟨fun hz => hξf (hz d hdneg f hf), fun hz => hξg (hz e hepos g hg)⟩
  exact point_eq_zero_of_normalizing_element 𝒜 I hI ξ hξ (hM4 ξ hξ htwo)
    d f hf hd hξf D hD hDI hDf

/-- Every point derivation on the actual slice quotient localized away from
the coefficient times `g` vanishes. No finite-type or reducedness supplier is used. -/
theorem slice_point_eq_zero
    (d e : ℤ) (hdneg : d < 0) (hepos : 0 < e)
    (f g : A) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 e) (hd : (d : K) ≠ 0) (π : O) :
    let J := I ⊔ Ideal.span ({f - 1} : Set A)
    let s : A ⧸ J := algebraMap O (A ⧸ J) π * Ideal.Quotient.mk J g
    ∀ (ψ : Localization.Away s →ₐ[O] K) (D : Localization.Away s →ₗ[O] K),
      (∀ x y, D (x * y) = ψ x * D y + ψ y * D x) → D = 0 := by
  dsimp only
  intro ψ D hD
  let J := I ⊔ Ideal.span ({f - 1} : Set A)
  let s : A ⧸ J := algebraMap O (A ⧸ J) π * Ideal.Quotient.mk J g
  let C := Localization.Away s
  let φ : A →ₐ[O] C :=
    (IsScalarTower.toAlgHom O (A ⧸ J) C).comp (Ideal.Quotient.mkₐ O J)
  have hφJ : ∀ a ∈ J, φ a = 0 := by
    intro a ha
    change algebraMap (A ⧸ J) C (Ideal.Quotient.mk J a) = 0
    rw [Ideal.Quotient.eq_zero_iff_mem.mpr ha, map_zero]
  have hf1 : φ f = 1 := by
    have hz : φ (f - 1) = 0 :=
      hφJ _ (Submodule.mem_sup_right (Ideal.subset_span (Set.mem_singleton _)))
    simpa only [map_sub, map_one, sub_eq_zero] using hz
  have hgu : IsUnit (φ g) := by
    have hs : IsUnit (algebraMap (A ⧸ J) C s) :=
      IsLocalization.Away.algebraMap_isUnit s
    change IsUnit (algebraMap (A ⧸ J) C
      (algebraMap O (A ⧸ J) π * Ideal.Quotient.mk J g)) at hs
    rw [map_mul] at hs
    exact isUnit_of_mul_isUnit_right hs
  have hD1 : D 1 = 0 := by
    have heq : D 1 + D 1 = D 1 + 0 := by simpa using (hD 1 1).symm
    exact add_left_cancel heq
  let ξ : A →ₐ[O] K := ψ.comp φ
  let pullback : A →ₗ[O] K := D.comp φ.toLinearMap
  have hξ : ∀ a ∈ I, ξ a = 0 := by
    intro a ha
    change ψ (φ a) = 0
    rw [hφJ a (Submodule.mem_sup_left ha), map_zero]
  have hξf : ξ f ≠ 0 := by
    change ψ (φ f) ≠ 0
    rw [hf1, map_one]
    exact one_ne_zero
  have hξg : ξ g ≠ 0 := (hgu.map ψ).ne_zero
  have hpull : ∀ a b, pullback (a * b) = ξ a * pullback b + ξ b * pullback a := by
    intro a b
    change D (φ (a * b)) = ψ (φ a) * D (φ b) + ψ (φ b) * D (φ a)
    rw [map_mul]
    exact hD _ _
  have hpullI : ∀ a ∈ I, pullback a = 0 := by
    intro a ha
    change D (φ a) = 0
    rw [hφJ a (Submodule.mem_sup_left ha), map_zero]
  have hpullf : pullback f = 0 := by
    change D (φ f) = 0
    rw [hf1]
    exact hD1
  have hpull0 : pullback = 0 :=
    point_eq_zero_of_twoSigned 𝒜 I hI hM4 d e hdneg hepos f g hf hg hd
      ξ hξ hξf hξg pullback hpull hpullI hpullf
  apply LocalizedPointDerivation.eq_zero_of_quotient_away J s ψ D hD
  intro a
  exact LinearMap.congr_fun hpull0 a

/-- The source's degrees `−2,+2` follow from characteristic zero of the
coefficient ring and its faithful action on the point field. -/
theorem slice_point_eq_zero_of_charZero [CharZero O] [FaithfulSMul O K]
    (f g : A) (hf : f ∈ 𝒜 (-2)) (hg : g ∈ 𝒜 2) (π : O) :
    let J := I ⊔ Ideal.span ({f - 1} : Set A)
    let s : A ⧸ J := algebraMap O (A ⧸ J) π * Ideal.Quotient.mk J g
    ∀ (ψ : Localization.Away s →ₐ[O] K) (D : Localization.Away s →ₗ[O] K),
      (∀ x y, D (x * y) = ψ x * D y + ψ y * D x) → D = 0 := by
  have : CharZero K :=
    charZero_of_injective_algebraMap (FaithfulSMul.algebraMap_injective O K)
  exact slice_point_eq_zero 𝒜 I hI hM4 (-2) 2 (by norm_num) (by norm_num)
    f g hf hg (by norm_num) π

end GRWTSK.CommutativeAlgebra.GradedSlicePointDerivation
