# ι_D₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1987aa4a-f4be-f089-dedb-ff3780ce9ecb",
  "kind": "lemma",
  "lexical_name": "ι_D₂",
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
  "slug": "d--5fb9d492f9af871fcb1f95ab",
  "source": {
    "blob": "d687789630e582ba090589ea018f8d4637f82fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 320,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant98207433a8198a5e39f993b15d7b21d3c82ade6833ebeada8e3d708aed25c9a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fb9d492f9af871fcb1f95abf43d1cb3a31ba14b1a83deeec1fa4b7f289d75c0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant98207433a8198a5e39f993b15d7b21d3c82ade6833ebeada8e3d708aed25c9a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1987aa4a-f4be-f089-dedb-ff3780ce9ecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_D₂ [HasGoodTrifunctor₁₂Obj F₁₂ G K₁ K₂ K₃ c₁₂ c₄] :
    ι F₁₂ G K₁ K₂ K₃ c₁₂ c₄ i₁ i₂ i₃ j h ≫ D₂ F₁₂ G K₁ K₂ K₃ c₁₂ c₄ j j' =
      d₂ F₁₂ G K₁ K₂ K₃ c₁₂ c₄ i₁ i₂ i₃ j' := by
  simp [D₂]

set_option backward.isDefEq.respectTransparency.types false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant98207433a8198a5e39f993b15d7b21d3c82ade6833ebeada8e3d708aed25c9a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant98207433a8198a5e39f993b15d7b21d3c82ade6833ebeada8e3d708aed25c9a0.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d687789630e582ba090589ea018f8d4637f82fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
