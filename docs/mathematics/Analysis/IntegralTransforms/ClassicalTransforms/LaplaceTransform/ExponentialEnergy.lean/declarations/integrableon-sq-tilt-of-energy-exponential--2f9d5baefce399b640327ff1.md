# integrableOn_sq_tilt_of_energy_exponential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a95d9c19-f2a8-d78e-6275-24678874e221",
  "kind": "theorem",
  "lexical_name": "integrableOn_sq_tilt_of_energy_exponential",
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
  "slug": "integrableon-sq-tilt-of-energy-exponential--2f9d5baefce399b640327ff1",
  "source": {
    "blob": "c16035cb063fb71371e19b294ab32eb51862b9ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 14,
    "path": "GRWTSK/Analysis/LaplaceTransform/ExponentialEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f9d5baefce399b640327ff13c5013a440ad13a16dc1d243d7c0c8e4596a5cb4",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a95d9c19-f2a8-d78e-6275-24678874e221`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_sq_tilt_of_energy_exponential {f : ℝ → ℝ} (hf : Continuous f)
    {C δ σ : ℝ} (hσ : 0 < σ) (hgap : δ < σ)
    (hb : ∀ T : ℝ, 0 ≤ T →
      (∫ u in (0 : ℝ)..T, f u ^ 2) ≤ C * Real.exp (δ * T)) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * f u ^ 2) (Ici 0) := by
  have hfsq : Continuous (fun u ↦ f u ^ 2) := hf.pow 2
  have ht : Continuous (fun u ↦ Real.exp (-σ * u) * f u ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hfsq
  have hblock (n : ℕ) :
      (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u ^ 2‖) ≤
        (C * Real.exp δ) * Real.exp (-(σ - δ) * n) := by
    have hm : Continuous (fun u ↦ Real.exp (-σ * (n : ℝ)) * f u ^ 2) :=
      continuous_const.mul hfsq
    have hi :
        (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u ^ 2‖) ≤
          ∫ u in Icc (n : ℝ) ((n : ℝ) + 1), Real.exp (-σ * (n : ℝ)) * f u ^ 2 := by
      apply setIntegral_mono_on ht.norm.integrableOn_Icc hm.integrableOn_Icc
        measurableSet_Icc
      intro u hu
      rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (Real.exp_pos _).le (sq_nonneg _))]
      apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
      exact Real.exp_le_exp.mpr (by nlinarith [hu.1])
    have hp : (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), f u ^ 2) ≤
        ∫ u in Icc (0 : ℝ) ((n : ℝ) + 1), f u ^ 2 := by
      apply setIntegral_mono_set hfsq.integrableOn_Icc (ae_of_all _ (fun u ↦ sq_nonneg (f u)))
      exact ae_of_all _ (fun u hu ↦ ⟨le_trans (Nat.cast_nonneg n) hu.1, hu.2⟩)
    have he : (∫ u in Icc (0 : ℝ) ((n : ℝ) + 1), f u ^ 2) ≤
        C * Real.exp (δ * ((n : ℝ) + 1)) := by
      simpa only [intervalIntegral.integral_of_le (by positivity : (0 : ℝ) ≤ (n : ℝ) + 1),
        integral_Icc_eq_integral_Ioc] using hb ((n : ℝ) + 1) (by positivity)
    rw [integral_const_mul] at hi
    calc
      _ ≤ Real.exp (-σ * n) * (C * Real.exp (δ * ((n : ℝ) + 1))) :=
        hi.trans (mul_le_mul_of_nonneg_left (hp.trans he) (Real.exp_pos _).le)
      _ = _ := by
        have hexp : Real.exp (-σ * (n : ℝ)) * Real.exp (δ * ((n : ℝ) + 1)) =
            Real.exp δ * Real.exp (-(σ - δ) * n) := by
          rw [← Real.exp_add, ← Real.exp_add]
          congr 1
          ring
        calc
          _ = C * (Real.exp (-σ * (n : ℝ)) * Real.exp (δ * ((n : ℝ) + 1))) := by ring
          _ = _ := by rw [hexp]; ring
  have hs : Summable (fun n : ℕ ↦ Real.exp (-(σ - δ) * n)) := by
    simpa only [Real.rpow_zero, mul_one] using
      summable_exp_neg_mul_nat_add_rpow (σ - δ) 0 (sub_pos.mpr hgap)
  have hnorm : Summable (fun n : ℕ ↦
      ∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u ^ 2‖) :=
    Summable.of_nonneg_of_le (fun n ↦ integral_nonneg (fun _ ↦ norm_nonneg _))
      hblock (hs.mul_left (C * Real.exp δ))
  have hi : IntegrableOn (fun u ↦ Real.exp (-σ * u) * f u ^ 2)
      (⋃ n : ℕ, Icc (n : ℝ) ((n : ℝ) + 1)) :=
    integrableOn_iUnion_of_summable_integral_norm (fun _ ↦ ht.integrableOn_Icc) hnorm
  apply hi.mono_set
  intro u hu
  exact mem_iUnion.mpr ⟨⌊u⌋₊, Nat.floor_le hu, (Nat.lt_floor_add_one u).le⟩

end GRWTSK.RiemannHypothesis.CCC
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/ExponentialEnergy.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c16035cb063fb71371e19b294ab32eb51862b9ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
