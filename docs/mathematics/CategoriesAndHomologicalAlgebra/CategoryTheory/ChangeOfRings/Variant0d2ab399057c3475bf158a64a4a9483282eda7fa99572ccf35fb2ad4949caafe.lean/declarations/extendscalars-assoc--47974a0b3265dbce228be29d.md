# extendScalars_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0065f89-0c8d-d55d-45e2-75946a8cb84d",
  "kind": "lemma",
  "lexical_name": "extendScalars_assoc",
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
  "slug": "extendscalars-assoc--47974a0b3265dbce228be29d",
  "source": {
    "blob": "e8bef8c81dcc7ccc6a83544e71dff8c6c491851a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1034,
    "line": 1016,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0d2ab399057c3475bf158a64a4a9483282eda7fa99572ccf35fb2ad4949caafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47974a0b3265dbce228be29dc0de6b528aeb8f2ebde980a00fb9f1a6656c4f70",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0d2ab399057c3475bf158a64a4a9483282eda7fa99572ccf35fb2ad4949caafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0065f89-0c8d-d55d-45e2-75946a8cb84d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1016–1034.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extendScalars_assoc :
    (extendScalarsComp (f₂₃.comp f₁₂) f₃₄).hom ≫
      Functor.whiskerRight (extendScalarsComp f₁₂ f₂₃).hom _ =
        (extendScalarsComp f₁₂ (f₃₄.comp f₂₃)).hom ≫
          Functor.whiskerLeft _ (extendScalarsComp f₂₃ f₃₄).hom ≫
            (Functor.associator _ _ _).inv := by
  ext M m
  have h₁ := extendScalarsComp_hom_app_one_tmul (f₂₃.comp f₁₂) f₃₄ M m
  have h₂ := extendScalarsComp_hom_app_one_tmul f₁₂ (f₃₄.comp f₂₃) M m
  have h₃ := extendScalarsComp_hom_app_one_tmul f₂₃ f₃₄
  have h₄ := extendScalarsComp_hom_app_one_tmul f₁₂ f₂₃ M m
  dsimp at h₁ h₂ h₃ h₄ ⊢
  rw [h₁]
  erw [h₂]
  rw [h₃, ExtendScalars.map_tmul, h₄]

/-- The associativity compatibility for the extension of scalars, in the exact form
that is needed in the definition `CommRingCat.moduleCatExtendScalarsPseudofunctor`
in the file `Mathlib/Algebra/Category/ModuleCat/Pseudofunctor.lean` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0d2ab399057c3475bf158a64a4a9483282eda7fa99572ccf35fb2ad4949caafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0d2ab399057c3475bf158a64a4a9483282eda7fa99572ccf35fb2ad4949caafe.lean#L1016).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8bef8c81dcc7ccc6a83544e71dff8c6c491851a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
