# d₁_eq_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e4d80bf9f4c4592c727bcff16c6ad48c85b8231",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad2aa71f-de85-1eb8-f9cc-15bf2ffab132",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b763bb4-e26a-4dee-5143-703403e17c30",
  "kind": "lemma",
  "lexical_name": "d₁_eq_zero'",
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
  "slug": "d-eq-zero--2e19bdd5cced45b8cee4d2c0",
  "source": {
    "blob": "2e4d80bf9f4c4592c727bcff16c6ad48c85b8231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variante223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e19bdd5cced45b8cee4d2c0246ebec034d1eee4e3a253be8f9af6355080db5b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variante223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b763bb4-e26a-4dee-5143-703403e17c30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma d₁_eq_zero' {i₁ i₁' : I₁} (h : c₁.Rel i₁ i₁') (i₂ : I₂) (i₁₂ : I₁₂)
    (h' : ComplexShape.π c₁ c₂ c₁₂ ⟨i₁', i₂⟩ ≠ i₁₂) :
    K.d₁ c₁₂ i₁ i₂ i₁₂ = 0 := by
  rw [totalAux.d₁_eq' K c₁₂ h i₂ i₁₂, K.toGradedObject.ιMapObjOrZero_eq_zero, comp_zero, smul_zero]
  exact h'

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variante223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variante223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e4d80bf9f4c4592c727bcff16c6ad48c85b8231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
