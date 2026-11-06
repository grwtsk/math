/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWrapPeriodLift
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineParseval
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddOutputTrace
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# The periodic odd energy is diagonal in the source sine coordinates

In the complex circle formula, reality makes opposite Fourier coefficients
conjugates. The zero frequency has zero translation weight. For a real odd
representative, the squared coefficient at a positive frequency is the
squared source sine coefficient divided by `4*T`. Pairing opposite
frequencies and canceling the Haar factor `(2*T)⁻¹` gives the Lebesgue
translation energy of the actual centered lift. An a.e. odd function may be
antisymmetrized when applying the coefficient comparison. The periodic
energy itself continues to use the original function on the given window.

The integrated result uses the series dominated convergence theorem with
the nonnegative summands as their own bounds. The summable pointwise
majorant is the parity kernel times the translation energy, whose
integrability is an explicit hypothesis. The scalar gamma integral
identifies each resulting term with the maintained periodic multiplier.
Comparison with zero extension and the justification of domain inclusion
remain separate. Independent analytical review and novelty assessment
remain NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter AddCircle
open scoped Interval ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddPeriodicDiagonal

open OddWrapPeriodLift OddSineParseval OddOutputTrace OddRootProjection OddMultiplierBounds

private theorem neg_lt_self {T : ℝ} (hT : 0 < T) : -T < T := by linarith

private theorem fourierCoeffOn_real_neg (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) (n : ℤ) :
    fourierCoeffOn (neg_lt_self hT) (fun t => (f t : ℂ)) (-n) =
      conj (fourierCoeffOn (neg_lt_self hT) (fun t => (f t : ℂ)) n) := by
  rw [fourierCoeffOn_eq_integral, fourierCoeffOn_eq_integral, neg_neg]
  simp only [intervalIntegral.integral_of_le (neg_lt_self hT).le, Complex.real_smul, map_mul,
    Complex.conj_ofReal, ← integral_conj]
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [smul_eq_mul, map_mul, fourier_neg, Complex.conj_conj, Complex.conj_ofReal]

private theorem norm_fourierCoeffOn_nat_sq_ae (T : ℝ) (hT : 0 < T) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t) (n : ℕ) :
    ‖fourierCoeffOn (neg_lt_self hT) (fun t => (f t : ℂ)) (n : ℤ)‖ ^ 2 =
      sineCoefficient T f n ^ 2 / (4 * T) := by
  let g := fun t : ℝ => (f t - f (-t)) / 2
  have hagree : g =ᵐ[volume] f := by
    filter_upwards [hodd] with t ht
    dsimp [g]
    rw [ht]
    ring
  have hg_odd : Function.Odd g := by
    intro t
    dsimp [g]
    rw [neg_neg]
    ring
  have hgc : (fun t => (g t : ℂ)) =ᵐ[volume.restrict (Ioc (-T) T)] (fun t => (f t : ℂ)) :=
    ae_restrict_of_ae <| hagree.mono (fun _ ht => congrArg Complex.ofReal ht)
  have hcoord : sineCoefficient T g n = sineCoefficient T f n := by
    unfold sineCoefficient
    apply integral_congr_ae
    filter_upwards [hagree] with t ht
    rw [ht]
  have hg : MemLp g 2 volume := hf.ae_eq hagree.symm
  have hn := norm_fourierCoeffOn_nat_sq T hT (hg.restrict (s := Ioc (-T) T)) hg_odd n
  rwa [fourierCoeffOn_congr_ae (neg_lt_self hT) hgc, hcoord] at hn

