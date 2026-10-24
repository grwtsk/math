# psi_num

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c40ae51-e1c1-2909-06ef-dc160ba3a511",
  "kind": "theorem",
  "lexical_name": "psi_num",
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
  "slug": "psi-num--8a0f61ffcd625f5605fd738c",
  "source": {
    "blob": "045466a6d1938b36edf6ae23c75be1b0d2dda31f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 481,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a0f61ffcd625f5605fd738c96d3c78710007ff37c540b6a35f3ebab1f4766bc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c40ae51-e1c1-2909-06ef-dc160ba3a511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_num (x : ℝ) (hx : x > 0) (hx2 : x ≤ 30) : ψ x ≤ 1.015 * x := by
  suffices ∀ n ∈ Icc (0 : ℕ) 30, ψ n ≤ 1.015 * n by
    rw [psi_eq_psi_coe_floor]
    grw [this]
    · gcongr
      exact Nat.floor_le hx.le
    · simp only [mem_Icc, zero_le, true_and]
      exact Nat.floor_le_of_le hx2
  unfold psi
  have primes : Λ 2 = log 2 ∧ Λ 3 = log 3 ∧ Λ 5 = log 5 ∧ Λ 7 = log 7 ∧ Λ 11 = log 11 ∧ Λ 13 = log 13 ∧ Λ 17 = log 17 ∧ Λ 19 = log 19 ∧ Λ 23 = log 23 ∧ Λ 29 = log 29 := by
    split_ands <;> exact vonMangoldt_apply_prime (by decide)
  have lam_pow : (Λ (2 ^ 2) = log 2) ∧ Λ (2 ^ 3) = log 2 ∧ Λ (2 ^ 4) = log 2 ∧ Λ (3 ^ 2) = log 3 ∧ Λ (3 ^ 3) = log 3 ∧ Λ (5 ^ 2) = log 5:= by
    split_ands <;> rw [vonMangoldt_apply_pow (by norm_num)] <;> (try rw [primes.1]) <;> simp_all
  have comps : Λ 6 = 0 ∧ Λ 10 = 0 ∧ Λ 12 = 0 ∧ Λ 14 = 0 ∧ Λ 15 = 0 ∧ Λ 18 = 0 ∧ Λ 20 = 0 ∧ Λ 21 = 0 ∧ Λ 22 = 0 ∧ Λ 24 = 0 ∧ Λ 26 = 0 ∧ Λ 28 = 0 ∧ Λ 30 = 0 := by
    split_ands <;> rw [vonMangoldt_eq_zero_iff, isPrimePow_nat_iff_bounded_log] <;> decide
  intro n hn
  fin_cases hn
  · simp
  · simp; norm_num
  all_goals
    simp_all only [gt_iff_lt, Nat.reducePow, zero_add, Nat.reduceAdd, Nat.cast_ofNat,
      Nat.floor_ofNat, zero_le, sum_Ioc_succ_top, Nat.Ioc_succ_singleton, sum_singleton,
      vonMangoldt_apply_one, add_zero]
    try grw [log_2_lt]; try grw [log_3_lt]; try grw [log_5_lt]; try grw [log_7_lt]
    try grw [log_11_lt]; try grw [log_13_lt]; try grw [log_17_lt]; try grw [log_19_lt]
    try grw [log_23_lt]; try grw [log_29_lt]
    norm_num

@[blueprint
  "psi-upper"
  (title := "Upper bound for $\\psi$")
  (statement := /-- For $x \geq 30$, we have $\psi(x) \leq 6ax/5 + (\log (x/5) / \log 6) (5 \log x - 5)$. -/)
  (proof := /-- Iterate Lemma \ref{psi-diff-upper} using Sublemma \ref{psi-num} .-/)
  (latexEnv := "theorem")
  (discussion := 843)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `045466a6d1938b36edf6ae23c75be1b0d2dda31f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
