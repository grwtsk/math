# dist_lt_mul_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34369456d4dd5f43a161312693694886cff74203",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edc75c5232a1f26d9d918eff191ce507687d885aa405dfd5332d3dc9873e2878.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8870e3a6-0548-0fee-6192-d8321cccb767",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85480416-d6d1-6ed1-61d5-ad0e322f0c29",
  "kind": "theorem",
  "lexical_name": "dist_lt_mul_of_lt",
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
  "slug": "dist-lt-mul-of-lt--848fde5e9839dbc909ca6a3e",
  "source": {
    "blob": "34369456d4dd5f43a161312693694886cff74203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 367,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variantedc75c5232a1f26d9d918eff191ce507687d885aa405dfd5332d3dc9873e2878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:848fde5e9839dbc909ca6a3e548f9fa9ccdb12221d96a1fa670ab2f4dcb16d6f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variantedc75c5232a1f26d9d918eff191ce507687d885aa405dfd5332d3dc9873e2878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85480416-d6d1-6ed1-61d5-ad0e322f0c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_lt_mul_of_lt (hf : LipschitzWith K f) (hK : K ≠ 0) (hr : dist x y < r) :
    dist (f x) (f y) < K * r :=
  (hf.dist_le_mul x y).trans_lt <| (mul_lt_mul_left <| NNReal.coe_pos.2 hK.bot_lt).2 hr
#align lipschitz_with.dist_lt_mul_of_lt LipschitzWith.dist_lt_mul_of_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variantedc75c5232a1f26d9d918eff191ce507687d885aa405dfd5332d3dc9873e2878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variantedc75c5232a1f26d9d918eff191ce507687d885aa405dfd5332d3dc9873e2878.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34369456d4dd5f43a161312693694886cff74203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
