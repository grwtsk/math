/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueSharpSignedFibre
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletMeanSignedCross
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Sharp original Dirichlet-family signed mean via unit diagonal

The prior all-character source established, for ANY q>=1,T>=0,
  MeanCross(q,T) =
    sum_(a unit) integral_0^T |R_(q,a,T)(u)|²du
       - unitDiagonal(q,T),
  -unitDiagonal <= MeanCross <= floor(N/q)*unitDiagonal,
  0<=unitDiagonal<=pickupDiagonal<=2*T².
The finite original residue inventory is POSITIVE 1<=n<=N.

The new Mathlib-only shifted quotient (n-1)/q proves the sharper
cardinality bound #fiber<=floor((N-1)/q)+1. Apply the previous
GENERAL finite COMPLEX signed square lemma with this sharp
cardinality and SUBTRACT the exact original μ² diagonal first.

For every q>=1 and T>=0, N=floor(exp T)>=1:
  -D_unit(q,T) <= MeanCross(q,T)
     <= floor((N-1)/q)*D_unit(q,T)
     <=2*floor((N-1)/q)*T².

For q>=N, the shifted fiber cardinality is <=1: every
complex signed fiber offdiagonal is IDENTICALLY ZERO at every
physical u. The exact mean signed character cross is therefore
ZERO even on the boundary q=N, improving the old q>N result.
All characters are included (principal and imprimitive),
and q necessarily grows with N at this boundary.

This is an exact finite arithmetic and causal source statement,
NOT an individual fixed primitive-character GRH bound.
Full Lean compilation/kernel/axiom audit remain NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletMeanSignedSharp

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.ResidueFibreArithmetic
open GRWTSK.NumberTheory.Moebius.ResidueFibreSharpArithmetic
open GRWTSK.NumberTheory.Moebius.ResidueSharpSignedFibre
open GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality
open GRWTSK.NumberTheory.Moebius.DirichletResidueParseval
open GRWTSK.NumberTheory.Moebius.DirichletMeanSignedCross

variable (q : ℕ) [NeZero q]
classical

private def originalValue (n : ℕ) (u : ℝ) : ℂ :=
  (ArithmeticFunction.moebius n : ℂ) *
    (pickupResponse n u : ℂ)

private theorem originalValue_norm_sq
    (n : ℕ) (u : ℝ) :
    ‖originalValue n u‖^2 =
      (moebiusReal n)^2 * (pickupResponse n u)^2 := by
  unfold originalValue moebiusReal
  rw [norm_mul, Complex.norm_intCast, Complex.norm_real]
  simp only [Real.norm_eq_abs,mul_pow,sq_abs]

private theorem originalResidueWave_eq_sharp_fibre
    (a : ZMod q) (T u : ℝ) :
    originalResidueWave q a T u =
      ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        originalValue n u := by
  unfold originalResidueWave residueFibre originalValue endpointIndex
  rw [Finset.sum_filter]

/-- The literal original complex residue wave, after its OWN
diagonal is subtracted, has the SHARP coefficient
floor((N-1)/q), including when q|N or q=1. -/
theorem originalResidueWave_sq_sub_diagonal_le_sharp
    (a : ZMod q) (T u : ℝ) :
    ‖originalResidueWave q a T u‖^2 -
      (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        (moebiusReal n)^2*(pickupResponse n u)^2) ≤
      (((⌊Real.exp T⌋₊-1)/q : ℕ) : ℝ) *
        (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          (moebiusReal n)^2*(pickupResponse n u)^2) := by
  have h := residueFibre_signed_square_le_sharp
    q a ⌊Real.exp T⌋₊ (fun n => originalValue n u)
  have hw := originalResidueWave_eq_sharp_fibre q a T u
  have hd :
      (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        ‖originalValue n u‖^2) =
      ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        (moebiusReal n)^2*(pickupResponse n u)^2 := by
    apply Finset.sum_congr rfl
    intro n hn
    exact originalValue_norm_sq n u
  rw [←hw,hd] at h
  exact h

