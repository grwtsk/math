# Ext.biproductAddEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fc16f0d8717e03952926438523ace687ad44eb7acca12e09649fcb35797ef4f",
  "kind": "def",
  "lexical_name": "Ext.biproductAddEquiv",
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
  "slug": "ext-biproductaddequiv--60ae33b5295e3dc744600450",
  "source": {
    "blob": "28225e5c673e04760c1574fa2d084b83dfac8f62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 475,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant29ce1f37d45103df2925080eb5c152a0259fa24216b1cb47a8f446ed78a66d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60ae33b5295e3dc74460045060e321d4a7ecce0bafa3ad727e6ca33cc95cc97c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant29ce1f37d45103df2925080eb5c152a0259fa24216b1cb47a8f446ed78a66d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fc16f0d8717e03952926438523ace687ad44eb7acca12e09649fcb35797ef4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Ext.biproductAddEquiv {J : Type*} [Fintype J] {X : J → C} {c : Bicone X}
    (hc : c.IsBilimit) (Y : C) (n : ℕ) : Ext c.pt Y n ≃+ Π i, Ext (X i) Y n where
  toFun e i := (Ext.mk₀ (c.ι i)).comp e (zero_add n)
  invFun e := ∑ (i : J), (Ext.mk₀ (c.π i)).comp (e i) (zero_add n)
  left_inv x := by
    simp only [← comp_assoc_of_second_deg_zero, mk₀_comp_mk₀]
    rw [← Ext.sum_comp, ← Ext.mk₀_sum, IsBilimit.total hc, mk₀_id_comp]
  right_inv _ := by
    ext i
    simp only [Ext.comp_sum, ← comp_assoc_of_second_deg_zero, mk₀_comp_mk₀]
    rw [Finset.sum_eq_single i _ (by simp), bicone_ι_π_self, mk₀_id_comp]
    intro _ _ hij
    rw [c.ι_π, dite_eq_right hij.symm, mk₀_zero, zero_comp]
  map_add' _ _ := by
    simp only [comp_add, Pi.add_def]

/-- `Ext` commutes with biproducts in its second variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant29ce1f37d45103df2925080eb5c152a0259fa24216b1cb47a8f446ed78a66d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant29ce1f37d45103df2925080eb5c152a0259fa24216b1cb47a8f446ed78a66d9e.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28225e5c673e04760c1574fa2d084b83dfac8f62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
