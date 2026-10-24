# map_mul_left_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef2d11c7-a968-3111-b7e8-760ac621eceb",
  "kind": "theorem",
  "lexical_name": "map_mul_left_ae",
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
  "slug": "map-mul-left-ae--32fdca4e03675921662c6a76",
  "source": {
    "blob": "9af0551171e42e0bccd446f80e6fbb391fea42c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 249,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32fdca4e03675921662c6a763e87960b2222d116cff54c21ce02f15e6a1c85d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef2d11c7-a968-3111-b7e8-760ac621eceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_mul_left_ae (μ : Measure G) [IsMulLeftInvariant μ] (x : G) :
    Filter.map (fun h => x * h) (ae μ) = ae μ :=
  ((MeasurableEquiv.mulLeft x).map_ae μ).trans <| congr_arg ae <| map_mul_left_eq_self μ x

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9af0551171e42e0bccd446f80e6fbb391fea42c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
