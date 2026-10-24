# DayConvolutionInternalHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0895f65c9c139a6f7ecfa3ac350ce30255f2274abf1cb8129c45b0cab0f629ec",
  "kind": "structure",
  "lexical_name": "DayConvolutionInternalHom",
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
  "slug": "dayconvolutioninternalhom--6146eb195a97cbd021561203",
  "source": {
    "blob": "e53d5f616b9fea9b05cd15695d5346cdf3e4d928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6146eb195a97cbd021561203f703ed2c0d513022f25d47d6ac8dacc761720f47",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0895f65c9c139a6f7ecfa3ac350ce30255f2274abf1cb8129c45b0cab0f629ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DayConvolutionInternalHom (F : C ⥤ V) (G : C ⥤ V) (H : C ⥤ V) where
  /-- The canonical projections maps -/
  π (c j : C) : H.obj c ⟶ (ihom <| F.obj j).obj (G.obj <| j ⊗ c)
  /-- The projections maps assemble into a wedge. -/
  hπ (c : C) ⦃i j : C⦄ (f : i ⟶ j) :
    π c i ≫ (ihom (F.obj i)).map (G.map <| f ▷ c) =
    π c j ≫ (MonoidalClosed.pre <| F.map f).app (G.obj <| j ⊗ c)
  /-- The wedge defined by `π` and `hπ` is a limit wedge, i.e `H.obj c` is
  an end of `internalHomDiagramFunctor F G|>.obj c`. -/
  isLimitWedge (c : C) :
    IsLimit <| Wedge.mk
      (F := dayConvolutionInternalHomDiagramFunctor F |>.obj G |>.obj c)
      (H.obj c) (π c) (hπ c)
  /-- The functoriality of `H.obj G` identifies (through
  `Wedge.IsLimit.hom_ext`) with the functoriality on ends induced by
  functoriality of `internalHomDiagramFunctor F|>.obj G`. -/
  map_comp_π {c c' : C} (f : c ⟶ c') (j : C) :
    H.map f ≫ π c' j = π c j ≫ (ihom <| F.obj j).map (G.map <| j ◁ f)

namespace DayConvolutionInternalHom

open scoped DayConvolution

attribute [reassoc (attr := simp)] map_comp_π
attribute [reassoc] hπ

variable {F : C ⥤ V} {G : C ⥤ V} {H : C ⥤ V}

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If we have a map `G ⟶ G'` and a `DayConvolutionInternalHom F G' H'`, then
there is a unique map `H ⟶ H'` induced by functoriality of ends and functoriality
of `internalHomDiagramFunctor F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e53d5f616b9fea9b05cd15695d5346cdf3e4d928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
