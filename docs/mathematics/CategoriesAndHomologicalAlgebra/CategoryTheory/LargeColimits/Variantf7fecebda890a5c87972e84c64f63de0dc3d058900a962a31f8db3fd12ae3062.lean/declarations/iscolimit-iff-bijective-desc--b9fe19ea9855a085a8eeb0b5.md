# isColimit_iff_bijective_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a600b33-4eed-f348-bb53-9eba63524456",
  "kind": "lemma",
  "lexical_name": "isColimit_iff_bijective_desc",
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
  "slug": "iscolimit-iff-bijective-desc--b9fe19ea9855a085a8eeb0b5",
  "source": {
    "blob": "d38452c0161d7654694c4a11f719a6cce1869d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 47,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Variantf7fecebda890a5c87972e84c64f63de0dc3d058900a962a31f8db3fd12ae3062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9fe19ea9855a085a8eeb0b56c9fe0bfe92e3d748a249613ff1ea6d4c841a669",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Variantf7fecebda890a5c87972e84c64f63de0dc3d058900a962a31f8db3fd12ae3062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a600b33-4eed-f348-bb53-9eba63524456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isColimit_iff_bijective_desc [DecidableEq J] :
     Nonempty (IsColimit c) ↔ Function.Bijective (Quot.desc F c) := by
  refine ⟨fun ⟨hc⟩ => ?_, fun h ↦ Nonempty.intro (isColimit_of_bijective_desc F c h)⟩
  change Function.Bijective (Quot.desc F c).toIntLinearMap
  rw [← CharacterModule.dual_bijective_iff_bijective]
  refine ⟨fun χ ψ eq ↦ ?_, fun χ ↦ ?_⟩
  · apply AddEquiv.ulift.symm.addMonoidHomCongrRightEquiv.injective
    apply ofHom_injective
    refine hc.hom_ext (fun j ↦ ?_)
    ext x
    erw [ConcreteCategory.comp_apply, ConcreteCategory.comp_apply, ← Quot.ι_desc _ c j x]
    exact DFunLike.congr_fun eq (Quot.ι F j x)
  · set c' : Cocone F :=
      { pt := ↧(ULift (AddCircle (1 : ℚ)))
        ι :=
          { app j := AddCommGrpCat.ofHom (((@AddEquiv.ulift _ _).symm.toAddMonoidHom.comp χ).comp
                       (Quot.ι F j))
            naturality {j j'} u := by
              ext
              dsimp
              rw [Quot.map_ι F (f := u)] } }
    use AddEquiv.ulift.toAddMonoidHom.comp (hc.desc c').hom
    refine Quot.addMonoidHom_ext _ (fun j x ↦ ?_)
    dsimp
    rw [Quot.ι_desc]
    change AddEquiv.ulift ((c.ι.app j ≫ hc.desc c') x) = _
    rw [hc.fac]
    dsimp [c']
    rw [AddEquiv.apply_symm_apply]

/--
A functor `F : J ⥤ AddCommGrpCat.{w}` has a colimit if and only if `Colimits.Quot F` is
`w`-small.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Variantf7fecebda890a5c87972e84c64f63de0dc3d058900a962a31f8db3fd12ae3062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Variantf7fecebda890a5c87972e84c64f63de0dc3d058900a962a31f8db3fd12ae3062.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38452c0161d7654694c4a11f719a6cce1869d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
