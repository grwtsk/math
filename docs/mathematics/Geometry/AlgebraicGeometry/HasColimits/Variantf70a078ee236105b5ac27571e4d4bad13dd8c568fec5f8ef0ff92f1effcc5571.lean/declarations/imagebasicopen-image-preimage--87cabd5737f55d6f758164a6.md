# imageBasicOpen_image_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01f5b34b-86ca-e001-d9ef-4e4124e400e3",
  "kind": "theorem",
  "lexical_name": "imageBasicOpen_image_preimage",
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
  "slug": "imagebasicopen-image-preimage--87cabd5737f55d6f758164a6",
  "source": {
    "blob": "5d1d31b8ff076c8c338694de7c1ab588cd37de0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 195,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87cabd5737f55d6f758164a6a898c6df3ecad1573d16434b9ae1892c560ac073",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01f5b34b-86ca-e001-d9ef-4e4124e400e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imageBasicOpen_image_preimage :
    (coequalizer.π f.1 g.1).base ⁻¹' ((coequalizer.π f.1 g.1).base '' (imageBasicOpen f g U s).1) =
      (imageBasicOpen f g U s).1 := by
  fapply Types.coequalizer_preimage_image_eq_of_preimage_eq
    -- Porting note : Type of `f.1.base` and `g.1.base` needs to be explicit
    (f.1.base : X.carrier.1 ⟶ Y.carrier.1) (g.1.base : X.carrier.1 ⟶ Y.carrier.1)
  · ext
    simp_rw [types_comp_apply, ← TopCat.comp_app, ← PresheafedSpace.comp_base]
    congr 2
    exact coequalizer.condition f.1 g.1
  · apply isColimitCoforkMapOfIsColimit (forget TopCat)
    apply isColimitCoforkMapOfIsColimit (SheafedSpace.forget _)
    exact coequalizerIsCoequalizer f.1 g.1
  · suffices
      (TopologicalSpace.Opens.map f.1.base).obj (imageBasicOpen f g U s) =
        (TopologicalSpace.Opens.map g.1.base).obj (imageBasicOpen f g U s)
      by injection this
    delta imageBasicOpen
    rw [preimage_basicOpen f, preimage_basicOpen g]
    dsimp only [Functor.op, unop_op]
    -- Porting note : change `rw` to `erw`
    erw [← comp_apply, ← SheafedSpace.comp_c_app', ← comp_apply, ← SheafedSpace.comp_c_app',
      SheafedSpace.congr_app (coequalizer.condition f.1 g.1), comp_apply,
      X.toRingedSpace.basicOpen_res]
    apply inf_eq_right.mpr
    refine' (RingedSpace.basicOpen_le _ _).trans _
    rw [coequalizer.condition f.1 g.1]
#align algebraic_geometry.LocallyRingedSpace.has_coequalizer.image_basic_open_image_preimage AlgebraicGeometry.LocallyRingedSpace.HasCoequalizer.imageBasicOpen_image_preimage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1d31b8ff076c8c338694de7c1ab588cd37de0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
