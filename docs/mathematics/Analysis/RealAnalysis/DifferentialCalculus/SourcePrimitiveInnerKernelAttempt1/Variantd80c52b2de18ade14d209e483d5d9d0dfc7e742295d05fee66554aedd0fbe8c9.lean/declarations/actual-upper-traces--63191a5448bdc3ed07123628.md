# actual_upper_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3040af0a-0a5a-07a7-111b-859bc701dd5f",
  "kind": "theorem",
  "lexical_name": "actual_upper_traces",
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
  "slug": "actual-upper-traces--63191a5448bdc3ed07123628",
  "source": {
    "blob": "fcb84574f61bff02cc4e6b4412c0313c339269f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variantd80c52b2de18ade14d209e483d5d9d0dfc7e742295d05fee66554aedd0fbe8c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63191a5448bdc3ed0712362853e5707f29de0f9fbdedae5a794796f12935dfe6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variantd80c52b2de18ade14d209e483d5d9d0dfc7e742295d05fee66554aedd0fbe8c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3040af0a-0a5a-07a7-111b-859bc701dd5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_upper_traces (A : ℝ) (hA : 0 < A) :
    cesaroWeight A (2 * A) = 0 ∧ deriv (cesaroWeight A) (2 * A) = 0 ∧
      sourceCorrelation explicitSecondDerivative A (2 * A) = 0 := by
  have ht := actual_correlation_three_upper_traces A hA
  have hc := sourceCorrelation_upper_endpoint A hA
  refine ⟨?_, ?_, hc⟩
  · simp only [cesaroWeight, ht.1, hc, zero_div, add_zero]
  · rw [(cesaroWeight_hasDerivAt A (2 * A) hA).deriv]
    simp only [ht.1, ht.2.1, zero_div, add_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variantd80c52b2de18ade14d209e483d5d9d0dfc7e742295d05fee66554aedd0fbe8c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variantd80c52b2de18ade14d209e483d5d9d0dfc7e742295d05fee66554aedd0fbe8c9.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcb84574f61bff02cc4e6b4412c0313c339269f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
