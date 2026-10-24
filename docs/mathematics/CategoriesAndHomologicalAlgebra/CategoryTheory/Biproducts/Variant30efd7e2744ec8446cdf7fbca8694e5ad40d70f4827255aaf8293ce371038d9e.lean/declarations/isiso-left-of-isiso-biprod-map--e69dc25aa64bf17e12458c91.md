# isIso_left_of_isIso_biprod_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6d5c691-fdff-48bb-0ea4-b775b6c1bf9f",
  "kind": "theorem",
  "lexical_name": "isIso_left_of_isIso_biprod_map",
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
  "slug": "isiso-left-of-isiso-biprod-map--e69dc25aa64bf17e12458c91",
  "source": {
    "blob": "1ff216a06b1657299522dda1f7d92b28b2fa4ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2015,
    "line": 1994,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e69dc25aa64bf17e12458c910ae58a16443d17fb0bf185d9cf3f019f9bceb315",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6d5c691-fdff-48bb-0ea4-b775b6c1bf9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1994–2015.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem isIso_left_of_isIso_biprod_map {W X Y Z : C} (f : W ⟶ Y) (g : X ⟶ Z)
    [IsIso (biprod.map f g)] : IsIso f :=
  ⟨⟨biprod.inl ≫ inv (biprod.map f g) ≫ biprod.fst,
      ⟨by
        have t := congrArg (fun p : W ⊞ X ⟶ W ⊞ X => biprod.inl ≫ p ≫ biprod.fst)
          (IsIso.hom_inv_id (biprod.map f g))
        simp only [Category.id_comp, Category.assoc, biprod.inl_map_assoc] at t
        simp [t], by
        have t := congrArg (fun p : Y ⊞ Z ⟶ Y ⊞ Z => biprod.inl ≫ p ≫ biprod.fst)
          (IsIso.inv_hom_id (biprod.map f g))
        simp only [Category.id_comp, Category.assoc, biprod.map_fst] at t
        simp only [Category.assoc]
        simp [t]⟩⟩⟩
#align category_theory.is_iso_left_of_is_iso_biprod_map CategoryTheory.isIso_left_of_isIso_biprod_map

/-- If
```
(f 0)
(0 g)
```
is invertible, then `g` is invertible.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean#L1994).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff216a06b1657299522dda1f7d92b28b2fa4ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
