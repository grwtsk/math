# InducedQuotientLengthMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e64d2e57360c89b83ce6b4deb4d0d5f14436ca8464b0b067404c3c81fac24c2f",
  "kind": "structure",
  "lexical_name": "InducedQuotientLengthMetric",
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
  "slug": "inducedquotientlengthmetric--aeb5e0db41d2868fdab9bbed",
  "source": {
    "blob": "339284319d4660fae50aa7d3099ae61fd49b809c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 459,
    "path": "GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aeb5e0db41d2868fdab9bbed614cfcd17e0f614a91f3792cad5fa62956729265",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e64d2e57360c89b83ce6b4deb4d0d5f14436ca8464b0b067404c3c81fac24c2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InducedQuotientLengthMetric
    (data : FixedSurgeryData Exterior CapIndex Cap) where
  distance :
    SurgeryCarrier data → SurgeryCarrier data → ℝ
  admissible :
    AdmissibleQuotientPseudometric data distance
  greatest :
    ∀ candidate,
      AdmissibleQuotientPseudometric data candidate →
        ∀ left right, candidate left right ≤ distance left right
  separates :
    ∀ {left right}, distance left right = 0 → left = right
  metric : MetricSpace (SurgeryCarrier data)
  metric_distance :
    ∀ left right,
      @dist (SurgeryCarrier data) metric.toDist left right =
        distance left right
  quotientLengthMetricCertificate : ObjectAddress

namespace InducedQuotientLengthMetric

variable
    {data : FixedSurgeryData Exterior CapIndex Cap}

/-- Two realizations of the induced quotient metric have the same distance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `339284319d4660fae50aa7d3099ae61fd49b809c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
