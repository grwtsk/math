# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.HeightFiberCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f10ae4df95524c4ff26996ad7b0ac8844d2e65d4` · SHA-256 `a0eb4fb4deac92a8ebf8133004ad9f84c4f5bc25a6202d293d1d742b029aa13e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightFiberSuccessor

set_option autoImplicit false

/-!
# Exact fiber criterion and scope controls

The polynomial examples below are SYNTHETIC source functions, not zeta zeros.
They distinguish per-height capacity, whole-region capacity, signed height,
nonvanishing, and nondegenerate derivative certificates. All examples are
unexecuted Lean scripts; finite external tests do not constitute a replay.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFiberCriterion
open Complex Set
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
open CriticalStripHeightDescent.ZeroIsolation.HeightFiber
noncomputable section

example {U : Set ℂ} (hm : MirrorStable U) : RHOn U ↔ TargetCapacity U :=
  rhOn_iff_targetCapacity hm
example : TargetHeightInjective (Set.univ : Set ℂ) ↔ _root_.RiemannHypothesis :=
  global_height_injective_iff_rh
example : (∀ N : ℕ, TargetCapacity (heightWindow N)) ↔ _root_.RiemannHypothesis :=
  all_window_fibers_iff_rh
example (N : ℕ) (h : WindowRH N) : ShellRH N ↔ TargetCapacity (successorBox N) :=
  shell_iff_successorBox_fibers h
example : globalHeightProfile.status = .equivalent := globalHeightProfile_status
example (N : ℕ) : (windowFiberProfile N).status = .necessary := windowFiberProfile_status N
example : derivativeFiberProfile.status = .sufficient := derivativeFiberProfile_status
example : TargetCapacity criticalCarrier ↔ _root_.RiemannHypothesis := all_strip_fibers_iff_rh
example : TargetCapacity (heightWindow 17) := seventeen_window_fibers
example : TargetCapacity (mirrorBox 14 17 (1/2)) := seventeen_mixed_box_fibers
example : TargetCapacity FifteenWitness.domain := fifteen_derivative_fibers_capacity
example (h : TargetCapacity (successorBox 17)) : WindowRH 18 :=
  window_eighteen_of_fiber_capacity h

-- The height readout itself remains noninjective on the ambient complex plane.
example : ZetaCommutatorRoot.root.heightAt (0 : ℂ) =
    ZetaCommutatorRoot.root.heightAt (1 : ℂ) ∧ (0 : ℂ) ≠ 1 := by
  norm_num [ZetaCommutatorRoot.heightAt_eq_im]

-- Empty fibers are harmless; they do not prove coverage of actual target zeros.
example : TargetCapacity (∅ : Set ℂ) := by
  intro t z hz w hw hz0 hw0
  exact False.elim hz.1

def low : ℂ := ⟨1/2,1⟩
def high : ℂ := ⟨1/2,2⟩
def twoLevels (z : ℂ) : ℂ := (z-low)*(z-high)

lemma twoLevels_roots (z : ℂ) : twoLevels z = 0 ↔ z = low ∨ z = high := by
  simp only [twoLevels,mul_eq_zero,sub_eq_zero]

/-- Two different heights can each carry one allowed zero in a single region. -/
theorem twoLevels_fiber_capacity : SourceCapacity twoLevels (Set.univ : Set ℂ) := by
  intro t z hz w hw hz0 hw0
  rcases (twoLevels_roots z).mp hz0 with hzroot | hzroot
  · rcases (twoLevels_roots w).mp hw0 with hwroot | hwroot
    · exact hzroot.trans hwroot.symm
    · have heq := hz.2.trans hw.2.symm
      rw [hzroot,hwroot] at heq
      norm_num [ZetaCommutatorRoot.heightAt_eq_im,low,high] at heq
  · rcases (twoLevels_roots w).mp hw0 with hwroot | hwroot
    · have heq := hz.2.trans hw.2.symm
      rw [hzroot,hwroot] at heq
      norm_num [ZetaCommutatorRoot.heightAt_eq_im,low,high] at heq
    · exact hzroot.trans hwroot.symm

theorem twoLevels_not_whole_capacity : ¬ AtMostOneZero twoLevels (Set.univ : Set ℂ) := by
  intro h
  have heq := h low (Set.mem_univ _) high (Set.mem_univ _)
    (by simp [twoLevels]) (by simp [twoLevels])
  have hi := congrArg Complex.im heq
  norm_num [low,high] at hi

/-- Absolute height would incorrectly identify opposite signed fibers. -/
example : |ZetaCommutatorRoot.root.heightAt low| =
    |ZetaCommutatorRoot.root.heightAt ((starRingEnd ℂ) low)| ∧
    low ≠ (starRingEnd ℂ) low := by
  constructor
  · norm_num [ZetaCommutatorRoot.heightAt_eq_im,low]
  · intro h
    have hi := congrArg Complex.im h
    norm_num [low] at hi

def repeated (z : ℂ) : ℂ := (z-low)^2

lemma repeated_root {z : ℂ} (hz : repeated z = 0) : z = low := by
  have h : (z-low)*(z-low) = 0 := by simpa only [repeated,pow_two] using hz
  rcases mul_eq_zero.mp h with h | h
  · exact sub_eq_zero.mp h
  · exact sub_eq_zero.mp h

/-- Location capacity does not entail simplicity or a strict derivative disk. -/
theorem repeated_fiber_capacity : SourceCapacity repeated (Set.univ : Set ℂ) := by
  intro t z hz w hw hz0 hw0
  exact (repeated_root hz0).trans (repeated_root hw0).symm

lemma repeated_deriv_zero : deriv repeated low = 0 := by
  have h : HasDerivAt repeated 0 low := by
    simpa [repeated] using ((hasDerivAt_id low).sub_const low).pow 2
  exact h.deriv

theorem repeated_no_derivative_disk {U : Set ℂ} (hc : low ∈ U) :
    ¬ Nonempty (DerivativeDisk repeated U) := by
  rintro ⟨C⟩
  exact C.deriv_ne_zero hc repeated_deriv_zero

example : (∀ n : ℕ, 0 < 1 / ((n : ℝ)+1)) ∧
    ¬ (∃ e : ℝ, 0 < e ∧ ∀ n : ℕ, e ≤ 1 / ((n : ℝ)+1)) :=
  positive_gaps_without_uniform_lower_bound

-- The old lower seam is not a member of the next open-lower shell.
example : (⟨1/2,17⟩ : ℂ) ∈ successorBox 17 := by norm_num [successorBox,mirrorBox]
example : (⟨1/2,17⟩ : ℂ) ∉ upperHeightShell 17 := by
  norm_num [upperHeightShell,ZetaCommutatorRoot.heightAt_eq_im]
example : (⟨1/2,18⟩ : ℂ) ∈ successorBox 17 := by norm_num [successorBox,mirrorBox]

-- The complete higher-step family remains an input, not a consequence of a few levels.
example (hstep : ∀ N : ℕ, 17 ≤ N → WindowRH N → TargetCapacity (successorBox N)) :
    _root_.RiemannHypothesis := rh_of_seventeen_and_fiber_steps hstep

end
end GRWTSK.RiemannHypothesis.Checks.HeightFiberCriterion
```
