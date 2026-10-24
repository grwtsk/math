# IsZariskiLocalAtTarget.descendsAlong

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8418f042f1c23bda88cc337cc16da80f73f35c33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df192c88-c569-f1c2-bd77-1e761d1bba70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7703438e-d8d6-214d-f7cb-a48ebb7107e7",
  "kind": "lemma",
  "lexical_name": "IsZariskiLocalAtTarget.descendsAlong",
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
  "slug": "iszariskilocalattarget-descendsalong--8b37158cd000a9368dda70aa",
  "source": {
    "blob": "8418f042f1c23bda88cc337cc16da80f73f35c33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 63,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b37158cd000a9368dda70aa1f0f62eba24944d1883172984b290b5b8d4fd738",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7703438e-d8d6-214d-f7cb-a48ebb7107e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsZariskiLocalAtTarget.descendsAlong [IsZariskiLocalAtTarget P] [P'.IsStableUnderBaseChange]
    (H : ∀ {R : CommRingCat.{u}} {X Y : Scheme.{u}} (f : X ⟶ Spec R) (g : Y ⟶ Spec R),
      P' f → P (pullback.fst f g) → P g) :
    P.DescendsAlong P' := by
  apply MorphismProperty.DescendsAlong.mk'
  introv h hf
  wlog hZ : ∃ R, Z = Spec R generalizing X Y Z
  · rw [IsZariskiLocalAtTarget.iff_of_openCover (P := P) Z.affineCover]
    intro i
    let ι := Z.affineCover.f i
    let e : pullback (pullback.snd f ι) (pullback.snd g ι) ≅
        pullback (pullback.fst f g) (pullback.fst f ι) :=
      pullbackLeftPullbackSndIso f ι (pullback.snd g ι) ≪≫
        pullback.congrHom rfl pullback.condition.symm ≪≫
        (pullbackAssoc f g g ι).symm ≪≫ pullback.congrHom pullback.condition.symm rfl ≪≫
        (pullbackRightPullbackFstIso f ι (pullback.fst f g)).symm
    have heq : e.hom ≫ pullback.snd (pullback.fst f g) (pullback.fst f ι) =
        pullback.fst (pullback.snd f ι) (pullback.snd g ι) := by
      apply pullback.hom_ext <;> simp [e, pullback.condition]
    refine this (f := pullback.snd f ι) ?_ ?_ ⟨_, rfl⟩
    · exact P'.pullback_snd _ _ h
    · change P (pullback.fst (pullback.snd f ι) (pullback.snd g ι))
      rw [← heq, P.cancel_left_of_respectsIso]
      exact AlgebraicGeometry.IsZariskiLocalAtTarget.of_isPullback (iY := pullback.fst f ι)
        (CategoryTheory.IsPullback.of_hasPullback _ _) hf
  obtain ⟨R, rfl⟩ := hZ
  exact H f g h hf

variable (Q Q' : ∀ {R S : Type u} [CommRing R] [CommRing S], (R →+* S) → Prop)

variable {Q Q'} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8418f042f1c23bda88cc337cc16da80f73f35c33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
