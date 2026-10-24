# logarithmic_profile_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2db90bc4-6738-38ca-640b-fd4a313efdb7",
  "kind": "theorem",
  "lexical_name": "logarithmic_profile_contDiff",
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
  "slug": "logarithmic-profile-contdiff--0c1f15a08a7913a8c825be8c",
  "source": {
    "blob": "857184675998761f127f5083e6c4cb3b65b6c984",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 36,
    "path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileRegularity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c1f15a08a7913a8c825be8c3b874c676cb902eb6fd9b7765b307c2f5432795f",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/LogarithmicProfileRegularity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2db90bc4-6738-38ca-640b-fd4a313efdb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_profile_contDiff {F : ℝ → ℝ} {n : ℕ∞ω} {lo : ℝ}
    (hF : ContDiff ℝ n F) (silent : ∀ u : ℝ, u < lo → F u = 0) (t : ℝ) :
    ContDiff ℝ n (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)) := by
  apply contDiff_iff_contDiffAt.mpr
  intro x
  by_cases positive : 0 < x
  · have logAt : ContDiffAt ℝ n Real.log x := Real.contDiffAt_log.mpr positive.ne'
    have sqrtAt : ContDiffAt ℝ n Real.sqrt x := Real.contDiffAt_sqrt positive.ne'
    have shift : ContDiffAt ℝ n (fun y : ℝ ↦ t + Real.log y) x :=
      contDiffAt_const.add logAt
    exact (logAt.div sqrtAt (ne_of_gt (Real.sqrt_pos.mpr positive))).mul
      (hF.contDiffAt.comp x shift)
  · have threshold : x < Real.exp (lo - t) :=
      lt_of_le_of_lt (not_lt.mp positive) (Real.exp_pos _)
    have localZero : (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y)) =ᶠ[𝓝 x]
        fun _ ↦ (0 : ℝ) := by
      filter_upwards [Iio_mem_nhds threshold] with y hy
      exact logarithmic_profile_zero_left silent hy
    exact contDiffAt_const.congr_of_eventuallyEq localZero

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileRegularity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/LogarithmicProfileRegularity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileRegularity.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `857184675998761f127f5083e6c4cb3b65b6c984` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
