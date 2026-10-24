# smoothed_correlation_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38da38ec-3e0b-e0ed-0ad2-4798f179e6e8",
  "kind": "theorem",
  "lexical_name": "smoothed_correlation_integrable",
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
  "slug": "smoothed-correlation-integrable--825a3432de25940dff16b676",
  "source": {
    "blob": "4d62234dd52486b18705bce054cfb11be2920917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:825a3432de25940dff16b676d5cb6982517280c0df4911fd49239d30ca3cefb1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38da38ec-3e0b-e0ed-0ad2-4798f179e6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothed_correlation_integrable (A ε t : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun x ↦ smoothedTest A ε hε x * smoothedTest A ε hε (x - t)) volume := by
  have hf := (smoothedTest_contDiff A ε hA hε).continuous
  exact (hf.mul (hf.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    (smoothedTest_hasCompactSupport A ε hA hε).mul_right

/-- Correlation convergence keeps the original x-t orientation, for every real displacement.
The first factor alone confines the dominating function to the common source interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d62234dd52486b18705bce054cfb11be2920917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
