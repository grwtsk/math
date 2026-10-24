# composeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e6474092999c02600e13774b90f97fe6b72914b1604d933c708b1435fcb2e9c",
  "kind": "def",
  "lexical_name": "composeEquiv",
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
  "slug": "composeequiv--3af6f267d9c3d6e1b11b45c5",
  "source": {
    "blob": "db6baaf90d080e99c82890c3a64ff48bd5f2a8d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3af6f267d9c3d6e1b11b45c57c8b9d4615177c16851e6b4e6149dd465ff76c84",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e6474092999c02600e13774b90f97fe6b72914b1604d933c708b1435fcb2e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def composeEquiv (adj : G ⊣ F) (X : Sheaf J E) (Y : Sheaf J D) :
    ((composeAndSheafify J G).obj X ⟶ Y) ≃ (X ⟶ (sheafCompose J F).obj Y) :=
  let A := adj.whiskerRight Cᵒᵖ
  { toFun := fun η => ⟨A.homEquiv _ _ (J.toSheafify _ ≫ η.val)⟩
    invFun := fun γ => ⟨J.sheafifyLift ((A.homEquiv _ _).symm ((sheafToPresheaf _ _).map γ)) Y.2⟩
    left_inv := by
      intro η
      ext1
      dsimp
      symm
      apply J.sheafifyLift_unique
      rw [Equiv.symm_apply_apply]
    right_inv := by
      intro γ
      ext1
      dsimp
      rw [J.toSheafify_sheafifyLift, Equiv.apply_symm_apply] }
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.compose_equiv CategoryTheory.Sheaf.composeEquiv

/-- An adjunction `adj : G ⊣ F` with `F : D ⥤ E` and `G : E ⥤ D` induces an adjunction
between `Sheaf J D` and `Sheaf J E`, in contexts where one can sheafify `D`-valued presheaves,
and `F` preserves the correct limits. -/
@[simps! unit_app_val counit_app_val]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6baaf90d080e99c82890c3a64ff48bd5f2a8d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
