# no_anticollision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a44ef0dec35fcd61938bbb7320e8787e9c4d4434",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd4a47a7-065a-5f79-3b96-924d76d6f83e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c80ee87-570d-7d73-3025-7d46c6b9b8b3",
  "kind": "theorem",
  "lexical_name": "no_anticollision",
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
  "slug": "no-anticollision--0bdbceb257fc049f5ac926b3",
  "source": {
    "blob": "a44ef0dec35fcd61938bbb7320e8787e9c4d4434",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bdbceb257fc049f5ac926b3079691d27e5bb420dec862b37fac7df3f28615fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c80ee87-570d-7d73-3025-7d46c6b9b8b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem no_anticollision (hrs : r.HolderConjugate s) :
    ¬∃ j k m : ℤ, k < j / r ∧ (j + 1) / r ≤ k + 1 ∧ m ≤ j / s ∧ (j + 1) / s < m + 1 := by
  intro ⟨j, k, m, h₁₁, h₁₂, h₂₁, h₂₂⟩
  have h₃ := add_lt_add_of_lt_of_le h₁₁ h₂₁
  have h₄ := add_lt_add_of_le_of_lt h₁₂ h₂₂
  simp_rw [div_eq_inv_mul, ← right_distrib, hrs.inv_add_inv_eq_one, one_mul] at h₃ h₄
  rw [← Int.cast_one, ← add_assoc, add_lt_add_iff_right, add_right_comm] at h₄
  simp_rw [← Int.cast_add, Int.cast_lt, Int.lt_add_one_iff] at h₃ h₄
  exact h₄.not_gt h₃

/-- Let `0 < r ∈ ℝ` and `j ∈ ℤ`. Then either `j ∈ B_r` or `B_r` jumps over `j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a44ef0dec35fcd61938bbb7320e8787e9c4d4434` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
