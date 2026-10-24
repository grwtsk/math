# mateEquiv_hcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e798396b-b928-c4f5-38b1-7cfb39b0c462",
  "kind": "theorem",
  "lexical_name": "mateEquiv_hcomp",
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
  "slug": "mateequiv-hcomp--499d98689f36c122bb93fb75",
  "source": {
    "blob": "d8983fbc15b0c685a03faf33bd9d03aab8e47e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:499d98689f36c122bb93fb7559350cd20109c5650bc3209cffcab18398c824cf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e798396b-b928-c4f5-38b1-7cfb39b0c462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mateEquiv_hcomp (α : TwoSquare G L₁ L₂ H) (β : TwoSquare H L₃ L₄ K) :
    (mateEquiv (adj₁.comp adj₃) (adj₂.comp adj₄)) (α ≫ᵥ β) =
      (mateEquiv adj₃ adj₄ β) ≫ₕ (mateEquiv adj₁ adj₂ α) := by
  unfold vComp hComp mateEquiv Adjunction.comp
  ext c
  dsimp
  simp only [comp_id, map_comp, id_comp, assoc]
  slice_rhs 2 4 =>
    rw [← R₂.map_comp, ← R₂.map_comp, ← assoc, ← unit_naturality (adj₄)]
  rw [R₂.map_comp, L₄.map_comp, R₄.map_comp, R₂.map_comp]
  slice_rhs 4 5 =>
    rw [← R₂.map_comp, ← R₄.map_comp, ← Functor.comp_map _ L₄ , β.naturality]
  simp only [comp_obj, Functor.comp_map, map_comp, assoc]

end mateEquivHComp

section mateEquivSquareComp

variable {A : Type u₁} {B : Type u₂} {C : Type u₃}
variable {D : Type u₄} {E : Type u₅} {F : Type u₆}
variable {X : Type u₇} {Y : Type u₈} {Z : Type u₉}
variable [Category.{v₁} A] [Category.{v₂} B] [Category.{v₃} C]
variable [Category.{v₄} D] [Category.{v₅} E] [Category.{v₆} F]
variable [Category.{v₇} X] [Category.{v₈} Y] [Category.{v₉} Z]
variable {G₁ : A ⥤ D} {H₁ : B ⥤ E} {K₁ : C ⥤ F} {G₂ : D ⥤ X} {H₂ : E ⥤ Y} {K₂ : F ⥤ Z}
variable {L₁ : A ⥤ B} {R₁ : B ⥤ A} {L₂ : B ⥤ C} {R₂ : C ⥤ B} {L₃ : D ⥤ E} {R₃ : E ⥤ D}
variable {L₄ : E ⥤ F} {R₄ : F ⥤ E} {L₅ : X ⥤ Y} {R₅ : Y ⥤ X} {L₆ : Y ⥤ Z} {R₆ : Z ⥤ Y}
variable (adj₁ : L₁ ⊣ R₁) (adj₂ : L₂ ⊣ R₂) (adj₃ : L₃ ⊣ R₃)
variable (adj₄ : L₄ ⊣ R₄) (adj₅ : L₅ ⊣ R₅) (adj₆ : L₆ ⊣ R₆)

/-- The mates equivalence commutes with composition of squares of squares. These results form the
basis for an isomorphism of double categories to be proven later.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8983fbc15b0c685a03faf33bd9d03aab8e47e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
