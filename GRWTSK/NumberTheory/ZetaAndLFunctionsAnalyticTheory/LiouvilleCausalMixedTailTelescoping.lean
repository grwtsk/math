/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelCausalKernel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Finite two-fiber gluing for the original Liouville causal mixed kernel

A mixed forward difference telescopes over a complete rectangular fiber
inventory. The exact four-corner boundary term is retained first, then
removed ONLY under two explicit zero-face hypotheses.

The last specialization uses the original causalKernel and causalOmega;
it is not a surrogate harmonic kernel, a replacement arithmetic sequence,
or an all-height cancellation theorem. In particular, the zero-face
conditions and the conversion of the range sum to the existing
KernelTailIdentity lattice sum remain separate analytic/Finset proof tasks.
No new axiom or unconditional Riemann Hypothesis result is introduced.
-/

namespace GRWTSK.NumberTheory.LiouvilleCausalMixedTailTelescoping

open GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel

/-- Mixed forward difference: subtract both coordinate increments
and add back their intersection. -/
def mixedDifference (K : ℕ → ℕ → ℝ) (p q : ℕ) : ℝ :=
  K p q - K (p + 1) q - K p (q + 1) + K (p + 1) (q + 1)

/-- A complete finite difference telescopes, including the terminal face.
No zero boundary is assumed. -/
theorem sum_range_forward_difference (f : ℕ → ℝ) (m L : ℕ) :
    (∑ i ∈ Finset.range L, (f (m + i) - f (m + i + 1))) =
      f m - f (m + L) := by
  induction L with
  | zero =>
      simp
  | succ L ih =>
      rw [Finset.sum_range_succ, ih]
      have hidx : m + L + 1 = m + (L + 1) := by omega
      rw [hidx]
      ring

/-- Two-coordinate finite gluing with all four corner values.
This identity works even when K has nonzero boundary data. -/
theorem mixedDifference_rectangle
    (K : ℕ → ℕ → ℝ) (m g L R : ℕ) :
    (∑ i ∈ Finset.range L, ∑ j ∈ Finset.range R,
      mixedDifference K (m + i) (g + j)) =
      K m g - K (m + L) g - K m (g + R) +
        K (m + L) (g + R) := by
  have hrow (i : ℕ) :
      (∑ j ∈ Finset.range R,
        mixedDifference K (m + i) (g + j)) =
        (K (m + i) g - K (m + i + 1) g) -
          (K (m + i) (g + R) -
            K (m + i + 1) (g + R)) := by
    calc
      _ = ∑ j ∈ Finset.range R,
            ((K (m + i) (g + j) - K (m + i + 1) (g + j)) -
              (K (m + i) (g + j + 1) -
                K (m + i + 1) (g + j + 1))) := by
        apply Finset.sum_congr rfl
        intro j _
        unfold mixedDifference
        ring
      _ = _ := sum_range_forward_difference
        (fun t => K (m + i) t - K (m + i + 1) t) g R
  calc
    _ = ∑ i ∈ Finset.range L,
          ((K (m + i) g - K (m + i + 1) g) -
            (K (m + i) (g + R) -
              K (m + i + 1) (g + R))) := by
        apply Finset.sum_congr rfl
        intro i _
        exact hrow i
    _ = (K m g - K m (g + R)) -
          (K (m + L) g - K (m + L) (g + R)) :=
      sum_range_forward_difference
        (fun t => K t g - K t (g + R)) m L
    _ = _ := by ring

/-- The generic mixed difference is definitionally the original
two-parameter Liouville causal mixed kernel. -/
theorem causalOmega_eq_mixedDifference (T : ℝ) (p q : ℕ) :
    causalOmega T p q = mixedDifference (causalKernel T) p q := rfl

/-- Source-specific specialization: neither arithmetic labels nor
physical response weights are changed. -/
theorem causalOmega_rectangle (T : ℝ) (m g L R : ℕ) :
    (∑ i ∈ Finset.range L, ∑ j ∈ Finset.range R,
      causalOmega T (m + i) (g + j)) =
      causalKernel T m g - causalKernel T (m + L) g -
        causalKernel T m (g + R) +
          causalKernel T (m + L) (g + R) := by
  simpa only [causalOmega_eq_mixedDifference] using
    mixedDifference_rectangle (causalKernel T) m g L R

