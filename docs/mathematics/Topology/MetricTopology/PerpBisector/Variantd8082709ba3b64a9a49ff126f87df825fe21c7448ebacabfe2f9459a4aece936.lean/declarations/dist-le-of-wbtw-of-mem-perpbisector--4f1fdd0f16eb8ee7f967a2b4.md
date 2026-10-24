# dist_le_of_wbtw_of_mem_perpBisector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:193ad09b-0b07-f790-b5d8-a959a4764133",
  "kind": "theorem",
  "lexical_name": "dist_le_of_wbtw_of_mem_perpBisector",
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
  "slug": "dist-le-of-wbtw-of-mem-perpbisector--4f1fdd0f16eb8ee7f967a2b4",
  "source": {
    "blob": "9cc554ec00dff89eaf2dc5d2331520907bf967d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 178,
    "path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f1fdd0f16eb8ee7f967a2b457db64ddc6a69f7342d167ded19aec78e867654e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:193ad09b-0b07-f790-b5d8-a959a4764133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_le_of_wbtw_of_mem_perpBisector {a b c p : P}
    (h_wbtw : Wbtw ℝ a b c) (hab : a ≠ b)
    (hp : p ∈ AffineSubspace.perpBisector a b) :
    dist p b ≤ dist p c :=
  dist_le_of_wbtw_of_inner_eq_zero
    (h_wbtw.trans_left_right (wbtw_midpoint ℝ a b)) <| by
    rcases h_wbtw.right_mem_image_Ici_of_left_ne hab with ⟨s, -, rfl⟩
    rw [← vsub_add_vsub_cancel (AffineMap.lineMap a b s) a, AffineMap.lineMap_vsub_left,
        left_vsub_midpoint, ← neg_vsub_eq_vsub_rev b a, smul_neg, ← sub_eq_add_neg,
        inner_sub_right, inner_smul_right, inner_smul_right,
        mem_perpBisector_iff_inner_eq_zero.mp hp, mul_zero, mul_zero, sub_self]

/-- Suppose that `c₁` is equidistant from `p₁` and `p₂`, and the same applies to `c₂`. Then the
vector between `c₁` and `c₂` is orthogonal to that between `p₁` and `p₂`. (In two dimensions, this
says that the diagonals of a kite are orthogonal.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cc554ec00dff89eaf2dc5d2331520907bf967d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
