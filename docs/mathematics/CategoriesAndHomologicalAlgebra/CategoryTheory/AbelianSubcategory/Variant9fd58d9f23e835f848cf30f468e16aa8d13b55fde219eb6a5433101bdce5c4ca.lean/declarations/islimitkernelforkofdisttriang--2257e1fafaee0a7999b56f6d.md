# isLimitKernelForkOfDistTriang

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c410c9dd2329e525ee9b6c9b7a781eedcc10a478bd6f0e00447690a6254591ea",
  "kind": "def",
  "lexical_name": "isLimitKernelForkOfDistTriang",
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
  "slug": "islimitkernelforkofdisttriang--2257e1fafaee0a7999b56f6d",
  "source": {
    "blob": "98ec2691e33ab3154d4af5cd65977a06121160e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 229,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2257e1fafaee0a7999b56f6d8c044717451df76519e440f1e287b350771fb08c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c410c9dd2329e525ee9b6c9b7a781eedcc10a478bd6f0e00447690a6254591ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimitKernelForkOfDistTriang {X₁ X₂ X₃ : A}
    (f₁ : X₁ ⟶ X₂) (f₂ : X₂ ⟶ X₃) (f₃ : ι.obj X₃ ⟶ (ι.obj X₁)⟦(1 : ℤ)⟧)
    (hT : Triangle.mk (ι.map f₁) (ι.map f₂) f₃ ∈ distTriang C) :
    IsLimit (KernelFork.ofι f₁ (show f₁ ≫ f₂ = 0 from ι.map_injective (by
      have := comp_distTriang_mor_zero₁₂ _ hT
      dsimp at this
      cat_disch))) := by
  have hT' : Triangle.mk (𝟙 ((ι.obj X₁)⟦(1 : ℤ)⟧)) (0 : _ ⟶ ι.obj 0) 0 ∈ distTriang C := by
    refine isomorphic_distinguished _ (contractible_distinguished
      (((ι ⋙ shiftFunctor C (1 : ℤ)).obj X₁))) _ ?_
    exact Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _) (IsZero.iso (by
      dsimp
      rw [IsZero.iff_id_eq_zero, ← ι.map_id, id_zero, ι.map_zero]) (isZero_zero C))
  refine IsLimit.ofIsoLimit (AbelianSubcategory.isLimitKernelFork hι
    (rot_of_distTriang _ hT) hT') ?_
  exact Fork.ext (-(Iso.refl _)) ((ι ⋙ shiftFunctor C (1 : ℤ)).map_injective
    (by simp))

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `ι.obj X₁ ⟶ ι.obj X₂ ⟶ ι.obj X₃ ⟶ ...` is a distinguished triangle,
then `X₃` is a cokernel of `X₁ ⟶ X₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ec2691e33ab3154d4af5cd65977a06121160e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
