# fixed_kernel_zero_eq_bump_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78df220d-9fb3-df2b-de1f-fb6ba763256f",
  "kind": "theorem",
  "lexical_name": "fixed_kernel_zero_eq_bump_correlation",
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
  "slug": "fixed-kernel-zero-eq-bump-correlation--d42ecb004982a79804e69615",
  "source": {
    "blob": "fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 500,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d42ecb004982a79804e69615440f6f7e64e9c1c192546b2f74e845697a1a6e09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78df220d-9fb3-df2b-de1f-fb6ba763256f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_kernel_zero_eq_bump_correlation (s : ℝ) :
    JointPhaseScaling.fixedKernel 0 s = ∫ x, sourceBump x * sourceBump (x - s) := by
  have hb : scaledBump 1 = sourceBump := by
    funext x
    simp [scaledBump]
  have hc : Continuous sourceBump := by
    rw [← hb]
    exact scaled_bump_continuous 1 (by norm_num)
  have hcs : HasCompactSupport sourceBump := by
    rw [← hb]
    exact scaled_bump_has_compact_support 1 (by norm_num)
  have hsquare : Integrable (fun ξ ↦ Complex.normSq (sourceFourier sourceBump ξ)) := by
    have hd : Integrable JointPhaseScaling.bumpDensity := by
      have he : JointPhaseScaling.bumpMomentDensity 0 = JointPhaseScaling.bumpDensity := by
        funext u
        simp [JointPhaseScaling.bumpMomentDensity]
      rw [← he]
      exact JointPhaseScaling.bump_moment_density_integrable 0 (by norm_num)
    have hm := hd.const_mul (2 * Real.pi)
    convert hm using 1
    funext ξ
    unfold JointPhaseScaling.bumpDensity
    field_simp
  have heq := compact_correlation_eq_integral_cos_source sourceBump hc hcs hsquare s
  simpa [correlation, JointPhaseScaling.fixedKernel,
    JointPhaseScaling.bumpMomentDensity, JointPhaseScaling.bumpDensity] using heq.symm

/-- Actual bump positivity gives pointwise positivity of the base kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
