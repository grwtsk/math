# epi_homologyMap_of_epi_cyclesMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cbb75e3cf38100f41245e7f38df42edbf03f4ddc7265a4d92058b5d83993a88",
  "kind": "instance",
  "lexical_name": "epi_homologyMap_of_epi_cyclesMap",
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
  "slug": "epi-homologymap-of-epi-cyclesmap--b6912c20d0558f35f0770da6",
  "source": {
    "blob": "12b71a88e6b6e8c53e5abe4e794864e7d653e664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1231,
    "line": 1223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6912c20d0558f35f0770da66952bb8deb1f20b5fecbff9a06dee8e4e7bdb705",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cbb75e3cf38100f41245e7f38df42edbf03f4ddc7265a4d92058b5d83993a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1223–1231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance epi_homologyMap_of_epi_cyclesMap
    [S₁.HasHomology] [S₂.HasHomology] [Epi (cyclesMap φ)] :
    Epi (homologyMap φ) :=
  epi_homologyMap_of_epi_cyclesMap' φ inferInstance

/-- Given a short complex `S` such that `S.HasHomology`, this is the canonical
left homology data for `S` whose `K` and `H` fields are
respectively `S.cycles` and `S.homology`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean#L1223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b71a88e6b6e8c53e5abe4e794864e7d653e664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
