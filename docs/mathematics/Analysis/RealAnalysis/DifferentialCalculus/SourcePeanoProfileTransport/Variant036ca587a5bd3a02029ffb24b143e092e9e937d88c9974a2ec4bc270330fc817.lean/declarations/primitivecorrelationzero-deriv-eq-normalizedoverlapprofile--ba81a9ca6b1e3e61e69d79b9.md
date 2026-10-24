# primitiveCorrelationZero_deriv_eq_normalizedOverlapProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f5ebfef-fc7a-6382-b0e5-ee148bcf3b48",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationZero_deriv_eq_normalizedOverlapProfile",
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
  "slug": "primitivecorrelationzero-deriv-eq-normalizedoverlapprofile--ba81a9ca6b1e3e61e69d79b9",
  "source": {
    "blob": "2e280a034b9c6eb3fedf8c37c0698a575f77280e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba81a9ca6b1e3e61e69d79b93cfd18d3252b5b58e4f80c18485a0c3e98da2e11",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f5ebfef-fc7a-6382-b0e5-ee148bcf3b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCorrelationZero_deriv_eq_normalizedOverlapProfile {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (primitiveCorrelationZero A)) (deriv (normalizedOverlapProfile A))
      (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · exact (primitiveCorrelationZero_contDiff_four hA).differentiable (by norm_num)
  · unfold normalizedOverlapProfile overlapProfile overlapP0
    fun_prop
  · intro t ht
    exact primitiveCorrelationZero_eq_profile hA ht.1 ht.2

/-- Differentiate the closed-interval first-derivative equality once more. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e280a034b9c6eb3fedf8c37c0698a575f77280e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
