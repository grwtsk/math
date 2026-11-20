/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.FiniteTypePointRigidity
import GRWTSK.CommutativeAlgebra.FiniteTypeGradedQuotient
import GRWTSK.CommutativeAlgebra.DVRLocalizedCoefficients
import GRWTSK.CommutativeAlgebra.GradedDehomogenizationLocalization
import Mathlib.RingTheory.Localization.Away.Basic
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.Tactic

/-!
# Normalized slice points and the return to ideal membership

The slice uses the actual quotient by `I + (f - 1)` followed by the
localization away from the image of `π * g`. Its field-valued points
restrict to normalized points, and each normalized point extends uniquely
when the coefficient `π` remains nonzero in the target field. Separation
on the localized algebra then returns an actual denominator-cleared ideal
membership statement in the original algebra.
-/

namespace GRWTSK.CommutativeAlgebra.GradedSliceSeparation

section Transport

variable {O A : Type*} [CommRing O] [CommRing A] [Algebra O A]
variable (I : Ideal A) (f g : A) (π : O)

local notation "SliceIdeal" => I ⊔ Ideal.span ({f - 1} : Set A)
local notation "SliceElement" =>
  algebraMap O (A ⧸ SliceIdeal) π * Ideal.Quotient.mk SliceIdeal g
local notation "SliceRing" => Localization.Away SliceElement
local notation "sliceMap" =>
  AlgHom.comp (IsScalarTower.toAlgHom O (A ⧸ SliceIdeal) SliceRing)
    (Ideal.Quotient.mkₐ O SliceIdeal)

/-- The actual kernel criterion for the quotient/Away composite. A zero
localized image is precisely a power-denominator relation in the slice ideal. -/
theorem sliceMap_eq_zero_iff (h : A) :
    sliceMap h = 0 ↔ ∃ n : ℕ, π ^ n • (g ^ n * h) ∈ SliceIdeal := by
  have hquot (n : ℕ) :
      Ideal.Quotient.mk SliceIdeal (π ^ n • (g ^ n * h)) =
        SliceElement ^ n * Ideal.Quotient.mk SliceIdeal h := by
    simp only [Algebra.smul_def, map_mul, map_pow, mul_pow,
      Ideal.Quotient.mk_algebraMap]
    ring
  change algebraMap (A ⧸ SliceIdeal) SliceRing (Ideal.Quotient.mk SliceIdeal h) = 0 ↔ _
  rw [IsLocalization.map_eq_zero_iff (Submonoid.powers SliceElement)]
  constructor
  · rintro ⟨⟨_, n, rfl⟩, hz⟩
    refine ⟨n, Ideal.Quotient.eq_zero_iff_mem.mp ?_⟩
    rw [hquot]
    exact hz
  · rintro ⟨n, hn⟩
    refine ⟨⟨SliceElement ^ n, n, rfl⟩, ?_⟩
    rw [← hquot]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr hn

variable {K : Type*} [Field K] [Algebra O K]

/-- Every point of the actual localized slice restricts to a point of the
original algebra killing `I`, taking `f` to one, and taking `g` to a nonzero value. -/
theorem slicePoint_restricts (ψ : SliceRing →ₐ[O] K) :
    (∀ a ∈ I, (ψ.comp sliceMap) a = 0) ∧
      (ψ.comp sliceMap) f = 1 ∧ (ψ.comp sliceMap) g ≠ 0 := by
  have hkill : ∀ a ∈ SliceIdeal, sliceMap a = 0 := by
    intro a ha
    change algebraMap (A ⧸ SliceIdeal) SliceRing (Ideal.Quotient.mk SliceIdeal a) = 0
    rw [Ideal.Quotient.eq_zero_iff_mem.mpr ha, map_zero]
  have hf : sliceMap f = 1 := by
    have hz := hkill (f - 1)
      (Ideal.mem_sup_right (Ideal.mem_span_singleton_self (f - 1)))
    simpa only [map_sub, map_one, sub_eq_zero] using hz
  have hg : IsUnit (sliceMap g) := by
    have hu : IsUnit (algebraMap (A ⧸ SliceIdeal) SliceRing SliceElement) :=
      IsLocalization.Away.algebraMap_isUnit SliceElement
    rw [map_mul] at hu
    exact isUnit_of_mul_isUnit_right hu
  refine ⟨?_, ?_, (hg.map ψ).ne_zero⟩
  · intro a ha
    change ψ (sliceMap a) = 0
    rw [hkill a (Ideal.mem_sup_left ha), map_zero]
  · change ψ (sliceMap f) = 1
    rw [hf, map_one]

