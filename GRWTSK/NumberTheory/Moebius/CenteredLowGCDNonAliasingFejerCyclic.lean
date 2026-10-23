/- Copyright (c) 2026 R.A. Jacob Martone. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerPeriodicity
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def cyclicFejerKernel
    (X N : ℕ)
    (z : ZMod (fejerOctavePeriod X)) : ℝ :=
  signedSampledTriangularKernelAtPeriod
    (fejerOctavePeriod X) N (z.val : ℤ)

theorem cyclicFejerKernel_nonnegative
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (z : ZMod (fejerOctavePeriod X)) :
    0 ≤ cyclicFejerKernel X N z := by
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold cyclicFejerKernel
  exact signedSampledTriangularKernelAtPeriod_nonnegative
    (by unfold fejerOctavePeriod; omega) hN z.val

theorem cyclicFejerKernel_sum_one
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ z : ZMod (fejerOctavePeriod X),
      cyclicFejerKernel X N z) = 1 := by
  rcases hreg with ⟨hX, hN, hNL⟩
  let L := fejerOctavePeriod X
  have hL : 0 < L := by
    dsimp [L, fejerOctavePeriod]
    omega
  haveI : NeZero L := ⟨Nat.ne_of_gt hL⟩
  let e : Fin L ≃ ZMod L := (ZMod.finEquiv L).toEquiv
  calc
    (∑ z : ZMod L, cyclicFejerKernel X N z)
      = ∑ i : Fin L, cyclicFejerKernel X N (e i) := by
          exact Fintype.sum_equiv e.symm _ _ (fun _ => rfl)
    _ = ∑ r ∈ Finset.range L,
        signedSampledTriangularKernelAtPeriod L N r := by
          rw [Fin.sum_univ_eq_sum_range]
          apply Finset.sum_congr rfl
          intro r hr
          have hrLt : r < L := Finset.mem_range.mp hr
          dsimp [e, cyclicFejerKernel]
          simp [ZMod.finEquiv, ZMod.val_natCast,
            Nat.mod_eq_of_lt hrLt, L]
    _ = 1 := by
          exact periodFourXSampledKernelMassOne
            ⟨hX, hN, hNL⟩

end GRWTSK.RiemannHypothesis
