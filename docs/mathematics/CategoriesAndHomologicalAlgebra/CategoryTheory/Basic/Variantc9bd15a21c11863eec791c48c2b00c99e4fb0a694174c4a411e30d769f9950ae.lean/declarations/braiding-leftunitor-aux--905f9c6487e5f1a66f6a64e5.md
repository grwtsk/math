# braiding_leftUnitor_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8bcffdc-61a7-0325-687a-63a2a7e9f238",
  "kind": "theorem",
  "lexical_name": "braiding_leftUnitor_aux₂",
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
  "slug": "braiding-leftunitor-aux--905f9c6487e5f1a66f6a64e5",
  "source": {
    "blob": "9c51dc420e2fde22614285fbab50ce82d1fb4c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 292,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9bd15a21c11863eec791c48c2b00c99e4fb0a694174c4a411e30d769f9950ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:905f9c6487e5f1a66f6a64e5633bf611efb8e97c69d8154733bfdfa433e1b539",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9bd15a21c11863eec791c48c2b00c99e4fb0a694174c4a411e30d769f9950ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8bcffdc-61a7-0325-687a-63a2a7e9f238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem braiding_leftUnitor_aux₂ (X : C) :
    ((β_ X (𝟙_ C)).hom ▷ 𝟙_ C) ≫ ((λ_ X).hom ▷ 𝟙_ C) = (ρ_ X).hom ▷ 𝟙_ C :=
  calc
    ((β_ X (𝟙_ C)).hom ▷ 𝟙_ C) ≫ ((λ_ X).hom ▷ 𝟙_ C) =
      ((β_ X (𝟙_ C)).hom ▷ 𝟙_ C) ≫ (α_ _ _ _).hom ≫ (α_ _ _ _).inv ≫ ((λ_ X).hom ▷ 𝟙_ C) := by
      simp
    _ = ((β_ X (𝟙_ C)).hom ▷ 𝟙_ C) ≫ (α_ _ _ _).hom ≫ (_ ◁ (β_ X _).hom) ≫
          (_ ◁ (β_ X _).inv) ≫ (α_ _ _ _).inv ≫ ((λ_ X).hom ▷ 𝟙_ C) := by simp
    _ = (α_ _ _ _).hom ≫ (β_ _ _).hom ≫ (α_ _ _ _).hom ≫ (_ ◁ (β_ X _).inv) ≫ (α_ _ _ _).inv ≫
          ((λ_ X).hom ▷ 𝟙_ C) := by simp
    _ = (α_ _ _ _).hom ≫ (β_ _ _).hom ≫ ((λ_ _).hom ▷ X) ≫ (β_ X _).inv := by
      rw [braiding_leftUnitor_aux₁]
    _ = (α_ _ _ _).hom ≫ (_ ◁ (λ_ _).hom) ≫ (β_ _ _).hom ≫ (β_ X _).inv := by
      (slice_lhs 2 3 => rw [← braiding_naturality_right]); simp only [assoc]
    _ = (α_ _ _ _).hom ≫ (_ ◁ (λ_ _).hom) := by rw [Iso.hom_inv_id, comp_id]
    _ = (ρ_ X).hom ▷ 𝟙_ C := by rw [triangle]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9bd15a21c11863eec791c48c2b00c99e4fb0a694174c4a411e30d769f9950ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9bd15a21c11863eec791c48c2b00c99e4fb0a694174c4a411e30d769f9950ae.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c51dc420e2fde22614285fbab50ce82d1fb4c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