/-- Both disconnected coordinate sums reconstruct the ORIGINAL
kernel when the terminal faces really vanish. These hypotheses
are intentionally explicit: positivity and a diagram alone
cannot supply them. -/
theorem causalKernel_eq_glued_rectangle_of_zero_faces
    (T : ℝ) (N m g : ℕ)
    (hm : m ≤ N + 1) (hg : g ≤ N + 1)
    (hfirst : ∀ q : ℕ, causalKernel T (N + 1) q = 0)
    (hsecond : ∀ p : ℕ, causalKernel T p (N + 1) = 0) :
    causalKernel T m g =
      ∑ i ∈ Finset.range (N + 1 - m),
        ∑ j ∈ Finset.range (N + 1 - g),
          causalOmega T (m + i) (g + j) := by
  have hmend : m + (N + 1 - m) = N + 1 := by omega
  have hgend : g + (N + 1 - g) = N + 1 := by omega
  have ht := causalOmega_rectangle T m g (N + 1 - m) (N + 1 - g)
  rw [hmend, hgend, hfirst g, hsecond m, hfirst (N + 1)] at ht
  simpa using ht.symm

/-!
## Source-specific zero faces at a strict birth cutoff

For every N >= 1 and u <= log N, a response whose arithmetic birth
index is STRICTLY larger than N is identically zero. Consequently both
upper faces of the original two-coordinate causal integral vanish.
These are not abstract zero-face assumptions or arithmetic estimates.
-/

open GRWTSK.RiemannHypothesis.CCC

theorem pickupResponse_zero_above_cutoff
    {N n : ℕ} (hN : 1 ≤ N) (hn : N < n)
    {u : ℝ} (hu : u ≤ Real.log (N : ℝ)) :
    pickupResponse n u = 0 := by
  have hNpos : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hnn : (N : ℝ) < (n : ℝ) := by exact_mod_cast hn
  have hlog : Real.log (N : ℝ) < Real.log (n : ℝ) :=
    Real.log_lt_log hNpos hnn
  have hcut : ¬ Real.log (n : ℝ) ≤ u :=
    not_le.mpr (lt_of_le_of_lt hu hlog)
  simp [pickupResponse, hcut]

theorem causalKernel_zero_upper_base {N : ℕ} (hN : 1 ≤ N)
    (q : ℕ) :
    causalKernel (Real.log (N : ℝ)) (N + 1) q = 0 := by
  have hint :
      (∫ u in (0 : ℝ)..Real.log (N : ℝ),
        pickupResponse (N + 1) u * pickupResponse (N + 1 + q) u) =
      (∫ u in (0 : ℝ)..Real.log (N : ℝ), (0 : ℝ)) := by
    apply intervalIntegral.integral_congr
    intro u hu
    have hz : pickupResponse (N + 1) u = 0 :=
      pickupResponse_zero_above_cutoff hN (by omega) hu.2
    simp [hz]
  simpa [causalKernel] using hint

theorem causalKernel_zero_upper_gap {N : ℕ} (hN : 1 ≤ N)
    (p : ℕ) :
    causalKernel (Real.log (N : ℝ)) p (N + 1) = 0 := by
  have hint :
      (∫ u in (0 : ℝ)..Real.log (N : ℝ),
        pickupResponse p u * pickupResponse (p + (N + 1)) u) =
      (∫ u in (0 : ℝ)..Real.log (N : ℝ), (0 : ℝ)) := by
    apply intervalIntegral.integral_congr
    intro u hu
    have hz : pickupResponse (p + (N + 1)) u = 0 :=
      pickupResponse_zero_above_cutoff hN (by omega) hu.2
    simp [hz]
  simpa [causalKernel] using hint

/-- Reconstruction of the literal integrated Liouville causal kernel
at a logarithmic integer horizon, with zero faces now provided
by the original response rather than assumed. This is still a
range-coordinate expression, not yet the lattice tailOfOmega. -/
theorem causalKernel_eq_glued_rectangle_at_log
    {N : ℕ} (hN : 1 ≤ N) (m g : ℕ)
    (hm : m ≤ N) (hg : g ≤ N) :
    causalKernel (Real.log (N : ℝ)) m g =
      ∑ i ∈ Finset.range (N + 1 - m),
        ∑ j ∈ Finset.range (N + 1 - g),
          causalOmega (Real.log (N : ℝ)) (m + i) (g + j) := by
  exact causalKernel_eq_glued_rectangle_of_zero_faces
    (Real.log (N : ℝ)) N m g (by omega) (by omega)
    (fun q => causalKernel_zero_upper_base hN q)
    (fun p => causalKernel_zero_upper_gap hN p)

end GRWTSK.NumberTheory.LiouvilleCausalMixedTailTelescoping
