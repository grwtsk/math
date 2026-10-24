# mul_prod_Ioi_eq_prod_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e75e429862d035e1fcbbb6547c39de33a138885d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30a6525c-e1de-3029-3967-15d5a61573b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b62d6512-9991-38d3-1bd9-16e81e0192fa",
  "kind": "lemma",
  "lexical_name": "mul_prod_Ioi_eq_prod_Ici",
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
  "slug": "mul-prod-ioi-eq-prod-ici--43461d43d5e6be696ec1ef19",
  "source": {
    "blob": "e75e429862d035e1fcbbb6547c39de33a138885d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43461d43d5e6be696ec1ef19c63c9def7c03f3fe7f960d5a7d3ed35c87786e8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b62d6512-9991-38d3-1bd9-16e81e0192fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_prod_Ioi_eq_prod_Ici (a : α) : f a * ∏ x ∈ Ioi a, f x = ∏ x ∈ Ici a, f x := by
  rw [Ici_eq_cons_Ioi, prod_cons]

@[deprecated (since := "2025-05-03")] alias left_mul_prod_Ioi := mul_prod_Ioi_eq_prod_Ici
@[deprecated (since := "2025-05-03")] alias left_add_sum_Ioi := add_sum_Ioi_eq_sum_Ici

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e75e429862d035e1fcbbb6547c39de33a138885d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
