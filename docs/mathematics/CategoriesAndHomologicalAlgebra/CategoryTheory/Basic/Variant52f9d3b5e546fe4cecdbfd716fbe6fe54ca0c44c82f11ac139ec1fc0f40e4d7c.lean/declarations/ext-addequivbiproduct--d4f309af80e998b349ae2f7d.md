# Ext.addEquivBiproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56d01e138a703bad7b71b745d84f97a70fbed5e022e9d2909dc47fd3e069dcaa",
  "kind": "def",
  "lexical_name": "Ext.addEquivBiproduct",
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
  "slug": "ext-addequivbiproduct--d4f309af80e998b349ae2f7d",
  "source": {
    "blob": "0333bc3c055d2e400c1b275f5c4aec9a2609c7ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 500,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4f309af80e998b349ae2f7d8323bb737fbb58c89c15fd248be30452c8ce8ebf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56d01e138a703bad7b71b745d84f97a70fbed5e022e9d2909dc47fd3e069dcaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Ext.addEquivBiproduct (X : C) {J : Type*} [Fintype J] {Y : J → C} {c : Bicone Y}
    (hc : c.IsBilimit) (n : ℕ) : Ext X c.pt n ≃+ Π i, Ext X (Y i) n where
  toFun e i := e.comp (Ext.mk₀ (c.π i)) (add_zero n)
  invFun e := ∑ (i : J), (e i).comp (Ext.mk₀ (c.ι i)) (add_zero n)
  left_inv _ := by
    simp only [comp_assoc_of_second_deg_zero, mk₀_comp_mk₀, ← Ext.comp_sum,
      ← Ext.mk₀_sum, IsBilimit.total hc, comp_mk₀_id]
  right_inv _ := by
    ext i
    simp only [Ext.sum_comp, comp_assoc_of_second_deg_zero, mk₀_comp_mk₀]
    rw [Finset.sum_eq_single i _ (by simp), bicone_ι_π_self, comp_mk₀_id]
    intro _ _ hij
    rw [c.ι_π, dite_eq_right hij, mk₀_zero, comp_zero]
  map_add' _ _ := by
    simp only [add_comp, Pi.add_def]

end biproduct

/-- `Ext` commutes with binary biproducts on the first variable. -/
@[simps apply_fst apply_snd, simps -isSimp symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0333bc3c055d2e400c1b275f5c4aec9a2609c7ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