private theorem unitFibreDensity_eq_original
    (T u : ℝ) :
    (∑ a : ZMod q,
      if IsUnit a then
        ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          (moebiusReal n)^2*(pickupResponse n u)^2
      else 0) =
      unitDiagonalDensity q T u := by
  exact unitFibreSquares_eq_unitDiagonalDensity q T u

/-- Pointwise original unit-residue waveform square bound,
with the SHARP ceil(N/q), and exactly the earlier UNIT
diagonal density, not the all-index diagonal. -/
theorem unitResidueDensity_le_sharpCapacity
    (T u : ℝ) :
    (∑ a : ZMod q,
      if IsUnit a then
        ‖originalResidueWave q a T u‖^2 else 0) ≤
      ((((⌊Real.exp T⌋₊-1)/q+1 : ℕ) : ℝ)) *
        unitDiagonalDensity q T u := by
  let C : ℝ := (((⌊Real.exp T⌋₊-1)/q+1 : ℕ) : ℝ)
  have hterm (a : ZMod q) :
      ‖originalResidueWave q a T u‖^2 ≤
        C * (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          (moebiusReal n)^2*(pickupResponse n u)^2) := by
    have h := originalResidueWave_sq_sub_diagonal_le_sharp q a T u
    have hCcast :
        C = (((⌊Real.exp T⌋₊-1)/q : ℕ) : ℝ) + 1 := by
      dsimp [C]
      push_cast
      ring
    rw [hCcast]
    nlinarith
  calc
    _ ≤ (∑ a : ZMod q,
        if IsUnit a then
          C * (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
            (moebiusReal n)^2*(pickupResponse n u)^2)
        else 0) := by
      apply Finset.sum_le_sum
      intro a ha
      by_cases hunit : IsUnit a
      · simpa only [if_pos hunit] using hterm a
      · simp [hunit]
    _ = C * (∑ a : ZMod q,
        if IsUnit a then
          ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
            (moebiusReal n)^2*(pickupResponse n u)^2
        else 0) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro a ha
      by_cases hunit : IsUnit a <;> simp [hunit]
    _ = C * unitDiagonalDensity q T u := by
      rw [unitFibreDensity_eq_original]
    _ = _ := rfl

private theorem continuous_originalResidueWave
    (a : ZMod q) (T : ℝ) :
    Continuous (fun u : ℝ => originalResidueWave q a T u) := by
  unfold originalResidueWave
  apply continuous_finsetSum
  intro n hn
  by_cases hr : (n : ZMod q) = a
  · simp only [if_pos hr]
    have hnpos : 0 < n := (Finset.mem_Icc.mp hn).1
    have hc :
        Continuous (fun u : ℝ => (pickupResponse n u : ℂ)) :=
      Complex.continuous_ofReal.comp (pickupResponse_continuous hnpos)
    exact continuous_const.mul hc
  · simp [hr]

private theorem continuous_unitDiagonalDensity
    (T : ℝ) :
    Continuous (fun u : ℝ => unitDiagonalDensity q T u) := by
  unfold unitDiagonalDensity
  apply continuous_finsetSum
  intro n hn
  by_cases hunit : IsUnit (n : ZMod q)
  · have hnpos : 0 < n := (Finset.mem_Icc.mp hn).1
    have hc : Continuous (fun u : ℝ =>
        (moebiusReal n)^2*(pickupResponse n u)^2) :=
      continuous_const.mul ((pickupResponse_continuous hnpos).pow 2)
    simpa only [if_pos hunit] using hc
  · simp [hunit]

private theorem continuous_unitResidueDensity
    (T : ℝ) :
    Continuous (fun u : ℝ =>
      ∑ a : ZMod q,
        if IsUnit a then
          ‖originalResidueWave q a T u‖^2 else 0) := by
  apply continuous_finsetSum
  intro a ha
  by_cases hunit : IsUnit a
  · simpa only [if_pos hunit] using
      ((continuous_originalResidueWave q a T).norm.pow 2)
  · simpa only [if_neg hunit] using
      (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))

