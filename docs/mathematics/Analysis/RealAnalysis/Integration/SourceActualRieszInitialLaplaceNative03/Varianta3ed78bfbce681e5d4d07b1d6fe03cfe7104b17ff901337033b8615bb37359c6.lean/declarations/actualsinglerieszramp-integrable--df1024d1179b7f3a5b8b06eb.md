# actualSingleRieszRamp_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f9f2c03-949d-cbd0-39be-97b5f2d7bf1f",
  "kind": "theorem",
  "lexical_name": "actualSingleRieszRamp_integrable",
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
  "slug": "actualsinglerieszramp-integrable--df1024d1179b7f3a5b8b06eb",
  "source": {
    "blob": "7463e3ea13c6f1eb257d023d7e7801617da37c78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df1024d1179b7f3a5b8b06eb59e108bcd52b326efa3dab1d6ea8bb388ba8f42b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f9f2c03-949d-cbd0-39be-97b5f2d7bf1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSingleRieszRamp_integrable {z : ℂ} (hz : 0 < z.re) {a : ℝ} (ha : 0 ≤ a) :
    IntegrableOn (fun t : ℝ => ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ)))
      (Ioi 0) := by
  apply (realRamp_integrable hz ha).mono'
    (by fun_prop : AEStronglyMeasurable
      (fun t : ℝ => ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ)))
      (volume.restrict (Ioi (0 : ℝ))))
  exact Eventually.of_forall (fun t => (complexRamp_norm z a t).le)

/-- Its exact absolute integral supplies the sum-integral norm budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Varianta3ed78bfbce681e5d4d07b1d6fe03cfe7104b17ff901337033b8615bb37359c6.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7463e3ea13c6f1eb257d023d7e7801617da37c78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
