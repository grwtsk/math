# actual_good_dyadic_compensated_shell_total_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63ecff63-312d-7f5e-78f9-a372014ab999",
  "kind": "theorem",
  "lexical_name": "actual_good_dyadic_compensated_shell_total_budget",
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
  "slug": "actual-good-dyadic-compensated-shell-total-budget--cbbc13575567e7c4e1596f3c",
  "source": {
    "blob": "b29beb90ec2be65ca69832d4183f3390584dabae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 288,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative02/Variantae07c0c9f31a3d20b24085bf239ba7d8b73f9d870797517afe109a0d13f4504d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbbc13575567e7c4e1596f3c6e49398f80f97ae9b03fe0576ae53d43f87cf9af",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative02/Variantae07c0c9f31a3d20b24085bf239ba7d8b73f9d870797517afe109a0d13f4504d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63ecff63-312d-7f5e-78f9-a372014ab999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_good_dyadic_compensated_shell_total_budget :
    ∃ Cg K : ℝ, 0 < Cg ∧ 0 < K ∧ ∀ A c : ℝ,
      1 ≤ A → 1 < c → c ≤ 3 / 2 → ∃ R : ℕ → ℝ,
      (∀ k, (actualDyadicGoodHeightIndex A c k : ℝ) ≤ R k ∧
        R k ≤ (actualDyadicGoodHeightIndex A c k : ℝ) + 1) ∧
      (∀ k, 2 * R k ≤ R (k + 1)) ∧
      Summable (fun k => ‖(actualOffAxisZeroHeightHead A (R (k + 1))-
        actualOffAxisZeroHeightHead A (R k)) + 
        (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
        (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k))‖) ∧
      (∑' k, ‖(actualOffAxisZeroHeightHead A (R (k + 1)) - actualOffAxisZeroHeightHead A (R k)) + 
        (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
        (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k))‖)
 ≤ (17 / 15 : ℝ) * actualDyadicHorizontalCoefficient K c / A ^ 7 * 
          Real.exp (-((2 * c - 1) * A) / 5) := by
  obtain ⟨Cg, K, hCg, hK, hseq⟩ := actual_good_dyadic_horizontal_sequence
  refine ⟨Cg, K, hCg, hK, ?_⟩
  intro A c hA hc hc2
  obtain ⟨R, hidx, hdyad, hgood, hb⟩ := hseq A c hA hc hc2
  have h7 (k : ℕ) : 7 ≤ R k := by
    have hh : (7 : ℝ) ≤ actualDyadicGoodHeightIndex A c k := by
      exact_mod_cast (actualDyadicGoodHeightIndex_bounds A c hA hc hc2 k).1
    exact hh.trans (hidx k).1
  have horder (k : ℕ) : R k ≤ R (k + 1) := by linarith [h7 k, hdyad k]
  have ht := actual_compensated_dyadic_shell_errors_summable A c
    (actualDyadicHorizontalCoefficient K c / A ^ 7 * Real.exp (-((2 * c - 1) * A) / 5)) R
    hA hc hc2 h7 horder (fun k s him hrl hru => (hgood k s him hrl hru).1) hb
  refine ⟨R, hidx, hdyad, ht.1, ?_⟩
  convert ht.2 using 1 < ;> ring

end FormalResearch.RiemannHypothesis.SourceActualSignedDyadicSummableError
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative02/Variantae07c0c9f31a3d20b24085bf239ba7d8b73f9d870797517afe109a0d13f4504d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative02/Variantae07c0c9f31a3d20b24085bf239ba7d8b73f9d870797517afe109a0d13f4504d.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b29beb90ec2be65ca69832d4183f3390584dabae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
