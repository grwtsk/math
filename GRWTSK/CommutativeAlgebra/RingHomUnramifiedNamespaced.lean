-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FormallyUnramified.Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FormallyUnramified.Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"cc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/RingHom/Unramified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.Unramified.Locus
import Mathlib.RingTheory.LocalProperties.Basic

/-!

# The meta properties of unramified ring homomorphisms.

-/


namespace GRWTSK.Algebra.FormallyUnramified.Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6

namespace RingHom

variable {R : Type*} {S : Type*} [CommRing R] [CommRing S]

/--
A ring homomorphism `R →+* A` is formally unramified if `Ω[A⁄R]` is trivial.
See `Algebra.FormallyUnramified`.
-/
@[algebraize Algebra.FormallyUnramified]
def FormallyUnramified (f : R →+* S) : Prop :=
  letI := f.toAlgebra
  Algebra.FormallyUnramified R S

lemma formallyUnramified_algebraMap [Algebra R S] :
    (algebraMap R S).FormallyUnramified ↔ Algebra.FormallyUnramified R S := by
  delta FormallyUnramified
  congr!
  exact Algebra.algebra_ext _ _ fun _ ↦ rfl

namespace FormallyUnramified

lemma stableUnderComposition :
    StableUnderComposition FormallyUnramified := by
  intros R S T _ _ _ f g _ _
  algebraize [f, g, g.comp f]
  exact .comp R S T

lemma respectsIso :
    RespectsIso FormallyUnramified := by
  refine stableUnderComposition.respectsIso ?_
  intros R S _ _ e
  letI := e.toRingHom.toAlgebra
  exact Algebra.FormallyUnramified.of_surjective (Algebra.ofId R S) e.surjective

lemma isStableUnderBaseChange :
    IsStableUnderBaseChange FormallyUnramified := by
  refine .mk respectsIso ?_
  intros R S T _ _ _ _ _ h
  show (algebraMap _ _).FormallyUnramified
  rw [formallyUnramified_algebraMap] at h ⊢
  infer_instance

lemma holdsForLocalizationAway :
    HoldsForLocalizationAway FormallyUnramified := by
  intros R S _ _ _ r _
  rw [formallyUnramified_algebraMap]
  exact .of_isLocalization (.powers r)

lemma ofLocalizationPrime :
    OfLocalizationPrime FormallyUnramified := by
  intros R S _ _ f H
  algebraize [f]
  rw [FormallyUnramified, ← Algebra.unramifiedLocus_eq_univ_iff, Set.eq_univ_iff_forall]
  intro x
  let Rₓ := Localization.AtPrime (x.asIdeal.comap f)
  let Sₓ := Localization.AtPrime x.asIdeal
  have := Algebra.FormallyUnramified.of_isLocalization (Rₘ := Rₓ) (x.asIdeal.comap f).primeCompl
  letI : Algebra Rₓ Sₓ := (Localization.localRingHom _ _ _ rfl).toAlgebra
  have : IsScalarTower R Rₓ Sₓ := .of_algebraMap_eq
    fun x ↦ (Localization.localRingHom_to_map _ _ _ rfl x).symm
  have : Algebra.FormallyUnramified Rₓ Sₓ := H _ _
  exact Algebra.FormallyUnramified.comp R Rₓ Sₓ

lemma ofLocalizationSpanTarget :
    OfLocalizationSpanTarget FormallyUnramified := by
  intros R S _ _ f s hs H
  algebraize [f]
  rw [FormallyUnramified, ← Algebra.unramifiedLocus_eq_univ_iff, Set.eq_univ_iff_forall]
  intro x
  obtain ⟨r, hr, hrx⟩ : ∃ r ∈ s, x ∈ PrimeSpectrum.basicOpen r := by
    simpa using (PrimeSpectrum.iSup_basicOpen_eq_top_iff'.mpr hs).ge
      (TopologicalSpace.Opens.mem_top x)
  refine Algebra.basicOpen_subset_unramifiedLocus_iff.mpr ?_ hrx
  convert H ⟨r, hr⟩
  dsimp
  rw [← algebraMap_toAlgebra f, ← IsScalarTower.algebraMap_eq,
    formallyUnramified_algebraMap]

lemma propertyIsLocal :
    PropertyIsLocal FormallyUnramified := by
  constructor
  · intro R S _ _ f r R' S' _ _ _ _ _ _ H
    algebraize [f, (algebraMap S S').comp f, IsLocalization.Away.map R' S' f r]
    have := Algebra.FormallyUnramified.of_isLocalization (Rₘ := S') (.powers (f r))
    have := Algebra.FormallyUnramified.comp R S S'
    have H : Submonoid.powers r ≤ (Submonoid.powers (f r)).comap f := by
      rintro x ⟨n, rfl⟩; exact ⟨n, by simp⟩
    have : IsScalarTower R R' S' := .of_algebraMap_eq' (IsLocalization.map_comp H).symm
    exact Algebra.FormallyUnramified.of_comp R R' S'
  · exact ofLocalizationSpanTarget
  · exact ofLocalizationSpanTarget.ofLocalizationSpan
      (stableUnderComposition.stableUnderCompositionWithLocalizationAway
          holdsForLocalizationAway).1
  · exact (stableUnderComposition.stableUnderCompositionWithLocalizationAway
        holdsForLocalizationAway).2

end RingHom.FormallyUnramified
