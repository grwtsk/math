# continuous_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2caf14b-e816-19d2-2582-32c44f44c425",
  "kind": "lemma",
  "lexical_name": "continuous_map",
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
  "slug": "continuous-map--c8b5ba11676f2075c3bb24d0",
  "source": {
    "blob": "80a743ee6440d4b3e08ce22f3a84194fedda4cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 401,
    "path": "GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8b5ba11676f2075c3bb24d020e0b28bf9fbd026b5caca74f5e9a2513749bcb2",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2caf14b-e816-19d2-2582-32c44f44c425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_map [TopologicalSpace S] [IsTopologicalSemiring S] (f : X → Y) :
    Continuous (map (S := S) f) :=
  Continuous.subtype_mk ((FunOnFinite.continuous_linearMap S S f).comp continuous_induced_dom) _

@[deprecated StdSimplex.single_injective (since := "2026-08-29")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80a743ee6440d4b3e08ce22f3a84194fedda4cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
