/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.GradedDehomogenization
import GRWTSK.CommutativeAlgebra.GradedQuotientExact
import Mathlib.RingTheory.Localization.Away.Basic
import Mathlib.Algebra.Module.LocalizedModule.Basic
import Mathlib.RingTheory.Localization.AtPrime.Basic

/-!
# Localized returns from a homogeneous slice relation

The nonzero-degree dehomogenization theorem identifies slice membership of
a homogeneous element with its vanishing after inverting the chosen element
in the original ideal quotient. Opposite-degree elements then clear the
slice relation with a multiplier in degree zero. This supplies the actual
prime-localized quotient-piece return used after the geometric slice theorem;
the hypotheses producing that slice relation remain explicit.
-/

namespace GRWTSK.CommutativeAlgebra.GradedDehomogenizationLocalization

open GradedDehomogenization GradedQuotientExact

/-- In the slice quotient the chosen element is one, so any power multiplier
can be removed. This direction needs no grading assumptions. -/
theorem mem_sup_span_sub_one_of_pow_mul_mem
    {A : Type*} [CommRing A] (J : Ideal A) (f h : A) (n : ℕ)
    (hn : f ^ n * h ∈ J) : h ∈ J ⊔ Ideal.span {f - 1} := by
  let I := J ⊔ Ideal.span ({f - 1} : Set A)
  have hf : Ideal.Quotient.mk I f = 1 := by
    have hz : Ideal.Quotient.mk I (f - 1) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr
        (Submodule.mem_sup_right (Ideal.subset_span (Set.mem_singleton _)))
    simpa only [map_sub, map_one, sub_eq_zero] using hz
  have hz : Ideal.Quotient.mk I (f ^ n * h) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Submodule.mem_sup_left hn)
  rw [map_mul, map_pow, hf, one_pow, one_mul] at hz
  exact Ideal.Quotient.eq_zero_iff_mem.mp hz

/-- Actual localization of the original quotient detects precisely the
elements annihilated modulo the ideal by a power of the chosen element. -/
theorem away_quotient_eq_zero_iff
    {A : Type*} [CommRing A] (J : Ideal A) (f h : A) :
    algebraMap (A ⧸ J) (Localization.Away (Ideal.Quotient.mk J f))
      (Ideal.Quotient.mk J h) = 0 ↔ ∃ n : ℕ, f ^ n * h ∈ J := by
  rw [IsLocalization.map_eq_zero_iff (Submonoid.powers (Ideal.Quotient.mk J f))]
  constructor
  · rintro ⟨⟨_, n, rfl⟩, hn⟩
    refine ⟨n, Ideal.Quotient.eq_zero_iff_mem.mp ?_⟩
    simpa only [map_mul, map_pow] using hn
  · rintro ⟨n, hn⟩
    refine ⟨⟨Ideal.Quotient.mk J f ^ n, n, rfl⟩, ?_⟩
    simpa only [map_mul, map_pow] using Ideal.Quotient.eq_zero_iff_mem.mpr hn

variable {O A : Type*} [CommRing O] [CommRing A] [Algebra O A]
variable (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]

/-- The exact homogeneous slice relation is equivalent to vanishing in the
actual localization of `A/J` away from the image of `f`. -/
theorem mem_sup_span_sub_one_iff_away_quotient_eq_zero
    (J : Ideal A) (hJ : J.IsHomogeneous 𝒜) (d : ℤ) (f : A)
    (hd : d ≠ 0) (hf : f ∈ 𝒜 d) (w : ℤ) (h : A) (hh : h ∈ 𝒜 w) :
    h ∈ J ⊔ Ideal.span {f - 1} ↔
      algebraMap (A ⧸ J) (Localization.Away (Ideal.Quotient.mk J f))
        (Ideal.Quotient.mk J h) = 0 := by
  rw [away_quotient_eq_zero_iff]
  exact ⟨exists_pow_mul_mem_of_mem_sup_span_sub_one 𝒜 J hJ d f hd hf w h hh,
    fun ⟨n, hn⟩ => mem_sup_span_sub_one_of_pow_mul_mem J f h n hn⟩

/-- A degree-zero multiplier from the localization's multiplicative set
kills the actual homogeneous quotient class after localization. -/
theorem localized_pieceMk_eq_zero_of_multiplier
    (J : Ideal A) (S : Submonoid (𝒜 0)) (w : ℤ) (h : A) (hh : h ∈ 𝒜 w)
    (hkill : ∃ b : 𝒜 0, b ∈ S ∧ (b : A) * h ∈ J) :
    LocalizedModule.mk (pieceMk 𝒜 J w h hh) (1 : S) = 0 := by
  obtain ⟨b, hb, hbh⟩ := hkill
  rw [← LocalizedModule.zero_mk (1 : S), LocalizedModule.mk_eq]
  refine ⟨⟨b, hb⟩, ?_⟩
  simp only [one_smul, smul_zero, Submonoid.smul_def]
  apply Subtype.ext
  change Ideal.Quotient.mk J ((b : A) * h) = 0
  exact Ideal.Quotient.eq_zero_iff_mem.mpr hbh

