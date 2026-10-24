# triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e6d6535-900a-5a47-4818-6b121d778f79",
  "kind": "lemma",
  "lexical_name": "triangle",
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
  "slug": "triangle--e08672e83eb44e7caf15204e",
  "source": {
    "blob": "e12a50064c14b5732e0b16f9822c2f608a3652eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 385,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e08672e83eb44e7caf15204eb339d1d0a2552ba8820d4445f4fa45184c4e7153",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e6d6535-900a-5a47-4818-6b121d778f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma triangle (X Y : LocalizedMonoidal L W ε) :
    (α_ X (𝟙_ _) Y).hom ≫ X ◁ (λ_ Y).hom = (ρ_ X).hom ▷ Y := by
  obtain ⟨X', ⟨e₁⟩⟩ : ∃ X₁, Nonempty ((L').obj X₁ ≅ X) := ⟨_, ⟨(L').objObjPreimageIso X⟩⟩
  obtain ⟨Y', ⟨e₂⟩⟩ : ∃ X₂, Nonempty ((L').obj X₂ ≅ Y) := ⟨_, ⟨(L').objObjPreimageIso Y⟩⟩
  have h₁ := (associator_hom_app L W ε X' (𝟙_ _) Y' =≫
    (𝟙 ((L').obj X') ⊗ (μ L W ε (𝟙_ C) Y').hom))
  simp only [assoc, id_tensorHom, ← whiskerLeft_comp,
    Iso.inv_hom_id, whiskerLeft_id, comp_id, Iso.inv_hom_id,
    ← cancel_mono (μ L W ε X' (𝟙_ C ⊗ Y')).hom] at h₁
  have h₂ := (ε' L W ε).hom ▷ (L').obj Y' ≫= leftUnitor_hom_app L W ε Y'
  simp only [← whiskerRight_comp_assoc, Iso.hom_inv_id, whiskerRight_id, id_comp] at h₂
  have h₃ := (((μ L W ε _ _).hom ⊗ 𝟙 _) ≫ (μ L W ε _ _).hom) ≫=
    ((L').congr_map (MonoidalCategory.triangle X' Y'))
  simp only [assoc, Functor.map_comp, ← reassoc_of% h₁] at h₃
  rw [← μ_natural_left, tensorHom_id, ← whiskerRight_comp_assoc,
    ← μ_natural_right, ← Iso.comp_inv_eq, assoc, assoc, assoc,
    Iso.hom_inv_id, comp_id, ← whiskerLeft_comp, ← h₂] at h₃
  replace h₃ := ((e₁.inv ⊗ ε.inv) ⊗ e₂.inv) ≫= (h₃ =≫ (_ ◁ e₂.hom)) =≫ (e₁.hom ▷ _)
  simp only [← whiskerLeft_comp, assoc, ← leftUnitor_naturality, ← whisker_exchange] at h₃
  have : _ = (α_ X (𝟙_ (LocalizedMonoidal L W ε)) Y).hom :=
    triangle_aux₁ _ _ _ e₁.symm ε.symm e₂.symm
  simp only [← this, Iso.symm_hom, Iso.symm_inv, assoc,
    ← id_tensorHom, ← tensor_comp, comp_id]
  convert h₃
  · exact triangle_aux₂ _ _ _ e₁ e₂
  · exact triangle_aux₃ _ _ _ e₁ e₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant44715280fc7ddd433b6c813cb41c44e337c555c334881c3bd4ad2a2b73982f4a.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e12a50064c14b5732e0b16f9822c2f608a3652eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
