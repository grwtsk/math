# fullMonoidalClosedSubcategory_ihom_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afd44e24ee1b601f1793a512c43ed45f65ff642f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a0574b1-39c9-b301-5a26-bec08178d875",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7384465b-cdfe-2fc6-1928-79e8a313726e",
  "kind": "theorem",
  "lexical_name": "fullMonoidalClosedSubcategory_ihom_obj",
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
  "slug": "fullmonoidalclosedsubcategory-ihom-obj--e6055c9fd6da33847a9c7db9",
  "source": {
    "blob": "afd44e24ee1b601f1793a512c43ed45f65ff642f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 236,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6055c9fd6da33847a9c7db90933a0983554acb169c2208e449ecdce295280cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7384465b-cdfe-2fc6-1928-79e8a313726e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullMonoidalClosedSubcategory_ihom_obj (X Y : FullSubcategory P) :
    ((ihom X).obj Y).obj = (ihom X.obj).obj Y.obj :=
  rfl
#align category_theory.monoidal_category.full_monoidal_closed_subcategory_ihom_obj CategoryTheory.MonoidalCategory.fullMonoidalClosedSubcategory_ihom_obj

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd44e24ee1b601f1793a512c43ed45f65ff642f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