/-- Opposite degrees turn a power of the dehomogenizing element into a
degree-zero denominator. The slice-membership supplier is retained. -/
theorem exists_degreeZero_multiplier_of_slice
    (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (f g : A) (hd : d ≠ 0) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 (-d))
    (τ : 𝒜 0) (hτ : (τ : A) = f * g)
    (S : Submonoid (𝒜 0)) (hτS : τ ∈ S)
    (c b : 𝒜 0) (hc : c ∈ S) (hb : b ∈ S)
    (N : ℕ) (w : ℤ) (h : A) (hh : h ∈ 𝒜 w)
    (hslice : (c : A) * (g ^ N * ((b : A) * h)) ∈ J ⊔ Ideal.span {f - 1}) :
    ∃ b' : 𝒜 0, b' ∈ S ∧ (b' : A) * h ∈ J := by
  have hhom : (c : A) * (g ^ N * ((b : A) * h)) ∈
      𝒜 (0 + (N • (-d) + (0 + w))) :=
    SetLike.GradedMul.mul_mem c.property
      (SetLike.GradedMul.mul_mem (SetLike.pow_mem_graded N hg)
        (SetLike.GradedMul.mul_mem b.property hh))
  obtain ⟨m, hm⟩ := exists_pow_mul_mem_of_mem_sup_span_sub_one 𝒜 J hJ d f hd hf
    _ _ hhom hslice
  refine ⟨c * (τ ^ (N + m) * b), S.mul_mem hc (S.mul_mem (S.pow_mem hτS _) hb), ?_⟩
  have heq : ((c * (τ ^ (N + m) * b) : 𝒜 0) : A) * h =
      (f ^ N * g ^ m) * (f ^ m * ((c : A) * (g ^ N * ((b : A) * h)))) := by
    simp only [SetLike.GradeZero.coe_mul, SetLike.GradeZero.coe_pow, hτ]
    ring
  rw [heq]
  exact J.mul_mem_left _ hm

/-- The cleared degree-zero denominator gives actual localized vanishing
of the original homogeneous quotient class. -/
theorem localized_pieceMk_eq_zero_of_slice
    (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (f g : A) (hd : d ≠ 0) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 (-d))
    (τ : 𝒜 0) (hτ : (τ : A) = f * g)
    (S : Submonoid (𝒜 0)) (hτS : τ ∈ S)
    (c b : 𝒜 0) (hc : c ∈ S) (hb : b ∈ S)
    (N : ℕ) (w : ℤ) (h : A) (hh : h ∈ 𝒜 w)
    (hslice : (c : A) * (g ^ N * ((b : A) * h)) ∈ J ⊔ Ideal.span {f - 1}) :
    LocalizedModule.mk (pieceMk 𝒜 J w h hh) (1 : S) = 0 := by
  exact localized_pieceMk_eq_zero_of_multiplier 𝒜 J S w h hh
    (exists_degreeZero_multiplier_of_slice 𝒜 J hJ d f g hd hf hg τ hτ S hτS
      c b hc hb N w h hh hslice)

/-- Source-shaped field-point return, with the nonzero coefficient from
the base ring and the actual slice relation kept explicit. -/
theorem exists_point_multiplier_of_slice
    {K : Type*} [Field K] [Algebra O K] [FaithfulSMul O K]
    (σ : 𝒜 0 →ₐ[O] K) (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (f g : A) (hd : d ≠ 0) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 (-d))
    (τ : 𝒜 0) (hτ : (τ : A) = f * g) (hστ : σ τ ≠ 0)
    (c : O) (hc : c ≠ 0) (b : 𝒜 0) (hb : σ b ≠ 0)
    (N : ℕ) (w : ℤ) (h : A) (hh : h ∈ 𝒜 w)
    (hslice : c • (g ^ N * ((b : A) * h)) ∈ J ⊔ Ideal.span {f - 1}) :
    ∃ b' : 𝒜 0, σ b' ≠ 0 ∧ (b' : A) * h ∈ J := by
  have : (RingHom.ker σ).IsPrime := RingHom.ker_isPrime σ
  let c₀ : 𝒜 0 := algebraMap O (𝒜 0) c
  have hc₀ : σ c₀ ≠ 0 := by
    change σ (algebraMap O (𝒜 0) c) ≠ 0
    rw [σ.commutes]
    exact (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective O K)).mpr hc
  have hcoe : (c₀ : A) = algebraMap O A c := rfl
  exact exists_degreeZero_multiplier_of_slice 𝒜 J hJ d f g hd hf hg τ hτ
    (RingHom.ker σ).primeCompl hστ c₀ b hc₀ hb N w h hh
    (by simpa only [hcoe, Algebra.smul_def] using hslice)

/-- At the actual prime kernel of the point, the original homogeneous
quotient class vanishes once the slice relation is supplied. -/
theorem point_localized_pieceMk_eq_zero_of_slice
    {K : Type*} [Field K] [Algebra O K] [FaithfulSMul O K]
    (σ : 𝒜 0 →ₐ[O] K) (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (f g : A) (hd : d ≠ 0) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 (-d))
    (τ : 𝒜 0) (hτ : (τ : A) = f * g) (hστ : σ τ ≠ 0)
    (c : O) (hc : c ≠ 0) (b : 𝒜 0) (hb : σ b ≠ 0)
    (N : ℕ) (w : ℤ) (h : A) (hh : h ∈ 𝒜 w)
    (hslice : c • (g ^ N * ((b : A) * h)) ∈ J ⊔ Ideal.span {f - 1}) :
    let P := RingHom.ker σ
    have : P.IsPrime := RingHom.ker_isPrime σ
    LocalizedModule.mk (pieceMk 𝒜 J w h hh) (1 : P.primeCompl) = 0 := by
  have : (RingHom.ker σ).IsPrime := RingHom.ker_isPrime σ
  dsimp only
  exact localized_pieceMk_eq_zero_of_multiplier 𝒜 J (RingHom.ker σ).primeCompl w h hh
    (exists_point_multiplier_of_slice 𝒜 σ J hJ d f g hd hf hg τ hτ hστ
      c hc b hb N w h hh hslice)

end GRWTSK.CommutativeAlgebra.GradedDehomogenizationLocalization
