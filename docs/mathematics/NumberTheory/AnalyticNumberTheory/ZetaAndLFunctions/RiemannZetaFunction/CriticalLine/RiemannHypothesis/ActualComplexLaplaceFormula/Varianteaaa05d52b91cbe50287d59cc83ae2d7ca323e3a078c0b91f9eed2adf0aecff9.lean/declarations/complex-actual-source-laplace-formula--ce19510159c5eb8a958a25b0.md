# complex_actual_source_laplace_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8d3494c-0cc1-6291-7b5d-3b367fea471d",
  "kind": "theorem",
  "lexical_name": "complex_actual_source_laplace_formula",
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
  "slug": "complex-actual-source-laplace-formula--ce19510159c5eb8a958a25b0",
  "source": {
    "blob": "69439646c131e429b69ddc1dff6fa4b16024d13d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplaceFormula/Varianteaaa05d52b91cbe50287d59cc83ae2d7ca323e3a078c0b91f9eed2adf0aecff9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce19510159c5eb8a958a25b0f33a89b7e054c0d983b3dd0af36190db9dcffdfa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplaceFormula/Varianteaaa05d52b91cbe50287d59cc83ae2d7ca323e3a078c0b91f9eed2adf0aecff9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8d3494c-0cc1-6291-7b5d-3b367fea471d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_actual_source_laplace_formula {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0) :
    complexTestMoment A z = 384 * (z ^ 2 - 1 / 4) /
      ((A : ℂ) ^ 4 * (Real.sqrt A : ℂ) * (Real.sqrt (sourceNormalization A) : ℂ) * z ^ 5) *
      Complex.exp ((A : ℂ) * z) * complexEndpointCorrection A z := by
  rw [complex_actual_normalized_laplace_multiplier hA, complex_actual_bump_moment_formula hA hz]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplaceFormula/Varianteaaa05d52b91cbe50287d59cc83ae2d7ca323e3a078c0b91f9eed2adf0aecff9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplaceFormula/Varianteaaa05d52b91cbe50287d59cc83ae2d7ca323e3a078c0b91f9eed2adf0aecff9.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69439646c131e429b69ddc1dff6fa4b16024d13d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
