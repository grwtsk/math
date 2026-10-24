# field_eq_outside_locus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2da6f8ed-9c01-c35d-d870-96a89e621ab1",
  "kind": "theorem",
  "lexical_name": "field_eq_outside_locus",
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
  "slug": "field-eq-outside-locus--d465d390554749b5fd7035ce",
  "source": {
    "blob": "bc9c85d13373ef49e33c46671b1d42acac6d672c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d465d390554749b5fd7035cee0d350bff55f3cda29b3e697122053b9ad23da2d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2da6f8ed-9c01-c35d-d870-96a89e621ab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem field_eq_outside_locus
    (S : RasterSurgery G meshSurgery charge beforeRaster afterRaster)
    (p : M.CarrierPoint)
    (hp : ¬ pointInMeshSurgery meshSurgery p)
    (i : Fin charge.channels) :
    afterRaster.field p i = beforeRaster.field p i :=
  S.outside_unchanged p hp i

end RasterSurgery

/-- Reversible raster surgery requires an independently typed reverse patch. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc9c85d13373ef49e33c46671b1d42acac6d672c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
