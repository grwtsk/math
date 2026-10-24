# tensorObj₃'_ext

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
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaccf821-f959-e640-b64b-deb95e6bdd17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ee76fc4-2c67-54c9-5020-4b393ef9a9b7",
  "kind": "lemma",
  "lexical_name": "tensorObj₃'_ext",
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
  "slug": "tensorobj-ext--9542aa4068eb8e78401f60a4",
  "source": {
    "blob": "742620d27a1a5af1709435f1926b364252d8b1d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 268,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9542aa4068eb8e78401f60a40f88f22feb947346e3fc1419f7c7393198b2e508",
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

Occurrence: `result:4ee76fc4-2c67-54c9-5020-4b393ef9a9b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorObj₃'_ext {j : I} {A : C} (f g : tensorObj (tensorObj X₁ X₂) X₃ j ⟶ A)
    [H : HasGoodTensor₁₂Tensor X₁ X₂ X₃]
    (h : ∀ (i₁ i₂ i₃ : I) (h : i₁ + i₂ + i₃ = j),
      ιTensorObj₃' X₁ X₂ X₃ i₁ i₂ i₃ j h ≫ f = ιTensorObj₃' X₁ X₂ X₃ i₁ i₂ i₃ j h ≫ g) :
      f = g := by
  apply mapBifunctor₁₂BifunctorMapObj_ext (H := H)
  intro i₁ i₂ i₃ hi
  exact h i₁ i₂ i₃ hi

end

section
variable [HasTensor X₁ X₂] [HasTensor (tensorObj X₁ X₂) X₃] [HasTensor X₂ X₃]
  [HasTensor X₁ (tensorObj X₂ X₃)]

/-- The associator isomorphism for graded objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `742620d27a1a5af1709435f1926b364252d8b1d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
