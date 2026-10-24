# outer_curvature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0fbf9f2-953e-6669-ae21-3fb005c366de",
  "kind": "theorem",
  "lexical_name": "outer_curvature",
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
  "slug": "outer-curvature--92a93949065c614102bfe1bb",
  "source": {
    "blob": "52a3c7faf015ce0085c70c6188fa42c470f0f5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 42,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92a93949065c614102bfe1bbe9ebb9945cde8705ff31867e6f2338a8884e9a83",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0fbf9f2-953e-6669-ae21-3fb005c366de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outer_curvature (w : ℂ)
    (member : w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    ‖deriv (deriv riemannZeta) w‖ ≤ (21952 : ℝ) := by
  have subset := RationalNewtonWitness.geometry_subset ConcreteNewtonPacket.chart true
    ConcreteNewtonPacket.newtonData ConcreteNewtonPacket.newton_admissible.1
  have bound := ZetaDiskCurvature.norm_zeta_second_le ConcreteNewtonPacket.chart
    ConcreteNewtonPacket.newton_admissible.1.1 _ w
    (RationalNewtonWitness.chartCenter_spec ConcreteNewtonPacket.chart true) (subset member)
  norm_num [ConcreteNewtonPacket.chart] at bound
  exact bound

/-- The bound is uniform on the punctured outer disk, not obtained by dividing
only the boundary modulus floor. The SAME root is used in the subtracted pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a3c7faf015ce0085c70c6188fa42c470f0f5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
