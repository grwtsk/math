# EnoughInjectives.of_adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "311bb22e1447dad64cb55143aa2f8ba6f83f1933",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65ba5449-582f-8956-8f5f-d333eec6add0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd30a74d-d8d2-bb30-0bcd-8825f12999fb",
  "kind": "lemma",
  "lexical_name": "EnoughInjectives.of_adjunction",
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
  "slug": "enoughinjectives-of-adjunction--147175b810a30bb8a6d1ec39",
  "source": {
    "blob": "311bb22e1447dad64cb55143aa2f8ba6f83f1933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:147175b810a30bb8a6d1ec39811a91c206c8a2b69115a52479ecc9608dd04033",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd30a74d-d8d2-bb30-0bcd-8825f12999fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EnoughInjectives.of_adjunction {C : Type u₁} {D : Type u₂}
    [Category.{v₁} C] [Category.{v₂} D]
    {L : C ⥤ D} {R : D ⥤ C} (adj : L ⊣ R) [L.PreservesMonomorphisms] [L.ReflectsMonomorphisms]
    [EnoughInjectives D] : EnoughInjectives C where
  presentation _ :=
    ⟨adj.injectivePresentationOfMap _ (EnoughInjectives.presentation _).some⟩

/-- An equivalence of categories transfers enough injectives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `311bb22e1447dad64cb55143aa2f8ba6f83f1933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
