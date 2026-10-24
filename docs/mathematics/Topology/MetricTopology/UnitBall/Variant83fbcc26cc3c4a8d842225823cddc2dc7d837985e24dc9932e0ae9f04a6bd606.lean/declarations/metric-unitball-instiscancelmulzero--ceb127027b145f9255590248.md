# Metric.unitBall.instIsCancelMulZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec83baba434a436a4b635e60f8e7b020795d8661a0efead58215e15063fc9064",
  "kind": "instance",
  "lexical_name": "Metric.unitBall.instIsCancelMulZero",
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
  "slug": "metric-unitball-instiscancelmulzero--ceb127027b145f9255590248",
  "source": {
    "blob": "28b32fc076d0d53bd4ff77e53944b541bc03761c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ceb127027b145f92555902480f31df78a62395c17093064de0edd1c443a7bb50",
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

Occurrence: `declaration:ec83baba434a436a4b635e60f8e7b020795d8661a0efead58215e15063fc9064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Metric.unitBall.instIsCancelMulZero [NonUnitalSeminormedRing 𝕜]
    [IsCancelMulZero 𝕜] : IsCancelMulZero (ball (0 : 𝕜) 1) where

/-!
### Algebraic instances for `Metric.closedBall 0 1`
-/

/-- Closed unit ball in a non-unital seminormed ring as a bundled `Subsemigroup`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28b32fc076d0d53bd4ff77e53944b541bc03761c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
