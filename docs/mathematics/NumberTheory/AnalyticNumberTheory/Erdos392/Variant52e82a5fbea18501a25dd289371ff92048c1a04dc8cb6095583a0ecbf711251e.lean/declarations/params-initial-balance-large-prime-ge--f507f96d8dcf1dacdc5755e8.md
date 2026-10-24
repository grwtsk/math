# Params.initial.balance_large_prime_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0f8b44a-69d8-32ed-aa07-fedcf7e8618f",
  "kind": "theorem",
  "lexical_name": "Params.initial.balance_large_prime_ge",
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
  "slug": "params-initial-balance-large-prime-ge--f507f96d8dcf1dacdc5755e8",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1097,
    "line": 1067,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f507f96d8dcf1dacdc5755e8757a26bff5a0edd1dcb550b64f5644f8580f4250",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0f8b44a-69d8-32ed-aa07-fedcf7e8618f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1067–1097.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.balance_large_prime_ge (P : Params) {p : ℕ}
    (hp : p ≥ P.n / P.L) : P.initial.balance p ≥ -(P.n / p) := by
  have hsum : (P.initial.a.map (·.factorization p)).sum = 0 := sum_eq_zero fun x hx ↦ by
    simp only [Multiset.mem_map, initial, Multiset.mem_filter] at hx
    obtain ⟨m, ⟨_, hsmooth⟩, rfl⟩ := hx
    rw [factorization_eq_zero_iff, mem_smoothNumbers'] at *
    by_cases hprime : p.Prime
    · by_cases hdvd : p ∣ m
      · exact ((hsmooth p hprime hdvd).not_ge hp).elim
      · exact .inr (.inl hdvd)
    · exact .inl hprime
  have hfact : (P.n.factorial.factorization p : ℤ) ≤ P.n / p := by
    rcases eq_or_ne p 0 with rfl | -; · simp
    by_cases hprime : p.Prime
    · have hn_pos : (0 : ℝ) < P.n := by
        have := Nat.lt_of_lt_of_le (Nat.mul_pos P.hL_pos P.hL_pos) P.hL.le
        exact_mod_cast this
      have hL_lt_sqrt : (P.L : ℝ) < Real.sqrt P.n := by
        rw [Real.lt_sqrt (Nat.cast_nonneg _)]; exact_mod_cast by nlinarith [P.hL]
      have hp_gt_sqrt : (p : ℝ) > Real.sqrt P.n := calc
        (p : ℝ) ≥ (P.n / P.L : ℕ) := by exact_mod_cast hp
        _ > Real.sqrt P.n := P.hL'
      rw [factorial_factorization_eq_div hprime hp_gt_sqrt,
        Int.le_ediv_iff_mul_le (by exact_mod_cast hprime.pos)]
      exact_mod_cast Nat.div_mul_le_self P.n p
    · simp only [Nat.factorization_eq_zero_of_not_prime _ hprime, Nat.cast_zero]; positivity
  simp only [Factorization.balance, Factorization.sum, hsum, Nat.cast_zero, zero_sub,
    neg_le_neg_iff, hfact]

/-- The number of multiples of `p` in `[A, B)` is at most `⌈(B - A)/p⌉`, computed as
`(B - A + p - 1) / p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L1067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
