# epi_iff_epi_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a0f31cc78816cbc4b07cecafa78e818e0da7d50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd262dbc6e6228a6b3518188673c4dc7586fda62b7d4afc55b65349b716e69fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:172049a1-9308-43f0-3e0f-cbb989813720",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e667203-41e7-f5a6-6ecd-8b9af2876667",
  "kind": "theorem",
  "lexical_name": "epi_iff_epi_left",
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
  "slug": "epi-iff-epi-left--a127b85d5dd7a73adc37bd3c",
  "source": {
    "blob": "9a0f31cc78816cbc4b07cecafa78e818e0da7d50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantcd262dbc6e6228a6b3518188673c4dc7586fda62b7d4afc55b65349b716e69fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a127b85d5dd7a73adc37bd3ca2f2596dfc3343d6929a5187e239f83f6c2dca76",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantcd262dbc6e6228a6b3518188673c4dc7586fda62b7d4afc55b65349b716e69fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e667203-41e7-f5a6-6ecd-8b9af2876667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_iff_epi_left [HasPushouts C] {f g : Over X} (h : f ⟶ g) : Epi h ↔ Epi h.left :=
  CostructuredArrow.epi_iff_epi_left _
#align category_theory.over.epi_iff_epi_left CategoryTheory.Over.epi_iff_epi_left

section

variable [HasPullbacks C]

open Tactic

/-- When `C` has pullbacks, a morphism `f : X ⟶ Y` induces a functor `Over Y ⥤ Over X`,
by pulling back a morphism along `f`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantcd262dbc6e6228a6b3518188673c4dc7586fda62b7d4afc55b65349b716e69fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantcd262dbc6e6228a6b3518188673c4dc7586fda62b7d4afc55b65349b716e69fc.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a0f31cc78816cbc4b07cecafa78e818e0da7d50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
