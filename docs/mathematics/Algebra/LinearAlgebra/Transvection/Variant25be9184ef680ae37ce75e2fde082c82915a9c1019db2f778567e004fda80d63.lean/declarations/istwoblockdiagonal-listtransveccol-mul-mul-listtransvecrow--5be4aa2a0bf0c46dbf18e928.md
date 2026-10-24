# isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48ba5b08e9e15dd90af727b6de1736331664849a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 521,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c852f18-8072-e4ae-97e7-d336176fe157",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aaec1116-347e-eae8-6866-30a75b668dbd",
  "kind": "theorem",
  "lexical_name": "isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow",
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
  "slug": "istwoblockdiagonal-listtransveccol-mul-mul-listtransvecrow--5be4aa2a0bf0c46dbf18e928",
  "source": {
    "blob": "48ba5b08e9e15dd90af727b6de1736331664849a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 521,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5be4aa2a0bf0c46dbf18e928948e50d25a84bac9c79b52bdbfc1bcb5a2bf440e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaec1116-347e-eae8-6866-30a75b668dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow
    (hM : M (inr unit) (inr unit) ≠ 0) :
    IsTwoBlockDiagonal ((listTransvecCol M).prod * M * (listTransvecRow M).prod) := by
  constructor
  · ext i j
    have : j = unit := by simp only [eq_iff_true_of_subsingleton]
    simp [toBlocks₁₂, this, listTransvecCol_mul_mul_listTransvecRow_last_row M hM]
  · ext i j
    have : i = unit := by simp only [eq_iff_true_of_subsingleton]
    simp [toBlocks₂₁, this, listTransvecCol_mul_mul_listTransvecRow_last_col M hM]
#align matrix.pivot.is_two_block_diagonal_list_transvec_col_mul_mul_list_transvec_row Matrix.Pivot.isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow

/-- There exist two lists of `TransvectionStruct` such that multiplying by them on the left and
on the right makes a matrix block-diagonal, when the last coefficient is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ba5b08e9e15dd90af727b6de1736331664849a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
