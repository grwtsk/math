/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates

set_option autoImplicit false
noncomputable section
open Set MeasureTheory

/-!
# All-natural-number boundary closure for the original signed causal kernel

This additive continuation leaves the original signed Liouville source, the
finite Fubini theorem, the positive-index analytic gates and the conditional
theorem interfaces unchanged. No arithmetic rectangle estimate is assumed.
All declarations remain source-level proof candidates pending Lean verification.
-/

namespace GRWTSK.NumberTheory.LiouvilleDoubleAbelBoundaryClosure

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates

/-- Exact equality at the positive integer birth, not merely before it. -/
theorem pickupResponse_zero_at_birth (n : ℕ) (hn : 1 ≤ n) :
    pickupResponse n (Real.log (n : ℝ)) = 0 := by
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one hn)
  have hs : Real.exp (-Real.log (n : ℝ) / 2) =
      (Real.sqrt (n : ℝ))⁻¹ := by
    rw [← Real.exp_half]
    simpa only [neg_div, Real.exp_neg, Real.exp_log hnpos]
  rw [pickupResponse_eq_positivePart n hn, hs]
  simp

/-- The literal response vanishes on the CLOSED time interval through
log N whenever its positive source label n is at least N. -/
theorem pickupResponse_zero_on_cutoff
    (N n : ℕ) (hN : 1 ≤ N) (hn : N ≤ n)
    {u : ℝ} (hu : u ≤ Real.log (N : ℝ)) :
    pickupResponse n u = 0 := by
  rcases eq_or_lt_of_le hn with rfl | hgt
  · rcases lt_or_eq_of_le hu with hlt | heq
    · have hnot : ¬ Real.log (N : ℝ) ≤ u := not_le.mpr hlt
      simp [pickupResponse, hnot]
    · subst u
      exact pickupResponse_zero_at_birth N hN
  · exact pickupResponse_zero_above_cutoff N n hN hgt hu

/-- Zero support of the actual integrated positive-gap kernel, including
the triangular boundary m+g=N; no sign assumption on the first factor. -/
theorem causalKernel_zero_of_sum_ge_cutoff
    (N m g : ℕ) (hN : 1 ≤ N) (hsum : N ≤ m + g) :
    causalKernel (Real.log (N : ℝ)) m g = 0 := by
  have hT : 0 ≤ Real.log (N : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hN)
  unfold causalKernel
  calc
    (∫ u in (0 : ℝ)..Real.log (N : ℝ),
      pickupResponse m u * pickupResponse (m + g) u) =
        ∫ _u in (0 : ℝ)..Real.log (N : ℝ), (0 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      rw [pickupResponse_zero_on_cutoff N (m + g) hN hsum hu.2]
      ring
    _ = 0 := by simp

/-- N=3 boundary fixture: all three other mixed-difference corners have
second source index at least 3 and therefore vanish. -/
theorem causalOmega_three_one_one :
    causalOmega (Real.log (3 : ℝ)) 1 1 =
      causalKernel (Real.log (3 : ℝ)) 1 1 := by
  have h21 : causalKernel (Real.log (3 : ℝ)) 2 1 = 0 :=
    causalKernel_zero_of_sum_ge_cutoff 3 2 1 (by omega) (by omega)
  have h12 : causalKernel (Real.log (3 : ℝ)) 1 2 = 0 :=
    causalKernel_zero_of_sum_ge_cutoff 3 1 2 (by omega) (by omega)
  have h22 : causalKernel (Real.log (3 : ℝ)) 2 2 = 0 :=
    causalKernel_zero_of_sum_ge_cutoff 3 2 2 (by omega) (by omega)
  simp [causalOmega, h21, h12, h22]

/-- The old named tail gate is unconditional for ALL natural N.
N=0 has an empty 1..N lattice; N=1 uses the original zero-endpoint
terminal-face proof; larger N use the same finite double telescope. -/
theorem kernelTailIdentity_all_N (N : ℕ) : KernelTailIdentity N := by
  cases N with
  | zero =>
      intro mg hmg
      change mg ∈ (Finset.Icc 1 0).product (Finset.Icc 1 0) at hmg
      have hm : mg.1 ∈ Finset.Icc 1 0 := (Finset.mem_product.mp hmg).1
      have hb : 1 ≤ mg.1 ∧ mg.1 ≤ 0 := Finset.mem_Icc.mp hm
      omega
  | succ k =>
      cases k with
      | zero =>
          exact kernelTailIdentity_of_original_birth 1 (by omega)
      | succ j =>
          exact kernelTailIdentity_of_original_birth (j + 2) (by omega)

/-- Exact source-preserving signed double-Abel return for every natural
cutoff, with NO kernel-tail or arithmetic-cancellation hypothesis. -/
theorem positiveGapAggregate_eq_rectangles_all_N (N : ℕ) :
    positiveGapAggregate N =
      rectangularOmegaAggregate N (causalOmega (Real.log (N : ℝ))) := by
  exact positiveGapAggregate_eq_rectangles_of_tail N
    (kernelTailIdentity_all_N N)

end GRWTSK.NumberTheory.LiouvilleDoubleAbelBoundaryClosure
