# mapBifunctorAssociatorX_hom_D₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4d8fc21-74f7-ee10-c02e-7c742d9cb83d",
  "kind": "lemma",
  "lexical_name": "mapBifunctorAssociatorX_hom_D₁",
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
  "slug": "mapbifunctorassociatorx-hom-d--3e7aad663be4983d56a699cc",
  "source": {
    "blob": "d687789630e582ba090589ea018f8d4637f82fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 759,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant98207433a8198a5e39f993b15d7b21d3c82ade6833ebeada8e3d708aed25c9a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e7aad663be4983d56a699ccf81a50c5d9454b47406b09b1991f2397f991b7d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant98207433a8198a5e39f993b15d7b21d3c82ade6833ebeada8e3d708aed25c9a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4d8fc21-74f7-ee10-c02e-7c742d9cb83d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 759–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorAssociatorX_hom_D₁ (j j' : ι₄) :
    (mapBifunctorAssociatorX associator K₁ K₂ K₃ c₁₂ c₂₃ c₄ j).hom ≫
      mapBifunctor₂₃.D₁ F G₂₃ K₁ K₂ K₃ c₂₃ c₄ j j' =
        mapBifunctor₁₂.D₁ F₁₂ G K₁ K₂ K₃ c₁₂ c₄ j j' ≫
        (mapBifunctorAssociatorX associator K₁ K₂ K₃ c₁₂ c₂₃ c₄ j').hom := by
  ext i₁ i₂ i₃ h
  rw [mapBifunctor₁₂.ι_D₁_assoc, ι_mapBifunctorAssociatorX_hom_assoc, mapBifunctor₂₃.ι_D₁]
  by_cases h₁ : c₁.Rel i₁ (c₁.next i₁)
  · have := NatTrans.naturality_app_app associator.hom
      (K₁.d i₁ (c₁.next i₁)) (K₂.X i₂) (K₃.X i₃)
    dsimp at this
    rw [mapBifunctor₁₂.d₁_eq _ _ _ _ _ _ _ h₁, mapBifunctor₂₃.d₁_eq _ _ _ _ _ _ _ _ h₁,
      Linear.comp_units_smul, Linear.units_smul_comp, assoc,
        ComplexShape.associative_ε₁_eq_mul c₁ c₂ c₃ c₁₂ c₂₃ c₄,
      ιOrZero_mapBifunctorAssociatorX_hom, smul_left_cancel_iff,
      reassoc_of% this]
  · rw [mapBifunctor₁₂.d₁_eq_zero _ _ _ _ _ _ _ _ _ _ _ h₁,
      mapBifunctor₂₃.d₁_eq_zero _ _ _ _ _ _ _ _ _ _ _ _ h₁, comp_zero, zero_comp]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant98207433a8198a5e39f993b15d7b21d3c82ade6833ebeada8e3d708aed25c9a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant98207433a8198a5e39f993b15d7b21d3c82ade6833ebeada8e3d708aed25c9a0.lean#L759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d687789630e582ba090589ea018f8d4637f82fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
