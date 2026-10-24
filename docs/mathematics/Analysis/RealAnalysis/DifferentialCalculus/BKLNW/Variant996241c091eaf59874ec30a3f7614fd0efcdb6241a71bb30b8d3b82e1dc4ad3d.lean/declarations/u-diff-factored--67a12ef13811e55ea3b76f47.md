# u_diff_factored

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8d7c793-3fe2-f7cf-71d0-43e5948c0ef1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05c20877-716a-8127-23d8-6b1aa74775a0",
  "kind": "lemma",
  "lexical_name": "u_diff_factored",
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
  "slug": "u-diff-factored--67a12ef13811e55ea3b76f47",
  "source": {
    "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 392,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67a12ef13811e55ea3b76f473b615e21d282af48d34cec848c9cf14b4da2ec53",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05c20877-716a-8127-23d8-6b1aa74775a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma u_diff_factored {n : ℕ} (hn : 4 ≤ n) :
    u (n + 1) - u n = 2 ^ (-(n + 1) / 3 : ℝ) * (2 - ∑ k ∈ Icc 4 n, summand k n) := calc
  u (n + 1) - u n = (∑ k ∈ Icc 4 n,
      (2 : ℝ) ^ ((n + 1) / (k : ℝ) - (n + 1) / 3) * (1 - 2 ^ (1 / (3 : ℝ) - 1 / ↑k)))
      + 2 ^ (1 - (n + 1) / (3 : ℝ)) := by
    rw [u, u, sum_Icc_succ_top (Nat.le_add_right_of_le hn), div_self (by norm_cast),
      ← sub_add_eq_add_sub, ← sum_sub_distrib, Nat.cast_add, Nat.cast_one]
    congr with x
    rw [mul_sub, mul_one, ← rpow_add two_pos]
    grind
  _ = _ := by
    rw [mul_sub, mul_sum, ← rpow_add_one two_pos.ne', neg_div, neg_add_eq_sub,
      ← neg_add_eq_sub _ (2 ^ _), ← sum_neg_distrib]
    congr with x
    rw [summand, ← mul_assoc, ← rpow_add two_pos]
    grind

@[blueprint
  "bklnw-prop-3-sub-4"
  (title := "BKLNW Proposition 3, substep 4")
  (statement := /-- $u_{n+1} < u_n$ for $n \geq 9$.-/)
  (proof := /-- We have
\begin{equation}
u_{n+1} - u_n = \sum_{k=4}^{n} 2^{\frac{n+1}{k} - \frac{n+1}{3}}(1 - 2^{\frac{1}{3} - \frac{1}{k}}) + 2^{1 - \frac{n+1}{3}} = 2^{-\frac{n+1}{3}} \left( 2 - \sum_{k=4}^{n} 2^{\frac{n+1}{k}}(2^{\frac{1}{3} - \frac{1}{k}} - 1) \right).
\end{equation}
Define $s(k, n) := 2^{\frac{n+1}{k}}(2^{\frac{1}{3} - \frac{1}{k}} - 1)$. Note that $s(k, n)$ is monotone increasing in $n$ for each fixed $k \geq 4$. By numerical computation (using the trick $x \le 2 ^ {p / q} \iff x ^ q \le 2 ^ p$ to verify decimal lower bounds $x$), $\sum_{k=4}^{n} s(k, n) \ge \sum_{k=4}^{9} s(k, 9) > 2.12 > 2$. Thus $u_{n+1} - u_n < 0$. -/)
  (latexEnv := "sublemma")
  (discussion := 634)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6aa03d0dd36c7f82cfdb89c198f8e6368ef212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
