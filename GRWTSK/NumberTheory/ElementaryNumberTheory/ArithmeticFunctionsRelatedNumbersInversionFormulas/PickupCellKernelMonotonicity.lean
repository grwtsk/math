/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupOctavePairKernel

/-!
# Antitonicity of the actual active birth-cell pair kernel

Increasing either positive source label decreases its inverse square root.
On the actual active cell both response factors are nonnegative at both
endpoints. The two endpoint integration weights are also nonnegative. Thus
the exact cell kernel is antitone in either label on its active inventory.

The special comparison needed by the three-label gcd sector is supplied here.
Its literal difference keeps the logarithmic width and both endpoint radicals;
no logarithmic term, source coefficient or mixed term is dropped. These are
kernel comparisons, not positivity statements about a Mobius-weighted sum.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay, transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupCellKernelMonotonicity

open GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord

private theorem inverse_sqrt_antitone {a b : ℕ}
    (ha : 1 ≤ a) (hab : a ≤ b) :
    (Real.sqrt b)⁻¹ ≤ (Real.sqrt a)⁻¹ := by
  apply inv_anti₀
  · exact Real.sqrt_pos.mpr (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one ha))
  · exact Real.sqrt_le_sqrt (by exact_mod_cast hab)

/-- Both smaller response factors remain nonnegative. Without that active
condition, multiplying the two label inequalities would not be justified. -/
theorem pairPolynomial_antitone {a b a' b' : ℕ} (x : ℝ)
    (ha : 1 ≤ a) (hb : 1 ≤ b) (haa' : a ≤ a') (hbb' : b ≤ b')
    (hxa' : x ≤ (Real.sqrt a')⁻¹) (hxb' : x ≤ (Real.sqrt b')⁻¹) :
    pairPolynomial a' b' x ≤ pairPolynomial a b x := by
  have haInv := inverse_sqrt_antitone ha haa'
  have hbInv := inverse_sqrt_antitone hb hbb'
  have haNonneg : 0 ≤ (Real.sqrt a)⁻¹ - x :=
    sub_nonneg.mpr (hxa'.trans haInv)
  have hbNonneg : 0 ≤ (Real.sqrt b')⁻¹ - x := sub_nonneg.mpr hxb'
  unfold pairPolynomial
  calc
    4 * ((Real.sqrt a')⁻¹ - x) * ((Real.sqrt b')⁻¹ - x) ≤
        4 * ((Real.sqrt a)⁻¹ - x) * ((Real.sqrt b')⁻¹ - x) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (sub_le_sub_right haInv x) (by norm_num)) hbNonneg
    _ ≤ 4 * ((Real.sqrt a)⁻¹ - x) * ((Real.sqrt b)⁻¹ - x) :=
      mul_le_mul_of_nonneg_left (sub_le_sub_right hbInv x)
        (mul_nonneg (by norm_num) haNonneg)

/-- The complete endpoint readout is antitone in both active positive labels.
All endpoint weights, hence all literal logarithmic terms, are retained. -/
theorem cellPairKernel_antitone {N a b a' b' : ℕ}
    (ha : 1 ≤ a) (hb : 1 ≤ b) (haa' : a ≤ a') (hbb' : b ≤ b')
    (ha'N : a' ≤ N) (hb'N : b' ≤ N) :
    cellPairKernel N a' b' ≤ cellPairKernel N a b := by
  have ha' : 1 ≤ a' := ha.trans haa'
  have hb' : 1 ≤ b' := hb.trans hbb'
  have hN : 1 ≤ N := ha'.trans ha'N
  have horder : Real.log (N : ℝ) ≤ Real.log ((N + 1 : ℕ) : ℝ) := by
    apply Real.log_le_log
    · exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
    · exact_mod_cast Nat.le_succ N
  obtain ⟨hleft, hright⟩ := endpoint_weights_nonnegative horder
  have hpoly (L : ℕ) (ha'L : a' ≤ L) (hb'L : b' ≤ L) :
      pairPolynomial a' b' (Real.sqrt L)⁻¹ ≤
        pairPolynomial a b (Real.sqrt L)⁻¹ :=
    pairPolynomial_antitone (Real.sqrt L)⁻¹ ha hb haa' hbb'
      (inverse_sqrt_antitone ha' ha'L) (inverse_sqrt_antitone hb' hb'L)
  unfold cellPairKernel endpointReadout
  exact add_le_add
    (mul_le_mul_of_nonneg_left (hpoly N ha'N hb'N) hleft)
    (mul_le_mul_of_nonneg_left
      (hpoly (N + 1) (ha'N.trans (Nat.le_succ N)) (hb'N.trans (Nat.le_succ N)))
      hright)

/-- The comparison used by the actual three-label gcd block. Equality at an
integer birth boundary is permitted; only the larger labels must be active. -/
theorem cellPairKernel_two_three_le_one_two {N d : ℕ}
    (hd : 1 ≤ d) (hactive : 3 * d ≤ N) :
    cellPairKernel N (2 * d) (3 * d) ≤ cellPairKernel N d (2 * d) := by
  apply cellPairKernel_antitone hd (by omega : 1 ≤ 2 * d)
    (by omega : d ≤ 2 * d) (by omega : 2 * d ≤ 3 * d)
    (by omega : 2 * d ≤ N) hactive

/-- Exact difference from the literal logarithmic/radical formula. In
particular the logarithmic contribution is not removed to obtain the sign. -/
theorem cellPairKernel_one_two_sub_two_three {N : ℕ} (hN : 1 ≤ N) (d : ℕ) :
    cellPairKernel N d (2 * d) - cellPairKernel N (2 * d) (3 * d) =
      4 * ((Real.sqrt d)⁻¹ - (Real.sqrt (3 * d : ℕ))⁻¹) *
        ((Real.sqrt (2 * d : ℕ))⁻¹ * Real.log (1 + 1 / (N : ℝ)) -
          2 * ((Real.sqrt N)⁻¹ - (Real.sqrt (N + 1 : ℕ))⁻¹)) := by
  rw [cellPairKernel_formula hN, cellPairKernel_formula hN]
  ring

end GRWTSK.NumberTheory.Moebius.PickupCellKernelMonotonicity