/-- Restriction to the original algebra determines a point of the slice.
The proof uses quotient surjectivity and localization homomorphism extensionality. -/
theorem slicePoint_ext (ψ χ : SliceRing →ₐ[O] K)
    (heq : ψ.comp sliceMap = χ.comp sliceMap) : ψ = χ := by
  apply IsLocalization.algHom_ext (Submonoid.powers SliceElement)
  apply AlgHom.ext
  intro b
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective b
  exact AlgHom.congr_fun heq a

/-- A normalized point extends uniquely to the actual slice when the
coefficient used in its denominator has nonzero image in the point field. -/
theorem existsUnique_slicePoint
    (hπ : algebraMap O K π ≠ 0) (ξ : A →ₐ[O] K)
    (hI : ∀ a ∈ I, ξ a = 0) (hf : ξ f = 1) (hg : ξ g ≠ 0) :
    ∃! ψ : SliceRing →ₐ[O] K, ψ.comp sliceMap = ξ := by
  have hker : SliceIdeal ≤ RingHom.ker ξ := by
    refine sup_le hI ?_
    rw [Ideal.span_le, Set.singleton_subset_iff]
    change ξ (f - 1) = 0
    rw [map_sub, hf, map_one, sub_self]
  let q : (A ⧸ SliceIdeal) →ₐ[O] K :=
    Ideal.Quotient.liftₐ SliceIdeal ξ (fun a ha => hker ha)
  have hs : IsUnit (q SliceElement) := by
    apply isUnit_iff_ne_zero.mpr
    change q (algebraMap O (A ⧸ SliceIdeal) π * Ideal.Quotient.mk SliceIdeal g) ≠ 0
    rw [map_mul, q.commutes]
    exact mul_ne_zero hπ hg
  let ψ : SliceRing →ₐ[O] K := IsLocalization.Away.liftAlgHom SliceElement hs
  have hψ : ψ.comp sliceMap = ξ := by
    apply AlgHom.ext
    intro a
    change IsLocalization.Away.lift SliceElement hs
      (algebraMap (A ⧸ SliceIdeal) SliceRing (Ideal.Quotient.mk SliceIdeal a)) = ξ a
    rw [IsLocalization.Away.lift_eq]
    rfl
  refine ⟨ψ, hψ, ?_⟩
  intro χ hχ
  exact slicePoint_ext I f g π χ ψ (hχ.trans hψ.symm)

/-- The full range of restriction is exactly the normalized point set. -/
theorem range_slicePoint_restriction (hπ : algebraMap O K π ≠ 0) :
    Set.range (fun ψ : SliceRing →ₐ[O] K => ψ.comp sliceMap) =
      {ξ : A →ₐ[O] K | (∀ a ∈ I, ξ a = 0) ∧ ξ f = 1 ∧ ξ g ≠ 0} := by
  ext ξ
  constructor
  · rintro ⟨ψ, rfl⟩
    exact slicePoint_restricts I f g π ψ
  · rintro ⟨hI, hf, hg⟩
    obtain ⟨ψ, hψ, _⟩ := existsUnique_slicePoint I f g π hπ ξ hI hf hg
    exact ⟨ψ, hψ⟩

