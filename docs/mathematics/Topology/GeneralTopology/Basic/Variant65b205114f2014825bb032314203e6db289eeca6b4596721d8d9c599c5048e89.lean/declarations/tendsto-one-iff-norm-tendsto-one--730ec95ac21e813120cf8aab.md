# tendsto_one_iff_norm_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11333086a01308793fd4e828669c952f211ad1e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1070,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9be5971a-7705-b2c9-f91b-37755fadb1d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0abff38-07b8-971c-4134-50aed2c33c52",
  "kind": "theorem",
  "lexical_name": "tendsto_one_iff_norm_tendsto_one",
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
  "slug": "tendsto-one-iff-norm-tendsto-one--730ec95ac21e813120cf8aab",
  "source": {
    "blob": "11333086a01308793fd4e828669c952f211ad1e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1077,
    "line": 1070,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:730ec95ac21e813120cf8aab644543104485fa95a8390f8d1ed181228c4b4c80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0abff38-07b8-971c-4134-50aed2c33c52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1070–1077.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_one_iff_norm_tendsto_one {f : α → E} {a : Filter α} :
    Tendsto f a (𝓝 1) ↔ Tendsto (fun e => ‖f e‖) a (𝓝 0) := by
  rw [tendsto_iff_norm_tendsto_one]
  simp only [div_one]
#align tendsto_one_iff_norm_tendsto_one tendsto_one_iff_norm_tendsto_one
#align tendsto_zero_iff_norm_tendsto_zero tendsto_zero_iff_norm_tendsto_zero

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean#L1070).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11333086a01308793fd4e828669c952f211ad1e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
