/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.RingTheory.FiniteType
import Mathlib.RingTheory.GradedAlgebra.Basic
import Mathlib.RingTheory.Localization.Away.AdjoinRoot

/-!
# Finite type from a finitely generated degree-zero image

Finite generation over a subalgebra passes through a surjection whenever the
image of that subalgebra is finite as a module over the original coefficients.
Applied to the actual degree-zero algebra, this supplies finite type for the
quotient, its normalized slice quotient, and the principal localization used
in the graded point-separation argument.
-/

namespace GRWTSK.CommutativeAlgebra.FiniteTypeGradedQuotient

section Subalgebra

variable {O A B : Type*} [CommRing O] [CommRing A] [CommRing B]
variable [Algebra O A] [Algebra O B]

/-- Adjoining finitely many elements to a coefficient subalgebra is precisely
finite type over that actual subalgebra. -/
theorem finiteType_over_subalgebra
    (S : Subalgebra O A)
    (hgen : ∃ s : Finset A, Algebra.adjoin O ((S : Set A) ∪ (s : Set A)) = ⊤) :
    Algebra.FiniteType S A := by
  obtain ⟨s, hs⟩ := hgen
  refine ⟨⟨s, ?_⟩⟩
  apply Subalgebra.restrictScalars_injective O
  rw [Subalgebra.restrictScalars_top, Algebra.restrictScalars_adjoin]
  exact hs

/-- A surjective image is finite type when the image of the coefficient
subalgebra is finitely generated as a module and only finitely many further
algebra generators are needed. -/
theorem finiteType_of_surjective
    (S : Subalgebra O A)
    (hgen : ∃ s : Finset A, Algebra.adjoin O ((S : Set A) ∪ (s : Set A)) = ⊤)
    (q : A →ₐ[O] B) (hq : Function.Surjective q)
    (hS : (S.toSubmodule.map q.toLinearMap).FG) :
    Algebra.FiniteType O B := by
  obtain ⟨s, hs⟩ := hgen
  have hS' : (S.map q).FG := Subalgebra.fg_of_fg_toSubmodule (by
    simpa only [Subalgebra.map_toSubmodule] using hS)
  have hfg := hS'.sup ((Subalgebra.fg_adjoin_finset s).map q)
  rw [Algebra.adjoin_union, Algebra.adjoin_eq] at hs
  have htop : S.map q ⊔ (Algebra.adjoin O (s : Set A)).map q = ⊤ := by
    rw [← Algebra.map_sup, hs, Algebra.map_top, (AlgHom.range_eq_top q).mpr hq]
  exact ⟨htop ▸ hfg⟩

end Subalgebra

section Graded

variable {O A : Type*} [CommRing O] [CommRing A] [Algebra O A]
variable (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]

/-- The finite-generation component of `IsWRing.gen` gives finite type over
the genuine degree-zero coefficient algebra. No degree bounds are needed. -/
theorem finiteType_over_degreeZero
    (hgen : ∃ s : Finset A, Algebra.adjoin O ((𝒜 0 : Set A) ∪ (s : Set A)) = ⊤) :
    Algebra.FiniteType (𝒜 0) A :=
  finiteType_over_subalgebra (SetLike.GradeZero.subalgebra 𝒜) hgen

/-- The actual `M2` quotient-image condition supplies finite type over `O`.
The degree-zero algebra itself need not be a finite `O`-module. -/
theorem finiteType_quotient
    (I : Ideal A)
    (hgen : ∃ s : Finset A, Algebra.adjoin O ((𝒜 0 : Set A) ∪ (s : Set A)) = ⊤)
    (hM2 : ((𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap).FG) :
    Algebra.FiniteType O (A ⧸ I) :=
  finiteType_of_surjective (SetLike.GradeZero.subalgebra 𝒜) hgen
    (Ideal.Quotient.mkₐ O I) (Ideal.Quotient.mkₐ_surjective O I) hM2

/-- Imposing the normalization `f = 1` preserves finite type. -/
theorem finiteType_sliceQuotient
    (I : Ideal A)
    (hgen : ∃ s : Finset A, Algebra.adjoin O ((𝒜 0 : Set A) ∪ (s : Set A)) = ⊤)
    (hM2 : ((𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap).FG)
    (f : A) :
    Algebra.FiniteType O (A ⧸ (I ⊔ Ideal.span ({f - 1} : Set A))) := by
  let := finiteType_quotient 𝒜 I hgen hM2
  exact Algebra.FiniteType.of_surjective
    (Ideal.Quotient.factorₐ O (le_sup_left : I ≤ I ⊔ Ideal.span ({f - 1} : Set A)))
    (Ideal.Quotient.factor_surjective le_sup_left)

/-- Finite type for the literal quotient-localization slice used in point
separation. No nonvanishing assumption on either localization factor is needed. -/
theorem finiteType_sliceAway
    (I : Ideal A)
    (hgen : ∃ s : Finset A, Algebra.adjoin O ((𝒜 0 : Set A) ∪ (s : Set A)) = ⊤)
    (hM2 : ((𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap).FG)
    (f g : A) (π : O) :
    let J := I ⊔ Ideal.span ({f - 1} : Set A)
    let s : A ⧸ J := algebraMap O (A ⧸ J) π * Ideal.Quotient.mk J g
    Algebra.FiniteType O (Localization.Away s) := by
  dsimp only
  let := finiteType_sliceQuotient 𝒜 I hgen hM2 f
  infer_instance

end Graded

end GRWTSK.CommutativeAlgebra.FiniteTypeGradedQuotient
