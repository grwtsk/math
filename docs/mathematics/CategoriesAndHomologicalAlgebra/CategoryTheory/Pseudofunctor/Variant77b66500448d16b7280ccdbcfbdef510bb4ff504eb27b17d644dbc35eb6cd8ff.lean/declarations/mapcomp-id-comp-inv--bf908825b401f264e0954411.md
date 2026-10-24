# mapComp'_id_comp_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e077fd541bbb375125c3ceaf073dc4dab3154f61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77b66500448d16b7280ccdbcfbdef510bb4ff504eb27b17d644dbc35eb6cd8ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9606964f-eb4a-440a-a102-a75e931c3462",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5b8c34d-f727-965d-f37f-98677d8e3ca1",
  "kind": "lemma",
  "lexical_name": "mapComp'_id_comp_inv",
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
  "slug": "mapcomp-id-comp-inv--bf908825b401f264e0954411",
  "source": {
    "blob": "e077fd541bbb375125c3ceaf073dc4dab3154f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant77b66500448d16b7280ccdbcfbdef510bb4ff504eb27b17d644dbc35eb6cd8ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf908825b401f264e0954411e8bcab809977d0c59ab8f0f7c3c08264f90102ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant77b66500448d16b7280ccdbcfbdef510bb4ff504eb27b17d644dbc35eb6cd8ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5b8c34d-f727-965d-f37f-98677d8e3ca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapComp'_id_comp_inv {b₀ b₁ : B} (f : b₀ ⟶ b₁) :
    (F.mapComp' (𝟙 b₀) f f).inv = (F.mapId b₀).hom ▷ _ ≫ (λ_ _).hom := by
  simp [mapComp'_id_comp]

section associativity

variable {b₀ b₁ b₂ b₃ : B} (f₀₁ : b₀ ⟶ b₁)
  (f₁₂ : b₁ ⟶ b₂) (f₂₃ : b₂ ⟶ b₃) (f₀₂ : b₀ ⟶ b₂) (f₁₃ : b₁ ⟶ b₃) (f : b₀ ⟶ b₃)
  (h₀₂ : f₀₁ ≫ f₁₂ = f₀₂) (h₁₃ : f₁₂ ≫ f₂₃ = f₁₃)

set_option backward.defeqAttrib.useBackward true in
@[to_app (attr := reassoc)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant77b66500448d16b7280ccdbcfbdef510bb4ff504eb27b17d644dbc35eb6cd8ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant77b66500448d16b7280ccdbcfbdef510bb4ff504eb27b17d644dbc35eb6cd8ff.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e077fd541bbb375125c3ceaf073dc4dab3154f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
