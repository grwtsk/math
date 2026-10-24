# CurveTorsionClosedLoopCarrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff7afaf07fc9ea9e766ceeecb5d1fcb7be3e84b36403e8aeb8677a2e3d216a05",
  "kind": "structure",
  "lexical_name": "CurveTorsionClosedLoopCarrier",
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
  "slug": "curvetorsionclosedloopcarrier--4e5ef03dbd36c7249b82ccf5",
  "source": {
    "blob": "0a436d58027668c55d9743c43c4c677564914d9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e5ef03dbd36c7249b82ccf570078207860dd56d1e81b5a190f64b32724b79ca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff7afaf07fc9ea9e766ceeecb5d1fcb7be3e84b36403e8aeb8677a2e3d216a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CurveTorsionClosedLoopCarrier
    (Curve : Type u) (Point : Type v) (N : Nat) where
  curve : Curve
  groupModel : CurveGroupModel Point
  torsion : CurveTorsionWitness groupModel
  orbit : FiniteTransitionClosedOrbit N
  order_eq_period : torsion.order = orbit.period

/-- The torsion order equals the closed-loop period in the carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a436d58027668c55d9743c43c4c677564914d9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
