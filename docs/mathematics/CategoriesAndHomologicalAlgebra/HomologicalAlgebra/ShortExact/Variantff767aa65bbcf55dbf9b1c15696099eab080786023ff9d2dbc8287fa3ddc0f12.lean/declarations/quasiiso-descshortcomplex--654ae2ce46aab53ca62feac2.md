# quasiIso_descShortComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc2a73f7-9ce3-b0c9-e50e-095e6a3f0451",
  "kind": "lemma",
  "lexical_name": "quasiIso_descShortComplex",
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
  "slug": "quasiiso-descshortcomplex--654ae2ce46aab53ca62feac2",
  "source": {
    "blob": "140d3b80fdc3b90e81363f353554a4c67fc22d8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654ae2ce46aab53ca62feac2b5c33337a6a5f9b4e45e8ecbf2be07c4767a67af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc2a73f7-9ce3-b0c9-e50e-095e6a3f0451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_descShortComplex : QuasiIso (descShortComplex S) where
  quasiIsoAt n := by
    rw [quasiIsoAt_iff_isIso_homologyMap]
    let φ : ((homologyFunctor C (up ℤ) 0).homologySequenceComposableArrows₅
        (triangleh S.f) n _ rfl).δlast ⟶ (composableArrows₅ hS n _ rfl).δlast :=
      homMk₄ ((homologyFunctorFactors C (up ℤ) _).hom.app _)
        ((homologyFunctorFactors C (up ℤ) _).hom.app _)
        ((homologyFunctorFactors C (up ℤ) _).hom.app _ ≫
          HomologicalComplex.homologyMap (descShortComplex S) n)
        ((homologyFunctorFactors C (up ℤ) _).hom.app _)
        ((homologyFunctorFactors C (up ℤ) _).hom.app _)
        ((homologyFunctorFactors C (up ℤ) _).hom.naturality S.f)
        (by
          erw [(homologyFunctorFactors C (up ℤ) n).hom.naturality_assoc]
          dsimp
          rw [← HomologicalComplex.homologyMap_comp, inr_descShortComplex])
        (by
          dsimp
          erw [homologySequenceδ_triangleh hS]
          simp only [Functor.comp_obj, HomologicalComplex.homologyFunctor_obj, assoc,
            Iso.inv_hom_id_app, comp_id])
        ((homologyFunctorFactors C (up ℤ) _).hom.naturality S.f)
    have : IsIso ((homologyFunctorFactors C (up ℤ) n).hom.app (mappingCone S.f) ≫
        HomologicalComplex.homologyMap (descShortComplex S) n) := by
      apply Abelian.isIso_of_epi_of_isIso_of_isIso_of_mono
        ((homologyFunctor C (up ℤ) 0).homologySequenceComposableArrows₅_exact _
          (mappingCone_triangleh_distinguished S.f) n _ rfl).δlast
        (composableArrows₅_exact hS n _ rfl).δlast φ
      all_goals dsimp [φ]; infer_instance
    apply IsIso.of_isIso_comp_left ((homologyFunctorFactors C (up ℤ) n).hom.app (mappingCone S.f))

end mappingCone

end CochainComplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `140d3b80fdc3b90e81363f353554a4c67fc22d8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
