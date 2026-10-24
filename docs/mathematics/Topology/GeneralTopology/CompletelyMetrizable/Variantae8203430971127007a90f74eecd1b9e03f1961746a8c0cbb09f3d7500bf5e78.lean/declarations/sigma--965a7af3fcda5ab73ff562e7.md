# sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4b2db5dc4d697c2afe499f6093ef42e86ba898a011a2d9c14d967beba9ae19d",
  "kind": "instance",
  "lexical_name": "sigma",
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
  "slug": "sigma--965a7af3fcda5ab73ff562e7",
  "source": {
    "blob": "03142d34f0325766ea5b019559099dfa548589a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:965a7af3fcda5ab73ff562e74ac905e0d2dbc1c214541466e7ac4e3f2242b09d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4b2db5dc4d697c2afe499f6093ef42e86ba898a011a2d9c14d967beba9ae19d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sigma {ι : Type*} {X : ι → Type*} [∀ n, TopologicalSpace (X n)]
    [∀ n, IsCompletelyMetrizableSpace (X n)] : IsCompletelyMetrizableSpace (Σ n, X n) :=
  letI := fun n ↦ upgradeIsCompletelyMetrizable (X n)
  letI : MetricSpace (Σ n, X n) := Metric.Sigma.metricSpace
  haveI : CompleteSpace (Σ n, X n) := Metric.Sigma.completeSpace
  inferInstance

/-- The product of two completely metrizable spaces is completely metrizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03142d34f0325766ea5b019559099dfa548589a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
