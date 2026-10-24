# yonedaGrpObjIsoOfRepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b999612acb271d354650dd000c51639a1d3663f98cfe5507c85a962fc00a67b",
  "kind": "def",
  "lexical_name": "yonedaGrpObjIsoOfRepresentableBy",
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
  "slug": "yonedagrpobjisoofrepresentableby--57c92d37d2a0258cb448279b",
  "source": {
    "blob": "3ea44012dd96f248d97cb7d1943506513ada145f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Varianta151076cf50efc109e77c61b701c1b32430bc4c2bc83ad1c41087035fe054722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57c92d37d2a0258cb448279b585b9193256fe035ac6f9f2177d7f63e4b413439",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Varianta151076cf50efc109e77c61b701c1b32430bc4c2bc83ad1c41087035fe054722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b999612acb271d354650dd000c51639a1d3663f98cfe5507c85a962fc00a67b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def yonedaGrpObjIsoOfRepresentableBy (F : Cᵒᵖ ⥤ GrpCat.{v}) (α : (F ⋙ forget _).RepresentableBy X) :
    letI := GrpObj.ofRepresentableBy X F α
    yonedaGrpObj X ≅ F :=
  letI := GrpObj.ofRepresentableBy X F α
  NatIso.ofComponents (fun Y ↦ MulEquiv.toGrpIso
    { toEquiv := α.homEquiv
      map_mul' :=
  ((yonedaMonObjIsoOfRepresentableBy X (F ⋙ forget₂ GrpCat MonCat) α).hom.app Y).hom.map_mul })
      fun φ ↦ GrpCat.hom_ext <| MonoidHom.ext <| α.homEquiv_comp φ.unop

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The yoneda embedding of `Grp C` into presheaves of groups. -/
@[to_additive (attr := simps)
/-- The yoneda embedding of `AddGrp_C` into presheaves of additive groups. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Varianta151076cf50efc109e77c61b701c1b32430bc4c2bc83ad1c41087035fe054722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Varianta151076cf50efc109e77c61b701c1b32430bc4c2bc83ad1c41087035fe054722.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea44012dd96f248d97cb7d1943506513ada145f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
