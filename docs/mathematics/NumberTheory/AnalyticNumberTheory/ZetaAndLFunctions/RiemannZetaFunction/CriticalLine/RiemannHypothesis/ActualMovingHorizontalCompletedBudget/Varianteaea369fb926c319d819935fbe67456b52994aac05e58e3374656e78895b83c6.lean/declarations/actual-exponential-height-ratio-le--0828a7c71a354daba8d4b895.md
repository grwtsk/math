# actual_exponential_height_ratio_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08debef6-075a-88d1-ff02-55d0ae5057e0",
  "kind": "theorem",
  "lexical_name": "actual_exponential_height_ratio_le",
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
  "slug": "actual-exponential-height-ratio-le--0828a7c71a354daba8d4b895",
  "source": {
    "blob": "67aa33505e45c5fee422ba92b33b0dd7704253c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Varianteaea369fb926c319d819935fbe67456b52994aac05e58e3374656e78895b83c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0828a7c71a354daba8d4b8954b18874638e44768217461d302fa0f1da4c9b834",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Varianteaea369fb926c319d819935fbe67456b52994aac05e58e3374656e78895b83c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08debef6-075a-88d1-ff02-55d0ae5057e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_exponential_height_ratio_le (v R : ℝ) (hR : Real.exp (v / 5) ≤ R) :
    Real.exp v / R^6 ≤ Real.exp (-v/5) := by
  have hRp : 0 < R := (Real.exp_pos _).trans_le hR
  have hp := pow_le_pow_left₀ (Real.exp_pos (v / 5)).le hR 6
  have he : Real.exp (v / 5)^6 = Real.exp (6*v/5) := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he] at hp
  calc
    _ ≤ Real.exp v / Real.exp (6*v/5) :=
      div_le_div_of_nonneg_left (Real.exp_pos _).le (Real.exp_pos _) hp
    _ = _ := by rw [← Real.exp_sub]; congr 1; ring

/-- Completed logarithmic derivative and actual kernel combine before integrating. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Varianteaea369fb926c319d819935fbe67456b52994aac05e58e3374656e78895b83c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Varianteaea369fb926c319d819935fbe67456b52994aac05e58e3374656e78895b83c6.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67aa33505e45c5fee422ba92b33b0dd7704253c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