/-- Finite separating points on the actual slice give the exact finite
normalized-point set and denominator-cleared relation in the original algebra. -/
theorem normalized_points_and_denominator_of_slice_points
    (hπ : algebraMap O K π ≠ 0)
    (hfinite : Finite (SliceRing →ₐ[O] K))
    (hsep : ∀ z : SliceRing, (∀ ψ : SliceRing →ₐ[O] K, ψ z = 0) → z = 0) :
    {ξ : A →ₐ[O] K | (∀ a ∈ I, ξ a = 0) ∧ ξ f = 1 ∧ ξ g ≠ 0}.Finite ∧
      ∀ h : A,
        (∀ ξ : A →ₐ[O] K, (∀ a ∈ I, ξ a = 0) → ξ f = 1 → ξ g ≠ 0 → ξ h = 0) →
        ∃ (n : ℕ) (c : O), c ≠ 0 ∧ c • (g ^ n * h) ∈ SliceIdeal := by
  let := hfinite
  refine ⟨?_, ?_⟩
  · rw [← range_slicePoint_restriction I f g π hπ]
    exact Set.finite_range _
  · intro h hh
    have hz : sliceMap h = 0 := by
      apply hsep
      intro ψ
      obtain ⟨hI, hf, hg⟩ := slicePoint_restricts I f g π ψ
      exact hh (ψ.comp sliceMap) hI hf hg
    obtain ⟨n, hn⟩ := (sliceMap_eq_zero_iff I f g π h).mp hz
    refine ⟨n, π ^ n, ?_, hn⟩
    intro hzero
    have hnonzero : algebraMap O K (π ^ n) ≠ 0 := by
      rw [map_pow]
      exact pow_ne_zero n hπ
    exact hnonzero (by rw [hzero, map_zero])

end Transport

section Graded

variable {O A K : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
variable [CommRing A] [Field K] [Algebra O A] [Algebra O K]
variable [IsAlgClosed K] [FaithfulSMul O K]
variable (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]
variable (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
variable (hgen : ∃ s : Finset A, Algebra.adjoin O ((𝒜 0 : Set A) ∪ (s : Set A)) = ⊤)
variable (hM2 : ((𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap).FG)
variable (hM4 : ∀ ξ : A →ₐ[O] K, (∀ a ∈ I, ξ a = 0) →
    ((¬ ∀ j : ℤ, j < 0 → ∀ a ∈ 𝒜 j, ξ a = 0) ∧
      (¬ ∀ j : ℤ, 0 < j → ∀ a ∈ 𝒜 j, ξ a = 0)) →
    ∀ D E : A →ₗ[O] K,
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) →
      (∀ a b, E (a * b) = ξ a * E b + ξ b * E a) →
      (∀ a ∈ I, D a = 0) → (∀ a ∈ I, E a = 0) →
      ∃ c c' : K, (c ≠ 0 ∨ c' ≠ 0) ∧ c • D + c' • E = 0)

include hI hgen hM2 hM4

/-- Complete normalized-slice return from the actual finite-generation,
degree-zero finite-image, and tangent-dependence data. The normalizing degree
must be nonzero after casting to the point field. -/
theorem slice_holds
    (d e : ℤ) (hdneg : d < 0) (hepos : 0 < e)
    (f g : A) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 e) (hd : (d : K) ≠ 0) :
    {ξ : A →ₐ[O] K | (∀ a ∈ I, ξ a = 0) ∧ ξ f = 1 ∧ ξ g ≠ 0}.Finite ∧
      ∀ h : A,
        (∀ ξ : A →ₐ[O] K, (∀ a ∈ I, ξ a = 0) → ξ f = 1 → ξ g ≠ 0 → ξ h = 0) →
        ∃ (n : ℕ) (c : O), c ≠ 0 ∧ c • (g ^ n * h) ∈ I ⊔ Ideal.span {f - 1} := by
  obtain ⟨π, hπ⟩ := IsDiscreteValuationRing.exists_irreducible O
  have hpoints := FiniteTypePointRigidity.slice_finite_points_and_separation
    𝒜 I hI hM4 d e hdneg hepos f g hf hg hd π
    (FiniteTypeGradedQuotient.finiteType_sliceAway 𝒜 I hgen hM2 f g π)
    (DVRLocalizedCoefficients.slice_coefficients_are_units O A I f g π hπ)
  apply normalized_points_and_denominator_of_slice_points I f g π
    (K := K) _ hpoints.1 hpoints.2
  exact (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective O K)).mpr hπ.ne_zero

