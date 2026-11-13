/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilMixedGammaH1Polarization
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilExactZetaPoleH1
import Mathlib.Tactic

/-!
# Genuine signed real Weil mixed prime and zeta pole returns

This module handles the EXACT finite arithmetic part of the mixed real
physical Weil form, alongside the previously formalized source-candidate
mixed gamma component. It keeps the original prime-power inventory,
pairedPrimeWeight chi n (including its SIGN and ramified zeros), both
correlation orientations and the negative zeta odd pole.

The mixed prime source uses actual Lebesgue correlations
  C_r(f,g)=∫_R f(t)*g(t+r)dt
and S_r(f,g)=C_r(f,g)+C_{-r}(f,g).
Translation invariance proves S_r(f,g)=S_r(g,f). The diagonal
S_r(f,f) is precisely twice the existing forward correlation.
Thus the primitive and zeta mixed arithmetic diagonals return
to the UNMODIFIED original signed physical prime expressions.

For real L2 tests, pointwise 2|xy|<=x²+y² and actual Lebesgue
translation invariance yield the BALANCED mixed prime budget
  |P_mix(f,g)| <= (primeMass T)/2 * (E(f)+E(g)).
The sharper product-of-L2-norms bound, which follows by classical
L2 Cauchy-Schwarz, remains a WRITTEN statement in the companion.
No unproved arbitrary same-character phase reduction is used.

For the zeta pole, the genuine compact sinh moment is returned
from the already published ExactZetaPoleH1 source. The mixed pole
has the exact ORIGINAL NEGATIVE sign -2*m(f)*m(g). The squared
source estimate follows from the two real supported moment bounds.

This is NOT yet a formal complete mixed signed Weil H1 continuity
theorem, which additionally needs bilinear gamma/prime assembly
and the Q(f)-Q(g)=B(f+g,f-g) source return. All statements here are
MANUAL LEAN SOURCE CANDIDATES: no elaboration, full pinned build,
fresh kernel replay, axiom audit or independent review was run.
RH and Dirichlet GRH are unproved.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SignedMixedPrimePoleH1

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.SignedArithmeticH1Budget
open GRWTSK.NumberTheory.WeilQuadraticForm.ExactZetaPoleH1
open GRWTSK.NumberTheory.WeilQuadraticForm.NativeMixedGammaH1
open GRWTSK.NumberTheory.WeilQuadraticForm.NativeGammaH1ShiftBudget
open GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSineNegativeReturn

/-- Actual real whole-line cross-correlation, with the SAME translation
and normalization as each signed prime term of the original source. -/
def realCrossCorrelation (f g : ℝ → ℝ) (r : ℝ) : ℝ :=
  ∫ t : ℝ, f t * g (t + r)

private theorem realCrossCorrelation_integrable
    {f g : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hg : MemLp g 2 volume) (r : ℝ) :
    Integrable (fun t : ℝ => f t * g (t + r)) :=
  hf.integrable_mul
    (hg.comp_measurePreserving (measurePreserving_add_right volume r))

/-- Translation reverses both legs without changing the whole-line
real Lebesgue correlation. This licenses exact real symmetry below. -/
theorem realCrossCorrelation_reverse
    (f g : ℝ → ℝ) (r : ℝ) :
    realCrossCorrelation g f r = realCrossCorrelation f g (-r) := by
  unfold realCrossCorrelation
  simpa only [add_sub_cancel_right, mul_comm, sub_eq_add_neg] using
    (integral_add_right_eq_self
      (fun t : ℝ => f t * g (t - r)) r).symm

/-- Original paired-arithmetic two-shift *mixed* observation. -/
def realSymmetricShift (f g : ℝ → ℝ) (r : ℝ) : ℝ :=
  realCrossCorrelation f g r + realCrossCorrelation f g (-r)

theorem realSymmetricShift_symmetric
    (f g : ℝ → ℝ) (r : ℝ) :
    realSymmetricShift f g r = realSymmetricShift g f r := by
  unfold realSymmetricShift
  rw [realCrossCorrelation_reverse g f r,
    realCrossCorrelation_reverse g f (-r)]
  simp only [neg_neg]
  ring