private theorem originalUnitResidueEnergy_eq_integral
    (T : ℝ) :
    (∑ a : ZMod q,
      if IsUnit a then originalResidueEnergy q a T else 0) =
      ∫ u in (0 : ℝ)..T,
        ∑ a : ZMod q,
          if IsUnit a then
            ‖originalResidueWave q a T u‖^2 else 0 := by
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro a ha
    by_cases hunit : IsUnit a
    · simp [originalResidueEnergy,hunit]
    · simp [hunit]
  · intro a ha
    by_cases hunit : IsUnit a
    · simpa only [if_pos hunit] using
        ((continuous_originalResidueWave q a T).norm.pow 2).intervalIntegrable 0 T
    · simpa only [if_neg hunit] using
        (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ))).intervalIntegrable 0 T

/-- Sharp COMPLETE character unit-residue energy bound from
the SAME original physical causal source, for T>=0. -/
theorem unitResidueEnergy_le_sharpCapacity
    (T : ℝ) (hT : 0 ≤ T) :
    (∑ a : ZMod q,
      if IsUnit a then originalResidueEnergy q a T else 0) ≤
      ((((⌊Real.exp T⌋₊-1)/q+1 : ℕ) : ℝ)) *
        unitDiagonal q T := by
  let C : ℝ := (((⌊Real.exp T⌋₊-1)/q+1 : ℕ) : ℝ)
  let L : ℝ → ℝ := fun u =>
    ∑ a : ZMod q,
      if IsUnit a then ‖originalResidueWave q a T u‖^2 else 0
  let D : ℝ → ℝ := fun u => unitDiagonalDensity q T u
  have hL : Continuous L :=
    continuous_unitResidueDensity q T
  have hD : Continuous D :=
    continuous_unitDiagonalDensity q T
  have hR : Continuous (fun u : ℝ => C * D u) :=
    continuous_const.mul hD
  have hpt (u : ℝ) : L u ≤ C * D u :=
    unitResidueDensity_le_sharpCapacity q T u
  rw [originalUnitResidueEnergy_eq_integral q T]
  calc
    (∫ u in (0 : ℝ)..T, L u) ≤
      ∫ u in (0 : ℝ)..T, C * D u := by
        apply intervalIntegral.integral_mono_on hT
          (hL.intervalIntegrable 0 T)
          (hR.intervalIntegrable 0 T)
        intro u hu
        exact hpt u
    _ = C * (∫ u in (0 : ℝ)..T, D u) := by
      rw [intervalIntegral.integral_const_mul]
    _ = C * unitDiagonal q T := by
      rw [unitDiagonal_eq_integral_density]
    _ = _ := rfl

/-- The fully source-exact SHARP signed family-MEAN upper,
lower bound unchanged. The key coefficient is
floor((floor(exp T)-1)/q), not floor(floor(exp T)/q).
This does not bound a fixed primitive Dirichlet character. -/
theorem meanSignedCross_sharp_bounds
    (T : ℝ) (hT : 0 ≤ T) :
    -unitDiagonal q T ≤ meanSignedCross q T ∧
    meanSignedCross q T ≤
      (((⌊Real.exp T⌋₊-1)/q : ℕ) : ℝ) *
        unitDiagonal q T := by
  have hlo := (meanSignedCross_signed_bounds q T hT).1
  have hmean := meanSignedCross_eq_unitEnergy_sub_diagonal q T hT
  have hcap := unitResidueEnergy_le_sharpCapacity q T hT
  have hcast :
      (((⌊Real.exp T⌋₊-1)/q+1 : ℕ) : ℝ) =
        (((⌊Real.exp T⌋₊-1)/q : ℕ) : ℝ) + 1 := by
    push_cast
    ring
  rw [hcast] at hcap
  constructor
  · exact hlo
  · nlinarith [hmean,hcap]

