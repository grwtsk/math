# pentagon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "742620d27a1a5af1709435f1926b364252d8b1d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d60c0b2b-955b-986f-4dd3-79b620054b26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40c8486b-c57d-af98-2f4c-9c3d6deefd8b",
  "kind": "lemma",
  "lexical_name": "pentagon",
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
  "slug": "pentagon--1b4a1905bb3e557c138be15b",
  "source": {
    "blob": "742620d27a1a5af1709435f1926b364252d8b1d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 458,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b4a1905bb3e557c138be15b67476b07e274d6f0652917c95eca2c08eb03001f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40c8486b-c57d-af98-2f4c-9c3d6deefd8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pentagon : tensorHom (associator X₁ X₂ X₃).hom (𝟙 X₄) ≫
    (associator X₁ (tensorObj X₂ X₃) X₄).hom ≫ tensorHom (𝟙 X₁) (associator X₂ X₃ X₄).hom =
    (associator (tensorObj X₁ X₂) X₃ X₄).hom ≫ (associator X₁ X₂ (tensorObj X₃ X₄)).hom := by
  rw [← cancel_epi (associator (tensorObj X₁ X₂) X₃ X₄).inv,
    ← cancel_epi (associator X₁ X₂ (tensorObj X₃ X₄)).inv, Iso.inv_hom_id_assoc,
    Iso.inv_hom_id, ← pentagon_inv_assoc, ← tensor_comp_assoc, id_comp, Iso.inv_hom_id,
    tensor_id, id_comp, Iso.inv_hom_id_assoc, ← tensor_comp, id_comp, Iso.inv_hom_id,
    tensor_id]

end Pentagon

section TensorUnit

variable [DecidableEq I] [HasInitial C]

/-- The unit of the tensor product on graded objects is `(single₀ I).obj (𝟙_ C)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `742620d27a1a5af1709435f1926b364252d8b1d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
