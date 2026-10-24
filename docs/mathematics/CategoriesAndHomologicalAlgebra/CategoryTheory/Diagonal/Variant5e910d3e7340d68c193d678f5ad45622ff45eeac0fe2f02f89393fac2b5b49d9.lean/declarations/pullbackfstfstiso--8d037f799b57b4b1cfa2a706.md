# pullbackFstFstIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf635aac46d80b5497ecccda116fe758ab7dca557c0c18a15c3719f7e578ca32",
  "kind": "def",
  "lexical_name": "pullbackFstFstIso",
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
  "slug": "pullbackfstfstiso--8d037f799b57b4b1cfa2a706",
  "source": {
    "blob": "e78560e3ecbb14be88da63a0aa7fe3ee5dbc02c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 437,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d037f799b57b4b1cfa2a706a1e0455df84ed9c09a90c1d949d8b206eaf27339",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf635aac46d80b5497ecccda116fe758ab7dca557c0c18a15c3719f7e578ca32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackFstFstIso {X Y S X' Y' S' : C} (f : X ⟶ S) (g : Y ⟶ S) (f' : X' ⟶ S') (g' : Y' ⟶ S')
    (i₁ : X ⟶ X') (i₂ : Y ⟶ Y') (i₃ : S ⟶ S') (e₁ : f ≫ i₃ = i₁ ≫ f') (e₂ : g ≫ i₃ = i₂ ≫ g')
    [Mono i₃] :
    pullback (pullback.fst _ _ : pullback (pullback.fst _ _ : pullback f' g' ⟶ _) i₁ ⟶ _)
        (pullback.fst _ _ : pullback (pullback.snd _ _ : pullback f' g' ⟶ _) i₂ ⟶ _) ≅
      pullback f g where
  hom :=
    pullback.lift (pullback.fst _ _ ≫ pullback.snd _ _) (pullback.snd _ _ ≫ pullback.snd _ _)
      (by
        rw [← cancel_mono i₃, Category.assoc, Category.assoc, Category.assoc, Category.assoc, e₁,
          e₂, ← pullback.condition_assoc, pullback.condition_assoc, pullback.condition,
          pullback.condition_assoc])
  inv :=
    pullback.lift
      (pullback.lift (pullback.map _ _ _ _ _ _ _ e₁ e₂) (pullback.fst _ _) (pullback.lift_fst ..))
      (pullback.lift (pullback.map _ _ _ _ _ _ _ e₁ e₂) (pullback.snd _ _) (pullback.lift_snd ..))
      (by rw [pullback.lift_fst, pullback.lift_fst])
  hom_inv_id := by
    -- We could use `ext` here to immediately descend to the leaf goals,
    -- but it only obscures the structure.
    apply pullback.hom_ext
    · apply pullback.hom_ext
      · apply pullback.hom_ext
        · simp only [Category.assoc, lift_fst, lift_fst_assoc, Category.id_comp]
          rw [condition]
        · simp [Category.assoc, condition]
      · simp only [Category.assoc, lift_snd, lift_fst, Category.id_comp]
    · apply pullback.hom_ext
      · apply pullback.hom_ext
        · simp only [Category.assoc, lift_snd_assoc, lift_fst_assoc, lift_fst, Category.id_comp]
          rw [← condition_assoc, condition]
        · simp only [Category.assoc, lift_snd, lift_fst_assoc, lift_snd_assoc, Category.id_comp]
          rw [condition]
      · simp only [Category.assoc, lift_snd, Category.id_comp]
  inv_hom_id := by
    apply pullback.hom_ext
    · simp only [Category.assoc, lift_fst, lift_fst_assoc, lift_snd, Category.id_comp]
    · simp only [Category.assoc, lift_snd, lift_snd_assoc, Category.id_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e78560e3ecbb14be88da63a0aa7fe3ee5dbc02c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
