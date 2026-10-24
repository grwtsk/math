# preimage_mul_left_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:555f3c5e-5d2a-97c3-da25-a9ed2ec91f5e",
  "kind": "theorem",
  "lexical_name": "preimage_mul_left_closedBall",
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
  "slug": "preimage-mul-left-closedball--29c0a3225cfb2f062b45397b",
  "source": {
    "blob": "61bed760883cc2fe34c39cc3109ed6646e7114f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 498,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variantd3f928e1f4109aa9550968cb48103413d3cce2148745b69621028ff00528635d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c0a3225cfb2f062b45397b57eb2c7c0b993f604ccb3b1d9b17709d579cbcc8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/IsometricSMul/Variantd3f928e1f4109aa9550968cb48103413d3cce2148745b69621028ff00528635d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:555f3c5e-5d2a-97c3-da25-a9ed2ec91f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_mul_left_closedBall [IsometricSMul G G] (a b : G) (r : ℝ) :
    (· * ·) a ⁻¹' closedBall b r = closedBall (a⁻¹ * b) r :=
  preimage_smul_closedBall a b r
#align metric.preimage_mul_left_closed_ball Metric.preimage_mul_left_closedBall
#align metric.preimage_add_left_closed_ball Metric.preimage_add_left_closedBall

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Variantd3f928e1f4109aa9550968cb48103413d3cce2148745b69621028ff00528635d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Variantd3f928e1f4109aa9550968cb48103413d3cce2148745b69621028ff00528635d.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61bed760883cc2fe34c39cc3109ed6646e7114f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
