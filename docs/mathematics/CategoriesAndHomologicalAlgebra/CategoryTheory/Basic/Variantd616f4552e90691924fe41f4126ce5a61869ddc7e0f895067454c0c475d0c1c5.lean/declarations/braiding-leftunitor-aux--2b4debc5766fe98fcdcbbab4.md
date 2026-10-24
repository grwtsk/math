# braiding_leftUnitor_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c766acf17579a146303021d1881a8c5ff462ae5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1304a980-9336-bde2-443b-d05f0d3e6d07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3987991-d9f1-aa00-ba65-b61a6dc636c3",
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
  "slug": "braiding-leftunitor-aux--2b4debc5766fe98fcdcbbab4",
  "source": {
    "blob": "c766acf17579a146303021d1881a8c5ff462ae5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 284,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b4debc5766fe98fcdcbbab4fc488b0d93c06157451ce56478bcbbdf51906f3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3987991-d9f1-aa00-ba65-b61a6dc636c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–301.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd616f4552e90691924fe41f4126ce5a61869ddc7e0f895067454c0c475d0c1c5.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c766acf17579a146303021d1881a8c5ff462ae5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
