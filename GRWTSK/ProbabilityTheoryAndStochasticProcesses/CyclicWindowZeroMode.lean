/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.SignedCyclicWalkPacket

/-!
# The exact zero mode inside the uncentered cyclic-window statistic

Every root is counted, and all original real labels remain signed. Centered
window control alone leaves the global mean unpaid. The Liouville application
uses the predecessor's actual positive-index integer coefficients. No uniform
window-diffusion estimate or RH theorem is asserted.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.ProbabilityAndMathematicalStatistics.SignedCyclicWalkPacket
namespace CyclicWindow

def window {N : ℕ} [NeZero N] (a : ZMod N → ℝ) (H : ℕ) (t : ZMod N) : ℝ :=
  ∑ r ∈ Finset.range H, a (t + (r : ZMod N))

def uncentered {N : ℕ} [NeZero N] (a : ZMod N → ℝ) (H : ℕ) : ℝ :=
  ∑ t : ZMod N, window a H t ^ 2

def mean {N : ℕ} [NeZero N] (a : ZMod N → ℝ) (H : ℕ) : ℝ :=
  ((H : ℝ) * signedWalk a) / (N : ℝ)

def centered {N : ℕ} [NeZero N] (a : ZMod N → ℝ) (H : ℕ) : ℝ :=
  ∑ t : ZMod N, (window a H t - mean a H) ^ 2

def zeroMode {N : ℕ} [NeZero N] (a : ZMod N → ℝ) (H : ℕ) : ℝ :=
  ((H : ℝ) * signedWalk a) ^ 2 / (N : ℝ)

/-- Each original label has exactly H occurrences, even when H is not small. -/
theorem sum_windows {N : ℕ} [NeZero N] (a : ZMod N → ℝ) (H : ℕ) :
    (∑ t : ZMod N, window a H t) = (H : ℝ) * signedWalk a := by
  classical
  unfold window
  rw [Finset.sum_comm]
  calc
    _ = ∑ _r ∈ Finset.range H, signedWalk a := by
      apply Finset.sum_congr rfl
      intro r _
      exact Equiv.sum_comp (Equiv.addRight (r : ZMod N)) a
    _ = _ := by simp

/-- Pythagorean decomposition of the full signed window statistic. -/
theorem uncentered_eq_zeroMode_add_centered {N : ℕ} [NeZero N]
    (a : ZMod N → ℝ) (H : ℕ) :
    uncentered a H = zeroMode a H + centered a H := by
  classical
  have hn : (N : ℝ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  have hc : (∑ t : ZMod N, 2 * window a H t * mean a H) =
      2 * mean a H * ((H : ℝ) * signedWalk a) := by
    calc
      _ = 2 * mean a H * ∑ t : ZMod N, window a H t := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro t _
        ring
      _ = _ := by rw [sum_windows]
  have he : centered a H = uncentered a H -
      2 * mean a H * ((H : ℝ) * signedWalk a) + (N : ℝ) * mean a H ^ 2 := by
    unfold centered
    simp_rw [sub_sq]
    rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, hc]
    simp [uncentered, ZMod.card]
  rw [he]
  unfold zeroMode mean
  field_simp [hn]
  <;> ring

theorem centered_nonneg {N : ℕ} [NeZero N] (a : ZMod N → ℝ) (H : ℕ) :
    0 ≤ centered a H := Finset.sum_nonneg (fun _ _ => sq_nonneg _)

/-- This implication controls the original zero mode, not merely centered variance. -/
theorem local_to_global {N : ℕ} [NeZero N] (a : ZMod N → ℝ) (H : ℕ) :
    ((H : ℝ) * signedWalk a) ^ 2 ≤ (N : ℝ) * uncentered a H := by
  have hn : (N : ℝ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  have hz : (N : ℝ) * zeroMode a H = ((H : ℝ) * signedWalk a) ^ 2 := by
    unfold zeroMode
    field_simp [hn]
  rw [uncentered_eq_zeroMode_add_centered, mul_add, hz]
  exact le_add_of_nonneg_right (mul_nonneg (Nat.cast_nonneg N) (centered_nonneg a H))

/-- Exact arithmetic specialization, with no randomness or independence premise. -/
theorem liouville_window_decomposition (N H : ℕ) [NeZero N] :
    uncentered (liouvillePrefixOnCycle N) H =
      zeroMode (liouvillePrefixOnCycle N) H + centered (liouvillePrefixOnCycle N) H :=
  uncentered_eq_zeroMode_add_centered _ _

end CyclicWindow
end GRWTSK.ProbabilityAndMathematicalStatistics.SignedCyclicWalkPacket
