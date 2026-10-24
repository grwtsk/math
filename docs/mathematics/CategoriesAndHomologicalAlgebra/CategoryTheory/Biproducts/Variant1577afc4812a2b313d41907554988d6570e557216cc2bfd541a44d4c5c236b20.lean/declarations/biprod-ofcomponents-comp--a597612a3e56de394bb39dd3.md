# Biprod.ofComponents_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5de665e-01e1-ea0d-9b64-2794b8aa8a47",
  "kind": "theorem",
  "lexical_name": "Biprod.ofComponents_comp",
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
  "slug": "biprod-ofcomponents-comp--a597612a3e56de394bb39dd3",
  "source": {
    "blob": "c6b3d98779a650aac31b033d2178498e51fa9481",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 725,
    "line": 706,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a597612a3e56de394bb39dd3f9542fdf3f192be3225274dff809d5ec81c3d120",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5de665e-01e1-ea0d-9b64-2794b8aa8a47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–725.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem Biprod.ofComponents_comp {X₁ X₂ Y₁ Y₂ Z₁ Z₂ : C} (f₁₁ : X₁ ⟶ Y₁) (f₁₂ : X₁ ⟶ Y₂)
    (f₂₁ : X₂ ⟶ Y₁) (f₂₂ : X₂ ⟶ Y₂) (g₁₁ : Y₁ ⟶ Z₁) (g₁₂ : Y₁ ⟶ Z₂) (g₂₁ : Y₂ ⟶ Z₁)
    (g₂₂ : Y₂ ⟶ Z₂) :
    Biprod.ofComponents f₁₁ f₁₂ f₂₁ f₂₂ ≫ Biprod.ofComponents g₁₁ g₁₂ g₂₁ g₂₂ =
      Biprod.ofComponents (f₁₁ ≫ g₁₁ + f₁₂ ≫ g₂₁) (f₁₁ ≫ g₁₂ + f₁₂ ≫ g₂₂) (f₂₁ ≫ g₁₁ + f₂₂ ≫ g₂₁)
        (f₂₁ ≫ g₁₂ + f₂₂ ≫ g₂₂) := by
  dsimp [Biprod.ofComponents]
  ext <;>
    simp only [add_comp, comp_add, add_comp_assoc, add_zero, zero_add, biprod.inl_fst,
      biprod.inl_snd, biprod.inr_fst, biprod.inr_snd, biprod.inl_fst_assoc, biprod.inl_snd_assoc,
      biprod.inr_fst_assoc, biprod.inr_snd_assoc, comp_zero, zero_comp, Category.assoc]

/-- The unipotent upper triangular matrix
```
(1 r)
(0 1)
```
as an isomorphism.
-/
@[simps]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6b3d98779a650aac31b033d2178498e51fa9481` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
