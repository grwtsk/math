# conjugateEquiv_associator_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c92e3d9f-2718-e516-799e-122f8f8b9a04",
  "kind": "lemma",
  "lexical_name": "conjugateEquiv_associator_hom",
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
  "slug": "conjugateequiv-associator-hom--b254c91d855e5fdd232ad418",
  "source": {
    "blob": "eccb12c8b39c52d8af43220632ae6c439ceff644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 519,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b254c91d855e5fdd232ad4187d1760d82b77d25ffa887a16a165a45b35400cb1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c92e3d9f-2718-e516-799e-122f8f8b9a04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma conjugateEquiv_associator_hom
    {a b c d : B} {l₁ : a ⟶ b} {r₁ : b ⟶ a} (adj₁ : l₁ ⊣ r₁)
    {l₂ : b ⟶ c} {r₂ : c ⟶ b} (adj₂ : l₂ ⊣ r₂)
    {l₃ : c ⟶ d} {r₃ : d ⟶ c} (adj₃ : l₃ ⊣ r₃) :
    conjugateEquiv (adj₁.comp (adj₂.comp adj₃))
      ((adj₁.comp adj₂).comp adj₃) (α_ _ _ _).hom = (α_ _ _ _).hom := by
  simp only [conjugateEquiv_apply, ← cancel_epi (ρ_ ((r₃ ≫ r₂) ≫ r₁)).hom, Iso.hom_inv_id_assoc,
    ← cancel_mono (λ_ (r₃ ≫ r₂ ≫ r₁)).inv, Category.assoc, Iso.hom_inv_id, Category.comp_id,
    mateEquiv_eq_iff, Adjunction.homEquiv₁_symm_apply, unitors_inv_equal, Adjunction.comp_unit,
    Adjunction.compUnit, whiskerRight_id, whiskerLeft_comp, whiskerLeft_rightUnitor,
    comp_whiskerLeft, Iso.inv_hom_id_assoc, whiskerLeft_inv_hom_assoc, Adjunction.homEquiv₂_apply,
    whiskerRight_comp, id_whiskerLeft, unitors_equal, comp_whiskerRight, leftUnitor_whiskerRight]
  bicategory

end conjugateEquiv

section ConjugateComposition
variable {c d : B}
variable {l₁ l₂ l₃ : c ⟶ d} {r₁ r₂ r₃ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : l₃ ⊣ r₃)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccb12c8b39c52d8af43220632ae6c439ceff644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
