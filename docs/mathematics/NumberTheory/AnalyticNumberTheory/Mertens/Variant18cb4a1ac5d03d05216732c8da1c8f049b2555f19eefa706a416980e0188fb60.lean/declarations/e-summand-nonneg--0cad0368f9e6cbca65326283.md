# E₁.summand_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:588bfe50-5cd6-37ad-f489-bb9f1de5190b",
  "kind": "lemma",
  "lexical_name": "E₁.summand_nonneg",
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
  "slug": "e-summand-nonneg--0cad0368f9e6cbca65326283",
  "source": {
    "blob": "f971697d72fc8ce2f92ecabd68e04bdd83d36a1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 490,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant18cb4a1ac5d03d05216732c8da1c8f049b2555f19eefa706a416980e0188fb60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cad0368f9e6cbca6532628378d901b71918e09dd607d31f4f7a2717810c6ac8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Mertens/Variant18cb4a1ac5d03d05216732c8da1c8f049b2555f19eefa706a416980e0188fb60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:588bfe50-5cd6-37ad-f489-bb9f1de5190b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma E₁.summand_nonneg (p : ℕ) : 0 ≤ if p.Prime then (log p) / (p*(p-1)) else 0 := by
  split_ifs with h
  · refine div_nonneg (log_natCast_nonneg _) (mul_nonneg (Nat.cast_nonneg _) ?_)
    suffices 1 ≤ (p : ℝ) by linarith
    exact_mod_cast h.one_le
  · rfl

@[blueprint
  "E1_summable"
  (title := "$E_1$ summable")
  (statement := /-- The series $E_1 := \sum_p \frac{\log p}{p(p-1)}$ converges. -/)
  (proof := /-- We have $\sum_{n=2}^\infty \frac{\log n}{n(n-1)}$ converges by comparison with $\sum_{n=2}^\infty \frac{2\log n}{n^2}$, which converges by the integral test.  By a further application of comparison test we can conclude that $E_1$ converges as well.
  Alternatively bound $\log n$ by $2\sqrt n$ and use the existing Mathlib API for $\sum n^{-3/2}$.-/)
  (latexEnv := "proposition")
  (discussion := 1352)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Mertens/Variant18cb4a1ac5d03d05216732c8da1c8f049b2555f19eefa706a416980e0188fb60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant18cb4a1ac5d03d05216732c8da1c8f049b2555f19eefa706a416980e0188fb60.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f971697d72fc8ce2f92ecabd68e04bdd83d36a1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
