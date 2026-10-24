# actualFullZeroContribution_eq_head_add_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:261a0aa5-1d08-c647-9a1a-47c6ec21285c",
  "kind": "theorem",
  "lexical_name": "actualFullZeroContribution_eq_head_add_tail",
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
  "slug": "actualfullzerocontribution-eq-head-add-tail--199442de5c6ecf0603a4886b",
  "source": {
    "blob": "3b092007f4a7f16d0f049f30f11ed3bc35fb130d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 149,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative03/Variant33207f3b516768495c997d407901856564653928e3016926b8c22ef9f486d000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:199442de5c6ecf0603a4886b7c8f0ed6f55dd776a641831821b3170aaeaef9f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative03/Variant33207f3b516768495c997d407901856564653928e3016926b8c22ef9f486d000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:261a0aa5-1d08-c647-9a1a-47c6ec21285c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullZeroContribution_eq_head_add_tail (A R : ℝ) (hA : 1 ≤ A) :
    actualFullZeroContribution A = actualZeroHeightHead A R + actualZeroHeightTail A R := by
  classical
  let head : (zetaZeros zetaSeam).carrier → ℂ := fun ρ =>
    if |(ρ : ℂ).im| < R then
      ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0
  have hhead : Summable head := summable_of_ne_finset_zero
    (s := (actualZeroHeightHead_finite R).toFinset) (by
      intro ρ hρ
      have hn : ¬ |(ρ : ℂ).im| < R := by simpa only [Set.Finite.mem_toFinset] using hρ
      simp only [head, hn, if_false])
  have hs : (∑' ρ, head ρ) = actualZeroHeightHead A R := by
    rw [tsum_eq_sum (s := (actualZeroHeightHead_finite R).toFinset) (by
      intro ρ hρ
      have hn : ¬ |(ρ : ℂ).im| < R := by simpa only [Set.Finite.mem_toFinset] using hρ
      simp only [head, hn, if_false])]
    unfold actualZeroHeightHead
    apply sum_congr rfl
    intro ρ hρ
    simp only [head, Set.Finite.mem_toFinset.mp hρ, if_true]
  rw [← hs, ← hhead.tsum_add (actualZeroHeightTail_summable A R hA)]
  unfold actualFullZeroContribution
  apply tsum_congr
  intro ρ
  by_cases hρ : |(ρ : ℂ).im| < R
  · simp only [head, hρ, not_le.mpr hρ, if_true, if_false, add_zero]
  · simp only [head, hρ, le_of_not_gt hρ, if_true, if_false, zero_add]

/-- All omitted zero multiplicities have an explicit uniform-in-A tail budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative03/Variant33207f3b516768495c997d407901856564653928e3016926b8c22ef9f486d000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative03/Variant33207f3b516768495c997d407901856564653928e3016926b8c22ef9f486d000.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b092007f4a7f16d0f049f30f11ed3bc35fb130d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
