# closedPrimeMoment_eq_continuous_sub_Mangoldt_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af3c80ef-06fd-9076-0082-345bf39660fb",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_continuous_sub_Mangoldt_work",
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
  "slug": "closedprimemoment-eq-continuous-sub-mangoldt-work--067d12a1e4cb3721846186df",
  "source": {
    "blob": "448aa6eb7b9039da29d505674a0adbfd366b5fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 265,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:067d12a1e4cb3721846186dfebedfb7fadc2f334aebd364c415fd4dea93093c7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af3c80ef-06fd-9076-0082-345bf39660fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_continuous_sub_Mangoldt_work (A : ℝ) (hA : 1 ≤ A) :
    closedPrimeMoment A = criticalContinuousMoment A - criticalMangoldtWork A := by
  have h := mangoldtLogWindow_sub_integral 0 (2 * A) (by norm_num) (by linarith)
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A (by linarith))
  rw [mangoldtLogWindow_zero, criticalPrimeTest_at_upper A (by linarith)] at h
  simp only [mangoldtLogError, mangoldtLogPrefix_zero, sub_self, zero_mul,
    mul_zero, zero_sub] at h
  rw [← closedPrimeMoment_eq_mangoldtLogSum] at h
  change closedPrimeMoment A - criticalContinuousMoment A = -criticalMangoldtWork A at h
  linarith

/-- The unchanged literal residual retains the full signed interaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `448aa6eb7b9039da29d505674a0adbfd366b5fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
