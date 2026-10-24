# Complete source: GRWTSK.Algebra.FiniteType.Variant54fb8a49211cba8680f8a486151c588d9ab98ce59dbfd36d38fb4bdc2b451425

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd59c81c5c769fcd0f372e9d40813c89c6111546` · SHA-256 `085e42814771144e001f30b8bf99316df22301b4001f2d1d6321419a75c83023`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FiniteTypeStableUnderComposition.Variant561459cac88143b94b6a997cc93032ac6384439789a13e1df80126dc6cfe2338","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"561459cac88143b94b6a997cc93032ac6384439789a13e1df80126dc6cfe2338","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FiniteTypeStableUnderComposition.Variant561459cac88143b94b6a997cc93032ac6384439789a13e1df80126dc6cfe2338","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"561459cac88143b94b6a997cc93032ac6384439789a13e1df80126dc6cfe2338","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/RingHom/FiniteType.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.RingTheory.FiniteStability
public import Mathlib.RingTheory.Finiteness.FiniteTypeLocal
public import Mathlib.RingTheory.Localization.InvSubmonoid
public import Mathlib.RingTheory.LocalProperties.Basic

/-!

# The meta properties of finite-type ring homomorphisms.

## Main results

Let `R` be a commutative ring, `S` is an `R`-algebra, `M` be a submonoid of `R`.

* `finiteType_localizationPreserves` : If `S` is a finite type `R`-algebra, then `S' = M⁻¹S` is a
  finite type `R' = M⁻¹R`-algebra.
* `finiteType_ofLocalizationSpan` : `S` is a finite type `R`-algebra if there exists
  a set `{ r }` that spans `R` such that `Sᵣ` is a finite type `Rᵣ`-algebra.
* `RingHom.finiteType_isLocal`: `RingHom.FiniteType` is a local property.

-/


namespace GRWTSK.Algebra.FiniteTypeStableUnderComposition.Variant561459cac88143b94b6a997cc93032ac6384439789a13e1df80126dc6cfe2338

public section

namespace RingHom

open scoped Pointwise TensorProduct

universe u

variable {R S : Type*} [CommRing R] [CommRing S] (M : Submonoid R) (f : R →+* S)
variable (R' S' : Type*) [CommRing R'] [CommRing S']
variable [Algebra R R'] [Algebra S S']

theorem finiteType_stableUnderComposition : StableUnderComposition @FiniteType := by
  introv R hf hg
  exact hg.comp hf

theorem finiteType_respectsIso : RingHom.RespectsIso @RingHom.FiniteType := by
  refine finiteType_stableUnderComposition.respectsIso (fun {R S} _ _ e ↦ ?_)
  algebraize [e.toRingHom]
  apply Algebra.FiniteType.equiv (inferInstanceAs <| Algebra.FiniteType R R) <|
    .ofRingEquiv (congrFun rfl)

theorem finiteType_isStableUnderBaseChange : IsStableUnderBaseChange @FiniteType := by
  apply IsStableUnderBaseChange.mk
  · exact finiteType_respectsIso
  · introv h
    rw [finiteType_algebraMap] at h
    apply finiteType_algebraMap.mpr
    infer_instance

/-- If `S` is a finite type `R`-algebra, then `S' = M⁻¹S` is a finite type `R' = M⁻¹R`-algebra. -/
theorem finiteType_localizationPreserves : RingHom.LocalizationPreserves @RingHom.FiniteType :=
  finiteType_isStableUnderBaseChange.localizationPreserves

theorem localization_away_map_finiteType (R S R' S' : Type u) [CommRing R] [CommRing S]
    [CommRing R'] [CommRing S'] [Algebra R R'] (f : R →+* S) [Algebra S S']
    (r : R) [IsLocalization.Away r R']
    [IsLocalization.Away (f r) S'] (hf : f.FiniteType) :
    (IsLocalization.Away.map R' S' f r).FiniteType :=
  finiteType_localizationPreserves.away _ r _ _ hf

theorem finiteType_ofLocalizationSpan : RingHom.OfLocalizationSpan @RingHom.FiniteType := by
  refine OfLocalizationSpan.mk _ finiteType_respectsIso (fun s hs h ↦ ?_)
  simp_rw [finiteType_algebraMap] at h ⊢
  exact Algebra.FiniteType.of_span_eq_top_source s hs h

theorem finiteType_holdsForLocalizationAway : HoldsForLocalizationAway @FiniteType := by
  introv R _
  rw [finiteType_algebraMap]
  exact IsLocalization.finiteType_of_monoid_fg (Submonoid.powers r) S

theorem finiteType_ofLocalizationSpanTarget : OfLocalizationSpanTarget @FiniteType := by
  introv R hs H
  algebraize [f]
  replace H : ∀ r ∈ s, Algebra.FiniteType R (Localization.Away (r : S)) := by
    intro r hr; simp_rw [RingHom.FiniteType] at H; convert! H ⟨r, hr⟩; ext
    simp_rw [Algebra.smul_def]; rfl
  exact Algebra.FiniteType.of_span_eq_top_target s hs H

theorem finiteType_isLocal : PropertyIsLocal @FiniteType :=
  ⟨finiteType_localizationPreserves.away,
    finiteType_ofLocalizationSpanTarget,
    finiteType_ofLocalizationSpanTarget.ofLocalizationSpan
      (finiteType_stableUnderComposition.stableUnderCompositionWithLocalizationAway
        finiteType_holdsForLocalizationAway).left,
    (finiteType_stableUnderComposition.stableUnderCompositionWithLocalizationAway
      finiteType_holdsForLocalizationAway).right⟩

end RingHom
```
