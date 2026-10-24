# IsZariskiLocalAtTarget.descendsAlong

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2493562-faa1-c204-672d-93204a212af4",
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
  "slug": "iszariskilocalattarget-descendsalong--4371723f4a0c044e6dd300b0",
  "source": {
    "blob": "effb8e29a9443f0507ce82a46a7ad8c4c8405206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 71,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4371723f4a0c044e6dd300b045b51618d22a7fd01eaa80ef9c0bfebc94cc3b94",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2493562-faa1-c204-672d-93204a212af4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–101.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `effb8e29a9443f0507ce82a46a7ad8c4c8405206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
