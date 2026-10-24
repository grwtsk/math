# pseudoMetrizableSpace_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0475b47b5a3f4d8fdb02cfa38a065194f12b8f6d13d8df92db257771440a887",
  "kind": "instance",
  "lexical_name": "pseudoMetrizableSpace_pi",
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
  "slug": "pseudometrizablespace-pi--121170bcd57ddf2b41e5f1f0",
  "source": {
    "blob": "2c53e0b09c8e819f43565c4203cb1b7aa440aa7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:121170bcd57ddf2b41e5f1f0ebf2d74f5f226972aa518a2ff4b1f5164cda2993",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0475b47b5a3f4d8fdb02cfa38a065194f12b8f6d13d8df92db257771440a887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pseudoMetrizableSpace_pi [∀ i, PseudoMetrizableSpace (π i)] :
    PseudoMetrizableSpace (∀ i, π i) := by
  cases nonempty_fintype ι
  letI := fun i => pseudoMetrizableSpacePseudoMetric (π i)
  infer_instance

/-- A topological space is metrizable if there exists a metric space structure compatible with the
topology. To endow such a space with a compatible distance, use
`letI : MetricSpace X := TopologicalSpace.metrizableSpaceMetric X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantaf7ddd354f48db8a3daa0c30362e0e74f1480dadc66c5c4e53459e4e52daca27.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c53e0b09c8e819f43565c4203cb1b7aa440aa7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
