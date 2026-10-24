# exact_finite_geometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcb0f3fd-21e1-37b7-8e71-90beffa3cc4c",
  "kind": "theorem",
  "lexical_name": "exact_finite_geometry",
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
  "slug": "exact-finite-geometry--5a41d0eb48af08c805d4a15c",
  "source": {
    "blob": "cf9198ae36f6334f81bf72bd52463480e43c0f9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 464,
    "path": "GRWTSK/Topology/GeneralTopology/NeuralGeometry/Variant7472f76dcdc468386229a520a5cdcad28d126c687abfc4ee5ff25b1335b784af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a41d0eb48af08c805d4a15c9bd2c9ac1b8be6ea31c4f03d90aa0ae27cfdda35",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NeuralGeometry/Variant7472f76dcdc468386229a520a5cdcad28d126c687abfc4ee5ff25b1335b784af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcb0f3fd-21e1-37b7-8e71-90beffa3cc4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_finite_geometry
    {Data Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (projection : FiniteOntologyProjection Data Symbol k) :
    FunctionIdeal.vanishingIdeal
      (FunctionIdeal.zeroLocus projection.ontologyIdeal) =
      projection.ontologyIdeal :=
  projection.ontologyIdeal.finite_nullstellensatz

end FiniteOntologyProjection

/--
The integrated neural-symbolic bundle: a continuous polynomial-contained flow,
a continuous neural candidate preserving that locus, and an exact finite
symbolic projection constrained by the ontology ideal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NeuralGeometry/Variant7472f76dcdc468386229a520a5cdcad28d126c687abfc4ee5ff25b1335b784af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NeuralGeometry/Variant7472f76dcdc468386229a520a5cdcad28d126c687abfc4ee5ff25b1335b784af.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9198ae36f6334f81bf72bd52463480e43c0f9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
