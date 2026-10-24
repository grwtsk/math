# actualCriticalAdjustedLowerColumnTrace_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:000272c7-7af7-c4da-444f-77ca0ae5c62b",
  "kind": "theorem",
  "lexical_name": "actualCriticalAdjustedLowerColumnTrace_abs_le",
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
  "slug": "actualcriticaladjustedlowercolumntrace-abs-le--a8069d6db08b727f0555bed5",
  "source": {
    "blob": "9ea9faaf056b788be3ddff77b8975d5acd85057c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 251,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8069d6db08b727f0555bed5df3035ab8acc6485da50670adb62562d81bd3cb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:000272c7-7af7-c4da-444f-77ca0ae5c62b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalAdjustedLowerColumnTrace_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualCriticalAdjustedLowerColumnTrace A| ≤
      25728 * (Real.log 4 + 4 + Real.log 2) / ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  have ht := actualLowerTimeFactor_abs_le hA
  dsimp only [actualLowerTimeFactor] at ht
  have hq := actualCriticalAdjustedColumnPrimitive_lower_abs_le (by linarith : 4 ≤ A)
  have hA0 : A ≠ 0 := by linarith
  have hUa : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  unfold actualCriticalAdjustedLowerColumnTrace
  rw [abs_mul]
  calc
    _ ≤ (24 * A ^ 4 * Real.exp (-A)) *
        (1072 * (Real.log 4 + 4 + Real.log 2) *
          Real.exp (A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) / A ^ 4) := by
      exact mul_le_mul hq ht (abs_nonneg _) (by positivity)
    _ = _ := by
      rw [Real.exp_sub, Real.exp_log hUa, Real.exp_neg]
      field_simp
      ring

/-- The actual natural floor gives a genuine all-real square-decay bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea9faaf056b788be3ddff77b8975d5acd85057c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
