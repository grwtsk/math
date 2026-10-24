# actual_source_second_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f765639e-0edb-d92b-ef92-cbef7c87c60f",
  "kind": "theorem",
  "lexical_name": "actual_source_second_moment_integrable",
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
  "slug": "actual-source-second-moment-integrable--8144e56ec37221a9c68c0943",
  "source": {
    "blob": "8debdd434d418ac702e763db9a585e81c754682e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantca70458b8cdcef5d69e195e6557d0a06b44e20580f0f434ef20f6119079e382a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8144e56ec37221a9c68c0943bada852e068c6fe53f5172241456ce3bd085345e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantca70458b8cdcef5d69e195e6557d0a06b44e20580f0f434ef20f6119079e382a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f765639e-0edb-d92b-ef92-cbef7c87c60f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_second_moment_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun ξ : ℝ => ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) := by
  have hs := actual_standard_second_moment_integrable hA
  simp_rw [standardFourier_eq_sourceFourier] at hs
  have hscaled := hs.const_mul ((-(2 * Real.pi))^2)
  have heq : (fun ξ : ℝ => (-(2 * Real.pi))^2 * (ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ)))) =
      (fun ξ : ℝ => (-(2 * Real.pi) * ξ)^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ))) := by
    funext ξ
    ring
  rw [heq] at hscaled
  exact (integrable_comp_mul_left_iff _
    (neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero))).mp hscaled

/-- The original positive-exponential convention contributes exactly the factor 2π. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantca70458b8cdcef5d69e195e6557d0a06b44e20580f0f434ef20f6119079e382a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantca70458b8cdcef5d69e195e6557d0a06b44e20580f0f434ef20f6119079e382a.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8debdd434d418ac702e763db9a585e81c754682e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
