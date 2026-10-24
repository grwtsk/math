# bump_laplace_radial_energy_of_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61c180fdcb90a95cf292c5bb5ac4e81c082c5127",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db333a1b-8606-5c8f-e027-add713921a18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4864d066-3aa2-3c03-034f-10c2ced5e3fc",
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
  "slug": "bump-laplace-radial-energy-of-zero--6c1f73eb81e82ca744f83ca7",
  "source": {
    "blob": "61c180fdcb90a95cf292c5bb5ac4e81c082c5127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 294,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c1f73eb81e82ca744f83ca7728ae81bf78a53fc3cafc9b39f009ff01cc37635",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4864d066-3aa2-3c03-034f-10c2ced5e3fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–334.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c180fdcb90a95cf292c5bb5ac4e81c082c5127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
