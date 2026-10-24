# ContMDiffRiemannianMetric.toContinuousRiemannianMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0663afc516a1e96f77367484c9ee321bcfaad2fe7aff17b0dac8641d5f29dcc4",
  "kind": "def",
  "lexical_name": "ContMDiffRiemannianMetric.toContinuousRiemannianMetric",
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
  "slug": "contmdiffriemannianmetric-tocontinuousriemannianmetric--4f97afa3bd5c2e6605d6e1fb",
  "source": {
    "blob": "44d869fcdf20f0434a3b85af9203d9b2b536ac0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 262,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f97afa3bd5c2e6605d6e1fb6d62f5affc0f69284802725a2fefcd430460b3a6",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0663afc516a1e96f77367484c9ee321bcfaad2fe7aff17b0dac8641d5f29dcc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContMDiffRiemannianMetric.toContinuousRiemannianMetric
    (g : ContMDiffRiemannianMetric IB n F E) : ContinuousRiemannianMetric F E :=
  { g with continuous := g.contMDiff.continuous }

/-- A smooth Riemannian metric defines in particular a Riemannian metric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44d869fcdf20f0434a3b85af9203d9b2b536ac0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
