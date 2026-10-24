# HasAffineProperty.descendsAlong_of_affineAnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f4da4fa-1ae6-6886-7373-cd9776b9c45e",
  "kind": "lemma",
  "lexical_name": "HasAffineProperty.descendsAlong_of_affineAnd",
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
  "slug": "hasaffineproperty-descendsalong-of-affineand--32099538b9d6b716793fd17d",
  "source": {
    "blob": "8418f042f1c23bda88cc337cc16da80f73f35c33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 193,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32099538b9d6b716793fd17de518186fcd37349013c9f4f3f7f917fc702d22f2",
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

Occurrence: `result:7f4da4fa-1ae6-6886-7373-cd9776b9c45e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma HasAffineProperty.descendsAlong_of_affineAnd
    (hP : HasAffineProperty P (affineAnd Q)) [MorphismProperty.DescendsAlong @IsAffineHom P']
    (hQ : RingHom.RespectsIso Q) (hQQ' : RingHom.CodescendsAlong Q Q') :
    P.DescendsAlong (P' ⊓ @QuasiCompact) := by
  apply IsZariskiLocalAtTarget.descendsAlong_inf_quasiCompact _ _ H₁
  introv h hf
  have : IsAffine Y := by
    convert! isAffine_of_isAffineHom g
    exact MorphismProperty.of_pullback_fst_of_descendsAlong h <|
      AlgebraicGeometry.HasAffineProperty.affineAnd_le_isAffineHom P inferInstance _ hf
  wlog hY : ∃ S, Y = Spec S generalizing Y
  · rw [← P.cancel_left_of_respectsIso Y.isoSpec.inv]
    have heq : pullback.fst (Spec.map φ) (Y.isoSpec.inv ≫ g) =
        pullback.map _ _ _ _ (𝟙 _) (Y.isoSpec.inv) (𝟙 _) (by simp) (by simp) ≫
          pullback.fst (Spec.map φ) g := (pullback.lift_fst _ _ _).symm
    refine this _ ?_ inferInstance ⟨_, rfl⟩
    rwa [heq, P.cancel_left_of_respectsIso]
  obtain ⟨Y, rfl⟩ := hY
  apply of_pullback_fst_Spec_of_codescendsAlong _ _ hQQ' H₂ _ h hf
  simp [SpecMap_iff_of_affineAnd _ hQ]

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8418f042f1c23bda88cc337cc16da80f73f35c33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
