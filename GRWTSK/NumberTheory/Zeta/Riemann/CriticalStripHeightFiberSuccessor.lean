/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightFiberCriterion
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandSeed

set_option autoImplicit false

/-!
# Exact fiber-capacity successor ports and a bounded witness

The common-height capacity criterion is now connected to the maintained window
successor. The closed lower seam is justified by the PRECEDING window. Without
that premise the open-lower shell does not classify its lower seam.

The concrete supplier here is the pinned source-level height-seventeen witness.
No higher window or all-height supplier is constructed in this module.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.HeightFiber
open Complex Set
noncomputable section

/-- A closed mirror-stable target box. Real boundaries stay in the carrier. -/
def successorBox (N : ℕ) : Set ℂ := mirrorBox (N : ℝ) ((N+1 : ℕ) : ℝ) (1/2)

lemma successorBox_mirror_stable (N : ℕ) : MirrorStable (successorBox N) :=
  mirrorBox_stable _ _ _

lemma successorBox_nonempty (N : ℕ) : (successorBox N).Nonempty :=
  mirrorBox_nonempty (by exact_mod_cast Nat.le_succ N) (by norm_num)

lemma mem_successorBox {N : ℕ} {z : ℂ} : z ∈ successorBox N ↔
    (0 : ℝ) ≤ z.re ∧ z.re ≤ 1 ∧ (N : ℝ) ≤ z.im ∧ z.im ≤ ((N+1 : ℕ) : ℝ) := by
  norm_num [successorBox,mirrorBox]

lemma upper_target_in_successorBox {N : ℕ} {z : ℂ}
    (hz : z ∈ upperHeightShell N) (hz0 : NontrivialZetaZero z) : z ∈ successorBox N := by
  have ht : (N : ℝ) < z.im ∧ z.im ≤ ((N+1 : ℕ) : ℝ) := by
    simpa only [upperHeightShell,Set.mem_setOf_eq,ZetaCommutatorRoot.heightAt_eq_im] using hz
  exact mem_successorBox.mpr
    ⟨hz0.mem_critical_strip.1.le,hz0.mem_critical_strip.2.le,ht.1.le,ht.2⟩

/-- Fiber capacity, not whole-box uniqueness, suffices for the canonical shell. -/
theorem shell_of_successorBox_fibers {N : ℕ}
    (h : TargetCapacity (successorBox N)) : ShellRH N := by
  apply (shellRH_iff_upperHeightShell N).mpr
  intro z hz hz0
  exact rhOn_of_targetCapacity (successorBox_mirror_stable N) h z
    (upper_target_in_successorBox hz hz0) hz0

/-- The lower seam consumes the prior window; it is not discarded by the shell. -/
theorem successorBox_fibers_of_shell {N : ℕ} (hbase : WindowRH N)
    (hshell : ShellRH N) : TargetCapacity (successorBox N) := by
  have hnext : WindowRH (N+1) := (window_succ_iff N).mpr ⟨hbase,hshell⟩
  apply targetCapacity_of_rhOn
  intro z hz hz0
  have hb := mem_successorBox.mp hz
  have hnonneg : 0 ≤ z.im := (Nat.cast_nonneg N).trans hb.2.2.1
  have hwindow : z ∈ heightWindow (N+1) := by
    change |ZetaCommutatorRoot.root.heightAt z| ≤ ((N+1 : ℕ) : ℝ)
    rw [ZetaCommutatorRoot.heightAt_eq_im,abs_of_nonneg hnonneg]
    exact hb.2.2.2
  exact hnext z hwindow hz0

/-- This equivalence is relative to the independently supplied previous window. -/
theorem shell_iff_successorBox_fibers {N : ℕ} (hbase : WindowRH N) :
    ShellRH N ↔ TargetCapacity (successorBox N) :=
  ⟨successorBox_fibers_of_shell hbase,shell_of_successorBox_fibers⟩

theorem window_successor_of_fibers {N : ℕ} (hbase : WindowRH N)
    (h : TargetCapacity (successorBox N)) : WindowRH (N+1) :=
  (window_succ_iff N).mpr ⟨hbase,shell_of_successorBox_fibers h⟩

/-- Per-height strict derivative disks are an analytic supplier, not an RH premise
in disguise claimed to have been constructed. There is no common-gap field. -/
theorem window_successor_of_fiber_derivatives {N : ℕ} (hbase : WindowRH N)
    (C : ∀ t : ℝ, DerivativeDisk poleNormalizedZeta (carrier (successorBox N) t)) :
    WindowRH (N+1) :=
  window_successor_of_fibers hbase (targetCapacity_of_derivativeDisks C)

/-- The independently supplied source-level height-seventeen result. -/
theorem seventeen_window_fibers : TargetCapacity (heightWindow 17) :=
  (window_iff_targetCapacity 17).mp SeventeenBandJet.windowRH_seventeen

theorem seventeen_mixed_box_fibers : TargetCapacity (mirrorBox 14 17 (1/2)) :=
  targetCapacity_of_capacity SeventeenBandJet.threeBand_target_capacity

/-- The existing actual derivative witness gives an inhabited slice supplier. -/
def fifteenDerivativeFibers (t : ℝ) :
    DerivativeDisk poleNormalizedZeta (carrier FifteenWitness.domain t) :=
  restrictDerivativeDisk FifteenWitness.certificate t

theorem fifteen_derivative_fibers_capacity : TargetCapacity FifteenWitness.domain :=
  targetCapacity_of_derivativeDisks fifteenDerivativeFibers

/-- The next LOCAL exact obligation; no derivative record for it is supplied here. -/
theorem seventeen_shell_iff_fiber_capacity :
    ShellRH 17 ↔ TargetCapacity (successorBox 17) :=
  shell_iff_successorBox_fibers SeventeenBandJet.windowRH_seventeen

theorem window_eighteen_of_fiber_capacity
    (h : TargetCapacity (successorBox 17)) : WindowRH 18 :=
  SeventeenBandJet.window_eighteen_of_shell (shell_of_successorBox_fibers h)

/-- At every future level, the new fiber obligation still has to be proved. -/
theorem rh_of_seventeen_and_fiber_steps
    (hstep : ∀ N : ℕ, 17 ≤ N → WindowRH N → TargetCapacity (successorBox N)) :
    _root_.RiemannHypothesis :=
  SeventeenBandJet.rh_of_above_seventeen
    (fun N hN hwindow => shell_of_successorBox_fibers (hstep N hN hwindow))

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.HeightFiber
