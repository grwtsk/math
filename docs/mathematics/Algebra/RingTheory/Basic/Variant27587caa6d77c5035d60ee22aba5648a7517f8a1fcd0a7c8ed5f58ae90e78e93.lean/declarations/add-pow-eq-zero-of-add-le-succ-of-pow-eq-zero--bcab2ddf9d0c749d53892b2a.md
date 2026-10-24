# add_pow_eq_zero_of_add_le_succ_of_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35d7ba49-82a9-c41e-d446-ca315fba3f58",
  "kind": "theorem",
  "lexical_name": "add_pow_eq_zero_of_add_le_succ_of_pow_eq_zero",
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
  "slug": "add-pow-eq-zero-of-add-le-succ-of-pow-eq-zero--bcab2ddf9d0c749d53892b2a",
  "source": {
    "blob": "179884a30f33bf3eeddb76c17eb9e662a90c88b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 137,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcab2ddf9d0c749d53892b2ae1b9e65292bb45872943951709482ab6b5077f05",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35d7ba49-82a9-c41e-d446-ca315fba3f58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_pow_eq_zero_of_add_le_succ_of_pow_eq_zero (h_comm : Commute x y) {m n k : ℕ}
    (hx : x ^ m = 0) (hy : y ^ n = 0) (h : m + n ≤ k + 1) :
    (x + y) ^ k = 0 := by
  rw [h_comm.add_pow']
  apply Finset.sum_eq_zero
  rintro ⟨i, j⟩ hij
  suffices x ^ i * y ^ j = 0 by simp only [this, nsmul_eq_mul, mul_zero]
  by_cases hi : m ≤ i
  · rw [pow_eq_zero_of_le hi hx, zero_mul]
  rw [pow_eq_zero_of_le ?_ hy, mul_zero]
  linarith [Finset.mem_antidiagonal.mp hij]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179884a30f33bf3eeddb76c17eb9e662a90c88b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
