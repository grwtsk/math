# InftyValuation.map_add_le_max'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9456a551736955d6cda659d747e49f656037396",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:947f04dc-d279-7c46-597c-ae24150f2d24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:821c7ffa-2461-b940-5def-6610b394aace",
  "kind": "theorem",
  "lexical_name": "InftyValuation.map_add_le_max'",
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
  "slug": "inftyvaluation-map-add-le-max--8d579a1c84a2b669a499351b",
  "source": {
    "blob": "b9456a551736955d6cda659d747e49f656037396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 168,
    "path": "GRWTSK/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d579a1c84a2b669a499351b22331ef01348e368034e8ad6e31c5c39f5c17a85",
  "verification": {
    "reference": "docs/verification/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:821c7ffa-2461-b940-5def-6610b394aace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem InftyValuation.map_add_le_max' (x y : RatFunc Fq) :
    inftyValuationDef Fq (x + y) ≤ max (inftyValuationDef Fq x) (inftyValuationDef Fq y) := by
  by_cases hx : x = 0
  · rw [hx, zero_add]
    conv_rhs => rw [inftyValuationDef, if_pos (Eq.refl _)]
    rw [max_eq_right (WithZero.zero_le (inftyValuationDef Fq y))]
  · by_cases hy : y = 0
    · rw [hy, add_zero]
      conv_rhs => rw [max_comm, inftyValuationDef, if_pos (Eq.refl _)]
      rw [max_eq_right (WithZero.zero_le (inftyValuationDef Fq x))]
    · by_cases hxy : x + y = 0
      · rw [inftyValuationDef, if_pos hxy]; exact zero_le'
      · rw [inftyValuationDef, inftyValuationDef, inftyValuationDef, if_neg hx, if_neg hy,
          if_neg hxy]
        rw [le_max_iff, WithZero.coe_le_coe, Multiplicative.ofAdd_le, WithZero.coe_le_coe,
          Multiplicative.ofAdd_le, ← le_max_iff]
        exact RatFunc.intDegree_add_le hy hxy

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9456a551736955d6cda659d747e49f656037396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
