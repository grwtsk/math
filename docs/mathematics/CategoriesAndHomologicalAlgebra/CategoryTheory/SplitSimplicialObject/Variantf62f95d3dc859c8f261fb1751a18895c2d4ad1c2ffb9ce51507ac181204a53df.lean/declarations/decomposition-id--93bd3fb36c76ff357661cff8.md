# decomposition_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09547c87adbffce2a3f8c9103149b27f8b2e3fa5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e707593-735b-49ca-9121-df478c5a6598",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22f0c020-c7e9-9bef-87f6-748ef1e56989",
  "kind": "theorem",
  "lexical_name": "decomposition_id",
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
  "slug": "decomposition-id--93bd3fb36c76ff357661cff8",
  "source": {
    "blob": "09547c87adbffce2a3f8c9103149b27f8b2e3fa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93bd3fb36c76ff357661cff8febc069781b5fe659980598054e9d8db6337f943",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22f0c020-c7e9-9bef-87f6-748ef1e56989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decomposition_id (Δ : SimplexCategoryᵒᵖ) :
    𝟙 (X.obj Δ) = ∑ A : IndexSet Δ, s.πSummand A ≫ (s.cofan Δ).inj A := by
  apply s.hom_ext'
  intro A
  dsimp
  erw [comp_id, comp_sum, Finset.sum_eq_single A, cofan_inj_πSummand_eq_id_assoc]
  · intro B _ h₂
    rw [s.cofan_inj_πSummand_eq_zero_assoc _ _ h₂, zero_comp]
  · simp

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09547c87adbffce2a3f8c9103149b27f8b2e3fa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
