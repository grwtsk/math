# symmetric_combination_removable_singularity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8e736a7-3cc9-2bad-07fd-81cc8cec3d63",
  "kind": "theorem",
  "lexical_name": "symmetric_combination_removable_singularity",
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
  "slug": "symmetric-combination-removable-singularity--ae3fbd26bd8824283ba9866a",
  "source": {
    "blob": "4b150bbf11a5f99749e8c71897be6f5e4a7a8f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variant2c44c343797af20e8fcdd0b88ae7173a8143b60030040ed40e32c34d4c381d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae3fbd26bd8824283ba9866a7fa883d001ef27d0fa5fff6bf4f86665e9461320",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TaoPNTLi2/Variant2c44c343797af20e8fcdd0b88ae7173a8143b60030040ed40e32c34d4c381d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8e736a7-3cc9-2bad-07fd-81cc8cec3d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetric_combination_removable_singularity :
    Filter.Tendsto (fun t => 1/Real.log (1 + t) + 1/Real.log (1 - t))
      (nhdsWithin 0 (Set.Ioi 0)) (nhds 1) :=
  symmetricLogCombination_tendsto_one

/-- The symmetric combination is bounded by 2 on (0, 1/2].
    This ensures the li(2) integral is absolutely convergent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TaoPNTLi2/Variant2c44c343797af20e8fcdd0b88ae7173a8143b60030040ed40e32c34d4c381d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variant2c44c343797af20e8fcdd0b88ae7173a8143b60030040ed40e32c34d4c381d9b.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b150bbf11a5f99749e8c71897be6f5e4a7a8f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
