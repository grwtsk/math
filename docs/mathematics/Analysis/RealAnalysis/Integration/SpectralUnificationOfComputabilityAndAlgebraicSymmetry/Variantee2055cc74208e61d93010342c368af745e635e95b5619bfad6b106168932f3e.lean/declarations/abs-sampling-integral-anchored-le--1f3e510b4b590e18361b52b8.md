# abs_sampling_integral_anchored_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc96dbea-7406-8dab-e446-2f0e8747fdf4",
  "kind": "theorem",
  "lexical_name": "abs_sampling_integral_anchored_le",
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
  "slug": "abs-sampling-integral-anchored-le--1f3e510b4b590e18361b52b8",
  "source": {
    "blob": "bfd3891d155ef0d1ec274c0d41b51fd96dce50e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 234,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f3e510b4b590e18361b52b892885eb7a35cf979ace6b105ac3bb6eaafddd5aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc96dbea-7406-8dab-e446-2f0e8747fdf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sampling_integral_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) (hMom : TwoMomentProfile F) {L s : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) :
    |∫ u in Ioi (1 : ℝ), logSamplingTerm F (Real.exp s) u| ≤
      Real.exp (-s / 2) * L * (4 * s + 16) := by
  rw [logSampling_integral_Ioi_eq_reflected hMom (Real.exp_pos s), Real.log_exp,
    abs_mul, abs_of_pos (Real.exp_pos _)]
  simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
    (abs_reflected_integral_anchored_le hF hMom hzero hL hderiv hs)
    (Real.exp_pos (-s / 2)).le

/-- Anchoring improves the finite sampler without changing its cutoff or moment hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfd3891d155ef0d1ec274c0d41b51fd96dce50e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
