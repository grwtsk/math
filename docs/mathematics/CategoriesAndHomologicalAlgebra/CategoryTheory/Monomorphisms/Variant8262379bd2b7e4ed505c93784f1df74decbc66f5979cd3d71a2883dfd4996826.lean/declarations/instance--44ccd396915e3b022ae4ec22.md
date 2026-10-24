# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89aea3c0709d339d92a05e1569d4fd7c931e5c4593960ed9fc920a16fbc51d1c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--44ccd396915e3b022ae4ec22",
  "source": {
    "blob": "716a3432f67658bf2d00077175e95d5e96182e71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variant8262379bd2b7e4ed505c93784f1df74decbc66f5979cd3d71a2883dfd4996826.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44ccd396915e3b022ae4ec223dec3e8ac72fef29db45ca8e7c32a774eadf4369",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variant8262379bd2b7e4ed505c93784f1df74decbc66f5979cd3d71a2883dfd4996826.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89aea3c0709d339d92a05e1569d4fd7c931e5c4593960ed9fc920a16fbc51d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MorphismProperty.IsStableUnderFilteredColimits.{v', u'}
    (monomorphisms (Type u)) where
  isStableUnderColimitsOfShape J _ _ := ⟨fun F₁ F₂ c₁ c₂ hc₁ hc₂ f hf φ hφ ↦ by
    simp only [functorCategory, monomorphisms.iff, mono_iff_injective] at hf ⊢
    replace hφ (j : J) := congr_hom (hφ j)
    simp only [Functor.const_obj_obj, comp_apply] at hφ
    intro x₁ y₁ h
    obtain ⟨j, x₁, y₁, rfl, rfl⟩ : ∃ (j : J) (x₁' y₁' : F₁.obj j),
        x₁ = c₁.ι.app j x₁' ∧ y₁ = c₁.ι.app j y₁' := by
      obtain ⟨j, x₁, rfl⟩ := Types.jointly_surjective_of_isColimit hc₁ x₁
      obtain ⟨l, y₁, rfl⟩ := Types.jointly_surjective_of_isColimit hc₁ y₁
      exact ⟨_,  _, _, congr_hom (c₁.w (IsFiltered.leftToMax j l)).symm _,
        congr_hom (c₁.w (IsFiltered.rightToMax j l)).symm _⟩
    simp only [Functor.const_obj_obj, hφ] at h
    obtain ⟨k, α, hk⟩ := (Types.FilteredColimit.isColimit_eq_iff' hc₂ _ _).1 h
    simp only [← NatTrans.naturality_apply] at hk
    rw [← c₁.w α, comp_apply, comp_apply, hf _ hk]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variant8262379bd2b7e4ed505c93784f1df74decbc66f5979cd3d71a2883dfd4996826.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variant8262379bd2b7e4ed505c93784f1df74decbc66f5979cd3d71a2883dfd4996826.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `716a3432f67658bf2d00077175e95d5e96182e71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
