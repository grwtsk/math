/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.GradedSliceSeparation
import GRWTSK.CommutativeAlgebra.FiniteAlgebraPointNilpotence
import GRWTSK.CommutativeAlgebra.GradedQuotientExact
import GRWTSK.CommutativeAlgebra.LocalizedGradedLength
import Mathlib.Algebra.Module.LocalizedModule.Basic
import Mathlib.RingTheory.Localization.AtPrime.Basic
import Mathlib.RingTheory.Length

/-!
# Length at most one at a nondegenerate graded point

A cyclic localized module annihilated by the point's maximal ideal is a
quotient of its residue field. For the actual graded quotient pieces,
quadratic products construct cyclicity, and finite degree-zero image
together with the established homogeneous power-reduction theorem supplies
annihilation. The final statements derive these premises from the original
finite-generation, degree-zero finiteness, and tangent-dependence data.
-/

namespace GRWTSK.CommutativeAlgebra.GradedPointLengthOne

open GradedQuotientExact LocalizedGradedLength

/-- Local cyclicity and annihilation by the prime give a surjection from
the residue field onto the actual localized module, hence length at most one. -/
theorem localized_length_le_one
    {B M : Type*} [CommRing B] [AddCommGroup M] [Module B M]
    (P : Ideal B) [P.IsPrime]
    (hk : ∀ p ∈ P, ∀ m : M, ∃ b : B, b ∉ P ∧ (b * p) • m = 0)
    (m0 : M)
    (hc : ∀ m : M, ∃ b : B, b ∉ P ∧ ∃ a : B, b • m = a • m0) :
    Module.length (Localization.AtPrime P) (LocalizedModule P.primeCompl M) ≤ 1 := by
  let R := Localization.AtPrime P
  let N := LocalizedModule P.primeCompl M
  let φ : R →ₗ[R] N := LinearMap.toSpanSingleton R N (LocalizedModule.mk m0 1)
  have hsurj : Function.Surjective φ := by
    intro y
    induction y using LocalizedModule.induction_on with
    | _ m s =>
      obtain ⟨b, hb, a, hrelation⟩ := hc m
      refine ⟨Localization.mk a (s * ⟨b, hb⟩), ?_⟩
      change Localization.mk a (s * (⟨b, hb⟩ : P.primeCompl)) •
        LocalizedModule.mk m0 (1 : P.primeCompl) = LocalizedModule.mk m s
      rw [LocalizedModule.mk_smul_mk, mul_one, ← hrelation]
      exact LocalizedModule.mk_cancel_common_right s (⟨b, hb⟩ : P.primeCompl) m
  have hmax : IsLocalRing.maximalIdeal R ≤ LinearMap.ker φ := by
    rw [← Localization.AtPrime.map_eq_maximalIdeal, Ideal.map_le_iff_le_comap]
    intro p hp
    obtain ⟨b, hb, hzero⟩ := hk p hp m0
    change algebraMap B R p • LocalizedModule.mk m0 (1 : P.primeCompl) = 0
    rw [algebraMap_smul, LocalizedModule.smul'_mk,
      ← LocalizedModule.zero_mk (1 : P.primeCompl)]
    apply LocalizedModule.mk_eq.mpr
    refine ⟨⟨b, hb⟩, ?_⟩
    simpa only [Submonoid.smul_def, OneMemClass.coe_one, one_smul,
      smul_zero, ← mul_smul] using hzero
  let q := (IsLocalRing.maximalIdeal R).liftQ φ hmax
  have hq : Function.Surjective q := by
    intro y
    obtain ⟨r, hr⟩ := hsurj y
    exact ⟨Submodule.Quotient.mk r, hr⟩
  have : IsSimpleModule R (R ⧸ IsLocalRing.maximalIdeal R) :=
    isSimpleModule_iff_isCoatom.mpr (Ideal.isMaximal_def.mp inferInstance)
  calc
    Module.length R N ≤ Module.length R (R ⧸ IsLocalRing.maximalIdeal R) :=
      Module.length_le_of_surjective q hq
    _ = 1 := Module.length_eq_one R _

section Quadratic

variable {O A : Type*} [CommRing O] [CommRing A] [Algebra O A]
variable (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]

/-- Opposite degree-two elements provide a complementary factor for the
square of any weight, with product a power of their degree-zero product. -/
theorem exists_quadratic_complement
    (f g : A) (hf : f ∈ 𝒜 (-2)) (hg : g ∈ 𝒜 2)
    (τ : 𝒜 0) (hτ : (τ : A) = f * g) (w : ℤ) :
    ∃ e ∈ 𝒜 (-2 * w), ∃ e' : A, ∃ k : ℕ, e * e' = (τ : A) ^ k := by
  obtain ⟨k, hk | hk⟩ := Int.eq_nat_or_neg w
  · subst w
    refine ⟨f ^ k, ?_, g ^ k, k, ?_⟩
    · simpa only [nsmul_eq_mul, mul_comm] using SetLike.pow_mem_graded k hf
    · rw [hτ, mul_pow]
  · subst w
    refine ⟨g ^ k, ?_, f ^ k, k, ?_⟩
    · have hdegree : (k : ℤ) * 2 = -2 * -(k : ℤ) := by ring
      simpa only [nsmul_eq_mul, hdegree] using SetLike.pow_mem_graded k hg
    · rw [hτ, mul_pow, mul_comm]

