# colimitPresheafObjIsoComponentwiseLimit_hom_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0620acb-d89d-5c6b-be4b-73dac95fda24",
  "kind": "theorem",
  "lexical_name": "colimitPresheafObjIsoComponentwiseLimit_hom_π",
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
  "slug": "colimitpresheafobjisocomponentwiselimit-hom--e44ee44efef1f085bd2d76f1",
  "source": {
    "blob": "7e40eac5a298bf259cb4bf4aea7d5d062367ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 444,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e44ee44efef1f085bd2d76f1488066f8a2c07e4dd33afaef13f2dd04f0f12a56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0620acb-d89d-5c6b-be4b-73dac95fda24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitPresheafObjIsoComponentwiseLimit_hom_π (F : J ⥤ PresheafedSpace.{_, _, v} C)
    (U : Opens (Limits.colimit F).carrier) (j : J) :
    (colimitPresheafObjIsoComponentwiseLimit F U).hom ≫ limit.π _ (op j) =
      (colimit.ι F j).c.app (op U) :=
  by rw [← Iso.eq_inv_comp, colimitPresheafObjIsoComponentwiseLimit_inv_ι_app]
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.colimit_presheaf_obj_iso_componentwise_limit_hom_π AlgebraicGeometry.PresheafedSpace.colimitPresheafObjIsoComponentwiseLimit_hom_π

end PresheafedSpace

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e40eac5a298bf259cb4bf4aea7d5d062367ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
