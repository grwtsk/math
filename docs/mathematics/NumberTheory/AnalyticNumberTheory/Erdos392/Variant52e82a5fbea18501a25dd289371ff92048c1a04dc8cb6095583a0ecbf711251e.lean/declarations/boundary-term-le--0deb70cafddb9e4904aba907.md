# boundary_term_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44b08460-49b9-184b-a2a1-c309123f9015",
  "kind": "lemma",
  "lexical_name": "boundary_term_le",
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
  "slug": "boundary-term-le--0deb70cafddb9e4904aba907",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2745,
    "line": 2698,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0deb70cafddb9e4904aba90766fe73467912f90ae3149a2c31a90665803c2d9a",
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

Occurrence: `result:44b08460-49b9-184b-a2a1-c309123f9015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2698–2745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma boundary_term_le (P : Params) :
    (if (P.n / P.L).Prime then
      ((P.n : ℝ) / (P.n / P.L : ℕ)) * Real.log ((P.n : ℝ) / (P.n / P.L : ℕ))
    else 0) ≤ (P.L + 1) * Real.log (P.L + 1) := by
  by_cases hprime : (P.n / P.L).Prime
  · have hL_le_div : P.L ≤ P.n / P.L := by
      exact (Nat.le_div_iff_mul_le P.hL_pos).2 (Nat.le_of_lt P.hL)
    have hdiv_pos_nat : 0 < P.n / P.L := lt_of_lt_of_le P.hL_pos hL_le_div
    have hq_pos : (0 : ℝ) < (P.n / P.L : ℕ) := by exact_mod_cast hdiv_pos_nat
    have hmod_lt_div : P.n % P.L < P.n / P.L := lt_of_lt_of_le (Nat.mod_lt _ P.hL_pos) hL_le_div
    have hdecomp : P.n = (P.n / P.L) * P.L + P.n % P.L := by
      simpa [Nat.mul_comm] using (Nat.div_add_mod P.n P.L).symm
    have hn_lt : P.n < (P.L + 1) * (P.n / P.L) := by
      have haux : (P.n / P.L) * P.L + P.n % P.L < (P.n / P.L) * P.L + (P.n / P.L) :=
        Nat.add_lt_add_left hmod_lt_div ((P.n / P.L) * P.L)
      calc P.n = (P.n / P.L) * P.L + P.n % P.L := hdecomp
        _ < (P.n / P.L) * P.L + (P.n / P.L) := haux
        _ = (P.n / P.L) * (P.L + 1) := by ring
        _ = (P.L + 1) * (P.n / P.L) := by ring
    have hdiv_le : (P.n : ℝ) / (P.n / P.L : ℕ) ≤ P.L + 1 := by
      exact le_of_lt ((div_lt_iff₀ hq_pos).2 (by exact_mod_cast hn_lt))
    have hdiv_ge1 : (1 : ℝ) ≤ (P.n : ℝ) / (P.n / P.L : ℕ) := by
      rw [le_div_iff₀ hq_pos]
      simpa [one_mul] using
        (show ((P.n / P.L : ℕ) : ℝ) ≤ P.n by exact_mod_cast (Nat.div_le_self P.n P.L))
    have hlog_nonneg : 0 ≤ Real.log ((P.n : ℝ) / (P.n / P.L : ℕ)) := Real.log_nonneg hdiv_ge1
    have hlog_le : Real.log ((P.n : ℝ) / (P.n / P.L : ℕ)) ≤ Real.log (P.L + 1) := by
      have hdiv_pos' : 0 < (P.n : ℝ) / (P.n / P.L : ℕ) := by
        have hn_pos : (0 : ℝ) < P.n := by
          exact_mod_cast Nat.lt_of_lt_of_le (Nat.mul_pos P.hL_pos P.hL_pos) (Nat.le_of_lt P.hL)
        exact div_pos hn_pos hq_pos
      apply Real.log_le_log hdiv_pos'
      exact hdiv_le
    rw [if_pos hprime]
    exact mul_le_mul hdiv_le hlog_le hlog_nonneg (by positivity)
  · have hRHS_nonneg : 0 ≤ (P.L + 1 : ℝ) * Real.log (P.L + 1) := by
      have hL1 : (1 : ℝ) ≤ P.L + 1 := by nlinarith
      exact mul_nonneg (by positivity) (Real.log_nonneg hL1)
    simpa [hprime] using hRHS_nonneg

@[blueprint
  "bound-score-4"
  (statement := /-- If $n$ sufficiently large depending on $L, \varepsilon$, then
$\sum_{n/L < p \leq n} \frac{n}{p} \log \frac{n}{p} \leq \varepsilon n$. -/)
  (proof := /-- Bound $\frac{n}{p}$ by $L$ and use the prime
  number theorem (or the Chebyshev bound). -/)
  (discussion := 517)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2698).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