/-- The genuine all-moduli signed mean upper using the old
original SOURCE quadratic pickup diagonal bound. -/
theorem meanSignedCross_le_sharp_quotient_quadratic
    (T : ℝ) (hT : 0 ≤ T) :
    meanSignedCross q T ≤
      2 * (((⌊Real.exp T⌋₊-1)/q : ℕ) : ℝ) * T^2 := by
  have hc := (meanSignedCross_sharp_bounds q T hT).2
  have hd := (unitDiagonal_nonneg_le_original q T hT).2
  have hquad := (pickupDiagonal_quadratic_bound hT).2
  have hC :
      0 ≤ (((⌊Real.exp T⌋₊-1)/q : ℕ) : ℝ) := by
    positivity
  nlinarith [hc, mul_le_mul_of_nonneg_left (hd.trans hquad) hC]

/-- If q>=N(T), EVERY genuine residue fiber has at most one
source index, so the complex wave square equals that fiber's
complete diagonal at EVERY physical time u. -/
theorem unitResidueDensity_eq_diagonal_of_modulus_ge
    (T u : ℝ) (hq : ⌊Real.exp T⌋₊ ≤ q) :
    (∑ a : ZMod q,
      if IsUnit a then ‖originalResidueWave q a T u‖^2 else 0) =
      unitDiagonalDensity q T u := by
  calc
    _ = ∑ a : ZMod q,
        if IsUnit a then
          ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
            (moebiusReal n)^2*(pickupResponse n u)^2
        else 0 := by
      apply Finset.sum_congr rfl
      intro a ha
      by_cases hunit : IsUnit a
      · simp only [if_pos hunit]
        have hw := originalResidueWave_eq_sharp_fibre q a T u
        have hc := residueFibre_signed_square_zero_of_modulus_ge
          q a ⌊Real.exp T⌋₊
          (fun n => originalValue n u) hq
        rw [←hw] at hc
        have he :
            (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
              ‖originalValue n u‖^2) =
              ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
                (moebiusReal n)^2*(pickupResponse n u)^2 := by
          apply Finset.sum_congr rfl
          intro n hn
          exact originalValue_norm_sq n u
        rw [he] at hc
        linarith
      · simp [hunit]
    _ = unitDiagonalDensity q T u :=
      unitFibreDensity_eq_original q T u

/-- Exact unit-restricted original causal energy for q>=N,
including q=N. This is stronger than a mere nonpositive
mean-cross estimate: the true excess vanishes IDENTICALLY. -/
theorem unitResidueEnergy_eq_diagonal_of_modulus_ge
    (T : ℝ) (hq : ⌊Real.exp T⌋₊ ≤ q) :
    (∑ a : ZMod q,
      if IsUnit a then originalResidueEnergy q a T else 0) =
      unitDiagonal q T := by
  rw [originalUnitResidueEnergy_eq_integral q T]
  calc
    (∫ u in (0 : ℝ)..T,
      ∑ a : ZMod q,
        if IsUnit a then
          ‖originalResidueWave q a T u‖^2 else 0) =
      ∫ u in (0 : ℝ)..T,
        unitDiagonalDensity q T u := by
          apply intervalIntegral.integral_congr
          intro u hu
          exact unitResidueDensity_eq_diagonal_of_modulus_ge
            q T u hq
    _ = unitDiagonal q T :=
      (unitDiagonal_eq_integral_density q T).symm

/-- Exact zero of the COMPLETE character-AVERAGED original
signed offdiagonal Hermitian cross for q>=N(T).
The earlier source only formally treated q>N(T).
This includes all characters and a variable modulus, not
fixed-character GRH cancellation. -/
theorem meanSignedCross_eq_zero_of_modulus_ge
    (T : ℝ) (hT : 0 ≤ T)
    (hq : ⌊Real.exp T⌋₊ ≤ q) :
    meanSignedCross q T = 0 := by
  rw [meanSignedCross_eq_unitEnergy_sub_diagonal q T hT]
  rw [unitResidueEnergy_eq_diagonal_of_modulus_ge q T hq]
  ring

end GRWTSK.NumberTheory.Moebius.DirichletMeanSignedSharp
