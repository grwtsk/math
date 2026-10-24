# CertifiedPoleCoverTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aed26a38cfc2f13b1b2c68037f0baa222740a330a4126dcdb8d401371662d091",
  "kind": "structure",
  "lexical_name": "CertifiedPoleCoverTower",
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
  "slug": "certifiedpolecovertower--910bc4424003b6c78d669fcf",
  "source": {
    "blob": "fada495239ce8cc9d2cee3080c72f18a8c166511",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 527,
    "path": "GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:910bc4424003b6c78d669fcfbb6237977dd01f88e75c0d77c42408e2d860930a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aed26a38cfc2f13b1b2c68037f0baa222740a330a4126dcdb8d401371662d091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedPoleCoverTower
    (Stable : Type u) [DecidableEq Stable]
    (X : Type v) [MetricSpace X] where
  realize : Stable → X
  pole : X
  stage : Nat → FinitePoleSurgery Stable X
  commonRealization :
    ∀ index, (stage index).anchors.realize = realize
  commonPole : ∀ index, (stage index).pole.point = pole
  radiiShrink :
    Filter.Tendsto
      (fun index ↦ (stage index).anchors.resolution)
      Filter.atTop
      (nhds 0)
  poleAdherent :
    pole ∈ closure (Set.range realize)

namespace CertifiedPoleCoverTower

variable
    {Stable : Type u} [DecidableEq Stable]
    {X : Type v} [MetricSpace X]

/-- The stable-point compactification inside the declared ambient carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fada495239ce8cc9d2cee3080c72f18a8c166511` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
