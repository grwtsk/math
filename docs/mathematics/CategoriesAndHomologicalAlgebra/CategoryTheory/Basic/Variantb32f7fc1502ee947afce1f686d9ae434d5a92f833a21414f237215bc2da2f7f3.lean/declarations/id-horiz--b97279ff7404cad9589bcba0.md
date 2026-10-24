# id_horiz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61e45d3b910dac2738ec3e862399af488af805a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 704,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:976f4f59-fe3b-1294-8534-44e97f17e9a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c06f4f6-c406-07fe-37b2-cef319d9ae24",
  "kind": "lemma",
  "lexical_name": "id_horiz",
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
  "slug": "id-horiz--b97279ff7404cad9589bcba0",
  "source": {
    "blob": "61e45d3b910dac2738ec3e862399af488af805a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 704,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b97279ff7404cad9589bcba0ca7325c0f1e45f5246b65509011e44ea7cc6d8eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c06f4f6-c406-07fe-37b2-cef319d9ae24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma id_horiz (f : X ⟶ Z) : IsPushout (𝟙 X) f f (𝟙 Z) :=
  of_horiz_isIso ⟨by simp only [Category.id_comp, Category.comp_id]⟩

set_option backward.defeqAttrib.useBackward true in
/--
In a category, given a morphism `f : A ⟶ B` and an object `X`,
this is the obvious pushout diagram:
```
A ⟶ A ⨿ X
|     |
v     v
B ⟶ B ⨿ X
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61e45d3b910dac2738ec3e862399af488af805a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