end Quadratic

section HomogeneousReduction

variable {O A K : Type*} [CommRing O] [Nontrivial O] [CommRing A] [Field K]
variable [Algebra O A] [Algebra O K] [FaithfulSMul O K]
variable (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]
variable (I : Ideal A)
variable (hM2 : ((𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap).FG)
variable (σ : 𝒜 0 →ₐ[O] K)
variable (hred : ∀ (j : ℤ) (h : A), h ∈ 𝒜 j →
    ∀ b : 𝒜 0, σ b ≠ 0 → ∀ n : ℕ, (b : A) * h ^ n ∈ I →
      ∃ b' : 𝒜 0, σ b' ≠ 0 ∧ (b' : A) * h ∈ I)

include hM2 hred

/-- Quadratic products either supply a cyclic generator or force every
homogeneous element to vanish near the point, in which case zero generates. -/
theorem exists_point_cyclic_generator
    (f g : A) (hf : f ∈ 𝒜 (-2)) (hg : g ∈ 𝒜 2)
    (τ : 𝒜 0) (hτ : (τ : A) = f * g) (hστ : σ τ ≠ 0) (w : ℤ) :
    ∃ h0 ∈ 𝒜 w, ∀ h ∈ 𝒜 w,
      ∃ b : 𝒜 0, σ b ≠ 0 ∧ ∃ a : 𝒜 0, (b : A) * h - (a : A) * h0 ∈ I := by
  classical
  obtain ⟨e, he, e', k, hee⟩ := exists_quadratic_complement 𝒜 f g hf hg τ hτ w
  have hproduct : ∀ h ∈ 𝒜 w, ∀ h' ∈ 𝒜 w, h * h' * e ∈ 𝒜 0 := by
    intro h hh h' hh'
    have hdegree : w + w + -2 * w = 0 := by ring
    simpa only [hdegree] using
      SetLike.GradedMul.mul_mem (SetLike.GradedMul.mul_mem hh hh') he
  by_cases hall : ∀ h (hh : h ∈ 𝒜 w), σ ⟨h * h * e, hproduct h hh h hh⟩ = 0
  · refine ⟨0, (𝒜 w).zero_mem, ?_⟩
    intro h hh
    obtain ⟨b, hb, n, hn⟩ :=
      FiniteAlgebraPointNilpotence.exists_point_nonzero_mul_pow_mem_of_fg_degree_zero_image
        𝒜 I hM2 σ ⟨h * h * e, hproduct h hh h hh⟩ (hall h hh)
    have hvalue : σ (b * (τ ^ k) ^ n) ≠ 0 := by
      rw [map_mul, map_pow, map_pow]
      exact mul_ne_zero hb (pow_ne_zero n (pow_ne_zero k hστ))
    have hpower : ((b * (τ ^ k) ^ n : 𝒜 0) : A) * h ^ (2 * n) ∈ I := by
      have hidentity : ((b * (τ ^ k) ^ n : 𝒜 0) : A) * h ^ (2 * n) =
          e' ^ n * ((b : A) * (h * h * e) ^ n) := by
        rw [SetLike.GradeZero.coe_mul, SetLike.GradeZero.coe_pow,
          SetLike.GradeZero.coe_pow, ← hee]
        ring
      rw [hidentity]
      exact I.mul_mem_left _ hn
    obtain ⟨b', hb', hmem⟩ := hred w h hh (b * (τ ^ k) ^ n) hvalue (2 * n) hpower
    exact ⟨b', hb', 0, by simpa using hmem⟩
  · push Not at hall
    obtain ⟨h0, hh0, hvalue⟩ := hall
    refine ⟨h0, hh0, ?_⟩
    intro h hh
    refine ⟨⟨h0 * h0 * e, hproduct h0 hh0 h0 hh0⟩, hvalue,
      ⟨h * h0 * e, hproduct h hh h0 hh0⟩, ?_⟩
    change h0 * h0 * e * h - (h * h0 * e) * h0 ∈ I
    have hzero : h0 * h0 * e * h - (h * h0 * e) * h0 = 0 := by ring
    rw [hzero]
    exact I.zero_mem

/-- Finite degree-zero image and homogeneous power reduction imply that
the actual localized quotient piece is a quotient of the point's residue field. -/
theorem quotientPiece_length_le_one_of_homogeneous_reduction
    (f g : A) (hf : f ∈ 𝒜 (-2)) (hg : g ∈ 𝒜 2)
    (τ : 𝒜 0) (hτ : (τ : A) = f * g) (hστ : σ τ ≠ 0) (w : ℤ) :
    pointLength σ (quotientPiece 𝒜 I w) ≤ 1 := by
  let : (RingHom.ker σ).IsPrime := RingHom.ker_isPrime σ
  obtain ⟨h0, hh0, hcyclic⟩ := exists_point_cyclic_generator
    𝒜 I hM2 σ hred f g hf hg τ hτ hστ w
  apply localized_length_le_one (RingHom.ker σ) ?_ (pieceMk 𝒜 I w h0 hh0) ?_
  · intro p hp m
    obtain ⟨h, hh, rfl⟩ := exists_pieceMk 𝒜 I w m
    obtain ⟨b, hb, n, hn⟩ :=
      FiniteAlgebraPointNilpotence.exists_point_nonzero_mul_pow_mem_of_fg_degree_zero_image
        𝒜 I hM2 σ p hp
    have hhom : (p : A) * h ∈ 𝒜 (0 + w) := SetLike.GradedMul.mul_mem p.property hh
    have hpower : (b : A) * ((p : A) * h) ^ n ∈ I := by
      rw [mul_pow, ← mul_assoc]
      exact I.mul_mem_right _ hn
    obtain ⟨b', hb', hmem⟩ := hred (0 + w) ((p : A) * h) hhom b hb n hpower
    refine ⟨b', hb', Subtype.ext ?_⟩
    change Ideal.Quotient.mk I (((b' : A) * (p : A)) * h) = 0
    apply Ideal.Quotient.eq_zero_iff_mem.mpr
    simpa only [mul_assoc] using hmem
  · intro m
    obtain ⟨h, hh, rfl⟩ := exists_pieceMk 𝒜 I w m
    obtain ⟨b, hb, a, hrelation⟩ := hcyclic h hh
    refine ⟨b, hb, a, Subtype.ext ?_⟩
    change Ideal.Quotient.mk I ((b : A) * h) = Ideal.Quotient.mk I ((a : A) * h0)
    exact Ideal.Quotient.eq.mpr hrelation

end HomogeneousReduction

section SourceReturn

variable {O A K : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
variable [CharZero O] [CommRing A] [Field K] [Algebra O A] [Algebra O K]
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

/-- The actual graded quotient piece has localized length at most one
when a degree-minus-two/degree-two product is nonzero at the point. -/
theorem quotientPiece_length_le_one_of_product
    (σ : 𝒜 0 →ₐ[O] K) (f g : A) (hf : f ∈ 𝒜 (-2)) (hg : g ∈ 𝒜 2)
    (τ : 𝒜 0) (hτ : (τ : A) = f * g) (hστ : σ τ ≠ 0) (w : ℤ) :
    pointLength σ (quotientPiece 𝒜 I w) ≤ 1 := by
  apply quotientPiece_length_le_one_of_homogeneous_reduction
    𝒜 I hM2 σ _ f g hf hg τ hτ hστ w
  intro j h hh b hb n hn
  exact GradedSliceSeparation.exists_point_multiplier_of_pow_mem
    𝒜 I hI hgen hM2 hM4 σ f g hf hg τ hτ hστ j h hh b hb n hn

/-- Source-shaped nondegeneracy: the literal ideal generated by opposite
degree-two products is not contained in the original point kernel. -/
theorem quotientPiece_length_le_one_of_span_not_le_ker
    (σ : 𝒜 0 →ₐ[O] K)
    (hσ : ¬ Ideal.span {b : 𝒜 0 |
      ∃ f ∈ 𝒜 (-2), ∃ g ∈ 𝒜 2, (b : A) = f * g} ≤ RingHom.ker σ)
    (w : ℤ) :
    pointLength σ (quotientPiece 𝒜 I w) ≤ 1 := by
  classical
  have hex : ∃ τ : 𝒜 0,
      (∃ f ∈ 𝒜 (-2), ∃ g ∈ 𝒜 2, (τ : A) = f * g) ∧ σ τ ≠ 0 := by
    by_contra hnone
    apply hσ
    apply Ideal.span_le.mpr
    intro τ hτ
    change σ τ = 0
    by_contra hvalue
    exact hnone ⟨τ, hτ, hvalue⟩
  obtain ⟨τ, ⟨f, hf, g, hg, hτ⟩, hστ⟩ := hex
  exact quotientPiece_length_le_one_of_product
    𝒜 I hI hgen hM2 hM4 σ f g hf hg τ hτ hστ w

end SourceReturn

end GRWTSK.CommutativeAlgebra.GradedPointLengthOne