/-- The source degrees `−2,+2` give the complete `slice_holds` conclusion
under faithful characteristic-zero coefficients. Adic completeness, the
augmentation, and restrictions on the finite generators' degrees are unused. -/
theorem slice_holds_of_charZero [CharZero O]
    (f g : A) (hf : f ∈ 𝒜 (-2)) (hg : g ∈ 𝒜 2) :
    {ξ : A →ₐ[O] K | (∀ a ∈ I, ξ a = 0) ∧ ξ f = 1 ∧ ξ g ≠ 0}.Finite ∧
      ∀ h : A,
        (∀ ξ : A →ₐ[O] K, (∀ a ∈ I, ξ a = 0) → ξ f = 1 → ξ g ≠ 0 → ξ h = 0) →
        ∃ (n : ℕ) (c : O), c ≠ 0 ∧ c • (g ^ n * h) ∈ I ⊔ Ideal.span {f - 1} := by
  have : CharZero K :=
    charZero_of_injective_algebraMap (FaithfulSMul.algebraMap_injective O K)
  exact slice_holds 𝒜 I hI hgen hM2 hM4 (-2) 2 (by norm_num) (by norm_num)
    f g hf hg (by norm_num)

/-- The source's local homogeneous nilpotence-to-vanishing return. The
degree-zero point need not extend to a point of `A`: the full slice theorem
and dehomogenization construct a multiplier nonzero at that original point. -/
theorem exists_point_multiplier_of_pow_mem [CharZero O]
    (σ : 𝒜 0 →ₐ[O] K)
    (f g : A) (hf : f ∈ 𝒜 (-2)) (hg : g ∈ 𝒜 2)
    (τ : 𝒜 0) (hτ : (τ : A) = f * g) (hστ : σ τ ≠ 0)
    (w : ℤ) (h : A) (hh : h ∈ 𝒜 w)
    (b : 𝒜 0) (hb : σ b ≠ 0) (n : ℕ) (hn : (b : A) * h ^ n ∈ I) :
    ∃ b' : 𝒜 0, σ b' ≠ 0 ∧ (b' : A) * h ∈ I := by
  have hpoints : ∀ ξ : A →ₐ[O] K, (∀ a ∈ I, ξ a = 0) →
      ξ f = 1 → ξ g ≠ 0 → ξ ((b : A) * h) = 0 := by
    intro ξ hξ _ _
    have hz : ξ (b : A) * ξ h ^ n = 0 := by
      simpa only [map_mul, map_pow] using hξ _ hn
    rw [map_mul]
    rcases mul_eq_zero.mp hz with hbzero | hpower
    · rw [hbzero, zero_mul]
    · rw [eq_zero_of_pow_eq_zero hpower, mul_zero]
  obtain ⟨N, c, hc, hmem⟩ :=
    (slice_holds_of_charZero 𝒜 I hI hgen hM2 hM4 f g hf hg).2 ((b : A) * h) hpoints
  exact GradedDehomogenizationLocalization.exists_point_multiplier_of_slice
    𝒜 σ I hI (-2) f g (by norm_num) hf hg τ hτ hστ c hc b hb N w h hh hmem

end Graded

end GRWTSK.CommutativeAlgebra.GradedSliceSeparation
