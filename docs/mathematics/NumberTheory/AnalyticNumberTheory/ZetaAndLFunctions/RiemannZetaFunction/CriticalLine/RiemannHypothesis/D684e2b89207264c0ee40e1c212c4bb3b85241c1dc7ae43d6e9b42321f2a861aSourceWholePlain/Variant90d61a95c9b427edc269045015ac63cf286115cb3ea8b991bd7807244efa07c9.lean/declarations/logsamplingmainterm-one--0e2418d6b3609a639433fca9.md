# logSamplingMainTerm_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12f0090e-3def-5cb2-d906-79aba8ebe8fa",
  "kind": "theorem",
  "lexical_name": "logSamplingMainTerm_one",
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
  "slug": "logsamplingmainterm-one--0e2418d6b3609a639433fca9",
  "source": {
    "blob": "73ce0ffc400227370d6e8440124e43ac27fe9586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant90d61a95c9b427edc269045015ac63cf286115cb3ea8b991bd7807244efa07c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e2418d6b3609a639433fca935ffcecdcbf4e7997ce67f505e602148b88bf3eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant90d61a95c9b427edc269045015ac63cf286115cb3ea8b991bd7807244efa07c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12f0090e-3def-5cb2-d906-79aba8ebe8fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSamplingMainTerm_one (A : ℝ) (hA : 1 ≤ A) :
    sourceLogSamplingMainTerm A 1 = samplingAlpha1 := by
  unfold sourceLogSamplingMainTerm
  rw [Real.log_one, actual_correlation_at_zero A hA,
    correlation_deriv_at_zero (by linarith : 0 < A)]
  norm_num

/-- Whole-row cancellation pays only the original logarithmic sampling error at one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant90d61a95c9b427edc269045015ac63cf286115cb3ea8b991bd7807244efa07c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant90d61a95c9b427edc269045015ac63cf286115cb3ea8b991bd7807244efa07c9.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73ce0ffc400227370d6e8440124e43ac27fe9586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
