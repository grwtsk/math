# smoothedTest_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31895d39-d21d-b372-dd80-d8266119d202",
  "kind": "theorem",
  "lexical_name": "smoothedTest_contDiff",
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
  "slug": "smoothedtest-contdiff--de22d5ef20e330f6fea8c487",
  "source": {
    "blob": "e648b7f2c1c8918fecda6d9542fc2517ba5a570f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de22d5ef20e330f6fea8c4871a998c5e1b61e9dc59021e3b3f4cf39db51790c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31895d39-d21d-b372-dd80-d8266119d202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedTest_contDiff (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    ContDiff ℝ ∞ (smoothedTest A ε hε) :=
  (mollifier_hasCompactSupport ε hε).contDiff_convolution_left
    (ContinuousLinearMap.lsmul ℝ ℝ) (mollifier_contDiff ε hε)
    (ZeroTestRegularity.actualTest_integrable A hA).locallyIntegrable

/-- The actual even source test and even kernel give an even smooth test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e648b7f2c1c8918fecda6d9542fc2517ba5a570f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