/-- The physical translation energy in the exact positive odd sine coordinates.
Both the square-integrability and oddness hypotheses admit almost-everywhere
representatives. -/
theorem hasSum_periodicJumpEnergy_sine (T : ℝ) (hT : 0 < T) (r : ℝ) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t) :
    HasSum (fun n : ℕ => 2 * (1 - Real.cos (frequency T (n + 1) * r)) *
      sineCoefficient T f (n + 1) ^ 2) (periodicJumpEnergy T hT r f) := by
  let c := fourierCoeffOn (neg_lt_self hT) (fun t => (f t : ℂ))
  let b := fun n : ℤ => 2 * (1 - Real.cos (2 * Real.pi * (n : ℝ) * r / (2 * T))) * ‖c n‖ ^ 2
  have hend : -T + 2 * T = T := by ring
  have hbase : HasSum b ((2 * T)⁻¹ * periodicJumpEnergy T hT r f) := by
    simpa only [hend, b, c] using hasSum_periodicJumpEnergy T hT r hf
  have heven : Function.Even b := by
    intro n
    have harg : 2 * Real.pi * ((-n : ℤ) : ℝ) * r / (2 * T) =
        -(2 * Real.pi * (n : ℝ) * r / (2 * T)) := by push_cast; ring
    dsimp [b, c]
    rw [harg, Real.cos_neg, fourierCoeffOn_real_neg T hT f n, Complex.norm_conj]
  have hzero : b 0 = 0 := by simp [b]
  have hpos : Summable (fun n : ℕ => b ((n : ℤ) + 1)) :=
    hbase.summable.comp_injective (fun n m h => Nat.cast_injective (add_right_cancel h))
  have hpair := tsum_int_eq_zero_add_two_mul_tsum_pnat heven hbase.summable
  rw [hbase.tsum_eq, hzero, zero_add, tsum_pnat_eq_tsum_succ (f := fun n : ℕ => b n)] at hpair
  simp only [Nat.cast_add, Nat.cast_one, two_smul] at hpair
  have hhalf : HasSum (fun n : ℕ => b ((n : ℤ) + 1))
      (((2 * T)⁻¹ * periodicJumpEnergy T hT r f) / 2) := by
    convert hpos.hasSum using 1
    linarith
  have hscaled := hhalf.mul_left (4 * T)
  have harg (n : ℕ) : 2 * Real.pi * (((n : ℤ) + 1 : ℤ) : ℝ) * r / (2 * T) =
      frequency T (n + 1) * r := by
    unfold frequency
    push_cast
    field_simp [hT.ne']
  have hscale (n : ℕ) : 2 * (1 - Real.cos (frequency T (n + 1) * r)) *
      sineCoefficient T f (n + 1) ^ 2 = (4 * T) * b ((n : ℤ) + 1) := by
    have hnorm := norm_fourierCoeffOn_nat_sq_ae T hT hf hodd (n + 1)
    simp only [Nat.cast_add, Nat.cast_one] at hnorm
    dsimp [b, c]
    rw [harg n, hnorm]
    field_simp [hT.ne']
  have hsum := hscaled.congr_fun hscale
  convert hsum using 1
  field_simp [hT.ne']
  ring

/-- Integrate the positive-mode identity against the literal parity kernel.
Integrability of the periodized energy is explicit and yields summability of
the actual diagonal form. -/
theorem hasSum_periodicDiagonal_of_integrable (T : ℝ) (hT : 0 < T) (a : ℕ)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (henergy : IntegrableOn (fun r => parityKernel a r * periodicJumpEnergy T hT r f) (Ioi 0)) :
    HasSum (fun n : ℕ => periodicMultiplier a (frequency T (n + 1)) *
      sineCoefficient T f (n + 1) ^ 2)
      (∫ r in Ioi (0 : ℝ), parityKernel a r * periodicJumpEnergy T hT r f) := by
  let F := fun (n : ℕ) (r : ℝ) => parityKernel a r *
    (2 * (1 - Real.cos (frequency T (n + 1) * r)) * sineCoefficient T f (n + 1) ^ 2)
  let H := fun r => parityKernel a r * periodicJumpEnergy T hT r f
  let μ := volume.restrict (Ioi (0 : ℝ))
  have hpoint (r : ℝ) : HasSum (fun n => F n r) (H r) :=
    (hasSum_periodicJumpEnergy_sine T hT r hf hodd).mul_left _
  have hmeas (n : ℕ) : AEStronglyMeasurable (F n) μ := by
    apply Measurable.aestronglyMeasurable
    unfold F parityKernel
    fun_prop
  have hbound (n : ℕ) : ∀ᵐ r ∂μ, ‖F n r‖ ≤ F n r := by
    filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
    have hk : 0 ≤ parityKernel a r := by
      unfold parityKernel
      exact div_nonneg (Real.exp_pos _).le (sub_nonneg.mpr (by
        rw [← Real.exp_zero]
        apply Real.exp_le_exp.mpr
        linarith [show 0 < r from hr]))
    have hnn : 0 ≤ F n r := mul_nonneg hk (mul_nonneg
      (mul_nonneg (by norm_num) (sub_nonneg.mpr (Real.cos_le_one _))) (sq_nonneg _))
    rw [Real.norm_of_nonneg hnn]
  have hdom : Integrable (fun r => ∑' n, F n r) μ := by
    have heq : (fun r => ∑' n, F n r) = H := funext (fun r => (hpoint r).tsum_eq)
    rw [heq]
    exact henergy
  have h := hasSum_integral_of_dominated_convergence F hmeas hbound
    (Eventually.of_forall (fun r => (hpoint r).summable)) hdom (Eventually.of_forall hpoint)
  apply h.congr_fun
  intro n
  change periodicMultiplier a (frequency T (n + 1)) * sineCoefficient T f (n + 1) ^ 2 =
    ∫ r in Ioi (0 : ℝ), F n r
  rw [periodicMultiplier_eq_kernel_integral, ← integral_const_mul, ← integral_mul_const]
  apply integral_congr_ae
  filter_upwards [] with r
  unfold F
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddPeriodicDiagonal
