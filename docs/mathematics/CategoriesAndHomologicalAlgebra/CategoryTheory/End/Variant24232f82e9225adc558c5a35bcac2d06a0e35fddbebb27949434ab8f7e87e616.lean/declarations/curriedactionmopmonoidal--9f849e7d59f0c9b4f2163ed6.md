# curriedActionMopMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e2ec12c20ac08aad96e25f3318115f926a53eacef6abb1c5b449dce9051e3b1",
  "kind": "instance",
  "lexical_name": "curriedActionMopMonoidal",
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
  "slug": "curriedactionmopmonoidal--9f849e7d59f0c9b4f2163ed6",
  "source": {
    "blob": "bafeb84db829117f0e1d0b2f06fc37ea1a987c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f849e7d59f0c9b4f2163ed6b149fb0a31c1c850e490656b1eb2a6422b35da0b",
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

Occurrence: `declaration:8e2ec12c20ac08aad96e25f3318115f926a53eacef6abb1c5b449dce9051e3b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance curriedActionMopMonoidal : (curriedActionMop C D).Monoidal where
  ε := .mop <| (actionUnitNatIso C D).inv
  μ _ _ := .mop <| { app _ := αₗ _ _ _ |>.inv }
  δ _ _ := .mop <| { app _ := αₗ _ _ _ |>.hom }
  η := .mop <| (actionUnitNatIso C D).hom
  associativity c₁ c₂ c₃ := by
    apply (mopEquiv (D ⥤ D)).fullyFaithfulInverse.map_injective
    ext d
    simpa [-associator_actionHom] using
      (IsIso.inv_eq_inv.mpr <| associator_actionHom c₁ c₂ c₃ d).symm =≫
        (α_ c₁ c₂ c₃).hom ⊵ₗ d
  oplax_right_unitality x := by
    apply MonoidalOpposite.hom_ext
    ext t
    simpa [-rightUnitor_actionHom] using
      (ρ_ x).inv ⊵ₗ t ≫= rightUnitor_actionHom x t
  oplax_left_unitality x := by
    apply MonoidalOpposite.hom_ext
    ext t
    simpa [-leftUnitor_actionHom] using
      (λ_ x).inv ⊵ₗ t ≫= leftUnitor_actionHom x t

end

variable {C D}

/-- A monoidal functor `F : C ⥤ (D ⥤ D)ᴹᵒᵖ` can be thought of as a left action
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafeb84db829117f0e1d0b2f06fc37ea1a987c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
