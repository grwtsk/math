# coequalizer_π_app_isLocalHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a3c44c17402bd16e7d4afa0a744d22de46cdd18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:555b39f3-fe61-06b9-f307-2cbbf08b05f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfd964d5-b2d6-3f39-5294-93c3858fd82b",
  "kind": "theorem",
  "lexical_name": "coequalizer_π_app_isLocalHom",
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
  "slug": "coequalizer-app-islocalhom--f7b00004ad6f652ec8c8f042",
  "source": {
    "blob": "0a3c44c17402bd16e7d4afa0a744d22de46cdd18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 133,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7b00004ad6f652ec8c8f04270fb20c71b4029704e8ad813787bb0e1ca49b364",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfd964d5-b2d6-3f39-5294-93c3858fd82b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coequalizer_π_app_isLocalHom
    (U : TopologicalSpace.Opens (coequalizer f.toShHom g.toShHom).carrier) :
    IsLocalHom ((coequalizer.π f.toShHom g.toShHom :).hom.c.app (op U)).hom := by
  have := ι_comp_coequalizerComparison f.toShHom g.toShHom SheafedSpace.forgetToPresheafedSpace
  dsimp at this
  rw [← PreservesCoequalizer.iso_hom] at this
  rw [← this, PresheafedSpace.comp_c_app,
    ← PresheafedSpace.colimitPresheafObjIsoComponentwiseLimit_hom_π]
  -- Porting note (https://github.com/leanprover-community/mathlib4/issues/10754): this instance has to be manually added
  have : IsIso (PreservesCoequalizer.iso
      SheafedSpace.forgetToPresheafedSpace f.toShHom g.toShHom).hom.c :=
    inferInstance
  apply +allowSynthFailures RingHom.isLocalHom_comp
  · apply +allowSynthFailures RingHom.isLocalHom_comp
    · apply CommRingCat.equalizer_ι_isLocalHom'
    · apply isLocalHom_of_isIso
  · apply isLocalHom_of_isIso

/-!
We roughly follow the construction given in [MR0302656]. Given a pair `f, g : X ⟶ Y` of morphisms
of locally ringed spaces, we want to show that the stalk map of
`π = coequalizer.π f g` (as sheafed space homs) is a local ring hom. It then follows that
`coequalizer f g` is indeed a locally ringed space, and `coequalizer.π f g` is a morphism of
locally ringed space.

Given a germ `⟨U, s⟩` of `x : coequalizer f g` such that `π꙳ x : Y` is invertible, we ought to show
that `⟨U, s⟩` is invertible. That is, there exists an open set `U' ⊆ U` containing `x` such that the
restriction of `s` onto `U'` is invertible. This `U'` is given by `π '' V`, where `V` is the
basic open set of `π⋆x`.

Since `f ⁻¹' V = Y.basic_open (f ≫ π)꙳ x = Y.basic_open (g ≫ π)꙳ x = g ⁻¹' V`, we have
`π ⁻¹' π '' V = V` (as the underlying set map is merely the set-theoretic coequalizer).
This shows that `π '' V` is indeed open, and `s` is invertible on `π '' V` as the components of `π꙳`
are local ring homs.
-/


variable (U : Opens (coequalizer f.toShHom g.toShHom).carrier)
variable (s : (coequalizer f.toShHom g.toShHom).presheaf.obj (op U))

/-- (Implementation). The basic open set of the section `π꙳ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3c44c17402bd16e7d4afa0a744d22de46cdd18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
