# LocallyQuasiFinite.of_fiberToSpecResidueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2758b09c-460b-1e75-0756-2e1f86301453",
  "kind": "lemma",
  "lexical_name": "LocallyQuasiFinite.of_fiberToSpecResidueField",
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
  "slug": "locallyquasifinite-of-fibertospecresiduefield--b7f33092a63ccd6db740518c",
  "source": {
    "blob": "b3f575d0a932f217a6c1886b72cd63390cff0255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 212,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f33092a63ccd6db740518c2cfcc0b22ca8c422fac2af046661589fbc89433d",
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

Occurrence: `result:2758b09c-460b-1e75-0756-2e1f86301453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma LocallyQuasiFinite.of_fiberToSpecResidueField
    (hf : ∀ x, LocallyQuasiFinite (f.fiberToSpecResidueField x)) : LocallyQuasiFinite f := by
  change id _ -- avoid typeclass synthesis from getting stuck on the wlog hypothesis.
  wlog hY : ∃ R, Y = Spec R
  · refine (IsZariskiLocalAtTarget.iff_of_openCover Y.affineCover).mpr fun i ↦
      this (f := pullback.snd _ _) (fun x ↦ ?_) ⟨_, rfl⟩
    have (x : Y) : IsLocallyArtinian (f.fiber x) :=
      .of_locallyQuasiFinite (f.fiberToSpecResidueField x)
    refine (MorphismProperty.cancel_right_of_respectsIso @LocallyQuasiFinite _
      (Spec.map ((Y.affineCover.f i).residueFieldMap _))).mp ?_
    let g : (pullback.snd f (Y.affineCover.f i)).fiber x ⟶ f.fiber (Y.affineCover.f i x) :=
      pullback.map _ _ _ _ (pullback.fst _ _) (Spec.map ((Y.affineCover.f i).residueFieldMap _))
        (Y.affineCover.f i) (by simp [pullback.condition]) (by simp)
    have : IsClosedImmersion g := .of_isPreimmersion _ (isClosed_discrete _)
    convert! (inferInstance : LocallyQuasiFinite <| g ≫ f.fiberToSpecResidueField _) using 1
    simp [g, Hom.fiberToSpecResidueField]
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · refine (IsZariskiLocalAtSource.iff_of_openCover X.affineCover).mpr fun i ↦
      this _ _ (fun x ↦ ?_) ⟨_, rfl⟩
    have (x : _) : IsLocallyArtinian (f.fiber x) :=
      .of_locallyQuasiFinite (f.fiberToSpecResidueField x)
    let g : (X.affineCover.f i ≫ f).fiber x ⟶ f.fiber x :=
      pullback.map _ _ _ _ (X.affineCover.f i) (𝟙 _) (𝟙 _) (by simp) (by simp)
    have : IsClosedImmersion g := .of_isPreimmersion _ (isClosed_discrete _)
    convert (inferInstance : LocallyQuasiFinite <| g ≫ f.fiberToSpecResidueField _)
    simp [g, Hom.fiberToSpecResidueField]
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  algebraize [φ.hom]
  simp only [HasRingHomProperty.Spec_iff, id_eq]
  refine ⟨fun P hP ↦ ?_⟩
  suffices LocallyQuasiFinite (Spec.map <|
      CommRingCat.ofHom <| algebraMap P.ResidueField (P.Fiber S)) by
    simp only [HasRingHomProperty.Spec_iff (P := @LocallyQuasiFinite), CommRingCat.hom_ofHom,
      RingHom.quasiFinite_algebraMap] at this
    exact .of_quasiFinite
  obtain ⟨x, rfl⟩ : ∃ x : Spec R, P = x.asIdeal := ⟨⟨P, hP⟩, rfl⟩
  refine (MorphismProperty.arrow_mk_iso_iff _ (Arrow.isoMk ?_ ?_ ?_)).mp (hf x)
  · refine asIso (pullback.map _ _ _ _ (𝟙 _) (Spec.map (Spec.residueFieldIso _ x).inv) (𝟙 _)
      ?_ ?_) ≪≫ pullbackSymmetry _ _ ≪≫ pullbackSpecIso ..
    · simp; rfl
    · simp [← Spec.map_comp, fromSpecResidueField, Spec.fromSpecStalk_eq]
  · exact asIso (Spec.map (Spec.residueFieldIso _ x).inv)
  · simp [Hom.fiberToSpecResidueField]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f575d0a932f217a6c1886b72cd63390cff0255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
