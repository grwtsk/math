# associator_inv_comp_tensorHom_tensorHom_comp

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
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16e09350-09a1-19fe-9814-62cfaf86f0ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a2121fc-f20c-84bd-561e-b8dbc9bb8007",
  "kind": "lemma",
  "lexical_name": "associator_inv_comp_tensorHom_tensorHom_comp",
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
  "slug": "associator-inv-comp-tensorhom-tensorhom-comp--cde4e40d7ea07758696887c3",
  "source": {
    "blob": "09f59b9bfeed7f51590c892d454bde3592a8e5f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cde4e40d7ea07758696887c3ddcb20440b7a7a2a1208695c96d89b18a8c4ea52",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a2121fc-f20c-84bd-561e-b8dbc9bb8007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma associator_inv_comp_tensorHom_tensorHom_comp (f : X₁ ⟶ X₂) (g : Y₁ ⟶ Y₂) (h : Z₁ ⟶ Z₂)
    (fg : X₂ ⊗ Y₂ ⟶ W) :
    (α_ X₁ Y₁ Z₁).inv ≫ (((f ⊗ₘ g) ≫ fg) ⊗ₘ h) =
      (f ⊗ₘ g ⊗ₘ h) ≫ (α_ X₂ Y₂ Z₂).inv ≫ (fg ⊗ₘ 𝟙 _) := by simp [tensorHom_def']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant9bc800c30efa6587a9e7075bd3d5aac2f3056f05596922ac6fc78d96b1fcdd48.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09f59b9bfeed7f51590c892d454bde3592a8e5f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
