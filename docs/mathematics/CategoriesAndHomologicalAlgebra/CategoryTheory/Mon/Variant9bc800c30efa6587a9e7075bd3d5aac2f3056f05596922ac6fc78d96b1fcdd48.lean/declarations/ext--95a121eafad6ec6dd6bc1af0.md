# ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09f59b9bfeed7f51590c892d454bde3592a8e5f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edd792dd-ff2f-f955-f596-c70c4821cf32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7156c4e-55d3-ac36-1801-681bac185d57",
  "kind": "theorem",
  "lexical_name": "ext",
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
  "slug": "ext--95a121eafad6ec6dd6bc1af0",
  "source": {
    "blob": "09f59b9bfeed7f51590c892d454bde3592a8e5f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95a121eafad6ec6dd6bc1af0284201a3325402e8fa7f4c797edfa0e8724bed24",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7156c4e-55d3-ac36-1801-681bac185d57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext {X : C} (h₁ h₂ : MonObj X) (H : h₁.mul = h₂.mul) : h₁ = h₂ := by
  suffices h₁.one = h₂.one by cases h₁; cases h₂; subst H this; rfl
  trans (λ_ _).inv ≫ (h₁.one ⊗ₘ h₂.one) ≫ h₁.mul
  · simp [tensorHom_def, H, ← unitors_equal]
  · simp [tensorHom_def']

end MonObj

open scoped MonObj

namespace Mathlib.Tactic.MonTauto
variable {C : Type u₁} [Category.{v₁} C] [MonoidalCategory C]
  {M W X X₁ X₂ Y Y₁ Y₂ Z Z₁ Z₂ : C} [MonObj M]

attribute [mon_tauto] Category.id_comp Category.comp_id Category.assoc
  id_tensorHom_id tensorμ tensorδ
  tensorHom_comp_tensorHom tensorHom_comp_tensorHom_assoc
  leftUnitor_tensor_hom leftUnitor_tensor_hom_assoc
  leftUnitor_tensor_inv leftUnitor_tensor_inv_assoc
  rightUnitor_tensor_hom rightUnitor_tensor_hom_assoc
  rightUnitor_tensor_inv rightUnitor_tensor_inv_assoc

attribute [mon_tauto ←] tensorHom_id id_tensorHom

@[reassoc (attr := mon_tauto)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09f59b9bfeed7f51590c892d454bde3592a8e5f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
