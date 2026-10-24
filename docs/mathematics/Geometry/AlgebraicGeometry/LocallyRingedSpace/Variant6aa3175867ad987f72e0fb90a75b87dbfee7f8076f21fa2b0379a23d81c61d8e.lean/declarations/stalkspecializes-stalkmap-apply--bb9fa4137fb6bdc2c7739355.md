# stalkSpecializes_stalkMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ce5f09e-83e3-7572-d618-69030b764cc5",
  "kind": "lemma",
  "lexical_name": "stalkSpecializes_stalkMap_apply",
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
  "slug": "stalkspecializes-stalkmap-apply--bb9fa4137fb6bdc2c7739355",
  "source": {
    "blob": "278401e14405228953b93ca7d774268c4b63d695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 391,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant6aa3175867ad987f72e0fb90a75b87dbfee7f8076f21fa2b0379a23d81c61d8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb9fa4137fb6bdc2c77393551738a4595cfd81963cab4af40a691b80b694aa30",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant6aa3175867ad987f72e0fb90a75b87dbfee7f8076f21fa2b0379a23d81c61d8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ce5f09e-83e3-7572-d618-69030b764cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stalkSpecializes_stalkMap_apply (x x' : X) (h : x ⤳ x') (y) :
    f.stalkMap x (Y.presheaf.stalkSpecializes (f.base.hom.map_specializes h) y) =
      (X.presheaf.stalkSpecializes h (f.stalkMap x' y)) :=
  DFunLike.congr_fun (CommRingCat.hom_ext_iff.mp (stalkSpecializes_stalkMap f x x' h)) y

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant6aa3175867ad987f72e0fb90a75b87dbfee7f8076f21fa2b0379a23d81c61d8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant6aa3175867ad987f72e0fb90a75b87dbfee7f8076f21fa2b0379a23d81c61d8e.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `278401e14405228953b93ca7d774268c4b63d695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
