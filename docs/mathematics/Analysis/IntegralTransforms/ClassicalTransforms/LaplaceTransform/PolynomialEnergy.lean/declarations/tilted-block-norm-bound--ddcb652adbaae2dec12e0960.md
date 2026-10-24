# tilted_block_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7be9fa06-701f-1a7e-29bc-8d137fa84044",
  "kind": "theorem",
  "lexical_name": "tilted_block_norm_bound",
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
  "slug": "tilted-block-norm-bound--ddcb652adbaae2dec12e0960",
  "source": {
    "blob": "526a3d4795714d8b887cf33df827a148fa46649c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 54,
    "path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddcb652adbaae2dec12e0960b150a45b9dcbda65cbf0dd635871571af1ad7264",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be9fa06-701f-1a7e-29bc-8d137fa84044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tilted_block_norm_bound {f : ℝ → ℝ} (hf : Continuous f)
    {C q σ : ℝ} (hσ : 0 < σ)
    (henergy : ∀ T : ℝ, 0 ≤ T →
      (∫ u in (0 : ℝ)..T, f u ^ 2) ≤ C * (1 + T) ^ q) (n : ℕ) :
    (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u‖) ≤
      Real.exp (-σ * n) * (1 + C * ((n : ℝ) + 2) ^ q) := by
  have hfsq : Continuous (fun u ↦ f u ^ 2) := hf.pow 2
  have htilt : Continuous (fun u ↦ ‖Real.exp (-σ * u) * f u‖) := by
    exact ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hf).norm
  have hmajor : Continuous (fun u ↦ Real.exp (-σ * (n : ℝ)) * (1 + f u ^ 2)) :=
    continuous_const.mul (continuous_const.add hfsq)
  have hmono :
      (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u‖) ≤
      ∫ u in Icc (n : ℝ) ((n : ℝ) + 1),
        Real.exp (-σ * (n : ℝ)) * (1 + f u ^ 2) := by
    apply setIntegral_mono_on htilt.integrableOn_Icc hmajor.integrableOn_Icc
      measurableSet_Icc
    intro u hu
    rw [norm_mul, Real.norm_eq_abs (Real.exp _), abs_of_pos (Real.exp_pos _),
      Real.norm_eq_abs]
    have hexp : Real.exp (-σ * u) ≤ Real.exp (-σ * n) := by
      apply Real.exp_le_exp.mpr
      nlinarith [hu.1]
    have habs : |f u| ≤ 1 + f u ^ 2 := by
      nlinarith [sq_nonneg (|f u| - 1), sq_abs (f u)]
    exact mul_le_mul hexp habs (abs_nonneg _) (Real.exp_pos _).le
  have hsum : (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), (1 + f u ^ 2)) =
      1 + ∫ u in Icc (n : ℝ) ((n : ℝ) + 1), f u ^ 2 := by
    rw [integral_add (continuous_const.integrableOn_Icc) hfsq.integrableOn_Icc]
    simp
  have hprefix : (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), f u ^ 2) ≤
      ∫ u in Icc (0 : ℝ) ((n : ℝ) + 1), f u ^ 2 := by
    apply setIntegral_mono_set hfsq.integrableOn_Icc
      (Eventually.of_forall (fun u ↦ sq_nonneg (f u)))
    exact Eventually.of_forall (fun u hu ↦ ⟨le_trans (by positivity) hu.1, hu.2⟩)
  have hprefix_bound : (∫ u in Icc (0 : ℝ) ((n : ℝ) + 1), f u ^ 2) ≤
      C * ((n : ℝ) + 2) ^ q := by
    simpa only [intervalIntegral.integral_of_le (by positivity : (0 : ℝ) ≤ (n : ℝ) + 1),
      integral_Icc_eq_integral_Ioc, add_comm (1 : ℝ), add_assoc,
      show (1 : ℝ) + 1 = 2 by norm_num] using
        henergy ((n : ℝ) + 1) (by positivity)
  rw [integral_const_mul, hsum] at hmono
  exact hmono.trans (mul_le_mul_of_nonneg_left
    (add_le_add (le_refl 1) (hprefix.trans hprefix_bound)) (Real.exp_pos _).le)

/-- Polynomial integral energy implies absolute integrability at every positive tilt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/PolynomialEnergy.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526a3d4795714d8b887cf33df827a148fa46649c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
