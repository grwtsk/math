# LeftExtension.IsKan.adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a825696bde85defec563135b1ea2ef5f3e600066ccaf62cd6afe58e5f5d0b29",
  "kind": "def",
  "lexical_name": "LeftExtension.IsKan.adjunction",
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
  "slug": "leftextension-iskan-adjunction--26f7fe49d936a9a84a3f3e4e",
  "source": {
    "blob": "e31bb968221f2c0d15705671e772c0607b9745cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26f7fe49d936a9a84a3f3e4edf5c3166765a1af056a4e427d795af7e35cf445f",
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

Occurrence: `declaration:3a825696bde85defec563135b1ea2ef5f3e600066ccaf62cd6afe58e5f5d0b29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeftExtension.IsKan.adjunction {f : a ⟶ b} {t : LeftExtension f (𝟙 a)}
    (H : IsKan t) (H' : IsKan (t.whisker f)) :
      f ⊣ t.extension :=
  let ε : t.extension ≫ f ⟶ 𝟙 b := H'.desc <| .mk _ <| (λ_ f).hom ≫ (ρ_ f).inv
  have Hε : leftZigzag t.unit ε = (λ_ f).hom ≫ (ρ_ f).inv := by
    simpa [leftZigzag, bicategoricalComp] using H'.fac <| .mk _ <| (λ_ f).hom ≫ (ρ_ f).inv
  { unit := t.unit
    counit := ε
    left_triangle := Hε
    right_triangle := by
      apply (cancel_epi (ρ_ _).inv).mp
      apply H.hom_ext
      calc _
        _ = 𝟙 _ ⊗≫ t.unit ⊗≫ f ◁ rightZigzag t.unit ε ⊗≫ 𝟙 _ := by
          bicategory
        _ = 𝟙 _ ⊗≫ (t.unit ▷ _ ≫ _ ◁ t.unit) ⊗≫ f ◁ ε ▷ t.extension ⊗≫ 𝟙 _ := by
          rw [rightZigzag]; bicategory
        _ = 𝟙 _ ⊗≫ t.unit ⊗≫ (t.unit ▷ f ⊗≫ f ◁ ε) ▷ t.extension ⊗≫ 𝟙 _ := by
          rw [← whisker_exchange]; bicategory
        _ = _ := by
          rw [← leftZigzag, Hε]; bicategory }

/-- For an adjuntion `f ⊣ u`, `u` is a left Kan extension of the identity along `f`.
The unit of this Kan extension is given by the unit of the adjunction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31bb968221f2c0d15705671e772c0607b9745cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
