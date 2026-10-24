# cyclicFejerKernel_le_distanceSample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d40d6a37-5a52-36e9-c401-2db0f3be64e2",
  "kind": "theorem",
  "lexical_name": "cyclicFejerKernel_le_distanceSample",
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
  "slug": "cyclicfejerkernel-le-distancesample--f8499584e5e002a019deec63",
  "source": {
    "blob": "c69fddbea8830aa785c1e7b7f6ba27343f5d7f40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceSample.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8499584e5e002a019deec63c3288af5b052c88fe6943f7e9adda774a85c98a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceSample.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d40d6a37-5a52-36e9-c401-2db0f3be64e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicFejerKernel_le_distanceSample
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (r : ZMod (fejerOctavePeriod X)) :
    cyclicFejerKernel X N r ≤
      sampledTriangularKernelAtPeriod
        (fejerOctavePeriod X) N
        (cyclicFejerDistance X r) := by
  rcases hreg with ⟨hX, hN, hNL⟩
  let d := cyclicFejerDistance X r
  have hdMax : d ≤ 2 * X :=
    cyclicFejerDistance_le_twoX hX r
  have hL : 0 < fejerOctavePeriod X := by
    unfold fejerOctavePeriod
    omega
  have hdL : d ≤ fejerOctavePeriod X := by
    unfold fejerOctavePeriod
    omega
  rcases cyclicFejerDistance_eq_imp_boundary_pair hX r rfl with hr | hr
  · subst r
    unfold cyclicFejerKernel
    have hdLt : d < fejerOctavePeriod X := by
      unfold fejerOctavePeriod
      omega
    simp only [ZMod.val_natCast, Nat.mod_eq_of_lt hdLt]
    exact signedSample_le_normSample hL
  · subst r
    unfold cyclicFejerKernel
    by_cases hd0 : d = 0
    · subst d
      simp [sampledTriangularKernelAtPeriod,
        signedSampledTriangularKernelAtPeriod,
        fejerOctavePeriod]
      exact le_rfl
    · have hLdLt : fejerOctavePeriod X - d < fejerOctavePeriod X := by
        omega
      rw [ZMod.val_natCast, Nat.mod_eq_of_lt hLdLt]
      unfold signedSampledTriangularKernelAtPeriod
      have hscale : 0 ≤ (1 : ℝ) / (fejerOctavePeriod X : ℝ) := by
        positivity
      calc
        (1 / (fejerOctavePeriod X : ℝ)) *
            (symmetricTriangularKernel N
              (((((fejerOctavePeriod X - d : ℕ) : ℝ) /
                (fejerOctavePeriod X : ℝ))) :
                AddCircle (1 : ℝ))).re
          ≤
        (1 / (fejerOctavePeriod X : ℝ)) *
            ‖symmetricTriangularKernel N
              (((((fejerOctavePeriod X - d : ℕ) : ℝ) /
                (fejerOctavePeriod X : ℝ))) :
                AddCircle (1 : ℝ))‖ := by
              apply mul_le_mul_of_nonneg_left _ hscale
              exact (le_abs_self _).trans
                (Complex.abs_re_le_norm _)
        _ =
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d :=
            sampledKernel_reflected_eq hL hN hdL

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceSample.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceSample.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c69fddbea8830aa785c1e7b7f6ba27343f5d7f40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
