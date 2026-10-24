# sourceCorrelation_eq_unitCorrelation_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9260509-cbca-18c6-a337-1077c4da0025",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_unitCorrelation_div",
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
  "slug": "sourcecorrelation-eq-unitcorrelation-div--22bb1afd5874e94bd20b50cb",
  "source": {
    "blob": "ee2f8651758d9cd780b60d8ca2fcca66cc6303cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22bb1afd5874e94bd20b50cb194bccad59c039e6e560e28bfc87f029c92dfa02",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9260509-cbca-18c6-a337-1077c4da0025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_unitCorrelation_div (A t : ℝ) (hA : 0 < A) :
    sourceCorrelation explicitSecondDerivative A t = unitCorrelation A (t/A) := by
  simpa only [mul_div_cancel₀ t hA.ne'] using
    sourceCorrelation_mul_eq_unitCorrelation A (t/A) hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2f8651758d9cd780b60d8ca2fcca66cc6303cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
