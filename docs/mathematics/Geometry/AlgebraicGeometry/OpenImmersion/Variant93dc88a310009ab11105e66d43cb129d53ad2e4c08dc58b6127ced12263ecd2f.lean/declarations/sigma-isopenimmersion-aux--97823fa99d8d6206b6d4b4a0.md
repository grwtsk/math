# sigma_ι_isOpenImmersion_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:048fd63263f15698e3411ec55aa28b1d854507789c2ede539ea62a339ebfbdca",
  "kind": "instance",
  "lexical_name": "sigma_ι_isOpenImmersion_aux",
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
  "slug": "sigma-isopenimmersion-aux--97823fa99d8d6206b6d4b4a0",
  "source": {
    "blob": "4840c3b01c4996cb4862762efb493c8d4fe546f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 956,
    "line": 922,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97823fa99d8d6206b6d4b4a02d46f4b2887d9fecc1475d4a65932bc84822ccbf",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:048fd63263f15698e3411ec55aa28b1d854507789c2ede539ea62a339ebfbdca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 922–956.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sigma_ι_isOpenImmersion_aux [HasStrictTerminalObjects C] :
    SheafedSpace.IsOpenImmersion (colimit.ι F i) where
  base_open := sigma_ι_isOpenEmbedding F i
  c_iso U := by
    have h₁ := ι_preservesColimitIso_inv SheafedSpace.forgetToPresheafedSpace F i
    have h₂ : colimit.ι F i =
      { hom := (colimit.ι (F ⋙ forgetToPresheafedSpace) i ≫
        (preservesColimitIso _ F).inv) } :=
      InducedCategory.hom_ext h₁.symm
    have H :
      IsOpenEmbedding
        (colimit.ι (F ⋙ SheafedSpace.forgetToPresheafedSpace) i ≫
            (preservesColimitIso SheafedSpace.forgetToPresheafedSpace F).inv).base := by
      have := h₁.symm
      convert! sigma_ι_isOpenEmbedding F i
    suffices IsIso <| (colimit.ι (F ⋙ SheafedSpace.forgetToPresheafedSpace) i ≫
        (preservesColimitIso SheafedSpace.forgetToPresheafedSpace F).inv).c.app <|
      op (H.functor.obj U) by
      convert! this
    rw [PresheafedSpace.comp_c_app,
      ← PresheafedSpace.colimitPresheafObjIsoComponentwiseLimit_hom_π]
    -- Porting note: this instance created manually to make the `inferInstance` below work
    have : IsIso (preservesColimitIso forgetToPresheafedSpace F).inv.c := inferInstance
    suffices IsIso (limit.π (PresheafedSpace.componentwiseDiagram
      (F ⋙ SheafedSpace.forgetToPresheafedSpace) ((Opens.map
        (preservesColimitIso SheafedSpace.forgetToPresheafedSpace F).inv.base).obj
          (H.functor.obj U))) (op i)) from inferInstance
    apply limit_π_isIso_of_is_strict_terminal
    rintro ⟨j⟩ hj
    dsimp
    convert! (F.obj j).sheaf.isTerminalOfEmpty using 3
    convert! image_preimage_is_empty F i j (fun h => hj (congr_arg op h.symm)) U using 6
    exact congr_arg PresheafedSpace.Hom.base h₁

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean#L922).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4840c3b01c4996cb4862762efb493c8d4fe546f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
