# eqvGen_of_π_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "694923143d2ddbfb88963488273fd033f2782247",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a6054d1-6323-431a-e64f-a73e10078e62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:239dacdf-015e-85b6-683d-f19fbd91d81d",
  "kind": "theorem",
  "lexical_name": "eqvGen_of_π_eq",
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
  "slug": "eqvgen-of-eq--a9af3247692be4a104d8f11b",
  "source": {
    "blob": "694923143d2ddbfb88963488273fd033f2782247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9af3247692be4a104d8f11b78c4040e0c3c7adfae28d76085513ddbc7114d9a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:239dacdf-015e-85b6-683d-f19fbd91d81d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqvGen_of_π_eq
    -- Porting note: was `{x y : ∐ D.U} (h : 𝖣.π x = 𝖣.π y)`
    {x y : sigmaObj (β := D.toGlueData.J) (C := TopCat) D.toGlueData.U}
    (h : 𝖣.π x = 𝖣.π y) :
    EqvGen
      -- Porting note: was (Types.CoequalizerRel 𝖣.diagram.fstSigmaMap 𝖣.diagram.sndSigmaMap)
      (Types.CoequalizerRel
        (X := sigmaObj (β := D.toGlueData.diagram.L) (C := TopCat) (D.toGlueData.diagram).left)
        (Y := sigmaObj (β := D.toGlueData.diagram.R) (C := TopCat) (D.toGlueData.diagram).right)
        𝖣.diagram.fstSigmaMap 𝖣.diagram.sndSigmaMap)
      x y := by
  delta GlueData.π Multicoequalizer.sigmaπ at h
  -- Porting note: inlined `inferInstance` instead of leaving as a side goal.
  replace h := (TopCat.mono_iff_injective (Multicoequalizer.isoCoequalizer 𝖣.diagram).inv).mp
    inferInstance h
  let diagram := parallelPair 𝖣.diagram.fstSigmaMap 𝖣.diagram.sndSigmaMap ⋙ forget _
  have : colimit.ι diagram one x = colimit.ι diagram one y := by
    dsimp only [coequalizer.π, ContinuousMap.toFun_eq_coe] at h
    rw [← ι_preservesColimitsIso_hom, forget_map_eq_coe, types_comp_apply, h]
    simp
  have :
    (colimit.ι diagram _ ≫ colim.map _ ≫ (colimit.isoColimitCocone _).hom) _ =
      (colimit.ι diagram _ ≫ colim.map _ ≫ (colimit.isoColimitCocone _).hom) _ :=
    (congr_arg
        (colim.map (diagramIsoParallelPair diagram).hom ≫
          (colimit.isoColimitCocone (Types.coequalizerColimit _ _)).hom)
        this :
      _)
  -- Porting note: was
  -- simp only [eqToHom_refl, types_comp_apply, colimit.ι_map_assoc,
  --   diagramIsoParallelPair_hom_app, colimit.isoColimitCocone_ι_hom, types_id_apply] at this
  -- See https://github.com/leanprover-community/mathlib4/issues/5026
  rw [colimit.ι_map_assoc, diagramIsoParallelPair_hom_app, eqToHom_refl,
    colimit.isoColimitCocone_ι_hom, types_comp_apply, types_id_apply, types_comp_apply,
    types_id_apply] at this
  exact Quot.eq.1 this
set_option linter.uppercaseLean3 false in
#align Top.glue_data.eqv_gen_of_π_eq TopCat.GlueData.eqvGen_of_π_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694923143d2ddbfb88963488273fd033f2782247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
