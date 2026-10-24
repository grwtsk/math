# Params.initial.factorial_factorization_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26ac5dd4-3036-631c-9e54-3cf1a52eb8f4",
  "kind": "lemma",
  "lexical_name": "Params.initial.factorial_factorization_eq_div",
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
  "slug": "params-initial-factorial-factorization-eq-div--649e6b3bc03f1164fba68f7b",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1066,
    "line": 1043,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:649e6b3bc03f1164fba68f7bfe64bb1627209592d3a874875098257abcdeb213",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26ac5dd4-3036-631c-9e54-3cf1a52eb8f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1043–1066.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.factorial_factorization_eq_div {n p : ℕ} (hp : p.Prime)
    (h_sqrt : p > Real.sqrt n) :
    (n.factorial).factorization p = n / p := by
  have h_legendre : (factorial n).factorization p =
      ∑ k ∈ Finset.Ico 1 (log p n + 1), n / p ^ k := by
    rw [factorization_def]
    · have := Fact.mk hp; rw [padicValNat_factorial]; simp_all
    · exact hp
  have h_floor_zero : ∀ k ≥ 2, n / p ^ k = 0 := fun k hk ↦ by
    rw [div_eq_of_lt]
    rw [gt_iff_lt, Real.sqrt_lt (Nat.cast_nonneg n) (Nat.cast_nonneg p)] at h_sqrt
    norm_cast at *
    nlinarith [Nat.pow_le_pow_right hp.one_lt.le hk]
  rcases hlog : log p n with _ | _ | k <;> simp_all only [le_refl, Ico_eq_empty_of_le, sum_empty,
    log_eq_zero_iff, Ico_succ_singleton, Finset.sum_singleton, pow_one, Nat.div_eq_zero_iff]
  · rw [div_eq_of_lt (hlog.resolve_right hp.one_lt.not_ge)]
  · cases h_floor_zero (‹_› + 2) (by linarith) <;> simp_all +decide [log_eq_iff]
    grind

@[blueprint
  "initial-factorization-large-prime-ge"
  (statement := /-- A large prime $p \geq n/L$ can be in deficit by at most $n/p$. -/)
  (proof := /-- This is the number of times $p$ can divide $n!$. -/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L1043).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
