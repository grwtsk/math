# smoothMoment_eq_neg_negative_sub_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5a25102c301635ea3ad4a796c2320a813f3e75b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b872d87-c987-122e-25b4-6857dfa76aee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d5a1419-9bd2-8b54-0b37-2e26e0d1cc0e",
  "kind": "theorem",
  "lexical_name": "smoothMoment_eq_neg_negative_sub_initial",
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
  "slug": "smoothmoment-eq-neg-negative-sub-initial--c4c1be4c295d2c53387ddf1d",
  "source": {
    "blob": "e5a25102c301635ea3ad4a796c2320a813f3e75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 174,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4c1be4c295d2c53387ddf1df89e44c1508a389e5db72234780adb876a472189",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d5a1419-9bd2-8b54-0b37-2e26e0d1cc0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothMoment_eq_neg_negative_sub_initial
    (A : ℝ) (hA : 1 ≤ A) :
    smoothMoment A =
      -negativeSmoothMoment A -
        initialPositiveMoment A := by
  have hc :=
    (CorrelationRegularity.sourceCorrelation_contDiff A
      (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (t / 2)) := by
    fun_prop
  have hsplit :=
    intervalIntegral.integral_add_adjacent_intervals
      (μ := volume)
      (a := (0 : ℝ))
      (b := lowerEndpoint)
      (c := 2 * A)
      ((he.mul hc).intervalIntegrable _ _)
      ((he.mul hc).intervalIntegrable _ _)
  have hpole :=
    CorrelationMoment.pole_correlation_certificate A hA
  unfold smoothMoment negativeSmoothMoment initialPositiveMoment
  dsimp only [Pi.mul_apply] at hsplit
  linarith

/-- The exact smooth exponential companion is uniformly bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a25102c301635ea3ad4a796c2320a813f3e75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
