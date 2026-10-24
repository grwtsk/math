# Params.initial.balance_ge_neg_M_mul_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1ce77f5-d2d5-37ce-c572-8130bb7015c5",
  "kind": "lemma",
  "lexical_name": "Params.initial.balance_ge_neg_M_mul_log",
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
  "slug": "params-initial-balance-ge-neg-m-mul-log--452175f792db7ce7166bb0ac",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1545,
    "line": 1523,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:452175f792db7ce7166bb0ac690a7123f2d144cb0c241bf6af150c645a72cae5",
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

Occurrence: `result:a1ce77f5-d2d5-37ce-c572-8130bb7015c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1523–1545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.balance_ge_neg_M_mul_log (P : Params) {p : ℕ} (hp : p.Prime)
    (hp_le : p ≤ Real.sqrt P.n) (hp_gt : p > P.L) :
    P.initial.balance p ≥ - (P.M * (Nat.log p P.n) : ℤ) := by
  have := Fact.mk hp
  rw [Factorization.balance, Factorization.sum, initial.sum_valuation_eq_small P hp hp_le hp_gt,
    factorization_def _ hp, padicValNat_factorial]
  · simp only [cast_mul, cast_sum, Int.natCast_ediv, cast_pow, ge_iff_le, neg_le_sub_iff_le_add]
    calc
      _ ≤ ∑ k ∈ Ico 1 (Nat.log p P.n + 1), ((P.M : ℤ) *
          (Finset.filter (p^k ∣ ·) (Ico (P.n - P.n / P.M) P.n)).card + P.M) :=
        sum_le_sum fun k _ ↦ mod_cast initial.count_multiples_lower_bound P.n P.M (p^k)
          (by linarith [P.hM]) (pow_pos hp.pos _)
      _ = _ := by simp [sum_add_distrib, mul_sum, mul_comm]
  · exact lt_succ_self _

@[blueprint
  "initial-factorization-small-prime-ge"
  (statement := /-- A small prime $L < p \leq \sqrt{n}$ can be in deficit by at most
  $M\log n$.-/)
  (proof := /-- Routine computation using Legendre's formula, noting that at most
  $\log n / \log 2$ powers of $p$ divide any given number up to $n$.-/)
  (latexEnv := "sublemma")
  (discussion := 514)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L1523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
