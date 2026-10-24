# opensImagePreimageMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:694f7d8ed018875ed765e6957c6775a19434a21be60d4dff658b219b7590a5b5",
  "kind": "def",
  "lexical_name": "opensImagePreimageMap",
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
  "slug": "opensimagepreimagemap--979c1b5ca00344e422428e0d",
  "source": {
    "blob": "a985a4acd24189fa486ee61ddfb20ac6433bb3b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 273,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:979c1b5ca00344e422428e0d70bdadf8c4fcf7430ac0785de7a422f17842ffe3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:694f7d8ed018875ed765e6957c6775a19434a21be60d4dff658b219b7590a5b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opensImagePreimageMap (i j : D.J) (U : Opens (D.U i).carrier) :
    (D.U i).presheaf.obj (op U) ⟶
    (D.U j).presheaf.obj (op <|
      (Opens.map (𝖣.ι j).base).obj ((D.ι_openEmbedding i).isOpenMap.functor.obj U)) :=
  (D.f i j).c.app (op U) ≫
    (D.t j i).c.app _ ≫
      (D.f_open j i).invApp (unop _) ≫
        (𝖣.U j).presheaf.map (eqToHom (D.ι_image_preimage_eq i j U)).op
#align algebraic_geometry.PresheafedSpace.glue_data.opens_image_preimage_map AlgebraicGeometry.PresheafedSpace.GlueData.opensImagePreimageMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a985a4acd24189fa486ee61ddfb20ac6433bb3b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