theorem realSymmetricShift_diag (f : ℝ → ℝ) (r : ℝ) :
    realSymmetricShift f f r = 2 * realCrossCorrelation f f r := by
  unfold realSymmetricShift
  have h := realCrossCorrelation_reverse f f r
  simp only [neg_neg] at h
  rw [← h]
  ring

/-- Finite exact original pair-source signed prime inventory. -/
def pairedMixedPrimeResponse {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (T : ℝ) (f g : ℝ → ℝ) : ℝ :=
  ∑ n ∈ activePrimePowers T, pairedPrimeWeight chi n *
    realSymmetricShift f g (Real.log (n : ℝ))

/-- Untwisted zeta uses the same exact primeWeight, both orientations,
and the same genuine activePrimePowers. -/
def zetaMixedPrimeResponse (T : ℝ) (f g : ℝ → ℝ) : ℝ :=
  ∑ n ∈ activePrimePowers T, primeWeight n *
    realSymmetricShift f g (Real.log (n : ℝ))

/-- Character phases remain in the definition and symmetry uses the
TWO true source orientations, not an assumed same-character reality. -/
theorem pairedMixedPrimeResponse_symmetric
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (T : ℝ) (f g : ℝ → ℝ) :
    pairedMixedPrimeResponse chi T f g =
      pairedMixedPrimeResponse chi T g f := by
  unfold pairedMixedPrimeResponse
  apply Finset.sum_congr rfl
  intro n _
  rw [realSymmetricShift_symmetric]

theorem zetaMixedPrimeResponse_symmetric
    (T : ℝ) (f g : ℝ → ℝ) :
    zetaMixedPrimeResponse T f g =
      zetaMixedPrimeResponse T g f := by
  unfold zetaMixedPrimeResponse
  apply Finset.sum_congr rfl
  intro n _
  rw [realSymmetricShift_symmetric]

/-- The real mixed primitive diagonal is definitionally the ORIGINAL
primitivePairedOddPhysicalValue prime component, not a substitute. -/
theorem pairedMixedPrimeResponse_diag
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (T : ℝ) (f : ℝ → ℝ) :
    pairedMixedPrimeResponse chi T f f =
      pairedPrimeResponse chi T f := by
  unfold pairedMixedPrimeResponse pairedPrimeResponse
    realSymmetricShift realCrossCorrelation
  apply Finset.sum_congr rfl
  intro n _
  simp only [sub_eq_add_neg]

/-- On the real zeta diagonal the two orientations are the SAME
physical self-correlation; this is exactly the old primeEnergy. -/
theorem zetaMixedPrimeResponse_diag (T : ℝ) (f : ℝ → ℝ) :
    zetaMixedPrimeResponse T f f = primeEnergy T f := by
  unfold zetaMixedPrimeResponse primeEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  rw [realSymmetricShift_diag]
  unfold realCrossCorrelation
  ring

/-- The ORIGINAL mixed prime product has a physical L2 majorant.
This is a balanced bound, not the norm-product Cauchy bound. -/
theorem abs_realCrossCorrelation_le_avg_mass
    (f g : ℝ → ℝ) (hf : MemLp f 2 volume)
    (hg : MemLp g 2 volume) (r : ℝ) :
    |realCrossCorrelation f g r| ≤
      (physicalMass f + physicalMass g) / 2 := by
  have hf2 : Integrable (fun t : ℝ => f t ^ 2) :=
    hf.integrable_sq
  have hgShift : Integrable (fun t : ℝ => g (t + r) ^ 2) :=
    (hg.comp_measurePreserving
      (measurePreserving_add_right volume r)).integrable_sq
  have hbound (t : ℝ) :
      ‖f t * g (t + r)‖ ≤
        (f t ^ 2 + g (t + r) ^ 2) / 2 := by
    rw [Real.norm_eq_abs, abs_mul]
    nlinarith [sq_nonneg (|f t| - |g (t + r)|),
      sq_abs (f t), sq_abs (g (t + r))]
  unfold realCrossCorrelation
  calc
    _ ≤ ∫ t : ℝ, (f t ^ 2 + g (t + r) ^ 2) / 2 := by
      simpa only [Real.norm_eq_abs] using
        (norm_integral_le_of_norm_le
          ((hf2.add hgShift).div_const 2)
          (Filter.Eventually.of_forall hbound))
    _ = _ := by
      rw [integral_div, integral_add hf2 hgShift,
        integral_add_right_eq_self (fun t : ℝ => g t ^ 2) r]
      rfl

/-- Two original translation directions, no missing minus orientation. -/
theorem abs_realSymmetricShift_le_mass_sum
    (f g : ℝ → ℝ) (hf : MemLp f 2 volume)
    (hg : MemLp g 2 volume) (r : ℝ) :
    |realSymmetricShift f g r| ≤ physicalMass f + physicalMass g := by
  have hp := abs_realCrossCorrelation_le_avg_mass f g hf hg r
  have hm := abs_realCrossCorrelation_le_avg_mass f g hf hg (-r)
  unfold realSymmetricShift
  calc
    _ ≤ |realCrossCorrelation f g r| +
        |realCrossCorrelation f g (-r)| := abs_add_le _ _
    _ ≤ (physicalMass f + physicalMass g) / 2 +
        (physicalMass f + physicalMass g) / 2 := add_le_add hp hm
    _ = _ := by ring

/-- The genuine finite signed primitive *mixed* prime response is
bounded by the original primeMass, not absolute-valued inside Q. -/
theorem abs_pairedMixedPrimeResponse_le_balanced
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (T : ℝ) (f g : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    |pairedMixedPrimeResponse chi T f g| ≤
      primeMass T * (physicalMass f + physicalMass g) / 2 := by
  have hnonneg : 0 ≤ physicalMass f + physicalMass g :=
    add_nonneg (integral_nonneg (fun t => sq_nonneg _))
      (integral_nonneg (fun t => sq_nonneg _))
  calc
    _ ≤ ∑ n ∈ activePrimePowers T,
        |pairedPrimeWeight chi n * realSymmetricShift f g (Real.log (n : ℝ))| := by
          unfold pairedMixedPrimeResponse
          exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ activePrimePowers T,
        primeWeight n * (physicalMass f + physicalMass g) := by
      apply Finset.sum_le_sum
      intro n _
      rw [abs_mul]
      calc
        _ ≤ |pairedPrimeWeight chi n| *
            (physicalMass f + physicalMass g) :=
          mul_le_mul_of_nonneg_left
            (abs_realSymmetricShift_le_mass_sum f g hf hg _)
            (abs_nonneg _)
        _ ≤ primeWeight n * (physicalMass f + physicalMass g) :=
          mul_le_mul_of_nonneg_right
            (abs_pairedPrimeWeight_le chi n) hnonneg
    _ = _ := by
      unfold primeMass
      rw [← Finset.sum_mul]
      ring

theorem abs_zetaMixedPrimeResponse_le_balanced
    (T : ℝ) (f g : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    |zetaMixedPrimeResponse T f g| ≤
      primeMass T * (physicalMass f + physicalMass g) / 2 := by
  have hweight (n : ℕ) : 0 ≤ primeWeight n :=
    primeWeight_nonneg n
  calc
    _ ≤ ∑ n ∈ activePrimePowers T,
        |primeWeight n * realSymmetricShift f g (Real.log (n : ℝ))| := by
          unfold zetaMixedPrimeResponse
          exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ activePrimePowers T,
        primeWeight n * (physicalMass f + physicalMass g) := by
      apply Finset.sum_le_sum
      intro n _
      rw [abs_mul, abs_of_nonneg (hweight n)]
      exact mul_le_mul_of_nonneg_left
        (abs_realSymmetricShift_le_mass_sum f g hf hg _) (hweight n)
    _ = _ := by
      unfold primeMass
      rw [← Finset.sum_mul]
      ring

/-- The original negative zeta odd pole has its EXACT real symmetric
mixed component. The subtraction sign is retained at source assembly. -/
def zetaMixedPoleResponse (f g : ℝ → ℝ) : ℝ :=
  2 * oddZetaPoleMoment f * oddZetaPoleMoment g

theorem zetaMixedPoleResponse_diag (f : ℝ → ℝ) :
    zetaMixedPoleResponse f f =
      2 * (oddZetaPoleMoment f) ^ 2 := by
  unfold zetaMixedPoleResponse
  ring

theorem zetaMixedPoleResponse_symmetric (f g : ℝ → ℝ) :
    zetaMixedPoleResponse f g = zetaMixedPoleResponse g f := by
  unfold zetaMixedPoleResponse
  ring

/-- An EXACT SQUARED product control for the TWO signed zeta pole
legs from the original compact sinh profile. No square-root convention,
no deletion of negative source pole, no assumed arbitrary gamma bound. -/
theorem zetaMixedPoleResponse_sq_le
    (T : ℝ) (hT : 0 < T)
    (f g : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hsf : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hsg : ∀ t, t ∉ Icc (-T) T → g t = 0) :
    (zetaMixedPoleResponse f g) ^ 2 ≤
      4 * (Real.sinh T - T) ^ 2 *
        (physicalMass f * physicalMass g) := by
  let S := Real.sinh T - T
  let Ef := physicalMass f
  let Eg := physicalMass g
  have hS : 0 ≤ S :=
    (sourceSinhWindow_mass_pos T hT).le
  have hEf : 0 ≤ Ef := integral_nonneg fun t => sq_nonneg _
  have hEg : 0 ≤ Eg := integral_nonneg fun t => sq_nonneg _
  have hmf : (oddZetaPoleMoment f) ^ 2 ≤ S * Ef :=
    supportedOddPoleMomentBound_of_L2 T hT f hf hsf
  have hmg : (oddZetaPoleMoment g) ^ 2 ≤ S * Eg :=
    supportedOddPoleMomentBound_of_L2 T hT g hg hsg
  have hmul := mul_le_mul hmf hmg (sq_nonneg _) (mul_nonneg hS hEf)
  unfold zetaMixedPoleResponse
  dsimp [S, Ef, Eg] at *
  nlinarith [hmul]

/-- Linearity in the first real physical source, proved by actual
Lebesgue integral additivity of the two integrable shifted products. -/
theorem realCrossCorrelation_add_left
    (f g h : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hh : MemLp h 2 volume) (r : ℝ) :
    realCrossCorrelation (f + g) h r =
      realCrossCorrelation f h r + realCrossCorrelation g h r := by
  have hfh := realCrossCorrelation_integrable hf hh r
  have hgh := realCrossCorrelation_integrable hg hh r
  unfold realCrossCorrelation
  calc
    _ = ∫ t : ℝ, f t * h (t + r) + g t * h (t + r) := by
      apply integral_congr_ae
      filter_upwards [] with t
      simp only [Pi.add_apply]
      ring
    _ = _ := integral_add hfh hgh

/-- Linearity in the second real physical source, retaining the ACTUAL
translation on that leg instead of using a surrogate phase operator. -/
theorem realCrossCorrelation_add_right
    (f g h : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hh : MemLp h 2 volume) (r : ℝ) :
    realCrossCorrelation f (g + h) r =
      realCrossCorrelation f g r + realCrossCorrelation f h r := by
  have hfg := realCrossCorrelation_integrable hf hg r
  have hfh := realCrossCorrelation_integrable hf hh r
  unfold realCrossCorrelation
  calc
    _ = ∫ t : ℝ, f t * g (t + r) + f t * h (t + r) := by
      apply integral_congr_ae
      filter_upwards [] with t
      simp only [Pi.add_apply]
      ring
    _ = _ := integral_add hfg hfh

/-- Each ORIGINAL two-orientation real correlation is linear in the
first source. With symmetry, the second-leg statement follows. -/
theorem realSymmetricShift_add_left
    (f g h : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hh : MemLp h 2 volume) (r : ℝ) :
    realSymmetricShift (f + g) h r =
      realSymmetricShift f h r + realSymmetricShift g h r := by
  unfold realSymmetricShift
  rw [realCrossCorrelation_add_left f g h hf hg hh r,
    realCrossCorrelation_add_left f g h hf hg hh (-r)]
  ring

theorem realSymmetricShift_add_right
    (f g h : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hh : MemLp h 2 volume) (r : ℝ) :
    realSymmetricShift f (g + h) r =
      realSymmetricShift f g r + realSymmetricShift f h r := by
  unfold realSymmetricShift
  rw [realCrossCorrelation_add_right f g h hf hg hh r,
    realCrossCorrelation_add_right f g h hf hg hh (-r)]
  ring

/-- The full primitive paired prime response is genuinely additive
on each real leg, with all original signed character weights intact. -/
theorem pairedMixedPrimeResponse_add_left
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (T : ℝ) (f g h : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hh : MemLp h 2 volume) :
    pairedMixedPrimeResponse chi T (f + g) h =
      pairedMixedPrimeResponse chi T f h +
        pairedMixedPrimeResponse chi T g h := by
  unfold pairedMixedPrimeResponse
  simp_rw [realSymmetricShift_add_left f g h hf hg hh]
  simp only [mul_add, Finset.sum_add_distrib]

theorem zetaMixedPrimeResponse_add_left
    (T : ℝ) (f g h : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hh : MemLp h 2 volume) :
    zetaMixedPrimeResponse T (f + g) h =
      zetaMixedPrimeResponse T f h +
        zetaMixedPrimeResponse T g h := by
  unfold zetaMixedPrimeResponse
  simp_rw [realSymmetricShift_add_left f g h hf hg hh]
  simp only [mul_add, Finset.sum_add_distrib]

/-- The original primitive paired prime form is also additive in the
other real leg by exact two-orientation symmetry. -/
theorem pairedMixedPrimeResponse_add_right
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (T : ℝ) (f g h : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hh : MemLp h 2 volume) :
    pairedMixedPrimeResponse chi T f (g + h) =
      pairedMixedPrimeResponse chi T f g +
        pairedMixedPrimeResponse chi T f h := by
  rw [pairedMixedPrimeResponse_symmetric,
    pairedMixedPrimeResponse_add_left chi T g h f hg hh hf,
    pairedMixedPrimeResponse_symmetric chi T g f,
    pairedMixedPrimeResponse_symmetric chi T h f]

/-- Corresponding literal untwisted zeta mixed prime right-linearity. -/
theorem zetaMixedPrimeResponse_add_right
    (T : ℝ) (f g h : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hh : MemLp h 2 volume) :
    zetaMixedPrimeResponse T f (g + h) =
      zetaMixedPrimeResponse T f g +
        zetaMixedPrimeResponse T f h := by
  rw [zetaMixedPrimeResponse_symmetric,
    zetaMixedPrimeResponse_add_left T g h f hg hh hf,
    zetaMixedPrimeResponse_symmetric T g f,
    zetaMixedPrimeResponse_symmetric T h f]

/-- The mixed real gamma source returns to the original diagonal
integral without a new gamma operator or a complex character phase. -/
theorem realMixedGammaEnergy_diag (a : ℕ) (f : ℝ → ℝ) :
    realMixedGammaEnergy a f f = realGammaEnergy a f := by
  have hShift (r : ℝ) :
      realMixedShiftEnergy f f r = realShiftEnergy f r := by
    unfold realMixedShiftEnergy realShiftEnergy
    apply integral_congr_ae
    filter_upwards [] with t
    ring
  unfold realMixedGammaEnergy realMixedGammaDensity realGammaEnergy
    realGammaDensity
  simp_rw [hShift]

/-- This is the FULL ORIGINAL real primitive nonprincipal conjugate-pair
mixed source. It retains conductor gammaConstant, actual gammaParity and
BOTH original signed prime translation orientations. No pole is introduced
in a nonprincipal primitive pair. -/
def primitiveRealMixedWeil {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (f g : ℝ → ℝ) : ℝ :=
  gammaConstant q (gammaParity chi) *
      (∫ t : ℝ, f t * g t) +
    realMixedGammaEnergy (gammaParity chi) f g -
    pairedMixedPrimeResponse chi T f g

/-- The FULL original real odd zeta mixed source contains the
NEGATIVE signed pole with the literal compact sinh moment. -/
def zetaRealMixedWeil (T : ℝ) (f g : ℝ → ℝ) : ℝ :=
  gammaConstant 1 0 * (∫ t : ℝ, f t * g t) +
    realMixedGammaEnergy 0 f g -
    zetaMixedPrimeResponse T f g -
    zetaMixedPoleResponse f g

/-- This diagonal equals the previously maintained physical source
exactly, without absorbing any signed weight into an absolute bound. -/
theorem primitiveRealMixedWeil_diag
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℝ) :
    primitiveRealMixedWeil chi hp hn T f f =
      primitivePairedOddPhysicalValue chi hp hn T f := by
  unfold primitiveRealMixedWeil
  rw [realMixedGammaEnergy_diag, pairedMixedPrimeResponse_diag]
  have hMass :
      (∫ t : ℝ, f t * f t) = ∫ t : ℝ, f t ^ 2 := by
    apply integral_congr_ae
    filter_upwards [] with t
    ring
  rw [hMass]
  unfold primitivePairedOddPhysicalValue pairedPrimeResponse
  rfl

/-- The real zeta diagonal returns to the actual original zeta pole,
gamma, prime and scalar energy source, with the negative pole intact. -/
theorem zetaRealMixedWeil_diag (T : ℝ) (f : ℝ → ℝ) :
    zetaRealMixedWeil T f f =
      zetaOddPhysicalValue T f := by
  unfold zetaRealMixedWeil
  rw [realMixedGammaEnergy_diag, zetaMixedPrimeResponse_diag,
    zetaMixedPoleResponse_diag]
  have hMass :
      (∫ t : ℝ, f t * f t) = ∫ t : ℝ, f t ^ 2 := by
    apply integral_congr_ae
    filter_upwards [] with t
    ring
  have hNorm :
      (∫ t : ℝ, ‖f t‖ ^ 2) = ∫ t : ℝ, f t ^ 2 := by
    apply integral_congr_ae
    filter_upwards [] with t
    simp only [Real.norm_eq_abs, sq_abs]
  rw [hMass]
  unfold zetaOddPhysicalValue
    GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement.shiftedOddCoreEnergy
  rw [← GRWTSK.NumberTheory.WeilQuadraticForm.NativeGammaH1ShiftBudget.
    realGammaEnergy_eq_native_zeta f, hNorm]
  unfold oddZetaPoleMoment
  ring

/-- The two original real mixed arithmetic sources are symmetric
because the active prime translations occur in both orientations.
Real gamma symmetry and the two signed zeta pole directions persist. -/
theorem primitiveRealMixedWeil_symmetric
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (f g : ℝ → ℝ) :
    primitiveRealMixedWeil chi hp hn T f g =
      primitiveRealMixedWeil chi hp hn T g f := by
  have hMass :
      (∫ t : ℝ, f t * g t) =
        ∫ t : ℝ, g t * f t := by
    apply integral_congr_ae
    filter_upwards [] with t
    ring
  unfold primitiveRealMixedWeil
  rw [hMass, realMixedGammaEnergy_symmetric,
    pairedMixedPrimeResponse_symmetric]

theorem zetaRealMixedWeil_symmetric (T : ℝ) (f g : ℝ → ℝ) :
    zetaRealMixedWeil T f g = zetaRealMixedWeil T g f := by
  have hMass :
      (∫ t : ℝ, f t * g t) =
        ∫ t : ℝ, g t * f t := by
    apply integral_congr_ae
    filter_upwards [] with t
    ring
  unfold zetaRealMixedWeil
  rw [hMass, realMixedGammaEnergy_symmetric,
    zetaMixedPrimeResponse_symmetric,
    zetaMixedPoleResponse_symmetric]

end GRWTSK.NumberTheory.WeilQuadraticForm.SignedMixedPrimePoleH1
