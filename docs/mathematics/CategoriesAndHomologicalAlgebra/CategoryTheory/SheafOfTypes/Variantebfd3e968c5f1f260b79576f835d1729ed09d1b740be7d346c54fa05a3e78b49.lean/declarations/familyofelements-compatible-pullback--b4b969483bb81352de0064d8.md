# FamilyOfElements.Compatible.pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c974151d5bc1b2d9b9e8deaf62a471c7cf45100",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d7a485d-85c1-f26f-52b1-9e3228c21b13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba23215d-0f34-6414-ef33-c4c610986241",
  "kind": "theorem",
  "lexical_name": "FamilyOfElements.Compatible.pullback",
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
  "slug": "familyofelements-compatible-pullback--b4b969483bb81352de0064d8",
  "source": {
    "blob": "7c974151d5bc1b2d9b9e8deaf62a471c7cf45100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 333,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4b969483bb81352de0064d8327706aaaa639078e85e6b23414f740c89a6403e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba23215d-0f34-6414-ef33-c4c610986241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FamilyOfElements.Compatible.pullback (f : Y ⟶ X) {x : FamilyOfElements P S}
    (h : x.Compatible) : (x.pullback f).Compatible := by
  simp only [compatible_iff_sieveCompatible] at h ⊢
  intro W Z f₁ f₂ hf
  unfold FamilyOfElements.pullback
  rw [← h (f₁ ≫ f) f₂ hf]
  congr 1
  simp only [assoc]
#align category_theory.presieve.family_of_elements.compatible.pullback CategoryTheory.Presieve.FamilyOfElements.Compatible.pullback

end Pullback

/-- Given a morphism of presheaves `f : P ⟶ Q`, we can take a family of elements valued in `P` to a
family of elements valued in `Q` by composing with `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c974151d5bc1b2d9b9e8deaf62a471c7cf45100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
