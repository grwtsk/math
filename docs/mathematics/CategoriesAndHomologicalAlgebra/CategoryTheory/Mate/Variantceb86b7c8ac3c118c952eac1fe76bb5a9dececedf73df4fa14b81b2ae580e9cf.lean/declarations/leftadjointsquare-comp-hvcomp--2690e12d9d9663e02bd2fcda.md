# leftAdjointSquare.comp_hvcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2484df9419329193a4be3e527158a0826c4f286e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c125b992-d828-82d1-f3f9-06bf3bed9d56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dac97345-5437-9877-8fef-ab08c9f16068",
  "kind": "theorem",
  "lexical_name": "leftAdjointSquare.comp_hvcomp",
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
  "slug": "leftadjointsquare-comp-hvcomp--2690e12d9d9663e02bd2fcda",
  "source": {
    "blob": "2484df9419329193a4be3e527158a0826c4f286e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 242,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2690e12d9d9663e02bd2fcdaf218acf661e54b64c02df8ff372d3acef063f4dd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dac97345-5437-9877-8fef-ab08c9f16068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftAdjointSquare.comp_hvcomp :
    comp α β γ δ = hcomp (vcomp α γ) (vcomp β δ) := by
  dsimp only [comp, vcomp, hcomp]
  calc
    _ = 𝟙 _ ⊗≫ g₁ ◁ γ ▷ l₆ ⊗≫ ((g₁ ≫ l₃) ◁ δ ≫ α ▷ (l₄ ≫ k₂)) ⊗≫ l₁ ◁ β ▷ k₂ ⊗≫ 𝟙 _ := by
      bicategory
    _ = _ := by
      rw [whisker_exchange]
      bicategory

end leftAdjointSquare.comp

section rightAdjointSquare.comp

variable (α : r₁ ≫ g₁ ⟶ h₁ ≫ r₃) (β : r₂ ≫ h₁ ⟶ k₁ ≫ r₄)
variable (γ : r₃ ≫ g₂ ⟶ h₂ ≫ r₅) (δ : r₄ ≫ h₂ ⟶ k₂ ≫ r₆)

/-- Squares of squares between right adjoints can be composed by iterating vertical and horizontal
composition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2484df9419329193a4be3e527158a0826c4f286e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
