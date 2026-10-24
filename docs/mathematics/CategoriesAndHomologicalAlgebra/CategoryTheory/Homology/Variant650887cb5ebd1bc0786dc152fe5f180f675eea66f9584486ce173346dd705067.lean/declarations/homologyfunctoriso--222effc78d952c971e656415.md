# homologyFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4aa00f227d556bfedb05940df2ef2bf875214d1d22812615adc317158773c5b1",
  "kind": "def",
  "lexical_name": "homologyFunctorIso",
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
  "slug": "homologyfunctoriso--222effc78d952c971e656415",
  "source": {
    "blob": "240e58fdca7d553a768a8a718661ca2317d1623a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 351,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:222effc78d952c971e656415dd79ff240699e0e34d830de645fa630dc304c032",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4aa00f227d556bfedb05940df2ef2bf875214d1d22812615adc317158773c5b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homologyFunctorIso (i : ι) :
    homologyFunctor A c i ⋙ F ≅ F.mapHomologicalComplex c ⋙ homologyFunctor B c i :=
  NatIso.ofComponents (fun X => homologyIso F X i) (by
      intro X Y f
      dsimp
      rw [← Iso.inv_comp_eq, ← Category.assoc, ← Iso.eq_comp_inv]
      refine' coequalizer.hom_ext _
      dsimp [homologyIso]
      simp only [PreservesCokernel.iso_inv]
      dsimp [homology.map]
      simp only [← Category.assoc, cokernel.π_desc]
      simp only [Category.assoc, cokernelComparison_map_desc, cokernel.π_desc]
      simp only [π_comp_cokernelComparison, ← F.map_comp]
      erw [← kernelSubobjectIso_comp_kernel_map_assoc]
      simp only [HomologicalComplex.Hom.sqFrom_right, HomologicalComplex.Hom.sqFrom_left,
        F.mapHomologicalComplex_map_f, F.map_comp]
      dsimp [HomologicalComplex.dFrom, HomologicalComplex.Hom.next]
      rw [kernel_map_comp_preserves_kernel_iso_inv_assoc]
      conv_lhs => erw [← F.map_comp_assoc]
      rotate_right; simp
      rw [← kernel_map_comp_kernelSubobjectIso_inv]
      any_goals simp)
#align category_theory.functor.homology_functor_iso CategoryTheory.Functor.homologyFunctorIso

end CategoryTheory.Functor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240e58fdca7d553a768a8a718661ca2317d1623a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
