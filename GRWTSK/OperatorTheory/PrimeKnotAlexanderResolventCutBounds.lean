/-
Copyright (c) 2026 grwtsk contributors. MIT.
-/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderResolventControl

/-!
# Detecting a cross-cut residual in Alexander resolvents

The difference of two nested snapshot resolvent vectors detects the actual
Dirac residual on zero extension. Its two-sided bounds distinguish a
computable sufficient error budget from a necessary bound at a fixed cut.
-/

noncomputable section

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

variable {Prime Knot : Type*}

/-- The cut residual at the smaller resolvent vector, before applying the
larger resolvent. -/
def resolventCutResidual (s : Source Prime Knot) (code : Vertex Prime Knot → ℕ)
    {F G : Finset (Vertex Prime Knot)} (hFG : F ⊆ G) (z : ℂ)
    (x : SnapshotHilbert F) : SnapshotHilbert G :=
  let y := weightedFiniteResolvent s code F z x
  weightedFiniteDiracCLM s code G (snapshotExtend hFG y) -
    snapshotExtend hFG (weightedFiniteDiracCLM s code F y)

/-- The resolvent difference determines the residual through the larger shift. -/
theorem shift_resolvent_difference_eq_cutResidual (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (z : ℂ) (hz : z.im ≠ 0) (x : SnapshotHilbert F) :
    let d := weightedFiniteResolvent s code G z (snapshotExtend hFG x) -
      snapshotExtend hFG (weightedFiniteResolvent s code F z x)
    z • d - weightedFiniteDiracCLM s code G d = resolventCutResidual s code hFG z x := by
  dsimp only
  rw [weightedFiniteResolvent_extend_defect s code hFG z hz x]
  exact weightedFiniteResolvent_inverse_apply s code G z hz _

/-- At a fixed nonreal parameter, both the residual-to-error and error-to-residual
bounds use the same source snapshots and the same test vector. -/
theorem resolventCutResidual_twoSided (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (z : ℂ) (hz : z.im ≠ 0) (x : SnapshotHilbert F) :
    let d := weightedFiniteResolvent s code G z (snapshotExtend hFG x) -
      snapshotExtend hFG (weightedFiniteResolvent s code F z x)
    |z.im| * ‖d‖ ≤ ‖resolventCutResidual s code hFG z x‖ ∧
      ‖resolventCutResidual s code hFG z x‖ ≤
        (‖z‖ + ‖weightedFiniteDiracCLM s code G‖) * ‖d‖ := by
  intro d
  have h : z • d - weightedFiniteDiracCLM s code G d =
      resolventCutResidual s code hFG z x :=
    shift_resolvent_difference_eq_cutResidual s code hFG z hz x
  rw [← h]
  refine ⟨weightedFiniteShift_norm_lower s code G z d, ?_⟩
  calc
    _ ≤ ‖z • d‖ + ‖weightedFiniteDiracCLM s code G d‖ := norm_sub_le _ _
    _ ≤ ‖z‖ * ‖d‖ + ‖weightedFiniteDiracCLM s code G‖ * ‖d‖ := by
      rw [norm_smul]
      exact add_le_add_right ((weightedFiniteDiracCLM s code G).le_opNorm d) _
    _ = _ := (add_mul _ _ _).symm

/-- A nonzero residual on even one input falsifies exact resolvent extension
on that input. Conversely a zero residual gives exact extension there. -/
theorem resolvent_extend_eq_iff_cutResidual_eq_zero (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (z : ℂ) (hz : z.im ≠ 0) (x : SnapshotHilbert F) :
    weightedFiniteResolvent s code G z (snapshotExtend hFG x) =
      snapshotExtend hFG (weightedFiniteResolvent s code F z x) ↔
      resolventCutResidual s code hFG z x = 0 := by
  constructor
  · intro heq
    have h := shift_resolvent_difference_eq_cutResidual s code hFG z hz x
    dsimp only at h
    simpa only [heq, sub_self, smul_zero, map_zero] using h.symm
  · intro h
    apply sub_eq_zero.mp
    rw [weightedFiniteResolvent_extend_defect s code hFG z hz x]
    change weightedFiniteResolvent s code G z (resolventCutResidual s code hFG z x) = 0
    rw [h, map_zero]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
