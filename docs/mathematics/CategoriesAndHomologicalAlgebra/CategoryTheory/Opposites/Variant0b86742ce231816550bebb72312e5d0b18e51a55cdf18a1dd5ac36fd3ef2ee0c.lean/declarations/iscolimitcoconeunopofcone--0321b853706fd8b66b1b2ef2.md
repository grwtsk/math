# isColimitCoconeUnopOfCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dae12c86f73a3210f1c0b839223b1fb28f8152ac5417b8521a53e3e47dee2b3",
  "kind": "def",
  "lexical_name": "isColimitCoconeUnopOfCone",
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
  "slug": "iscolimitcoconeunopofcone--0321b853706fd8b66b1b2ef2",
  "source": {
    "blob": "d1532ef468b67de00eb3301f5759b4bb8c93d2dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0321b853706fd8b66b1b2ef290914f2352eebcbda6912b99219e9ce8d8b3f7ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dae12c86f73a3210f1c0b839223b1fb28f8152ac5417b8521a53e3e47dee2b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoconeUnopOfCone (F : Jᵒᵖ ⥤ Cᵒᵖ) {c : Cone F} (hc : IsLimit c) :
    IsColimit (coconeUnopOfCone c)
    where
  desc s := (hc.lift (coneOfCoconeUnop s)).unop
  fac s j := Quiver.Hom.op_inj (by simp)
  uniq s m w := by
    refine' Quiver.Hom.op_inj (hc.hom_ext fun j => Quiver.Hom.unop_inj _)
    simpa only [Quiver.Hom.op_unop, IsLimit.fac] using w (unop j)
#align category_theory.limits.is_colimit_cocone_unop_of_cone CategoryTheory.Limits.isColimitCoconeUnopOfCone

/-- Turn a colimit for `F.op : Jᵒᵖ ⥤ Cᵒᵖ` into a limit for `F : J ⥤ C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1532ef468b67de00eb3301f5759b4bb8c93d2dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
