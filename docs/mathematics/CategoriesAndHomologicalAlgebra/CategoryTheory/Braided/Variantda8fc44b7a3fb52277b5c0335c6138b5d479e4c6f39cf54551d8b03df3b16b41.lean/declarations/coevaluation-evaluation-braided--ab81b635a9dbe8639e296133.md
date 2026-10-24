# coevaluation_evaluation_braided'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed98e92a-d0fc-914c-5c5d-3c18f96a2aab",
  "kind": "theorem",
  "lexical_name": "coevaluation_evaluation_braided'",
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
  "slug": "coevaluation-evaluation-braided--ab81b635a9dbe8639e296133",
  "source": {
    "blob": "28348e5eab67237e25bf142e991a4163d75e0c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 28,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab81b635a9dbe8639e2961332f1e759d781606eb9dd09ce15c8317af9d52ef40",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed98e92a-d0fc-914c-5c5d-3c18f96a2aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem coevaluation_evaluation_braided' [inst : ExactPairing X Y] :
    X ◁ (η_ X Y ≫ (β_ Y X).inv) ≫ (α_ X Y X).inv ≫ ((β_ X Y).hom ≫ ε_ X Y) ▷ X
      = (ρ_ X).hom ≫ (λ_ X).inv := by
  /- Rearrange into _ = 𝟙 _ -/
  rw [Iso.eq_comp_inv, ← Iso.inv_comp_eq_id]
  /- Whitney trick transcribed: https://mathoverflow.net/a/162729/493261 -/
  calc
    _ = 𝟙 X ⊗≫ X ◁ η_ X Y ⊗≫ (X ◁ (β_ Y X).inv ⊗≫ (β_ X Y).hom ▷ X) ⊗≫ ε_ X Y ▷ X ⊗≫ 𝟙 X := by
      monoidal
    _ = 𝟙 X ⊗≫ X ◁ η_ X Y ⊗≫ (𝟙 (X ⊗ X ⊗ Y) ⊗≫ (β_ X X).hom ▷ Y ⊗≫ X ◁ (β_ X Y).hom
          ⊗≫ (β_ Y X).inv ▷ X ⊗≫ Y ◁ (β_ X X).inv ⊗≫ 𝟙 ((Y ⊗ X) ⊗ X)) ⊗≫ ε_ X Y ▷ X ⊗≫ 𝟙 X := by
      congr 3
      simp only [monoidalComp, MonoidalCoherence.assoc'_iso, MonoidalCoherence.whiskerRight_iso,
        MonoidalCoherence.refl_iso, whiskerRightIso_refl, Iso.refl_trans, Iso.symm_hom,
        MonoidalCoherence.assoc_iso, Iso.trans_refl, comp_id, id_comp]
      rw [← IsIso.eq_inv_comp]
      repeat rw [← assoc]
      iterate 5 rw [← IsIso.comp_inv_eq]
      simpa using yang_baxter X Y X
    _ = 𝟙 X ⊗≫ (X ◁ η_ X Y ≫ (β_ X (X ⊗ Y)).hom) ⊗≫ ((β_ (Y ⊗ X) X).inv ≫ ε_ X Y ▷ X) ⊗≫ 𝟙 X := by
      simp [monoidalComp, braiding_tensor_right, braiding_inv_tensor_left]
    _ = _ := by
      rw [braiding_naturality_right, ← braiding_inv_naturality_right]
      simp [monoidalComp]

/-- evaluation_coevaluation' field of `ExactPairing Y X` in a braided category -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28348e5eab67237e25bf142e991a4163d75e0c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
