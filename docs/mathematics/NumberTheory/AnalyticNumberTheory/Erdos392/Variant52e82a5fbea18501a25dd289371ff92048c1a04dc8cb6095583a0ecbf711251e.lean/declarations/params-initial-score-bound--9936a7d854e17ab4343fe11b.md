# Params.initial.score_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c040dc5-d9ea-b5db-196e-91784987241d",
  "kind": "theorem",
  "lexical_name": "Params.initial.score_bound",
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
  "slug": "params-initial-score-bound--9936a7d854e17ab4343fe11b",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2378,
    "line": 2358,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9936a7d854e17ab4343fe11b1636b2fc92a515484de360f47f0580052b845699",
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

Occurrence: `result:8c040dc5-d9ea-b5db-196e-91784987241d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2358–2378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.score_bound (P : Params) :
    P.initial.score P.L ≤ P.n * log (1 - 1 / (P.M : ℝ))⁻¹ +
      ∑ _ ∈ Finset.filter (·.Prime) (Finset.Iic (P.n / P.L)), P.M * Real.log P.n +
      ∑ _ ∈ Finset.filter (·.Prime) (Finset.Iic ⌊(Real.sqrt P.n)⌋₊),
        P.M * Real.log P.n * Real.log P.n / Real.log 2 +
      ∑ p ∈ Finset.filter (·.Prime) (Finset.Icc (P.n / P.L) P.n),
        (P.n / p) * Real.log (P.n / p) +
      ∑ _ ∈ Finset.filter (·.Prime) (Finset.Iic P.L),
        (P.M * Real.log P.n + P.M * P.L^2 * primeCounting P.n) * Real.log P.L := by
  simp only [Factorization.score]
  have := Params.initial.waste P
  rcases Nat.eq_zero_or_pos P.initial.total_imbalance with h | h
  · have := score_bound_aux_balanced P h; linarith
  · have := score_bound_aux_imbalanced P h; linarith

@[blueprint
  "bound-score-1"
  (statement := /-- If $M$ is sufficiently large depending on $\varepsilon$, then
$n \log(1-1/M)^{-1} \leq \varepsilon n$. -/)
  (proof := /-- Use the fact that $\log(1-1/M)^{-1}$ goes to zero as $M \to \infty$.-/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
