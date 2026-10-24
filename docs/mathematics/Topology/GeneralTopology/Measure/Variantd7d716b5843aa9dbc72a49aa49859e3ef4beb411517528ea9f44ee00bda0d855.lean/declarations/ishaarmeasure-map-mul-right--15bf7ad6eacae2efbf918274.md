# isHaarMeasure_map_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a5226dfdd4a4516f6228ff4fe9db7d3cc1709a31ab5c3871663bfb321c7d8b4",
  "kind": "instance",
  "lexical_name": "isHaarMeasure_map_mul_right",
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
  "slug": "ishaarmeasure-map-mul-right--15bf7ad6eacae2efbf918274",
  "source": {
    "blob": "9af0551171e42e0bccd446f80e6fbb391fea42c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 795,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15bf7ad6eacae2efbf91827477f9a8d8cb16ba47e8fd868e0c82ec2845d461b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a5226dfdd4a4516f6228ff4fe9db7d3cc1709a31ab5c3871663bfb321c7d8b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 795–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isHaarMeasure_map_mul_right [BorelSpace G] [IsTopologicalGroup G] (g : G) :
    IsHaarMeasure (Measure.map (· * g) μ) :=
  isHaarMeasure_map_smul μ (MulOpposite.op g)

/-- A convenience wrapper for `MeasureTheory.Measure.isHaarMeasure_map`. -/
@[to_additive "A convenience wrapper for `MeasureTheory.Measure.isAddHaarMeasure_map`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean#L795).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9af0551171e42e0bccd446f80e6fbb391fea42c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
