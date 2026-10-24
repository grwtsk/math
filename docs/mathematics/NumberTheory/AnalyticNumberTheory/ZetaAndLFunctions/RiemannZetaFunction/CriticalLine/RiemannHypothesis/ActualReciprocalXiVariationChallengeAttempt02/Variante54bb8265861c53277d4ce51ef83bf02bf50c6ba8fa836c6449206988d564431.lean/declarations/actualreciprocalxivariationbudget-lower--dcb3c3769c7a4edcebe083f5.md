# actualReciprocalXiVariationBudget_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:935bee8c-dba4-bf26-eceb-fa09a85cac0c",
  "kind": "theorem",
  "lexical_name": "actualReciprocalXiVariationBudget_lower",
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
  "slug": "actualreciprocalxivariationbudget-lower--dcb3c3769c7a4edcebe083f5",
  "source": {
    "blob": "27390b05a6335ccccad245ac6f87dcc79cd54650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variante54bb8265861c53277d4ce51ef83bf02bf50c6ba8fa836c6449206988d564431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb3c3769c7a4edcebe083f5dc2530196e10c08e0f130b333e2cee8f9027727a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variante54bb8265861c53277d4ce51ef83bf02bf50c6ba8fa836c6449206988d564431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:935bee8c-dba4-bf26-eceb-fa09a85cac0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReciprocalXiVariationBudget_lower {q : ℕ} (hq : 2 ≤ q) :
    Real.sqrt ((8 * q : ℕ) : ℝ) * Real.log (q : ℝ) / 8 ≤
      actualReciprocalXiVariationBudget (8 * q) := by
  have ht := differences_telescope (8 * q)
    (actualReciprocalXiQuotientWeight ((8 * q : ℕ) : ℝ)) (by omega)
  have hu := actualReciprocalXiQuotientWeight_at_cutoff ((8 * q : ℕ) : ℝ)
  rw [Nat.floor_natCast] at hu
  rw [hu, sub_zero] at ht
  have hs := Finset.abs_sum_le_sum_abs
    (fun d => actualReciprocalXiQuotientWeight ((8 * q : ℕ) : ℝ) d -
      actualReciprocalXiQuotientWeight ((8 * q : ℕ) : ℝ) (d + 1))
      (Finset.Icc 1 (8 * q - 1))
  rw [ht] at hs
  exact (actualReciprocalXiQuotientWeight_one_lower hq).trans
    ((le_abs_self _).trans hs)

end
end FormalResearch.RiemannHypothesis.ActualReciprocalXiVariationChallenge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variante54bb8265861c53277d4ce51ef83bf02bf50c6ba8fa836c6449206988d564431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variante54bb8265861c53277d4ce51ef83bf02bf50c6ba8fa836c6449206988d564431.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27390b05a6335ccccad245ac6f87dcc79cd54650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
