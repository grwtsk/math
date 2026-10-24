# curriedActionMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eb680de495518dd6869dacb039b96473163c23e9c66858b6049cb89bef4948e",
  "kind": "instance",
  "lexical_name": "curriedActionMonoidal",
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
  "slug": "curriedactionmonoidal--e5569b98aaf31ad1c07c3530",
  "source": {
    "blob": "bafeb84db829117f0e1d0b2f06fc37ea1a987c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5569b98aaf31ad1c07c35309ab1578ffd5caf0188b21cdb58590730d37fc2ac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5eb680de495518dd6869dacb039b96473163c23e9c66858b6049cb89bef4948e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance curriedActionMonoidal [MonoidalRightAction C D] :
    (curriedAction C D).Monoidal where
  ε := (actionUnitNatIso C D).inv
  μ _ _ := { app _ := αᵣ _ _ _ |>.inv }
  δ _ _ := { app _ := αᵣ _ _ _ |>.hom }
  η := (actionUnitNatIso C D).hom
  associativity c₁ c₂ c₃ := by
    ext d
    simpa [-actionHom_associator] using
      (IsIso.inv_eq_inv.mpr <| actionHom_associator c₁ c₂ c₃ d).symm =≫
        d ⊴ᵣ (α_ c₁ c₂ c₃).hom
  oplax_right_unitality x := by
    ext t
    simpa [-actionHom_rightUnitor] using
      t ⊴ᵣ (ρ_ x).inv ≫= actionHom_rightUnitor x t
  oplax_left_unitality x := by
    ext t
    simpa [-actionHom_leftUnitor] using
      t ⊴ᵣ (λ_ x).inv ≫= actionHom_leftUnitor x t

/-- A monoidal functor `F : C ⥤ D ⥤ D` can be thought of as a right action
of `C` on `D`. -/
@[simps!, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafeb84db829117f0e1d0b2f06fc37ea1a987c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
