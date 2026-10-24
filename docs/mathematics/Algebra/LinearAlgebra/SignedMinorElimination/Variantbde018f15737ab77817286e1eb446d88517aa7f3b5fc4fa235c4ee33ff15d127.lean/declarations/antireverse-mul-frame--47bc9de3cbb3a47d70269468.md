# antiReverse_mul_frame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2b57501d26aec3f258086dddf5d17632bd9d8e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49986027-9277-9b81-2fa3-88d6e8ea5cc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc2e5dc1-185c-f86e-884b-b3045d901b3e",
  "kind": "theorem",
  "lexical_name": "antiReverse_mul_frame",
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
  "slug": "antireverse-mul-frame--47bc9de3cbb3a47d70269468",
  "source": {
    "blob": "f2b57501d26aec3f258086dddf5d17632bd9d8e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47bc9de3cbb3a47d70269468c15f7cf7d387b3192acf2fb47d879fd6e3987fe1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc2e5dc1-185c-f86e-884b-b3045d901b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antiReverse_mul_frame {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) :
    antiReverse N * SignedGraph.frame M = augment M := by
  ext i j
  have hs : (-1 : ℝ) ^ i.val * (-1 : ℝ) ^ i.val = 1 := by
    rw [← mul_pow]
    norm_num
  simp only [Matrix.mul_apply, antiReverse, ite_mul, zero_mul]
  simp only [Finset.sum_ite_eq', Finset.mem_univ, if_true]
  by_cases hj : j.val < N
  · simp [SignedGraph.frame, augment, hj, antiReverse, Matrix.one_apply, eq_comm]
  · simp [SignedGraph.frame, augment, hj, SignedGraph.signedBlock, ← mul_assoc, hs]

/-- The unit-determinant row change preserves every selected maximal minor exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b57501d26aec3f258086dddf5d17632bd9d8e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
