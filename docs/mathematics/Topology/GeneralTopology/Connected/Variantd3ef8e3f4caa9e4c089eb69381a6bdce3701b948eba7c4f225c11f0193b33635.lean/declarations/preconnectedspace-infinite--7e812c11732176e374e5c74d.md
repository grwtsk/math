# PreconnectedSpace.infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:949e0fb7-4bad-1f17-cc1f-6115d75dd6a6",
  "kind": "theorem",
  "lexical_name": "PreconnectedSpace.infinite",
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
  "slug": "preconnectedspace-infinite--7e812c11732176e374e5c74d",
  "source": {
    "blob": "b895ff9aba56724c9103fb2f5fa4210cef4863fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e812c11732176e374e5c74dba2c46c15bfb066c5bb475586a5ac02b2c81e4d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:949e0fb7-4bad-1f17-cc1f-6115d75dd6a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PreconnectedSpace.infinite [PreconnectedSpace X] [Nontrivial X] [T1Space X] : Infinite X :=
  infinite_univ_iff.mp <| isPreconnected_univ.infinite_of_nontrivial nontrivial_univ

@[deprecated (since := "2025-03-21")]
alias ConnectedSpace.infinite := PreconnectedSpace.infinite

/-- A non-trivial connected T1 space has no isolated points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b895ff9aba56724c9103fb2f5fa4210cef4863fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
