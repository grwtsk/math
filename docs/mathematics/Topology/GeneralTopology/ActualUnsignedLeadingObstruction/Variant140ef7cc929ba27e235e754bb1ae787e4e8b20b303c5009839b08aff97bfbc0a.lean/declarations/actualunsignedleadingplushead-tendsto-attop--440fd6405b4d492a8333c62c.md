# actualUnsignedLeadingPlusHead_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64491036-95db-2a63-6748-ad8b865df687",
  "kind": "theorem",
  "lexical_name": "actualUnsignedLeadingPlusHead_tendsto_atTop",
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
  "slug": "actualunsignedleadingplushead-tendsto-attop--440fd6405b4d492a8333c62c",
  "source": {
    "blob": "a2904216efb9577a71c28d79c227d6792cae3ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant140ef7cc929ba27e235e754bb1ae787e4e8b20b303c5009839b08aff97bfbc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:440fd6405b4d492a8333c62c551dfd9b1b07d2bcf1c0d347e1eaddbd1c39a2dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant140ef7cc929ba27e235e754bb1ae787e4e8b20b303c5009839b08aff97bfbc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64491036-95db-2a63-6748-ad8b865df687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnsignedLeadingPlusHead_tendsto_atTop :
    Tendsto actualUnsignedLeadingPlusHead atTop atTop := by
  apply tendsto_atTop.2
  intro b
  filter_upwards [eventually_ge_atTop (max (25600 : ℝ) ((9 / 2 : ℝ) * (b + 35 / 6)))]
    with A hA
  have hscale := (le_max_left (25600 : ℝ) ((9 / 2 : ℝ) * (b + 35 / 6))).trans hA
  have hlin := (le_max_right (25600 : ℝ) ((9 / 2 : ℝ) * (b + 35 / 6))).trans hA
  have hlower := actualUnsignedLeadingPlusHead_lower hscale
  linarith

/-- No fixed-radius uniform upper witness exists for this unsigned replacement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant140ef7cc929ba27e235e754bb1ae787e4e8b20b303c5009839b08aff97bfbc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant140ef7cc929ba27e235e754bb1ae787e4e8b20b303c5009839b08aff97bfbc0a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2904216efb9577a71c28d79c227d6792cae3ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
