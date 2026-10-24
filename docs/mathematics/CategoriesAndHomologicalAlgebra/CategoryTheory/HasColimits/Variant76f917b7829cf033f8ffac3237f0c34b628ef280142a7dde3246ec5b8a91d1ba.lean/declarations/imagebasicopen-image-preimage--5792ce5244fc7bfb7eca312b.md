# imageBasicOpen_image_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7db7da682256d494c648bbe4712d21cc9a08a1a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc5bb0f7-06f7-ff56-2822-b3d61a9560eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0575f6e7-1eda-6b12-bb74-78bdf455c577",
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
  "slug": "imagebasicopen-image-preimage--5792ce5244fc7bfb7eca312b",
  "source": {
    "blob": "7db7da682256d494c648bbe4712d21cc9a08a1a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5792ce5244fc7bfb7eca312b2de30bbe609756bef70e35e9d867d2d45f34ff3c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0575f6e7-1eda-6b12-bb74-78bdf455c577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imageBasicOpen_image_preimage :
    (coequalizer.π f.toShHom g.toShHom).base ⁻¹' ((coequalizer.π f.toShHom g.toShHom).base ''
      (imageBasicOpen f g U s).1) = (imageBasicOpen f g U s).1 := by
  fapply Types.coequalizer_preimage_image_eq_of_preimage_eq f.base
    -- Porting note: Type of `f.base` and `g.base` needs to be explicit
    (g.base : X.carrier.1 ⟶ Y.carrier.1)
  · ext
    simp_rw [types_comp_apply, ← TopCat.comp_app, ← PresheafedSpace.comp_base]
    congr 3
    exact coequalizer.condition f.toShHom g.toShHom
  · apply isColimitCoforkMapOfIsColimit (forget TopCat)
    apply isColimitCoforkMapOfIsColimit (SheafedSpace.forget _)
    exact coequalizerIsCoequalizer f.toShHom g.toShHom
  · suffices
      (TopologicalSpace.Opens.map f.base).obj (imageBasicOpen f g U s) =
        (TopologicalSpace.Opens.map g.base).obj (imageBasicOpen f g U s)
      by injection this
    delta imageBasicOpen
    rw [preimage_basicOpen f, preimage_basicOpen g]
    dsimp only [Functor.op, unop_op]
    -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11224): change `rw` to `erw`
    erw [← CommRingCat.comp_apply, ← SheafedSpace.comp_c_app', ← CommRingCat.comp_apply,
      ← SheafedSpace.comp_c_app',
      SheafedSpace.congr_app (coequalizer.condition f.toShHom g.toShHom),
      CommRingCat.comp_apply, X.toRingedSpace.basicOpen_res]
    apply inf_eq_right.mpr
    refine (RingedSpace.basicOpen_le _ _).trans ?_
    rw [coequalizer.condition f.toShHom g.toShHom]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db7da682256d494c648bbe4712d21cc9a08a1a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
