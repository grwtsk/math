# Homotopy.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:437d0eba729f9ae766b6cd3332797d4d9e5e97b1a48e3bcd721e8b0de15b3a8c",
  "kind": "def",
  "lexical_name": "Homotopy.smul",
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
  "slug": "homotopy-smul--140eebc38032360c66de4abc",
  "source": {
    "blob": "1dc2a0b33662c017bab0703802c32c70c5b1c9af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 205,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:140eebc38032360c66de4abcb563a4844bef66f95cc338c86669df262f2f15ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:437d0eba729f9ae766b6cd3332797d4d9e5e97b1a48e3bcd721e8b0de15b3a8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homotopy.smul {φ₁ φ₂ : S₁ ⟶ S₂} (h : Homotopy φ₁ φ₂) (a : R) :
    Homotopy (a • φ₁) (a • φ₂) where
  h₀ := a • h.h₀
  h₁ := a • h.h₁
  h₂ := a • h.h₂
  h₃ := a • h.h₃
  comm₁ := by
    dsimp
    rw [h.comm₁]
    simp only [smul_add, Linear.comp_smul]
  comm₂ := by
    dsimp
    rw [h.comm₂]
    simp only [smul_add, Linear.comp_smul, Linear.smul_comp]
  comm₃ := by
    dsimp
    rw [h.comm₃]
    simp only [smul_add, Linear.smul_comp]

end ShortComplex

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dc2a0b33662c017bab0703802c32c70c5b1c9af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
