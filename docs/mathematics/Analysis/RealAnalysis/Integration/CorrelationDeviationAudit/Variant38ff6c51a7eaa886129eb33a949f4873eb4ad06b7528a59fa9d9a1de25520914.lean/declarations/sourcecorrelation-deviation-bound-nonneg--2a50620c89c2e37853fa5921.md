# sourceCorrelation_deviation_bound_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3a6bbdb727104b55c9e4fe4e459e6c20ba69a9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38ff6c51a7eaa886129eb33a949f4873eb4ad06b7528a59fa9d9a1de25520914.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:655eddf1-4b30-7608-318a-1a446d56f60c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e617b0f-5f7b-1dec-1869-7b2b5ee2440c",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deviation_bound_nonneg",
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
  "slug": "sourcecorrelation-deviation-bound-nonneg--2a50620c89c2e37853fa5921",
  "source": {
    "blob": "c3a6bbdb727104b55c9e4fe4e459e6c20ba69a9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationDeviationAudit/Variant38ff6c51a7eaa886129eb33a949f4873eb4ad06b7528a59fa9d9a1de25520914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a50620c89c2e37853fa59215a94d0151d903c9d7b1ef2031cdce0fcddca7d2f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationDeviationAudit/Variant38ff6c51a7eaa886129eb33a949f4873eb4ad06b7528a59fa9d9a1de25520914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e617b0f-5f7b-1dec-1869-7b2b5ee2440c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceCorrelation_deviation_bound_nonneg (A t : ℝ) (hA : 1 ≤ A)
    (ht : 0 ≤ t) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 65 * t ^ 2 / (6 * A ^ 2) := by
  rw [sourceCorrelation_deviation_integral A t hA]
  have hd := sourceCorrelation_derivative_intervalIntegrable A 0 t hA
  calc
    _ ≤ ∫ u in 0..t, |deriv (sourceCorrelation explicitSecondDerivative A) u| := by
      simpa only [Real.norm_eq_abs] using
        intervalIntegral.norm_integral_le_integral_norm (f := deriv
          (sourceCorrelation explicitSecondDerivative A)) ht
    _ ≤ ∫ u in 0..t, (65 / (3 * A ^ 2)) * u := by
      apply intervalIntegral.integral_mono_on ht
        (by simpa only [Real.norm_eq_abs] using hd.norm)
        ((continuous_const.mul continuous_id).intervalIntegrable 0 t)
      intro u hu
      have h := sourceCorrelation_derivative_linear_bound A u hA
      rwa [abs_of_nonneg hu.1] at h
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, integral_id]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationDeviationAudit/Variant38ff6c51a7eaa886129eb33a949f4873eb4ad06b7528a59fa9d9a1de25520914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationDeviationAudit/Variant38ff6c51a7eaa886129eb33a949f4873eb4ad06b7528a59fa9d9a1de25520914.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a6bbdb727104b55c9e4fe4e459e6c20ba69a9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
