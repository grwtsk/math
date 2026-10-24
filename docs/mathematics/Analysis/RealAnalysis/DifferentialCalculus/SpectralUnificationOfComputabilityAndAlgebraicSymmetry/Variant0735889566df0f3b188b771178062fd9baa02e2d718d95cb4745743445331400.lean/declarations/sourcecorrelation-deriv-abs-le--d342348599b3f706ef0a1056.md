# sourceCorrelation_deriv_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0e18d58-f1ba-2d10-32f2-acc850d35d45",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deriv_abs_le",
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
  "slug": "sourcecorrelation-deriv-abs-le--d342348599b3f706ef0a1056",
  "source": {
    "blob": "4a3ce924ae399b2ba2a33e5dbe69ace579e57055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d342348599b3f706ef0a10565f867c4a5401141f788726c952ed60192c073785",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0e18d58-f1ba-2d10-32f2-acc850d35d45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deriv_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A := by
  let f := normalizedTest explicitSecondDerivative A
  let g : ℝ → ℝ := fun x ↦ A / 5 * deriv f x
  have hAp : 0 < A := by linarith
  have hAn : A ≠ 0 := hAp.ne'
  have hd := normalized_derivative_square_integrable A hA
  have hg : Integrable (fun x ↦ g x ^ 2) := by
    simpa only [g, mul_pow] using hd.const_mul ((A / 5)^2)
  have hf : Integrable (fun x ↦ f (x-t)^2) :=
    (normalized_square_integrable A hA).comp_sub_right t
  have hgc : Continuous g :=
    continuous_const.mul ((normalizedTest_contDiff A hAp).continuous_deriv (by norm_num))
  have hgs : HasCompactSupport g :=
    ((normalizedTest_hasCompactSupport A hAp).deriv).mul_left
  have hfc : Continuous (fun x ↦ f (x-t)) :=
    (normalizedTest_contDiff A hAp).continuous.comp (continuous_id.sub continuous_const)
  have hprod : Integrable (fun x ↦ g x * f (x-t)) :=
    (hgc.mul hfc).integrable_of_hasCompactSupport hgs.mul_right
  have hgn : (∫ x, g x^2) ≤ 1 := by
    have henergy := normalized_derivative_energy_le A hA
    have hmul := mul_le_mul_of_nonneg_left henergy (sq_nonneg (A/5))
    have heq : (A/5)^2 * (25/A^2) = 1 := by field_simp; ring
    simp only [g, mul_pow, integral_const_mul]
    exact heq ▸ hmul
  have hfn : (∫ x, f (x-t)^2) = 1 := by
    rw [integral_sub_right_eq_self (μ := volume) (fun x ↦ f x^2) t]
    exact normalized_square_integral A hA
  have upper := integral_mono (hprod.const_mul 2) (hg.add hf)
    (fun x ↦ show 2 * (g x * f (x-t)) ≤ g x^2 + f (x-t)^2 by
      nlinarith [sq_nonneg (g x - f (x-t))])
  have lower := integral_mono (hprod.const_mul (-2)) (hg.add hf)
    (fun x ↦ show -2 * (g x * f (x-t)) ≤ g x^2 + f (x-t)^2 by
      nlinarith [sq_nonneg (g x + f (x-t))])
  simp only [Pi.add_apply] at upper lower
  rw [integral_const_mul, integral_add hg hf, hfn] at upper lower
  have habs : |∫ x, g x * f (x-t)| ≤ 1 := abs_le.mpr ⟨by linarith, by linarith⟩
  have heq : (∫ x, g x * f (x-t)) =
      A/5 * deriv (sourceCorrelation explicitSecondDerivative A) t := by
    rw [sourceCorrelation_deriv_integral A t hA, ← integral_const_mul]
    apply integral_congr_ae
    filter_upwards with x
    dsimp [g, f]
    ring
  rw [heq, abs_mul, abs_of_pos (by positivity : 0 < A/5)] at habs
  apply (le_div_iff₀ hAp).2
  nlinarith


/-- The existing sampler's profile assumptions are discharged for the actual source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a3ce924ae399b2ba2a33e5dbe69ace579e57055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
