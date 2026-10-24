# shiftedCorrelation_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eca67523-656f-022f-8944-34d9771e8e72",
  "kind": "theorem",
  "lexical_name": "shiftedCorrelation_integrable",
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
  "slug": "shiftedcorrelation-integrable--5b4c25ebdeb2ac73d2afc0b2",
  "source": {
    "blob": "32038d87c50cc68de4f19caa2971a2f5308a5914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b4c25ebdeb2ac73d2afc0b2fb08ee2db032b24781544d19e8087fc7bb5a4135",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eca67523-656f-022f-8944-34d9771e8e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedCorrelation_integrable {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Integrable (fun y => sourceCorrelation explicitSecondDerivative A (t + y)) μ := by
  apply (integrable_const (1 : ℝ)).mono'
  · exact ((sourceCorrelation_contDiff A (by linarith)).continuous.comp
      (continuous_const.add continuous_id)).aestronglyMeasurable
  · exact ae_of_all _ (fun y => by
      simpa only [Real.norm_eq_abs] using actual_correlation_abs_le_one A (t + y) hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32038d87c50cc68de4f19caa2971a2f5308a5914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
