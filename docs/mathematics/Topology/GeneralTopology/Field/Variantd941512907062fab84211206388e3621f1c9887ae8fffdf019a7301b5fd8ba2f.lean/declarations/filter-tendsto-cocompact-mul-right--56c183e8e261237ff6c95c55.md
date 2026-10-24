# Filter.tendsto_cocompact_mul_right₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f98c66552079474e8610fcdac05d432bfccc7365",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6d94159-b147-03c5-9e87-89d704c9ce16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc493a5c-2d91-8276-fc19-40435644efa1",
  "kind": "theorem",
  "lexical_name": "Filter.tendsto_cocompact_mul_right₀",
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
  "slug": "filter-tendsto-cocompact-mul-right--56c183e8e261237ff6c95c55",
  "source": {
    "blob": "f98c66552079474e8610fcdac05d432bfccc7365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56c183e8e261237ff6c95c55622224c15897aef59ea65a579710e65cc340e80c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc493a5c-2d91-8276-fc19-40435644efa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.tendsto_cocompact_mul_right₀ [ContinuousMul K] {a : K} (ha : a ≠ 0) :
    Filter.Tendsto (fun x : K => x * a) (Filter.cocompact K) (Filter.cocompact K) :=
  Filter.tendsto_cocompact_mul_right (mul_inv_cancel ha)
#align filter.tendsto_cocompact_mul_right₀ Filter.tendsto_cocompact_mul_right₀

variable (K)

/-- A topological division ring is a division ring with a topology where all operations are
    continuous, including inversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98c66552079474e8610fcdac05d432bfccc7365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
