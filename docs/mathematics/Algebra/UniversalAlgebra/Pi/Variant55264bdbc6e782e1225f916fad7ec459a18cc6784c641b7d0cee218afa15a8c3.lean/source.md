# Complete source: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8ad5ef31215afa8c47359f90ab20ce417e66316` · SHA-256 `c2d18253f7c540e6e258720f82be06b1a1d7d0cce7645eeca1dceb791fee215e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IffMapPiEvalRingHom.Variante4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IffMapPiEvalRingHom.Variante4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Localization/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Madison Crim. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Madison Crim
-/
module

public import Mathlib.Algebra.Algebra.Pi
public import Mathlib.Algebra.BigOperators.Pi
public import Mathlib.Algebra.Divisibility.Prod
public import Mathlib.Algebra.Group.Submonoid.BigOperators
public import Mathlib.Algebra.Group.Subgroup.Basic
public import Mathlib.RingTheory.Localization.Basic
public import Mathlib.Algebra.Group.Pi.Units
public import Mathlib.RingTheory.KrullDimension.Zero

/-!
# Localizing a product of commutative rings

## Main Result

* `bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom`: the canonical map from a
    localization of a finite product of rings `R i` at a monoid `M` to the direct product of
    localizations `R i` at the projection of `M` onto each corresponding factor is bijective.

## Implementation notes

See `Mathlib/RingTheory/Localization/Defs.lean` for a design overview.

## Tags
localization, commutative ring
-/


namespace GRWTSK.Algebra.UniversalAlgebra.IffMapPiEvalRingHom.Variante4777f4c2ef4536053471dab6261d9ccbc0d8c1e2825d19dcddd07466d7ae898

public section

namespace IsLocalization

variable {ι : Type*} (R S : ι → Type*)
  [Π i, CommSemiring (R i)] [Π i, CommSemiring (S i)] [Π i, Algebra (R i) (S i)]

/-- If `S i` is a localization of `R i` at the submonoid `M i` for each `i`,
then `Π i, S i` is a localization of `Π i, R i` at the product submonoid. -/
instance (M : Π i, Submonoid (R i)) [∀ i, IsLocalization (M i) (S i)] :
    IsLocalization (.pi .univ M) (Π i, S i) where
  map_units m := Pi.isUnit_iff.mpr fun i ↦ map_units _ ⟨m.1 i, m.2 i ⟨⟩⟩
  surj z := by
    choose rm h using fun i ↦ surj (M := M i) (z i)
    exact ⟨(fun i ↦ (rm i).1, ⟨_, fun i _ ↦ (rm i).2.2⟩), funext h⟩
  exists_of_eq {x y} eq := by
    choose c hc using fun i ↦ exists_of_eq (M := M i) (congr_fun eq i)
    exact ⟨⟨_, fun i _ ↦ (c i).2⟩, funext hc⟩

variable (S' : Type*) [CommSemiring S'] [Algebra (Π i, R i) S'] (M : Submonoid (Π i, R i))

theorem iff_map_piEvalRingHom [Finite ι] :
    IsLocalization M S' ↔ IsLocalization (.pi .univ fun i ↦ M.map (Pi.evalRingHom R i)) S' :=
  iff_of_le_of_exists_dvd M _ (fun m hm i _ ↦ ⟨m, hm, rfl⟩) fun n hn ↦ by
    choose m mem eq using hn
    have := Fintype.ofFinite ι
    refine ⟨∏ i, m i ⟨⟩, prod_mem fun i _ ↦ mem i _, pi_dvd_iff.mpr fun i ↦ ?_⟩
    rw [Fintype.prod_apply]
    exact (eq i ⟨⟩).symm.dvd.trans (Finset.dvd_prod_of_mem _ <| Finset.mem_univ _)

variable [∀ i, IsLocalization (M.map (Pi.evalRingHom R i)) (S i)]

/-- Let `M` be a submonoid of a direct product of commutative rings `R i`, and let `M' i` denote
the projection of `M` onto each corresponding factor. Given a ring homomorphism from the direct
product `Π i, R i` to the product of the localizations of each `R i` at `M' i`, every `y : M`
maps to a unit under this homomorphism. -/
lemma isUnit_piRingHom_algebraMap_comp_piEvalRingHom (y : M) :
    IsUnit ((RingHom.pi fun i ↦ (algebraMap (R i) (S i)).comp (Pi.evalRingHom R i)) y) :=
  Pi.isUnit_iff.mpr fun i ↦ map_units _ (⟨y.1 i, y, y.2, rfl⟩ : M.map (Pi.evalRingHom R i))

/-- Let `M` be a submonoid of a direct product of commutative rings `R i`, and let `M' i` denote
the projection of `M` onto each factor. Then the canonical map from the localization of the direct
product `Π i, R i` at `M` to the direct product of the localizations of each `R i` at `M' i`
is bijective. -/
theorem bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom [IsLocalization M S'] [Finite ι] :
    Function.Bijective (lift (S := S') (isUnit_piRingHom_algebraMap_comp_piEvalRingHom R S M)) :=
  have := (iff_map_piEvalRingHom R (Π i, S i) M).mpr inferInstance
  (ringEquivOfRingEquiv (M := M) (T := M) _ _ (.refl _) <|
    Submonoid.map_equiv_eq_comap_symm _ _).bijective

open Function

include M in
variable {R} in
lemma surjective_piRingHom_algebraMap_comp_piEvalRingHom
    [∀ i, Ring.KrullDimLE 0 (R i)] [∀ i, IsLocalRing (R i)] :
    Surjective (RingHom.pi (fun i ↦ (algebraMap (R i) (S i)).comp (Pi.evalRingHom R i))) := by
  apply Surjective.piMap (fun i ↦ ?_)
  by_cases h₀ : (0 : R i) ∈ (M.map (Pi.evalRingHom R i))
  · have := uniqueOfZeroMem h₀ (S := (S i))
    exact surjective_to_subsingleton (algebraMap (R i) (S i))
  · exact (IsLocalization.atUnits _ _ (by simpa)).surjective

variable {R} in
/-- Let `M` be a submonoid of a direct product of commutative rings `R i`.
If each `R i` has maximal nilradical then the direct product `∏ R i` surjects onto the
localization of `∏ R i` at `M`. -/
lemma algebraMap_pi_surjective_of_isLocalization [∀ i, Ring.KrullDimLE 0 (R i)]
    [∀ i, IsLocalRing (R i)] [IsLocalization M S']
    [Finite ι] : Surjective (algebraMap (Π i, R i) S') := by
  intro s
  set S := fun (i : ι) => Localization (M.map (Pi.evalRingHom R i))
  obtain ⟨r, hr⟩ :=
    surjective_piRingHom_algebraMap_comp_piEvalRingHom
    S M ((lift (isUnit_piRingHom_algebraMap_comp_piEvalRingHom R S M)) s)
  refine ⟨r, (bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom R S _ M).injective ?_⟩
  rwa [lift_eq (isUnit_piRingHom_algebraMap_comp_piEvalRingHom R S M) r]

end IsLocalization
```
