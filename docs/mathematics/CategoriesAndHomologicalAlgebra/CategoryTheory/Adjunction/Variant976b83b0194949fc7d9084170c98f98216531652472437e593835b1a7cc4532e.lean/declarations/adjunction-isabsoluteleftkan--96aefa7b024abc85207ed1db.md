# Adjunction.isAbsoluteLeftKan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a7368399f93b698989233845c791176ab2070b246fa70e7eec54b7c178eb857",
  "kind": "def",
  "lexical_name": "Adjunction.isAbsoluteLeftKan",
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
  "slug": "adjunction-isabsoluteleftkan--96aefa7b024abc85207ed1db",
  "source": {
    "blob": "e31bb968221f2c0d15705671e772c0607b9745cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96aefa7b024abc85207ed1db439ba66542b791cc7924d44feb92561241c3a7c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a7368399f93b698989233845c791176ab2070b246fa70e7eec54b7c178eb857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Adjunction.isAbsoluteLeftKan {f : a ⟶ b} {u : b ⟶ a} (adj : f ⊣ u) :
    IsAbsKan (.mk u adj.unit) := fun {x} h ↦
  .mk (fun s  ↦ LeftExtension.homMk
    (𝟙 _ ⊗≫ u ◁ s.unit ⊗≫ adj.counit ▷ s.extension ⊗≫ 𝟙 _ : u ≫ h ⟶ s.extension) <|
      calc _
        _ = 𝟙 _ ⊗≫ (adj.unit ▷ _ ≫ _ ◁ s.unit) ⊗≫ f ◁ adj.counit ▷ s.extension ⊗≫ 𝟙 _ := by
          dsimp only [whisker_extension, StructuredArrow.mk_right, whisker_unit,
            StructuredArrow.mk_hom_eq_self]
          bicategory
        _ = 𝟙 _ ⊗≫ s.unit ⊗≫ leftZigzag adj.unit adj.counit ▷ s.extension ⊗≫ 𝟙 _ := by
          rw [← whisker_exchange]; bicategory
        _ = s.unit := by
          rw [adj.left_triangle]; bicategory) <| by
    intro s τ₀
    ext
    /- We need to specify the type of `τ` to use the notation `⊗≫`. -/
    let τ : u ≫ h ⟶ s.extension := τ₀.right
    have hτ : adj.unit ▷ h ⊗≫ f ◁ τ = s.unit := by
      simpa [bicategoricalComp] using LeftExtension.w τ₀
    calc τ
      _ = 𝟙 _ ⊗≫ rightZigzag adj.unit adj.counit ▷ h ⊗≫ τ ⊗≫ 𝟙 _ := by
        rw [adj.right_triangle]; bicategory
      _ = 𝟙 _ ⊗≫ u ◁ adj.unit ▷ h ⊗≫ (adj.counit ▷ _ ≫ _ ◁ τ) ⊗≫ 𝟙 _ := by
        rw [rightZigzag]; bicategory
      _ = 𝟙 _ ⊗≫ u ◁ (adj.unit ▷ h ⊗≫ f ◁ τ) ⊗≫ adj.counit ▷ s.extension ⊗≫ 𝟙 _ := by
        rw [← whisker_exchange]; bicategory
      _ = _ := by
        rw [hτ]; dsimp only [StructuredArrow.homMk_right]

/-- A left Kan extension of the identity along `f` such that `f` commutes with is a right adjoint
to `f`. The unit of this adjoint is given by the unit of the Kan extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31bb968221f2c0d15705671e772c0607b9745cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
