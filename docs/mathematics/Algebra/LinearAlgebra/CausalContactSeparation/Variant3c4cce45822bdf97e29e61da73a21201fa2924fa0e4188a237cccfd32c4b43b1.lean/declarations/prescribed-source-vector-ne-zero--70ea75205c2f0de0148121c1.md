# prescribed_source_vector_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4aab6471-e4ca-2aa9-7c81-da92171ece76",
  "kind": "theorem",
  "lexical_name": "prescribed_source_vector_ne_zero",
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
  "slug": "prescribed-source-vector-ne-zero--70ea75205c2f0de0148121c1",
  "source": {
    "blob": "b2d5c5c85f91756bf84d7167ba273afb7e6654b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70ea75205c2f0de0148121c1eee6587ed000e564e632fb82b937c0b6f8951804",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aab6471-e4ca-2aa9-7c81-da92171ece76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prescribed_source_vector_ne_zero {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) : SourceGram.sourceVector A n ≠ (0 : ℝ → ℝ) := by
  intro isZero
  have positive : 0 < n := lt_of_lt_of_le Nat.zero_lt_one hn
  have unit := SourceGram.source_gram_diagonal_eq_one hA n
  rw [SourceGram.source_gram_eq_integral positive positive, isZero] at unit
  norm_num at unit

/-- This excludes zero-preserving maps of individual original-window features. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d5c5c85f91756bf84d7167ba273afb7e6654b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
