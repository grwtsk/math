# stableAnchorProbeRigidity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba2c4258-1f62-f79b-b751-cc07410c9e7f",
  "kind": "theorem",
  "lexical_name": "stableAnchorProbeRigidity",
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
  "slug": "stableanchorproberigidity--b70ab8b27721c18c7c911c49",
  "source": {
    "blob": "62897de3bfe102c5c4f4e1802665f92cd0c83428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 74,
    "path": "GRWTSK/Topology/MetricTopology/StableAnchorProbeRigidity/Variant51c65ca88aa68d9c4c4cb81136821a8afacb6f1c60ae30fc2bbb3ac616b2b038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b70ab8b27721c18c7c911c494d85087551f93d3ef86559dbfddb1e26f3e01cb4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/StableAnchorProbeRigidity/Variant51c65ca88aa68d9c4c4cb81136821a8afacb6f1c60ae30fc2bbb3ac616b2b038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2c4258-1f62-f79b-b751-cc07410c9e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stableAnchorProbeRigidity :
    StableAnchorProbeRigidityStatement := by
  intro Stable X _ _ tower
  apply denseBeacon_metricDetermining
  rw [DenseRange, Subtype.dense_iff]
  have image_eq :
      ((↑) : tower.compactification → X) ''
          range tower.compactificationAnchor =
        range tower.realize := by
    ext point
    constructor
    · rintro ⟨anchorPoint, ⟨anchor, rfl⟩, rfl⟩
      exact ⟨anchor, rfl⟩
    · rintro ⟨anchor, rfl⟩
      exact
        ⟨tower.compactificationAnchor anchor, ⟨anchor, rfl⟩, rfl⟩
  rw [image_eq]
  intro point member
  exact member

/-- Distinct theorem element linked to the immutable proposal seed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/StableAnchorProbeRigidity/Variant51c65ca88aa68d9c4c4cb81136821a8afacb6f1c60ae30fc2bbb3ac616b2b038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/StableAnchorProbeRigidity/Variant51c65ca88aa68d9c4c4cb81136821a8afacb6f1c60ae30fc2bbb3ac616b2b038.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62897de3bfe102c5c4f4e1802665f92cd0c83428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
