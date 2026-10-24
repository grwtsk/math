# Scheme.Hom.quasiFiniteAt_iff_isOpen_singleton_asFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70a531d7-4e24-4740-49d2-74b67399507a",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.quasiFiniteAt_iff_isOpen_singleton_asFiber",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "scheme-hom-quasifiniteat-iff-isopen-singleton-asfiber--f70b7a3f3c18b470d000f620",
  "source": {
    "blob": "b3f575d0a932f217a6c1886b72cd63390cff0255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 388,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f70b7a3f3c18b470d000f6202dec6c7f57c52757095d16f210fe8b64cff9423a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70a531d7-4e24-4740-49d2-74b67399507a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma Scheme.Hom.quasiFiniteAt_iff_isOpen_singleton_asFiber
    {f : X ⟶ Y} [LocallyOfFiniteType f] {x : X} :
    f.QuasiFiniteAt x ↔ IsOpen {f.asFiber x} := by
  rw [← (f.fiberHomeo (f x)).isOpen_image]
  simp only [Set.image_singleton, asFiber, Homeomorph.apply_symm_apply]
  wlog hY : ∃ R, Y = Spec R
  · obtain ⟨i, y, hy⟩ := Y.affineCover.exists_eq (f x)
    obtain ⟨x, rfl, rfl⟩ := Scheme.Pullback.exists_preimage_pullback _ _ hy.symm
    let ι := Y.affineCover.f i
    convert! this (f := pullback.snd f ι) (x := x) ⟨_, rfl⟩ using 1
    · exact (RingHom.QuasiFinite.respectsIso.arrow_mk_iso_iff
        (Scheme.stalkMapIsoOfIsPullback (.of_hasPullback f ι) x))
    have H : pullback.snd f ι ⁻¹' {pullback.snd f ι x} =
        pullback.fst f ι ⁻¹' f ⁻¹' {f (pullback.fst f ι x)} := by
      rw [← Set.preimage_comp, ← TopCat.coe_comp, ← Scheme.Hom.comp_base, ← Scheme.Hom.comp_apply,
        pullback.condition]
      simp [← Set.image_singleton, Set.preimage_comp, Set.preimage_image_eq _ ι.injective]
    let f' : pullback.snd f ι ⁻¹' {pullback.snd f ι x} → f ⁻¹' {f (pullback.fst f ι x)} :=
      Set.MapsTo.restrict (pullback.fst f ι) _ _ fun a ha ↦ H.le ha
    have : Topology.IsOpenEmbedding f' := by
      convert!
        (f ⁻¹' {f (pullback.fst f ι x)}).restrictPreimage_isOpenEmbedding
          (pullback.fst f ι).isOpenEmbedding using 0
      dsimp [f', Set.restrictPreimage]
      congr!
    rw [this.isOpen_iff_image_isOpen, Set.image_singleton]; rfl
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · obtain ⟨i, x, rfl⟩ := X.affineCover.exists_eq x
    let ι := X.affineCover.f i
    convert! this (x := x) _ (f := ι ≫ f) ⟨_, rfl⟩ using 1
    · exact quasiFiniteAt_comp_iff_of_isOpenImmersion.symm
    rw [((f ⁻¹' {f (ι x)}).restrictPreimage_isOpenEmbedding
      ι.isOpenEmbedding).isOpen_iff_image_isOpen, Set.image_singleton]; rfl
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  rw [HasRingHomProperty.Spec_iff (P := @LocallyOfFiniteType)] at ‹LocallyOfFiniteType (Spec.map φ)›
  algebraize [φ.hom]
  rw [← Algebra.quasiFiniteAt_iff_isOpen_singleton_fiber]
  let := Localization.AtPrime.algebraOfLiesOver (x.asIdeal.under R) x.asIdeal
  trans Algebra.QuasiFinite (Localization.AtPrime (x.asIdeal.under R))
    (Localization.AtPrime x.asIdeal)
  · rw [← RingHom.quasiFinite_algebraMap]
    exact RingHom.QuasiFinite.respectsIso.arrow_mk_iso_iff (Scheme.arrowStalkMapSpecIso ..)
  exact ⟨fun _ ↦ .trans _ (Localization.AtPrime (x.asIdeal.under R)) _,
    fun _ ↦ .of_restrictScalars R _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f575d0a932f217a6c1886b72cd63390cff0255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
