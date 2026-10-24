# actual_fullXiLogWeight_deriv_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b1372be-c590-1a2a-ab0d-4a98e6a0d171",
  "kind": "theorem",
  "lexical_name": "actual_fullXiLogWeight_deriv_continuous",
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
  "slug": "actual-fullxilogweight-deriv-continuous--d29740cb458e640d53b0d0a4",
  "source": {
    "blob": "5d393c9bfbf5ed6d55e59979effc191ef87765f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variant9a0e1fb9cec318244a28ed9f734d242806749eac9340c13441b25aacb3f672aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d29740cb458e640d53b0d0a4e55aad9764437ff90ca290a2f97fd6f10fc95dfa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variant9a0e1fb9cec318244a28ed9f734d242806749eac9340c13441b25aacb3f672aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b1372be-c590-1a2a-ab0d-4a98e6a0d171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_fullXiLogWeight_deriv_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (deriv (fullXiLogWeight A)) := by
  have he : deriv (fullXiLogWeight A) = fun t =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 :=
    funext fun t => actual_fullXiLogWeight_deriv A t hA
  rw [he]
  exact (sourceCorrelation_deriv_contDiff hA).continuous_deriv_one.sub
    ((sourceCorrelation_deriv_contDiff hA).continuous.div_const 2)

/-- A uniform signed primitive of the actual Xi/log density would pay at most 11/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variant9a0e1fb9cec318244a28ed9f734d242806749eac9340c13441b25aacb3f672aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variant9a0e1fb9cec318244a28ed9f734d242806749eac9340c13441b25aacb3f672aa.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d393c9bfbf5ed6d55e59979effc191ef87765f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
