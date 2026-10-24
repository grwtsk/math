# mk₂_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ef596acb88da3d5fd9dd5d87abf60906ca15029",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 596,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:251c48f8-f94e-3f53-9203-e9b0470750f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af06995f-25c5-330e-8966-3d0280f50941",
  "kind": "lemma",
  "lexical_name": "mk₂_surjective",
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
  "slug": "mk-surjective--d3e7f3094fc320a97368eec2",
  "source": {
    "blob": "4ef596acb88da3d5fd9dd5d87abf60906ca15029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 596,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3e7f3094fc320a97368eec20982be6d9650800a0585e304fb88fb7a9d1e71d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af06995f-25c5-330e-8966-3d0280f50941`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk₂_surjective (X : ComposableArrows C 2) :
    ∃ (X₀ X₁ X₂ : C) (f₀ : X₀ ⟶ X₁) (f₁ : X₁ ⟶ X₂), X = mk₂ f₀ f₁ :=
  ⟨_, _, _, X.map' 0 1, X.map' 1 2, ext₂ rfl rfl rfl (by simp) (by simp)⟩

section

variable
  {f g : ComposableArrows C 3}
  (app₀ : f.obj' 0 ⟶ g.obj' 0) (app₁ : f.obj' 1 ⟶ g.obj' 1) (app₂ : f.obj' 2 ⟶ g.obj' 2)
  (app₃ : f.obj' 3 ⟶ g.obj' 3)
  (w₀ : f.map' 0 1 ≫ app₁ = app₀ ≫ g.map' 0 1)
  (w₁ : f.map' 1 2 ≫ app₂ = app₁ ≫ g.map' 1 2)
  (w₂ : f.map' 2 3 ≫ app₃ = app₂ ≫ g.map' 2 3)

/-- Constructor for morphisms in `ComposableArrows C 3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef596acb88da3d5fd9dd5d87abf60906ca15029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
