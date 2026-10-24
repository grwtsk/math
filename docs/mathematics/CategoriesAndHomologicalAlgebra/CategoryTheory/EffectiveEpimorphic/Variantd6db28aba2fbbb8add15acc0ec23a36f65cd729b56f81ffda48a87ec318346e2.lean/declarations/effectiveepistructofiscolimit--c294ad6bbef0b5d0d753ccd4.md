# effectiveEpiStructOfIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ba4e3a8c446b567598a0836ee4188c0f4c498295a2c35e09ab295a6c0e007e5",
  "kind": "def",
  "lexical_name": "effectiveEpiStructOfIsColimit",
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
  "slug": "effectiveepistructofiscolimit--c294ad6bbef0b5d0d753ccd4",
  "source": {
    "blob": "82d299e2123de55049075ce472bd145a0a8e7334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c294ad6bbef0b5d0d753ccd4044aa0ac2b777434efceb66e6e41f25cf36e71a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ba4e3a8c446b567598a0836ee4188c0f4c498295a2c35e09ab295a6c0e007e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiStructOfIsColimit {X Y : C} (f : Y ⟶ X)
    (Hf : IsColimit (Sieve.generateSingleton f : Presieve X).cocone) :
    EffectiveEpiStruct f :=
  let aux {W : C} (e : Y ⟶ W)
    (h : ∀ {Z : C} (g₁ g₂ : Z ⟶ Y), g₁ ≫ f = g₂ ≫ f → g₁ ≫ e = g₂ ≫ e) :
    Cocone (Sieve.generateSingleton f).arrows.diagram :=
    { pt := W
      ι := {
        app := fun ⟨T,hT⟩ => hT.choose ≫ e
        naturality := by
          rintro ⟨A,hA⟩ ⟨B,hB⟩ (q : A ⟶ B)
          dsimp; simp only [← Category.assoc, Category.comp_id]
          apply h
          rw [Category.assoc, hB.choose_spec, hA.choose_spec, Over.w] } }
  { desc := fun {W} e h => Hf.desc (aux e h)
    fac := by
      intro W e h
      dsimp
      have := Hf.fac (aux e h) ⟨Over.mk f, 𝟙 _, by simp⟩
      dsimp at this; rw [this]; clear this
      nth_rewrite 2 [← Category.id_comp e]
      apply h
      generalize_proofs hh
      rw [hh.choose_spec, Category.id_comp]
    uniq := by
      intro W e h m hm
      dsimp
      apply Hf.uniq (aux e h)
      rintro ⟨A,g,hA⟩
      dsimp
      nth_rewrite 1 [← hA, Category.assoc, hm]
      apply h
      generalize_proofs hh
      rwa [hh.choose_spec] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d299e2123de55049075ce472bd145a0a8e7334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
