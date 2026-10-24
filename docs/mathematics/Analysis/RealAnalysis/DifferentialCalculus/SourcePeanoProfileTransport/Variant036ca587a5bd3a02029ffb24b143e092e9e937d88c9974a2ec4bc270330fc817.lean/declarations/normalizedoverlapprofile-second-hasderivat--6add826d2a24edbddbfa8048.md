# normalizedOverlapProfile_second_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42415b89-9c47-e265-1da8-04219d734d9a",
  "kind": "theorem",
  "lexical_name": "normalizedOverlapProfile_second_hasDerivAt",
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
  "slug": "normalizedoverlapprofile-second-hasderivat--6add826d2a24edbddbfa8048",
  "source": {
    "blob": "2e280a034b9c6eb3fedf8c37c0698a575f77280e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6add826d2a24edbddbfa8048907feaaf903c64e4de1f24369219c34e626390f4",
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

Occurrence: `result:42415b89-9c47-e265-1da8-04219d734d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedOverlapProfile_second_hasDerivAt (A t : ℝ) :
    HasDerivAt (deriv (normalizedOverlapProfile A))
      (deriv (deriv overlapProfile) (t / A) / A ^ 2 / sourceNormalization A) t := by
  have hF : ContDiff ℝ 2 overlapProfile := by
    unfold overlapProfile overlapP0
    fun_prop
  have hF1c : ContDiff ℝ 1 (deriv overlapProfile) := hF.deriv'
  have hF1 : Differentiable ℝ (deriv overlapProfile) := hF1c.differentiable (by norm_num)
  have hd := (((hF1 (t / A)).hasDerivAt.comp t
    ((hasDerivAt_id t).div_const A)).div_const A).div_const (sourceNormalization A)
  rw [show deriv (normalizedOverlapProfile A) = fun t =>
    deriv overlapProfile (t / A) / A / sourceNormalization A from
      funext (normalizedOverlapProfile_deriv A)]
  exact hd.congr_deriv (by simp only [div_eq_mul_inv]; ring)


/-- Closed-interval equality transports the first ordinary derivative at both endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e280a034b9c6eb3fedf8c37c0698a575f77280e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
