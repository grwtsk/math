# sourceCorrelation_seams_contDiffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba0dc448-51c8-d11c-a4ae-ebeb2a184774",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_seams_contDiffAt",
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
  "slug": "sourcecorrelation-seams-contdiffat--c920c093561eb92767771865",
  "source": {
    "blob": "42a4a4f45107dd2918d8bc348c5a69217eb1de39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 277,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c920c093561eb927677718656866aa5964d157b8a77f30791da59a4ddbac081d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba0dc448-51c8-d11c-a4ae-ebeb2a184774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_seams_contDiffAt (A : ℝ) (hA : 0 < A) :
    ContDiffAt ℝ 1 (sourceCorrelation explicitSecondDerivative A) 0 ∧
    ContDiffAt ℝ 1 (sourceCorrelation explicitSecondDerivative A) (-(2 * A)) ∧
    ContDiffAt ℝ 1 (sourceCorrelation explicitSecondDerivative A) (2 * A) :=
  ⟨(sourceCorrelation_contDiff A hA).contDiffAt,
    (sourceCorrelation_contDiff A hA).contDiffAt,
    (sourceCorrelation_contDiff A hA).contDiffAt⟩

/-- The finite C2.1 certificate exposes only the admitted radius-domain hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42a4a4f45107dd2918d8bc348c5a69217eb1de39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
