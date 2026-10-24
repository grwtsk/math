# radial_energy_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "187d63e7ebb0cccc5b676aef400f066d969d985d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 342,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1990b0b-0fae-45da-9b38-515fd8dd7c58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7bc3fc4-ea28-5e99-e7f6-e111d867b676",
  "kind": "theorem",
  "lexical_name": "radial_energy_identity",
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
  "slug": "radial-energy-identity--12d458520ccb0498e3d5a24b",
  "source": {
    "blob": "187d63e7ebb0cccc5b676aef400f066d969d985d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 342,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12d458520ccb0498e3d5a24b91307a28280a0b9260081d2766a3bd51fb919113",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7bc3fc4-ea28-5e99-e7f6-e111d867b676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radial_energy_identity (z : ℂ) (hz : bumpMoment 0 z = 0) :
    -(radialEnergy z : ℂ) = z ^ 2 * (radialMass z : ℂ) := by
  have hdp : Continuous (fun r : ℝ => z * bumpMoment 1 (z * (r : ℂ))) := by
    have hm := bumpMoment_continuous 1
    fun_prop
  have hdf : Continuous (fun r : ℝ => z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r) := by
    exact ((continuous_const.mul (Complex.continuous_ofReal.pow 10)).mul
      (radialProfile_continuous z))
  have hid := intervalIntegral.integral_deriv_mul_eq_sub_of_hasDerivAt
    (a := (0 : ℝ)) (b := 1) (radialFlux_continuous z).continuousOn
    (radialProfile_continuous z |>.star |>.continuousOn)
    (fun r _ => radialFlux_hasDerivAt z r)
    (fun r _ => (radialProfile_hasDerivAt z r).star)
    (hdf.intervalIntegrable 0 1) (hdp.star.intervalIntegrable 0 1)
  have hrhs : radialFlux z 1 * star (radialProfile z 1) -
      radialFlux z 0 * star (radialProfile z 0) = 0 := by
    simp [radialFlux, radialProfile, hz]
  rw [hrhs] at hid
  have hpoint (r : ℝ) :
      z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r * star (radialProfile z r) +
      radialFlux z r * star (z * bumpMoment 1 (z * (r : ℂ))) =
      z ^ 2 * ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ) +
        ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ) := by
    rw [Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_pow,
      ← Complex.mul_conj']
    rw [Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_pow,
      ← Complex.mul_conj']
    dsimp [radialFlux]
    ring
  have hiD : IntervalIntegrable
      (fun r : ℝ => ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ)) volume 0 1 :=
    by
      apply Continuous.intervalIntegrable
      exact Complex.continuous_ofReal.comp
        ((continuous_id.pow 10).mul ((radialProfile_continuous z).norm.pow 2))
  have hiE : IntervalIntegrable (fun r : ℝ =>
      ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ)) volume 0 1 :=
    by
      apply Continuous.intervalIntegrable
      exact Complex.continuous_ofReal.comp
        ((continuous_id.pow 10).mul (hdp.norm.pow 2))
  have heq : z ^ 2 * (radialMass z : ℂ) + (radialEnergy z : ℂ) = 0 := by
    calc
      _ = ∫ r : ℝ in 0..1,
          z ^ 2 * ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ) +
            ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ) := by
        rw [intervalIntegral.integral_add (hiD.const_mul (z ^ 2)) hiE,
          intervalIntegral.integral_const_mul, intervalIntegral.integral_ofReal,
          intervalIntegral.integral_ofReal]
        rfl
      _ = 0 := by
        rw [← hid]
        apply intervalIntegral.integral_congr
        intro r _
        exact (hpoint r).symm
  linear_combination -heq

/-- Every zero of the actual source bump transform lies on the imaginary axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `187d63e7ebb0cccc5b676aef400f066d969d985d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
