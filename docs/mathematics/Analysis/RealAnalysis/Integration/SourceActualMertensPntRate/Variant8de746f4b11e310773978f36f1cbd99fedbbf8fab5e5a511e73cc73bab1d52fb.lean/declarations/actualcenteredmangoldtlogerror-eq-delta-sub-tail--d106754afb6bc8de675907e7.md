# actualCenteredMangoldtLogError_eq_delta_sub_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b34fd1f-333b-9d2b-4070-5ee78f031239",
  "kind": "theorem",
  "lexical_name": "actualCenteredMangoldtLogError_eq_delta_sub_tail",
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
  "slug": "actualcenteredmangoldtlogerror-eq-delta-sub-tail--d106754afb6bc8de675907e7",
  "source": {
    "blob": "3b03b24cc42e79010eaaf447e0d57177b44df32c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant8de746f4b11e310773978f36f1cbd99fedbbf8fab5e5a511e73cc73bab1d52fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d106754afb6bc8de675907e7b004d95bff1e75a23aa04d853f290355e51e2fb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant8de746f4b11e310773978f36f1cbd99fedbbf8fab5e5a511e73cc73bab1d52fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b34fd1f-333b-9d2b-4070-5ee78f031239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredMangoldtLogError_eq_delta_sub_tail {t : ℝ} (ht : 0 ≤ t) :
    actualCenteredMangoldtLogError t = actualRelativePsiTimeError t -
      ∫ r in Ioi t, actualRelativePsiTimeError r := by
  have hs := intervalIntegral.integral_Ioi_sub_Ioi
    (actualRelativePsiTimeError_integrableOn.mono_set Ioi_subset_Ici_self) ht
  have hc := actualPntMertensLimit_eq_neg_gamma
  have hn := mangoldtLogError_eq_pnt_relative_primitive ht
  unfold actualCenteredMangoldtLogError
  unfold actualPntMertensLimit at hc
  linarith

/-- Factoring the genuine PNT exponential leaves an integrable half-rate majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant8de746f4b11e310773978f36f1cbd99fedbbf8fab5e5a511e73cc73bab1d52fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant8de746f4b11e310773978f36f1cbd99fedbbf8fab5e5a511e73cc73bab1d52fb.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b03b24cc42e79010eaaf447e0d57177b44df32c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
