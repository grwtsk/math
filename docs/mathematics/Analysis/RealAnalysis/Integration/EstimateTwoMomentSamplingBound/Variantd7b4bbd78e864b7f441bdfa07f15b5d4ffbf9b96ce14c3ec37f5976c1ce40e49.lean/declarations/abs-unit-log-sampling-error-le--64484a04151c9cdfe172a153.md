# abs_unit_log_sampling_error_le

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
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e36f609c-b060-76a4-4743-f80c27b56c44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15416f2a-fa84-3dd7-c376-ba103711b6dd",
  "kind": "theorem",
  "lexical_name": "abs_unit_log_sampling_error_le",
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
  "slug": "abs-unit-log-sampling-error-le--64484a04151c9cdfe172a153",
  "source": {
    "blob": "3eee53ebca76f68027e0e5d0b392171226dd8c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64484a04151c9cdfe172a153ccee13908c8094550c2e60b4ad7da0fa3a9bf467",
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

Occurrence: `result:15416f2a-fa84-3dd7-c376-ba103711b6dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_unit_log_sampling_error_le
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (k : ℕ) (hk : 1 ≤ k) :
    |logSamplingTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          logSamplingTerm F x u| ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ),
        |logSamplingDerivative F x u| := by
  rw [unit_log_sampling_error_identity hF hx k hk,
    abs_neg]
  have hkle : (k : ℝ) ≤ k + 1 := by norm_num
  have hInt :
      IntervalIntegrable
        (fun u => |logSamplingDerivative F x u|)
        volume (k : ℝ) (k + 1 : ℝ) := by
    exact
      ((logSamplingDerivative_continuousOn_pos hF hx).abs.mono
        (fun u hu => by
          have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
          linarith [hu.1]))
        |>.intervalIntegrable_of_Icc hkle
  have h :=
    intervalIntegral.norm_integral_le_of_norm_le
      hkle
      (f := fun u : ℝ =>
        ((k + 1 : ℝ) - u) *
          logSamplingDerivative F x u)
      (g := fun u : ℝ =>
        |logSamplingDerivative F x u|)
      ?_ hInt
  · simpa [Real.norm_eq_abs] using h
  · filter_upwards with u hu
    have hw0 : 0 ≤ (k + 1 : ℝ) - u := by linarith
    have hw1 : (k + 1 : ℝ) - u ≤ 1 := by linarith
    rw [Real.norm_eq_abs, abs_mul,
      abs_of_nonneg hw0]
    nlinarith [abs_nonneg
      (logSamplingDerivative F x u)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eee53ebca76f68027e0e5d0b392171226dd8c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
