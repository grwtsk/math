# logSampling_integral_Ioi_eq_shifted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3eee53ebca76f68027e0e5d0b392171226dd8c2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecdfcdb2-5adb-e525-046e-689275bd5e41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ede45c9c-ab27-82fa-2b62-68b4c466b9f3",
  "kind": "theorem",
  "lexical_name": "logSampling_integral_Ioi_eq_shifted",
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
  "slug": "logsampling-integral-ioi-eq-shifted--d89c97b262547b8e671ac3f1",
  "source": {
    "blob": "3eee53ebca76f68027e0e5d0b392171226dd8c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 333,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d89c97b262547b8e671ac3f14b634bf0c6bacdbf0e8fc7365ae0725cb287e939",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ede45c9c-ab27-82fa-2b62-68b4c466b9f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSampling_integral_Ioi_eq_shifted
    {F : ℝ → ℝ} {x : ℝ}
    (hx : 0 < x) :
    (∫ u in Ioi (1 : ℝ),
      logSamplingTerm F x u) =
      Real.exp (-Real.log x / 2) *
        ∫ r in Ioi (0 : ℝ),
          shiftedMomentIntegrand F (Real.log x) r := by
  have hsub :=
    integral_comp_exp_Ioi
      (logSamplingTerm F x) (0 : ℝ)
  have hsub' :
      (∫ r in Ioi (0 : ℝ),
        Real.exp r *
          logSamplingTerm F x (Real.exp r)) =
        ∫ u in Ioi (1 : ℝ),
          logSamplingTerm F x u := by
    simpa [smul_eq_mul] using hsub
  rw [← hsub']
  rw [← integral_const_mul]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro r hr
  unfold logSamplingTerm shiftedMomentIntegrand
  rw [Real.log_exp]
  have he :
      Real.exp r *
        Real.exp (-(Real.log x + r) / 2) =
      Real.exp (-Real.log x / 2) *
        Real.exp (r / 2) := by
    rw [← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  rw [he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eee53ebca76f68027e0e5d0b392171226dd8c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
