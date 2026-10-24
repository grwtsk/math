# centralBinom_factorization_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05da519a-38c2-c456-48ac-02379db75843",
  "kind": "theorem",
  "lexical_name": "centralBinom_factorization_small",
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
  "slug": "centralbinom-factorization-small--ac9d0611464a3372ad30dacd",
  "source": {
    "blob": "5a6443353b90c3a5fd596efbdeb81f8d7b49ae73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 150,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac9d0611464a3372ad30dacda8b2cf366b3ef2bd0b0f399df3217ec5b1d06063",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05da519a-38c2-c456-48ac-02379db75843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centralBinom_factorization_small (n : ℕ) (n_large : 2 < n)
    (no_prime : ∀ p : ℕ, p.Prime → n < p → 2 * n < p) :
    centralBinom n = ∏ p ∈ Finset.range (2 * n / 3 + 1), p ^ (centralBinom n).factorization p := by
  refine (Eq.trans ?_ n.prod_pow_factorization_centralBinom).symm
  apply Finset.prod_subset
  · grw [Nat.div_le_self]
  intro x hx h2x
  rw [Finset.mem_range, Nat.lt_succ_iff] at hx h2x
  rw [not_le, div_lt_iff_lt_mul three_pos, mul_comm x] at h2x
  obtain h | h : ¬ x.Prime ∨ x ≤ n := by simpa [imp_iff_not_or, hx.not_gt] using no_prime x
  · rw [factorization_eq_zero_of_not_prime n.centralBinom h, Nat.pow_zero]
  · rw [factorization_centralBinom_of_two_mul_self_lt_three_mul n_large h h2x, Nat.pow_zero]

/-- An upper bound on the central binomial coefficient used in the proof of Bertrand's postulate.
The bound splits the prime factors of `centralBinom n` into those
1. At most `sqrt (2 * n)`, which contribute at most `2 * n` for each such prime.
2. Between `sqrt (2 * n)` and `2 * n / 3`, which contribute at most `4^(2 * n / 3)` in total.
3. Between `2 * n / 3` and `n`, which do not exist.
4. Between `n` and `2 * n`, which would not exist in the case where Bertrand's postulate is false.
5. Above `2 * n`, which do not exist.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6443353b90c3a5fd596efbdeb81f8d7b49ae73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
