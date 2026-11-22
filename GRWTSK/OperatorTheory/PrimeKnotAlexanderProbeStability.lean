/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderMovingProbe

/-!
# Uniform probe stability for the finite Alexander resolvents

The operator-norm bound for moving probes is independent of the finite
carrier once the probes stay a positive distance from the real axis.
-/

noncomputable section

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

variable {Prime Knot : Type*}

theorem weightedFiniteResolvent_sub_apply (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z w : ℂ) (hz : z.im ≠ 0) (hw : w.im ≠ 0) (x : SnapshotHilbert F) :
    weightedFiniteResolvent s code F z x - weightedFiniteResolvent s code F w x =
      (w - z) • weightedFiniteResolvent s code F z (weightedFiniteResolvent s code F w x) := by
  simpa only [resolventCutResidual, snapshotExtend_refl, sub_self, zero_add, map_smul] using
    movingProbe_resolvent_defect s code (subset_rfl : F ⊆ F) z w hz hw x

theorem weightedFiniteResolvent_probe_norm_le (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z w : ℂ) (hz : z.im ≠ 0) (hw : w.im ≠ 0) :
    ‖weightedFiniteResolvent s code F z - weightedFiniteResolvent s code F w‖ ≤
      ‖w - z‖ * |z.im|⁻¹ * |w.im|⁻¹ := by
  have hzbound (x : SnapshotHilbert F) :
      ‖weightedFiniteResolvent s code F z x‖ ≤ |z.im|⁻¹ * ‖x‖ :=
    ((weightedFiniteResolvent s code F z).le_opNorm x).trans
      (mul_le_mul_of_nonneg_right (weightedFiniteResolvent_norm_le s code F z hz) (norm_nonneg _))
  have hwbound (x : SnapshotHilbert F) :
      ‖weightedFiniteResolvent s code F w x‖ ≤ |w.im|⁻¹ * ‖x‖ :=
    ((weightedFiniteResolvent s code F w).le_opNorm x).trans
      (mul_le_mul_of_nonneg_right (weightedFiniteResolvent_norm_le s code F w hw) (norm_nonneg _))
  apply ContinuousLinearMap.opNorm_le_bound _ (by positivity)
  intro x
  rw [sub_apply, weightedFiniteResolvent_sub_apply s code F z w hz hw,
    norm_smul]
  calc
    _ ≤ ‖w - z‖ * (|z.im|⁻¹ * ‖weightedFiniteResolvent s code F w x‖) :=
      mul_le_mul_of_nonneg_left (hzbound _) (norm_nonneg _)
    _ ≤ ‖w - z‖ * (|z.im|⁻¹ * (|w.im|⁻¹ * ‖x‖)) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_left (hwbound x) (inv_nonneg.mpr (abs_nonneg _))) (norm_nonneg _)
    _ = _ := by ring

/-- Same-snapshot comparisons have a common Lipschitz constant on both
half-planes at distance at least δ from the real axis. -/
theorem weightedFiniteResolvent_probe_uniform_le (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z w : ℂ) {δ : ℝ} (hδ : 0 < δ) (hz : δ ≤ |z.im|) (hw : δ ≤ |w.im|) :
    ‖weightedFiniteResolvent s code F z - weightedFiniteResolvent s code F w‖ ≤
      ‖w - z‖ * δ⁻¹ * δ⁻¹ := by
  have hz' : 0 < |z.im| := hδ.trans_le hz
  have hw' : 0 < |w.im| := hδ.trans_le hw
  refine (weightedFiniteResolvent_probe_norm_le s code F z w
    (abs_pos.mp hz') (abs_pos.mp hw')).trans ?_
  exact mul_le_mul
    (mul_le_mul_of_nonneg_left (inv_anti₀ hδ hz) (norm_nonneg _))
    (inv_anti₀ hδ hw) (inv_nonneg.mpr hw'.le) (by positivity)

/-- A converging probe sequence may be replaced by its fixed nonreal limit
with an operator-norm error tending to zero in each corresponding snapshot. -/
theorem moving_probe_norm_error_tendsto_zero (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : ℕ → Finset (Vertex Prime Knot))
    (probe : ℕ → ℂ) (w : ℂ) {δ : ℝ} (hδ : 0 < δ)
    (hp : ∀ n, δ ≤ |(probe n).im|) (hw : δ ≤ |w.im|)
    (converges : Filter.Tendsto probe Filter.atTop (nhds w)) :
    Filter.Tendsto (fun n =>
      ‖weightedFiniteResolvent s code (F n) (probe n) -
        weightedFiniteResolvent s code (F n) w‖) Filter.atTop (nhds 0) := by
  have hdiff := ((tendsto_const_nhds (x := w)).sub converges).norm
  have boundTends : Filter.Tendsto (fun n => ‖w - probe n‖ * δ⁻¹ * δ⁻¹)
      Filter.atTop (nhds 0) := by
    simpa using (hdiff.mul_const δ⁻¹).mul_const δ⁻¹
  exact squeeze_zero (fun _ => norm_nonneg _)
    (fun n => weightedFiniteResolvent_probe_uniform_le s code (F n) (probe n) w
      hδ (hp n) hw) boundTends

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
