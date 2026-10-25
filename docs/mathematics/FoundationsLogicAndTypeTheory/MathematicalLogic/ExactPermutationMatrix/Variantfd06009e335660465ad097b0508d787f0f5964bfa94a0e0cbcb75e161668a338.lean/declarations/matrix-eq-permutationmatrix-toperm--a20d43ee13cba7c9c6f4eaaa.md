# matrix_eq_permutationMatrix_toPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f9951bcc4e587dbd52e0e0c89efd0fa434c3b04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2e69358-e663-3cc6-a607-661a67908f12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a7968c1-f6cb-b146-43a5-b46a99ed1b44",
  "kind": "theorem",
  "lexical_name": "matrix_eq_permutationMatrix_toPerm",
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
  "slug": "matrix-eq-permutationmatrix-toperm--a20d43ee13cba7c9c6f4eaaa",
  "source": {
    "blob": "9f9951bcc4e587dbd52e0e0c89efd0fa434c3b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 290,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a20d43ee13cba7c9c6f4eaaa6deae469cd082a7c384ab8c46dc6b40b6a93986e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a7968c1-f6cb-b146-43a5-b46a99ed1b44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrix_eq_permutationMatrix_toPerm
    (representation : OneHotPermutationMatrix X) :
    representation.1 = permutationMatrix (toPerm representation) := by
  ext i j
  by_cases hselected : toPerm representation i = j
  · have hentry : representation.1 i j = 1 := by
      rw [← hselected]
      exact rowIndex_spec representation i
    simp [permutationMatrix, hselected, hentry]
  · have hnotOne : representation.1 i j ≠ 1 := by
      intro hentry
      exact hselected (rowIndex_eq_of_entry_one representation hentry)
    have hzero : representation.1 i j = 0 :=
      (zmodTwo_eq_zero_or_one (representation.1 i j)).resolve_right hnotOne
    have hrow : rowIndex representation i ≠ j := by
      simpa using hselected
    simp [permutationMatrix, hrow, hzero]

/-- Reconstructing a permutation from its graph matrix returns that permutation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f9951bcc4e587dbd52e0e0c89efd0fa434c3b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
