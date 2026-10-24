# Ext.addEquivBiprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50678e9910f4a8f70688cd80d92997053813fcb183ce8d943388fcf1aa55756b",
  "kind": "def",
  "lexical_name": "Ext.addEquivBiprod",
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
  "slug": "ext-addequivbiprod--b3789631121d294a65f5dbc8",
  "source": {
    "blob": "0333bc3c055d2e400c1b275f5c4aec9a2609c7ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 531,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3789631121d294a65f5dbc846c4e20e32fe51f9b5f8bff62bd2ed016d1b0d5c",
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

Occurrence: `declaration:50678e9910f4a8f70688cd80d92997053813fcb183ce8d943388fcf1aa55756b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Ext.addEquivBiprod {X : C} {Y₁ Y₂ : C} {n : ℕ} :
    Ext X (Y₁ ⊞ Y₂) n ≃+ Ext X Y₁ n × Ext X Y₂ n where
  toFun e := ⟨e.comp (mk₀ biprod.fst) (add_zero n), e.comp (mk₀ biprod.snd) (add_zero n)⟩
  invFun e := e.1.comp (mk₀ biprod.inl) (add_zero n) + e.2.comp (mk₀ biprod.inr) (add_zero n)
  left_inv e := by
    simp only [comp_assoc_of_second_deg_zero, mk₀_comp_mk₀, ← comp_add, ← mk₀_add,
      biprod.total, comp_mk₀_id]
  right_inv _ := by simp
  map_add' := by simp

section ChangeOfUniverse

namespace Ext

variable [HasExt.{w'} C] {X Y : C} {n : ℕ}

/-- Up to an equivalence, the type `Ext.{w} X Y n` does not depend on the universe `w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0333bc3c055d2e400c1b275f5c4aec9a2609c7ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
