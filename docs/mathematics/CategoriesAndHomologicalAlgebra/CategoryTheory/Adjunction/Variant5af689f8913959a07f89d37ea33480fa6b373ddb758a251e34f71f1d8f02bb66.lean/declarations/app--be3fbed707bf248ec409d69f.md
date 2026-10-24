# η_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc88aff62b7bdc4ec403e8486690a2a39791b6ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5af689f8913959a07f89d37ea33480fa6b373ddb758a251e34f71f1d8f02bb66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2eaa62ca-b912-64aa-4f98-7d44593b41e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4929858-55e6-337d-e01c-0c04e7a4b1a6",
  "kind": "lemma",
  "lexical_name": "η_app",
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
  "slug": "app--be3fbed707bf248ec409d69f",
  "source": {
    "blob": "dc88aff62b7bdc4ec403e8486690a2a39791b6ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5af689f8913959a07f89d37ea33480fa6b373ddb758a251e34f71f1d8f02bb66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be3fbed707bf248ec409d69f27c8b2c9aa4701a3589d7ab49a8eb1dbaccd9dc3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5af689f8913959a07f89d37ea33480fa6b373ddb758a251e34f71f1d8f02bb66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4929858-55e6-337d-e01c-0c04e7a4b1a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma η_app (X₂ : C₂) :
    (η adj L₁ L₂ W₂ G' F').app (L₂.obj X₂) =
      G'.map ((CatCommSq.iso F L₂ L₁ F').inv.app X₂) ≫
        (CatCommSq.iso G L₁ L₂ G').inv.app (F.obj X₂) ≫
        L₂.map (adj.counit.app X₂) := by
  letI : Lifting L₂ W₂ ((F ⋙ G) ⋙ L₂) (F' ⋙ G') :=
    Lifting.mk (CatCommSq.hComp F G L₂ L₁ L₂ F' G').iso'.symm
  simp only [η, liftNatTrans_app, Lifting.iso, Iso.symm, CatCommSq.hComp_iso'_inv_app,
    whiskerRight_app, Lifting.id_iso', Functor.rightUnitor_inv_app, comp_id, assoc]

end Localization

/-- If `adj : G ⊣ F` is an adjunction between two categories `C₁` and `C₂` that
are equipped with localization functors `L₁ : C₁ ⥤ D₁` and `L₂ : C₂ ⥤ D₂` with
respect to `W₁ : MorphismProperty C₁` and `W₂ : MorphismProperty C₂`, and that
the functors `F : C₂ ⥤ C₁` and `G : C₁ ⥤ C₂` induce functors `F' : D₂ ⥤ D₁`
and `G' : D₁ ⥤ D₂` on the localized categories, then the adjunction `adj`
induces an adjunction `G' ⊣ F'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5af689f8913959a07f89d37ea33480fa6b373ddb758a251e34f71f1d8f02bb66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5af689f8913959a07f89d37ea33480fa6b373ddb758a251e34f71f1d8f02bb66.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc88aff62b7bdc4ec403e8486690a2a39791b6ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
