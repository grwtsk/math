# mem_interior_iff_not_clusterPt_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5346fc96-512d-6fc2-db72-044402ff747b",
  "kind": "theorem",
  "lexical_name": "mem_interior_iff_not_clusterPt_compl",
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
  "slug": "mem-interior-iff-not-clusterpt-compl--c6b0546e83858cf860b917f2",
  "source": {
    "blob": "7ef80271807ac6aea3b4a086237ec5d9170c8cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/ClusterPt/Variant36c39b26dd3b8baa4cdbbeacfe615417a7004c54b4f22b744eec87628ca94254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6b0546e83858cf860b917f2d19b4372c24caab24530ff7060ad9290810968af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClusterPt/Variant36c39b26dd3b8baa4cdbbeacfe615417a7004c54b4f22b744eec87628ca94254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5346fc96-512d-6fc2-db72-044402ff747b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_interior_iff_not_clusterPt_compl : x ∈ interior s ↔ ¬ClusterPt x (𝓟 sᶜ) := by
  rw [← mem_closure_iff_clusterPt, closure_compl, mem_compl_iff, not_not]

/-- If `x` is not an isolated point of a topological space, then `{x}ᶜ` is dense in the whole
space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClusterPt/Variant36c39b26dd3b8baa4cdbbeacfe615417a7004c54b4f22b744eec87628ca94254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClusterPt/Variant36c39b26dd3b8baa4cdbbeacfe615417a7004c54b4f22b744eec87628ca94254.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ef80271807ac6aea3b4a086237ec5d9170c8cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
