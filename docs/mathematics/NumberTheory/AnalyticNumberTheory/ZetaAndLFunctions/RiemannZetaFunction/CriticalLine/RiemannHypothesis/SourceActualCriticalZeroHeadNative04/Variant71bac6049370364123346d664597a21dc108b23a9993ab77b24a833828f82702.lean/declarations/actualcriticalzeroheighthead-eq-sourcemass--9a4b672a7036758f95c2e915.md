# actualCriticalZeroHeightHead_eq_sourceMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02fc3009-f857-6247-615a-fd6646efe5d9",
  "kind": "theorem",
  "lexical_name": "actualCriticalZeroHeightHead_eq_sourceMass",
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
  "slug": "actualcriticalzeroheighthead-eq-sourcemass--9a4b672a7036758f95c2e915",
  "source": {
    "blob": "6a60a6f97625da24a4ce7b81935dfa49a2be91fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative04/Variant71bac6049370364123346d664597a21dc108b23a9993ab77b24a833828f82702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a4b672a7036758f95c2e9150674ffa7b4476c25c4b3f0bd179d3765eda005c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative04/Variant71bac6049370364123346d664597a21dc108b23a9993ab77b24a833828f82702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02fc3009-f857-6247-615a-fd6646efe5d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalZeroHeightHead_eq_sourceMass (A R : ℝ) (hA : 1 ≤ A) :
    actualCriticalZeroHeightHead A R =
      ((∑ ρ ∈ ((actualZeroHeightHead_finite R).toFinset.filter
      (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).re = 1 / 2)),
        ((zetaZeros zetaSeam).mult ρ : ℝ) *
          Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A)
            (ρ : ℂ).im) : ℝ) : ℂ) := by
  classical
  unfold actualCriticalZeroHeightHead
  push_cast
  apply sum_congr rfl
  intro ρ hρ
  rw [actualInitialPrimeMellin_critical_eq_sourceSquare A ρ hA (mem_filter.mp hρ).2]

/-- The entire actual finite critical part has zero imaginary component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative04/Variant71bac6049370364123346d664597a21dc108b23a9993ab77b24a833828f82702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative04/Variant71bac6049370364123346d664597a21dc108b23a9993ab77b24a833828f82702.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a60a6f97625da24a4ce7b81935dfa49a2be91fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
