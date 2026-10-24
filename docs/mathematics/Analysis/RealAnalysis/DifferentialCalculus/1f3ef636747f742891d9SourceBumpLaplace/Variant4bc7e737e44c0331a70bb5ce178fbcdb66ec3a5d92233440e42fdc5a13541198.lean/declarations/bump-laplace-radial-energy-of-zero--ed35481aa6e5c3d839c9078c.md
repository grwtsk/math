# bump_laplace_radial_energy_of_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5b2cc36-8dc7-887b-a8b3-22e7a7598eb4",
  "kind": "theorem",
  "lexical_name": "bump_laplace_radial_energy_of_zero",
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
  "slug": "bump-laplace-radial-energy-of-zero--ed35481aa6e5c3d839c9078c",
  "source": {
    "blob": "b68ce8b2791c958889ebad8f34616976f3abbf8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed35481aa6e5c3d839c9078ca49a62b66865d75041d6ceeebdf3095830eed605",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b2cc36-8dc7-887b-a8b3-22e7a7598eb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bump_laplace_radial_energy_of_zero (z : ℂ) (hz : bumpLaplace z = 0) :
    z ^ 2 * (radialBumpMass z : ℂ) + (radialBumpEnergy z : ℂ) = 0 := by
  let F : ℝ → ℂ := fun r ↦ radialBumpFlux z r * conj (radialBump z r)
  let F' : ℝ → ℂ := fun r ↦ z ^ 2 *
    ((r ^ 10 * Complex.normSq (radialBump z r) : ℝ) : ℂ) +
      ((r ^ 10 * Complex.normSq (radialBumpSlope z r) : ℝ) : ℂ)
  have hd (r : ℝ) : HasDerivAt F (F' r) r := by
    have h := (radial_bump_flux_has_deriv_at z r).mul
      (radial_bump_has_deriv_at z r).star
    convert h using 1 <;> try rfl
    dsimp [F', radialBumpFlux]
    push_cast
    rw [← Complex.mul_conj (radialBump z r), ← Complex.mul_conj (radialBumpSlope z r)]
    ring
  have hi : IntervalIntegrable F' volume 0 1 := by
    apply Continuous.intervalIntegrable
    dsimp [F']
    exact ((Complex.continuous_ofReal.comp
      ((continuous_id.pow 10).mul
        (Complex.continuous_normSq.comp (radial_bump_continuous z)))).const_mul _).add
      (Complex.continuous_ofReal.comp ((continuous_id.pow 10).mul
        (Complex.continuous_normSq.comp (radial_bump_slope_continuous z))))
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ ↦ hd r) hi
  have hend : F 1 - F 0 = 0 := by simp [F, radialBumpFlux, radialBump, hz]
  rw [hend] at h
  dsimp [F'] at h
  have h1 : IntervalIntegrable (fun r : ℝ ↦ z ^ 2 *
      ((r ^ 10 * Complex.normSq (radialBump z r) : ℝ) : ℂ)) volume 0 1 :=
    ((Complex.continuous_ofReal.comp ((continuous_id.pow 10).mul
      (Complex.continuous_normSq.comp (radial_bump_continuous z)))).const_mul _).intervalIntegrable
        _ _
  have h2 : IntervalIntegrable (fun r : ℝ ↦
      ((r ^ 10 * Complex.normSq (radialBumpSlope z r) : ℝ) : ℂ)) volume 0 1 :=
    (Complex.continuous_ofReal.comp ((continuous_id.pow 10).mul
      (Complex.continuous_normSq.comp (radial_bump_slope_continuous z)))).intervalIntegrable _ _
  rw [intervalIntegral.integral_add h1 h2,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_ofReal,
    intervalIntegral.integral_ofReal] at h
  exact h

/-- An energy equation with positive mass forces any complex frequency onto the imaginary axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b68ce8b2791c958889ebad8f34616976f3abbf8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
