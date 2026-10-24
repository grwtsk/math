# ιMapObjOrZero_mapMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8ca7a42b9e01c64e0fa3e8193e2e2765c35f9e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 501,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d9884f2-84f5-5620-1cbb-2b5e1a41003d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2821b15-4444-5043-3d1c-adc1ba804f41",
  "kind": "lemma",
  "lexical_name": "ιMapObjOrZero_mapMap",
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
  "slug": "mapobjorzero-mapmap--820bb8fb7c52cb8b678f8cfe",
  "source": {
    "blob": "b8ca7a42b9e01c64e0fa3e8193e2e2765c35f9e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 501,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:820bb8fb7c52cb8b678f8cfe49ca8fde23442bb83c831eb8931269e573a4d702",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2821b15-4444-5043-3d1c-adc1ba804f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιMapObjOrZero_mapMap :
    X.ιMapObjOrZero p i j ≫ mapMap φ p j = φ i ≫ Y.ιMapObjOrZero p i j := by
  by_cases h : p i = j
  · simp only [ιMapObjOrZero_eq _ _ _ _ h, ι_mapMap]
  · simp only [ιMapObjOrZero_eq_zero _ _ _ _ h, zero_comp, comp_zero]

end GradedObject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8ca7a42b9e01c64e0fa3e8193e2e2765c35f9e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
