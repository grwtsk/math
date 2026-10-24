# Metric.unitClosedBall.instHasDistribNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:920216e6963e5631135df5dd998d4402d36367235ab0bd2323fe8e4cea32250c",
  "kind": "instance",
  "lexical_name": "Metric.unitClosedBall.instHasDistribNeg",
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
  "slug": "metric-unitclosedball-insthasdistribneg--2254b4aa03a7d45be2d8b492",
  "source": {
    "blob": "28b32fc076d0d53bd4ff77e53944b541bc03761c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 109,
    "path": "GRWTSK/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2254b4aa03a7d45be2d8b4925fc383732589685236248a50c81a2002026e3bb9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:920216e6963e5631135df5dd998d4402d36367235ab0bd2323fe8e4cea32250c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Metric.unitClosedBall.instHasDistribNeg [NonUnitalSeminormedRing 𝕜] :
    HasDistribNeg (closedBall (0 : 𝕜) 1) :=
  Subtype.coe_injective.hasDistribNeg ((↑) : closedBall (0 : 𝕜) 1 → 𝕜) (fun _ => rfl) fun _ _ => rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28b32fc076d0d53bd4ff77e53944b541bc03761c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
