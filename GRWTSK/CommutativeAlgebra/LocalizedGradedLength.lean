/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.GradedQuotientExact
import Mathlib.RingTheory.Length
import Mathlib.RingTheory.Localization.Module
import Mathlib.RingTheory.Localization.AtPrime.Basic
import Mathlib.Algebra.Module.LocalizedModule.Exact

/-!
# Localized lengths of actual graded quotient pieces

Length subadditivity applies to the constructed shifted multiplication and
quotient projection, after localization at any prime of the degree-zero ring.
All lengths are extended natural numbers, so no finite-length assumption or
truncation is used. Specializing the prime to a field-valued point's kernel
recovers the submitted square-equation length estimate.
-/

namespace GRWTSK.CommutativeAlgebra.LocalizedGradedLength

open GradedQuotientExact

/-- Factoring an exact pair through its images gives the length inequality
without assuming injectivity of the first map or surjectivity of the second. -/
theorem moduleLength_le_add_of_exact
    {R M N Q : Type*} [Ring R]
    [AddCommGroup M] [AddCommGroup N] [AddCommGroup Q]
    [Module R M] [Module R N] [Module R Q]
    (f : M →ₗ[R] N) (g : N →ₗ[R] Q) (h : Function.Exact f g) :
    Module.length R N ≤ Module.length R M + Module.length R Q := by
  rw [Module.length_eq_add_of_exact (LinearMap.range f).subtype g.rangeRestrict
    (Submodule.subtype_injective _) (LinearMap.surjective_rangeRestrict _)
    h.linearMap_rangeRestrict]
  exact add_le_add
    (Module.length_le_of_surjective f.rangeRestrict (LinearMap.surjective_rangeRestrict _))
    (Module.length_le_of_injective (LinearMap.range g).subtype (Submodule.subtype_injective _))

/-- The actual length of a module after localization at a prime ideal. -/
noncomputable def localLength {R : Type*} [CommRing R] (P : Ideal R) [P.IsPrime]
    (M : Type*) [AddCommGroup M] [Module R M] : ℕ∞ :=
  Module.length (Localization.AtPrime P) (LocalizedModule P.primeCompl M)

/-- Localization preserves the exact pair, and hence its length inequality. -/
theorem localLength_le_add_of_exact
    {R M N Q : Type*} [CommRing R] (P : Ideal R) [P.IsPrime]
    [AddCommGroup M] [AddCommGroup N] [AddCommGroup Q]
    [Module R M] [Module R N] [Module R Q]
    (f : M →ₗ[R] N) (g : N →ₗ[R] Q) (h : Function.Exact f g) :
    localLength P N ≤ localLength P M + localLength P Q := by
  exact moduleLength_le_add_of_exact
    (LocalizedModule.map P.primeCompl f) (LocalizedModule.map P.primeCompl g)
    (LocalizedModule.map_exact P.primeCompl f g h)

/-- The localized square-equation bound on the actual graded quotient pieces.
Its exactness premise has already been proved for the explicit maps. -/
theorem localLength_quotientPiece_square_le
    {O A : Type*} [CommRing O] [CommRing A] [Algebra O A]
    (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]
    (P : Ideal (𝒜 0)) [P.IsPrime]
    (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (t : A) (ht : t ∈ 𝒜 d) (w : ℤ) :
    localLength P (quotientPiece 𝒜 (J ⊔ Ideal.span {t ^ 2}) w) ≤
      localLength P (quotientPiece 𝒜 (J ⊔ Ideal.span {t}) (w - d)) +
        localLength P (quotientPiece 𝒜 (J ⊔ Ideal.span {t}) w) := by
  exact localLength_le_add_of_exact P (squareMul 𝒜 J d t ht w)
    (squareProjection 𝒜 J t w) (square_exact 𝒜 J hJ d t ht w)

/-- Length localized at the prime kernel of a field-valued algebra point. -/
noncomputable def pointLength
    {O B K : Type*} [CommRing O] [CommRing B] [Algebra O B]
    [Field K] [Algebra O K] (σ : B →ₐ[O] K)
    (M : Type*) [AddCommGroup M] [Module B M] : ℕ∞ :=
  haveI : (RingHom.ker σ).IsPrime := RingHom.ker_isPrime σ
  localLength (RingHom.ker σ) M

/-- Exact field-point form of the submitted local square-equation estimate. -/
theorem pointLength_quotientPiece_square_le
    {O A K : Type*} [CommRing O] [CommRing A] [Algebra O A]
    [Field K] [Algebra O K]
    (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜] (σ : 𝒜 0 →ₐ[O] K)
    (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (t : A) (ht : t ∈ 𝒜 d) (w : ℤ) :
    pointLength σ (quotientPiece 𝒜 (J ⊔ Ideal.span {t ^ 2}) w) ≤
      pointLength σ (quotientPiece 𝒜 (J ⊔ Ideal.span {t}) (w - d)) +
        pointLength σ (quotientPiece 𝒜 (J ⊔ Ideal.span {t}) w) := by
  have : (RingHom.ker σ).IsPrime := RingHom.ker_isPrime σ
  exact localLength_quotientPiece_square_le 𝒜 (RingHom.ker σ) J hJ d t ht w

end GRWTSK.CommutativeAlgebra.LocalizedGradedLength
