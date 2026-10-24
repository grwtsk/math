# actual_logarithmic_derivative_zero_after_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13779a60-cd55-8db0-ae66-3ccd16a47856",
  "kind": "theorem",
  "lexical_name": "actual_logarithmic_derivative_zero_after_cutoff",
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
  "slug": "actual-logarithmic-derivative-zero-after-cutoff--9b4fa40d2c7d06d91edac13f",
  "source": {
    "blob": "0d9f4aba45360e1b76f7eb02d0369bc802cae91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusSharpError/Variant96ce54c0dbefa26830bef868dc32d3074244b40f5c46723502144b9a767b71a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b4fa40d2c7d06d91edac13f352459600b257fd7e7538bc1fab2109b0c7e4f97",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusSharpError/Variant96ce54c0dbefa26830bef868dc32d3074244b40f5c46723502144b9a767b71a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13779a60-cd55-8db0-ae66-3ccd16a47856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logarithmic_derivative_zero_after_cutoff {A r x : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) (hx : censusCutoff A r < x) :
    logarithmicDerivative A r x = 0 := by
  have hX : 0 < censusCutoff A r := Real.exp_pos _
  have hl := Real.log_lt_log hX hx
  rw [censusCutoff, Real.log_exp] at hl
  have ht : 2 * A < r * Real.log x := by
    have h := mul_lt_mul_of_pos_left hl hr
    rw [mul_div_cancel₀ (2 * A) hr.ne'] at h
    exact h
  unfold logarithmicDerivative
  rw [actual_correlation_derivative_zero_above_support hA ht, mul_zero, zero_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusSharpError/Variant96ce54c0dbefa26830bef868dc32d3074244b40f5c46723502144b9a767b71a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusSharpError/Variant96ce54c0dbefa26830bef868dc32d3074244b40f5c46723502144b9a767b71a4.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9f4aba45360e1b76f7eb02d0369bc802cae91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
