# extEquivCohomologyClass_symm_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87d0abafa10092313d5a7650830d36fa5ab8ac0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eaee7f37a5d9d096e88b1b7e7f62ba444389013009809965a9cfeb47016bff26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16bd4ff7-a7a5-46e8-69bd-02870dbd0afc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:806557a9-1594-e57c-37d5-3640ee986ea7",
  "kind": "lemma",
  "lexical_name": "extEquivCohomologyClass_symm_sub",
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
  "slug": "extequivcohomologyclass-symm-sub--529da42e63d87a5112b158bf",
  "source": {
    "blob": "87d0abafa10092313d5a7650830d36fa5ab8ac0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Varianteaee7f37a5d9d096e88b1b7e7f62ba444389013009809965a9cfeb47016bff26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:529da42e63d87a5112b158bfc5de20aff6b5813206fd8d14837f75f445cf0f6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Varianteaee7f37a5d9d096e88b1b7e7f62ba444389013009809965a9cfeb47016bff26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:806557a9-1594-e57c-37d5-3640ee986ea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extEquivCohomologyClass_symm_sub
    (x y : CohomologyClass R.cochainComplex ((singleFunctor C 0).obj Y) n) :
    R.extEquivCohomologyClass.symm (x - y) =
      R.extEquivCohomologyClass.symm x - R.extEquivCohomologyClass.symm y :=
  R.extAddEquivCohomologyClass.symm.map_sub _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Varianteaee7f37a5d9d096e88b1b7e7f62ba444389013009809965a9cfeb47016bff26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Varianteaee7f37a5d9d096e88b1b7e7f62ba444389013009809965a9cfeb47016bff26.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d0abafa10092313d5a7650830d36fa5ab8ac0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
