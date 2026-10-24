# ιTensorObj₄_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d2b76a-f216-1d8a-6823-898d578134e4",
  "kind": "lemma",
  "lexical_name": "ιTensorObj₄_eq",
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
  "slug": "tensorobj-eq--a050ddd654e8614d1a5bce20",
  "source": {
    "blob": "83231dacb37e729a413e0cdb764525675abe1418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 372,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteb6e46ad6a2b52b197977327866a86028273033e594b5191c2722e59d89be622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a050ddd654e8614d1a5bce20848a6bce7312a06a54f5480a868ea234c015093a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteb6e46ad6a2b52b197977327866a86028273033e594b5191c2722e59d89be622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d2b76a-f216-1d8a-6823-898d578134e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιTensorObj₄_eq (i₁ i₂ i₃ i₄ j : I) (h : i₁ + i₂ + i₃ + i₄ = j) (i₂₃₄ : I)
    (hi : i₂ + i₃ + i₄ = i₂₃₄) :
    ιTensorObj₄ X₁ X₂ X₃ X₄ i₁ i₂ i₃ i₄ j h =
      (_ ◁ ιTensorObj₃ X₂ X₃ X₄ i₂ i₃ i₄ _ hi) ≫
        ιTensorObj X₁ (tensorObj X₂ (tensorObj X₃ X₄)) i₁ i₂₃₄ j
          (by rw [← hi, ← add_assoc, ← add_assoc, h]) := by
  subst hi
  rfl

/-- Given four graded objects, this is the condition
`HasLeftTensor₃ObjExt (X₁ i₁) X₂ X₃ X₄ i₂₃₄` for all indices `i₁` and `i₂₃₄`,
see the lemma `tensorObj₄_ext`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteb6e46ad6a2b52b197977327866a86028273033e594b5191c2722e59d89be622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteb6e46ad6a2b52b197977327866a86028273033e594b5191c2722e59d89be622.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83231dacb37e729a413e0cdb764525675abe1418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
