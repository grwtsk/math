# mul_inv_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 558,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e42d3c7f-534f-7a03-32c5-d7b15e6b920d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f7d7517-873d-93bf-0610-2b8baa47e2b4",
  "kind": "theorem",
  "lexical_name": "mul_inv_cancel",
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
  "slug": "mul-inv-cancel--fb085e34d2b2fb527ec6e88a",
  "source": {
    "blob": "4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 558,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb085e34d2b2fb527ec6e88a85ada5c8280cbd60571d2320cbef39a17b519e54",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f7d7517-873d-93bf-0610-2b8baa47e2b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_inv_cancel {f : CauSeq β abv} (hf) : f * inv f hf ≈ 1 := fun ε ε0 =>
  let ⟨K, K0, i, H⟩ := abv_pos_of_not_limZero hf
  ⟨i, fun j ij => by simpa [(abv_pos abv).1 (lt_of_lt_of_le K0 (H _ ij)), abv_zero abv] using ε0⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
