# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb365ca568f046f3f9255338830026e892cfa1af3ef0e462d7f92be56917da99",
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
  "slug": "instance--7b50ebdd2418d4c932d2d1fc",
  "source": {
    "blob": "716a3432f67658bf2d00077175e95d5e96182e71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variant8262379bd2b7e4ed505c93784f1df74decbc66f5979cd3d71a2883dfd4996826.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b50ebdd2418d4c932d2d1fcc2877df80d650ed834962c8f5985521a2d17528d",
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

Occurrence: `declaration:fb365ca568f046f3f9255338830026e892cfa1af3ef0e462d7f92be56917da99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (T : Type u') : MorphismProperty.IsStableUnderCoproductsOfShape
    (monomorphisms (Type u)) T :=
  IsStableUnderCoproductsOfShape.mk _ _ (by
    intro X₁ X₂ _ _ f h
    simp only [monomorphisms.iff, mono_iff_injective] at h ⊢
    intro x₁ x₂ hx
    obtain ⟨i₁, x₁, rfl⟩ := Cofan.inj_jointly_surjective_of_isColimit
      (coproductIsCoproduct X₁) x₁
    obtain ⟨i₂, x₂, rfl⟩ := Cofan.inj_jointly_surjective_of_isColimit
      (coproductIsCoproduct X₁) x₂
    simp only [cofan_mk_inj] at hx ⊢
    replace hx : Sigma.ι X₂ i₁ (f i₁ x₁) = Sigma.ι X₂ i₂ (f i₂ x₂) := by
      have h₁ := congr_hom (Sigma.ι_map f i₁) x₁
      have h₂ := congr_hom (Sigma.ι_map f i₂) x₂
      simp only [comp_apply] at h₁ h₂ hx
      simpa [← h₁, ← h₂]
    obtain rfl := Cofan.eq_of_inj_apply_eq_of_isColimit (coproductIsCoproduct X₂) _ _ hx
    obtain rfl := h _ (Cofan.inj_injective_of_isColimit (coproductIsCoproduct X₂) i₁ hx)
    rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variant8262379bd2b7e4ed505c93784f1df74decbc66f5979cd3d71a2883dfd4996826.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variant8262379bd2b7e4ed505c93784f1df74decbc66f5979cd3d71a2883dfd4996826.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `716a3432f67658bf2d00077175e95d5e96182e71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
