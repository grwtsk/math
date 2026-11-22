/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderResolventCutBounds

/-!
# Comparison of Alexander snapshot resolvents at different probes

The larger shift recovers the sum of the actual cut residual and the probe
mismatch. The inverse estimate is uniform in the larger snapshot.
-/

noncomputable section

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

variable {Prime Knot : Type*}

theorem movingProbe_resolvent_defect (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)} (hFG : F ⊆ G)
    (z w : ℂ) (hz : z.im ≠ 0) (hw : w.im ≠ 0) (x : SnapshotHilbert F) :
    let y := snapshotExtend hFG (weightedFiniteResolvent s code F w x)
    weightedFiniteResolvent s code G z (snapshotExtend hFG x) - y =
      weightedFiniteResolvent s code G z
        (resolventCutResidual s code hFG w x + (w - z) • y) := by
  intro y
  have h := shift_resolvent_difference_eq_cutResidual s code hFG w hw x
  change w • (weightedFiniteResolvent s code G w (snapshotExtend hFG x) - y) -
    weightedFiniteDiracCLM s code G
      (weightedFiniteResolvent s code G w (snapshotExtend hFG x) - y) =
    resolventCutResidual s code hFG w x at h
  rw [smul_sub, map_sub, sub_sub_sub_comm, weightedFiniteResolvent_inverse_apply s code G w hw] at h
  calc
    _ = weightedFiniteResolvent s code G z
        (snapshotExtend hFG x - (z • y - weightedFiniteDiracCLM s code G y)) := by
      rw [map_sub, weightedFiniteResolvent_apply_inverse s code G z hz]
    _ = _ := by
      congr 1
      rw [← h, sub_smul]
      abel

/-- An a posteriori error bound for comparing two finite observations at
possibly different nonreal probes. -/
theorem movingProbe_resolvent_error_le (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)} (hFG : F ⊆ G)
    (z w : ℂ) (hz : z.im ≠ 0) (hw : w.im ≠ 0) (x : SnapshotHilbert F) :
    let y := snapshotExtend hFG (weightedFiniteResolvent s code F w x)
    ‖weightedFiniteResolvent s code G z (snapshotExtend hFG x) - y‖ ≤
      |z.im|⁻¹ * (‖resolventCutResidual s code hFG w x‖ + ‖w - z‖ * ‖y‖) := by
  intro y
  rw [movingProbe_resolvent_defect s code hFG z w hz hw x]
  refine ((weightedFiniteResolvent s code G z).le_opNorm _).trans ?_
  apply mul_le_mul (weightedFiniteResolvent_norm_le s code G z hz) _ (norm_nonneg _)
    (inv_nonneg.mpr (abs_nonneg _))
  exact (norm_add_le _ _).trans (by rw [norm_smul])

/-- Even an exactly vanishing cut residual leaves a discrepancy at distinct
probes on a nonzero input. -/
theorem movingProbe_ne_of_zero_cut (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)} (hFG : F ⊆ G)
    (z w : ℂ) (hz : z.im ≠ 0) (hw : w.im ≠ 0) (hne : z ≠ w)
    (x : SnapshotHilbert F) (hx : x ≠ 0)
    (hcut : resolventCutResidual s code hFG w x = 0) :
    weightedFiniteResolvent s code G z (snapshotExtend hFG x) ≠
      snapshotExtend hFG (weightedFiniteResolvent s code F w x) := by
  intro he
  have h := movingProbe_resolvent_defect s code hFG z w hz hw x
  dsimp only at h
  rw [he, sub_self, hcut, zero_add, map_smul] at h
  have hv := (smul_eq_zero.mp h.symm).resolve_left (sub_ne_zero.mpr hne.symm)
  have hi := weightedFiniteResolvent_inverse_apply s code G z hz
    (snapshotExtend hFG (weightedFiniteResolvent s code F w x))
  rw [hv, smul_zero, map_zero, sub_zero] at hi
  have ha := congrArg (snapshotRestrict hFG) hi
  rw [snapshotRestrict_extend] at ha
  have hy : weightedFiniteResolvent s code F w x = 0 := by
    apply PiLp.ext
    intro i
    exact (congrArg (fun u : SnapshotHilbert F => u i) ha).symm
  have hf := weightedFiniteResolvent_inverse_apply s code F w hw x
  rw [hy, smul_zero, map_zero, sub_zero] at hf
  exact hx hf.symm

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
