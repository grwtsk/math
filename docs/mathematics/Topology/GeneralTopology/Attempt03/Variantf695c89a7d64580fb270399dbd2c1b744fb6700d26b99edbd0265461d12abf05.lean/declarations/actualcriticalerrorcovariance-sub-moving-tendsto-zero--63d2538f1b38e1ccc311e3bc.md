# actualCriticalErrorCovariance_sub_moving_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec702d51-9a14-c07d-34d3-b6b021a9b93b",
  "kind": "theorem",
  "lexical_name": "actualCriticalErrorCovariance_sub_moving_tendsto_zero",
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
  "slug": "actualcriticalerrorcovariance-sub-moving-tendsto-zero--63d2538f1b38e1ccc311e3bc",
  "source": {
    "blob": "ba77b0328a8227a94e76b27e3d3191b872098c97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variantf695c89a7d64580fb270399dbd2c1b744fb6700d26b99edbd0265461d12abf05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63d2538f1b38e1ccc311e3bcbab9d3feff3fe4c27bc674b727fe36f46060888d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variantf695c89a7d64580fb270399dbd2c1b744fb6700d26b99edbd0265461d12abf05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec702d51-9a14-c07d-34d3-b6b021a9b93b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalErrorCovariance_sub_moving_tendsto_zero :
    Tendsto (fun A => actualCriticalErrorCovariance A -
      actualMovingCriticalIncrementCovariance A) atTop (𝓝 0) := by
  have h := actualMovingCriticalHead_tendsto_zero.neg
  simp only [neg_zero] at h
  apply h.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [actualCriticalErrorCovariance_eq_moving_increment hA]
  ring

/-- The moving payment is uniformly bounded by the genuine actual elementary error constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variantf695c89a7d64580fb270399dbd2c1b744fb6700d26b99edbd0265461d12abf05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variantf695c89a7d64580fb270399dbd2c1b744fb6700d26b99edbd0265461d12abf05.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba77b0328a8227a94e76b27e3d3191b872098c97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
