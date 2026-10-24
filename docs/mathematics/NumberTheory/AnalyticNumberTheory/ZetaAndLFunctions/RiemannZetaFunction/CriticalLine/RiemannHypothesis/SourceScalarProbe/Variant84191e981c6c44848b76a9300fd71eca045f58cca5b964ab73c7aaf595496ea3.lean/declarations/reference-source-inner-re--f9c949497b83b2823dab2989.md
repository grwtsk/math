# reference_source_inner_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a3ebd4c-86c1-7b6f-3320-f9f21eacd787",
  "kind": "theorem",
  "lexical_name": "reference_source_inner_re",
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
  "slug": "reference-source-inner-re--f9c949497b83b2823dab2989",
  "source": {
    "blob": "81996549f481fa3178f684ae884b8b2bfaf69ef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarProbe/Variant84191e981c6c44848b76a9300fd71eca045f58cca5b964ab73c7aaf595496ea3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9c949497b83b2823dab29899a7ce28d6deb649c3feeb11683404002b8f9ce83",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarProbe/Variant84191e981c6c44848b76a9300fd71eca045f58cca5b964ab73c7aaf595496ea3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a3ebd4c-86c1-7b6f-3320-f9f21eacd787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_source_inner_re :
    (inner ℂ referenceVector (sourceOperator referenceVector)).re = kappa / 2 := by
  have h := exponential_inner_sourceOperator 1 (by norm_num) referenceVector
  change inner ℂ referenceVector (sourceOperator referenceVector) =
    actualLaplace 1 * inner ℂ referenceVector referenceVector at h
  have hr : inner ℂ referenceVector referenceVector = (1 / 2 : ℂ) := by
    rw [inner_self_eq_norm_sq_to_K]
    have hh := congrArg Complex.ofReal referenceVector_norm_sq
    set_option pp.all true in
      trace_state
    simpa only [Complex.ofReal_pow, Complex.ofReal_div, Complex.ofReal_one,
      Complex.ofReal_ofNat] using hh
  rw [hr] at h
  rw [h]
  simp [Complex.mul_re, kappa, div_eq_mul_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarProbe/Variant84191e981c6c44848b76a9300fd71eca045f58cca5b964ab73c7aaf595496ea3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarProbe/Variant84191e981c6c44848b76a9300fd71eca045f58cca5b964ab73c7aaf595496ea3.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81996549f481fa3178f684ae884b8b2bfaf69ef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
