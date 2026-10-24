# cubic_log_derivative_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:337565f6-c6aa-2597-cc25-9333810a4f2b",
  "kind": "theorem",
  "lexical_name": "cubic_log_derivative_difference",
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
  "slug": "cubic-log-derivative-difference--ecdc440afe529defbccaa9eb",
  "source": {
    "blob": "ef196f8e4b9891fec1ed77fd796fc260fe7920cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/306f8c6ccf756c2a1fd2SourceCubicSamplingRemainder/Variant6ed63aee52eac8d998bc2b27e51df1ad6aac0abc54a76bb3cd8214c4bbc5fcdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecdc440afe529defbccaa9eba830a00d32bd1971bf852d06188c15db8179a966",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/306f8c6ccf756c2a1fd2SourceCubicSamplingRemainder/Variant6ed63aee52eac8d998bc2b27e51df1ad6aac0abc54a76bb3cd8214c4bbc5fcdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:337565f6-c6aa-2597-cc25-9333810a4f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubic_log_derivative_difference {A k u : ℝ} (hA : 0 < A) (hk : 0 < k)
    (hu : 0 < u) :
    deriv (logProfile A k) u - cubicLogModelDerivative A k u =
      1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
        ((1 - Real.log u / 2) * cubicCorrelationRemainder A (Real.log k) (Real.log u) +
          Real.log u * deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u)) := by
  rw [(logProfile_hasDerivAt hA k hu).deriv, samplingDerivative_prefactor hk hu,
    (cubicCorrelationRemainder_hasDerivAt A (Real.log k) (Real.log u) hA).deriv]
  unfold cubicLogModelDerivative cubicCorrelationRemainder
  rw [(cubicCorrelationJet_hasDerivAt A (Real.log k) (Real.log u)).deriv]
  ring

/-- The actual upper-row error has the exact 5/24 and 1/48 logarithmic coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/306f8c6ccf756c2a1fd2SourceCubicSamplingRemainder/Variant6ed63aee52eac8d998bc2b27e51df1ad6aac0abc54a76bb3cd8214c4bbc5fcdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/306f8c6ccf756c2a1fd2SourceCubicSamplingRemainder/Variant6ed63aee52eac8d998bc2b27e51df1ad6aac0abc54a76bb3cd8214c4bbc5fcdd.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef196f8e4b9891fec1ed77fd796fc260fe7920cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
