/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueSignedFibreArithmetic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueFibreCapacity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionComplexGramClosure
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Diagonal-aware mean signed Dirichlet offdiagonal causal cross

The exact character family is ALL DirichletCharacter Complex q.
The original source is unmodified:
  mu(n) * pickupResponse n u,
  pickupResponseGram T m n = integral_0^T r_m(u)r_n(u)du.

For each unit residue a, its original complex wave is R_a(u).
The preceding pure finite algebra proves, BEFORE integration:
  |R_a(u)|² - sum_(n in fiber a)|mu(n)r_n(u)|²
   <= floor(N/q)*sum_(n in fiber a)|mu(n)r_n(u)|².

Define the true unit-restricted diagonal:
  D_unit(q,T)=sum_(n<=N,IsUnit(n mod q)) mu(n)²*K_T(n,n).
Character orthogonality and the genuine finite Hermitian Gram
give the EXACT mean signed source identity:
  (sum_chi familyCross_chi(T))/phi(q)
     = sum_(a unit) integral_0^T |R_a(u)|²du - D_unit(q,T).

Finite residue partition, integrability and positivity yield
  -D_unit(q,T) <= meanCross_q(T)
     <= floor(N/q)*D_unit(q,T)
     <= 2*floor(N/q)*T², T>=0.
The subtract-one factor is not obtained by discarding nonunit
diagonal terms: the unit restriction is kept EXACTLY.

For q>N, this sharp upper bound is ZERO and the previously
proved-on-paper character orthogonality gives the exact mean
cross=0. For fixed q as T grows, floor(N/q) is exponential.
This is NEVER an individual primitive-chi signed all-rate theorem,
nor a proof of the original RH or a Dirichlet GRH.

All Lean theorem bodies remain SOURCE PROOF CANDIDATES.
No native compiler, expected-type, fresh-kernel or transitive
full transitive axiom checking has been run.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletMeanSignedCross

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionComplexGramClosure
open GRWTSK.NumberTheory.Moebius.ResidueFibreArithmetic
open GRWTSK.NumberTheory.Moebius.ResidueSignedFibreArithmetic
open GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality
open GRWTSK.NumberTheory.Moebius.DirichletResidueParseval

variable (q : ℕ) [NeZero q]
classical

private def originalValue (n : ℕ) (u : ℝ) : ℂ :=
  (ArithmeticFunction.moebius n : ℂ) * (pickupResponse n u : ℂ)

private def originalSquare (n : ℕ) (u : ℝ) : ℝ :=
  (moebiusReal n)^2 * (pickupResponse n u)^2

private theorem originalSquare_nonneg (n : ℕ) (u : ℝ) :
    0 ≤ originalSquare n u := by
  unfold originalSquare
  positivity

private theorem originalValue_norm_sq (n : ℕ) (u : ℝ) :
    ‖originalValue n u‖^2 = originalSquare n u := by
  unfold originalValue originalSquare moebiusReal
  rw [norm_mul, Complex.norm_intCast, Complex.norm_real]
  simp only [Real.norm_eq_abs, mul_pow, sq_abs]

/-- Diagonal density restricted ONLY to unit residue classes.
All other original indices remain in the full source inventory. -/
def unitDiagonalDensity (T u : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if IsUnit (n : ZMod q) then originalSquare n u else 0

/-- Exact character-averaged original source diagonal, with
true Möbius square weights and actual physical causal Gram. -/
def unitDiagonal (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if IsUnit (n : ZMod q) then
      (moebiusReal n)^2 * pickupResponseGram T n n
    else 0

private theorem original_residue_wave_fibre
    (a : ZMod q) (T u : ℝ) :
    originalResidueWave q a T u =
      ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        originalValue n u := by
  unfold originalResidueWave residueFibre originalValue endpointIndex
  rw [Finset.sum_filter]

/-- The crucial subtraction-first source inequality on ONE
true residue fiber, with coefficient floor(N/q). -/
theorem residueWave_sq_sub_ownDiagonal_le
    (a : ZMod q) (T u : ℝ) :
    ‖originalResidueWave q a T u‖^2 -
      (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        originalSquare n u) ≤
      ((⌊Real.exp T⌋₊ / q : ℕ) : ℝ) *
        (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          originalSquare n u) := by
  have h :=
    residueFibre_signed_square_le_quotient q a
      ⌊Real.exp T⌋₊ (fun n => originalValue n u)
  have hw := original_residue_wave_fibre q a T u
  have hdiag :
      (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        ‖originalValue n u‖^2) =
      (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        originalSquare n u) := by
    apply Finset.sum_congr rfl
    intro n hn
    exact originalValue_norm_sq n u
  rw [← hw, hdiag] at h
  exact h

/-- The same physical residue wave is bounded above by its
unit-preserved diagonal with the factor floor(N/q)+1. -/
theorem residueWave_sq_le_ownDiagonal
    (a : ZMod q) (T u : ℝ) :
    ‖originalResidueWave q a T u‖^2 ≤
      (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)) *
        ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          originalSquare n u := by
  have h := residueWave_sq_sub_ownDiagonal_le q a T u
  nlinarith

/-- Finite reindex of the ACTUAL unit-residue source density.
Nonunit diagonal terms are NOT silently reintroduced. -/
theorem unitFibreSquares_eq_unitDiagonalDensity (T u : ℝ) :
    (∑ a : ZMod q,
      if IsUnit a then
        ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          originalSquare n u
      else 0) = unitDiagonalDensity q T u := by
  let S : Finset ℕ := endpointIndex T
  have hf (a : ZMod q) :
      (if IsUnit a then
        ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          originalSquare n u else 0) =
      ∑ n ∈ S,
        if IsUnit a ∧ (n : ZMod q) = a then
          originalSquare n u else 0 := by
    by_cases ha : IsUnit a
    · simp only [if_pos ha]
      simp only [residueFibre, endpointIndex, Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases hnres : (n : ZMod q) = a
      · simp [ha, hnres]
      · simp [ha, hnres]
    · simp [ha]
  calc
    _ = ∑ a : ZMod q, ∑ n ∈ S,
          if IsUnit a ∧ (n : ZMod q) = a then
            originalSquare n u else 0 := by
      apply Finset.sum_congr rfl
      intro a ha
      exact hf a
    _ = ∑ n ∈ S, ∑ a : ZMod q,
          if IsUnit a ∧ (n : ZMod q) = a then
            originalSquare n u else 0 := Finset.sum_comm
    _ = ∑ n ∈ S,
          if IsUnit (n : ZMod q) then originalSquare n u else 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      simp
    _ = unitDiagonalDensity q T u := by
      rfl

/-- All unit-residue original source wave squares are paid
by the unit-restricted original diagonal density, not the
complete unfiltered diagonal. -/
theorem unitResidueDensity_le_occupationUnitDiagonal
    (T u : ℝ) :
    (∑ a : ZMod q,
      if IsUnit a then
        ‖originalResidueWave q a T u‖^2 else 0) ≤
      (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)) *
        unitDiagonalDensity q T u := by
  let C : ℝ := (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ))
  have hsum :
      (∑ a : ZMod q,
        if IsUnit a then
          ‖originalResidueWave q a T u‖^2 else 0) ≤
      (∑ a : ZMod q,
        if IsUnit a then
          C * (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
            originalSquare n u) else 0) := by
    apply Finset.sum_le_sum
    intro a ha
    by_cases hu : IsUnit a
    · simpa only [if_pos hu, C] using
        residueWave_sq_le_ownDiagonal q a T u
    · simp [hu]
  calc
    _ ≤ (∑ a : ZMod q,
        if IsUnit a then
          C * (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
            originalSquare n u) else 0) := hsum
    _ = C * (∑ a : ZMod q,
        if IsUnit a then
          ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
            originalSquare n u else 0) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro a ha
      by_cases hu : IsUnit a <;> simp [hu]
    _ = C * unitDiagonalDensity q T u := by
      rw [unitFibreSquares_eq_unitDiagonalDensity]
    _ = _ := rfl

private theorem unitDiagonalDensity_continuous (T : ℝ) :
    Continuous (fun u : ℝ => unitDiagonalDensity q T u) := by
  unfold unitDiagonalDensity
  apply continuous_finsetSum
  intro n hn
  by_cases hu : IsUnit (n : ZMod q)
  · simp only [if_pos hu]
    have hn1 : 0 < n := (Finset.mem_Icc.mp hn).1
    exact continuous_const.mul
      ((pickupResponse_continuous hn1).pow 2)
  · simp [hu]

private theorem originalResidueWave_continuous
    (a : ZMod q) (T : ℝ) :
    Continuous (fun u : ℝ => originalResidueWave q a T u) := by
  unfold originalResidueWave
  apply continuous_finsetSum
  intro n hn
  by_cases hres : (n : ZMod q) = a
  · simp only [if_pos hres]
    have hn1 : 0 < n := (Finset.mem_Icc.mp hn).1
    have hresp : Continuous (fun u : ℝ => (pickupResponse n u : ℂ)) :=
      Complex.continuous_ofReal.comp (pickupResponse_continuous hn1)
    exact continuous_const.mul hresp
  · simp [hres]

/-- Literal unit-restricted original diagonal = its physical
time integral, with every source birth boundary preserved. -/
theorem unitDiagonal_eq_integral_density (T : ℝ) :
    unitDiagonal q T =
      ∫ u in (0 : ℝ)..T, unitDiagonalDensity q T u := by
  unfold unitDiagonal unitDiagonalDensity
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro n hn
    by_cases hu : IsUnit (n : ZMod q)
    · simp only [if_pos hu]
      unfold originalSquare
      rw [intervalIntegral.integral_const_mul]
      rfl
    · simp [hu]
  · intro n hn
    have hc : Continuous (fun u : ℝ =>
        if IsUnit (n : ZMod q) then originalSquare n u else 0) := by
      by_cases hu : IsUnit (n : ZMod q)
      · simpa only [if_pos hu] using
          (continuous_const.mul
            ((pickupResponse_continuous (Finset.mem_Icc.mp hn).1).pow 2))
      · simpa only [if_neg hu] using
          (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
    exact hc.intervalIntegrable 0 T

/-- Integrate the source-exact unit-diagonal occupancy budget
without dropping any nonunit term from the upper source. -/
theorem unitResidueEnergy_le_occupationUnitDiagonal
    (T : ℝ) (hT : 0 ≤ T) :
    (∑ a : ZMod q,
      if IsUnit a then originalResidueEnergy q a T else 0) ≤
      (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)) *
        unitDiagonal q T := by
  let C : ℝ := (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ))
  let L : ℝ → ℝ := fun u =>
    ∑ a : ZMod q,
      if IsUnit a then ‖originalResidueWave q a T u‖^2 else 0
  let D : ℝ → ℝ := fun u => unitDiagonalDensity q T u
  have hc (a : ZMod q) :
      Continuous (fun u : ℝ =>
        if IsUnit a then
          ‖originalResidueWave q a T u‖^2 else 0) := by
    by_cases hu : IsUnit a
    · simpa only [if_pos hu] using
        ((originalResidueWave_continuous q a T).norm.pow 2)
    · simpa only [if_neg hu] using
        (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
  have hL : Continuous L :=
    continuous_finsetSum _ (fun a ha => hc a)
  have hD : Continuous D :=
    unitDiagonalDensity_continuous q T
  have hR : Continuous (fun u : ℝ => C * D u) :=
    continuous_const.mul hD
  have hpoint (u : ℝ) : L u ≤ C * D u :=
    unitResidueDensity_le_occupationUnitDiagonal q T u
  have hmono :
      (∫ u in (0 : ℝ)..T, L u) ≤
        ∫ u in (0 : ℝ)..T, C * D u := by
    apply intervalIntegral.integral_mono_on hT
      (hL.intervalIntegrable 0 T)
      (hR.intervalIntegrable 0 T)
    intro u hu
    exact hpoint u
  have heq :
      (∑ a : ZMod q,
        if IsUnit a then originalResidueEnergy q a T else 0) =
      ∫ u in (0 : ℝ)..T, L u := by
    unfold L
    rw [intervalIntegral.integral_finsetSum
      (fun a ha => (hc a).intervalIntegrable 0 T)]
    apply Finset.sum_congr rfl
    intro a ha
    by_cases hu : IsUnit a
    · simp [originalResidueEnergy, hu]
    · simp [hu]
  rw [heq]
  calc
    (∫ u in (0 : ℝ)..T, L u) ≤
      ∫ u in (0 : ℝ)..T, C * D u := hmono
    _ = C * (∫ u in (0 : ℝ)..T, D u) := by
      rw [intervalIntegral.integral_const_mul]
    _ = C * unitDiagonal q T := by
      rw [unitDiagonal_eq_integral_density]
    _ = _ := rfl

private theorem complex_re_sum {α : Type*} [DecidableEq α]
    (S : Finset α) (f : α → ℂ) :
    (∑ a ∈ S, f a).re = ∑ a ∈ S, (f a).re := by
  induction S using Finset.induction_on with
  | empty => simp
  | @insert a S ha ih =>
      simp only [Finset.sum_insert ha, Complex.add_re, ih]

/-- The literal full ordered complex Hermitian finite Gram
has exactly one diagonal plus the original off-diagonal cross. -/
private theorem complex_complete_pair_split
    (S : Finset ℕ) (H : ℕ → ℕ → ℂ) :
    (∑ m ∈ S, ∑ n ∈ S, H m n) =
      (∑ n ∈ S, H n n) +
        (∑ m ∈ S, ∑ n ∈ S,
          if m ≠ n then H m n else 0) := by
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hd : H m m =
      ∑ n ∈ S, if m = n then H m n else 0 := by
    simp [hm]
  rw [hd, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n <;> simp [hmn]

private theorem familyHermitian_diagonal_re
    (F : NormalizedCoefficients) (T : ℝ) (n : ℕ) :
    (familyHermitianKernel F T n n).re =
      ‖F.mobius n‖^2 * pickupResponseGram T n n := by
  have hnorm :
      F.mobius n * star (F.mobius n) =
        ((‖F.mobius n‖^2 : ℝ) : ℂ) := by
    simp only [Complex.star_def, Complex.mul_conj,
      Complex.normSq_eq_norm_sq]
  unfold familyHermitianKernel
  rw [← mul_assoc, hnorm]
  simp

/-- One full Hermitian energy equals its diagonal plus its
ORIGINAL signed off-diagonal source; no positivity is inserted
into the off-diagonal term. -/
theorem familyEnergy_eq_diagonal_add_cross
    (F : NormalizedCoefficients) {T : ℝ} (hT : 0 ≤ T) :
    familyFiniteResponseEnergy F T =
      familyDiagonal F T + familyCross F T := by
  let S : Finset ℕ := endpointIndex T
  let H : ℕ → ℕ → ℂ := familyHermitianKernel F T
  have hs := complex_complete_pair_split S H
  have hreal := congrArg Complex.re hs
  rw [Complex.add_re] at hreal
  have hdiag :
      (∑ n ∈ S, H n n).re = familyDiagonal F T := by
    rw [complex_re_sum]
    unfold familyDiagonal
    apply Finset.sum_congr rfl
    intro n hn
    exact familyHermitian_diagonal_re F T n
  have hsplit :
      (familyFullGram F T).re =
        familyDiagonal F T + familyCross F T := by
    change (∑ m ∈ S, ∑ n ∈ S, H m n).re =
      familyDiagonal F T +
        (∑ m ∈ S, ∑ n ∈ S,
          if m ≠ n then H m n else 0).re
    simpa only [hdiag] using hreal
  have he := familyHermitianFiniteGram_proof F T hT
  linarith

/-- Pinned character orthogonality on the SAME arithmetic index,
converted to the actual squared modulus of a character value. -/
private theorem character_norm_sq_sum (n : ℕ) :
    (∑ χ : DirichletCharacter ℂ q,
      ‖χ (n : ZMod q)‖^2) =
      if IsUnit (n : ZMod q) then (q.totient : ℝ) else 0 := by
  have horth := character_pair_orthogonality q
    (n : ZMod q) (n : ZMod q)
  have hr := congrArg Complex.re horth
  have hleft :
      (∑ χ : DirichletCharacter ℂ q,
        χ (n : ZMod q) * star (χ (n : ZMod q))).re =
      (∑ χ : DirichletCharacter ℂ q,
        ‖χ (n : ZMod q)‖^2) := by
    rw [complex_re_sum]
    apply Finset.sum_congr rfl
    intro χ hχ
    simp only [Complex.star_def, Complex.mul_conj,
      Complex.normSq_eq_norm_sq, Complex.ofReal_re]
  rw [hleft] at hr
  by_cases hu : IsUnit (n : ZMod q)
  · simpa [hu] using hr
  · simpa [hu] using hr

private theorem character_mobius_norm_sq
    (χ : DirichletCharacter ℂ q) (n : ℕ) :
    ‖(dirichletCharacterCoefficients χ).mobius n‖^2 =
      (moebiusReal n)^2 * ‖χ (n : ZMod q)‖^2 := by
  rw [dirichletCharacter_mobius_apply χ n, norm_mul,
    Complex.norm_intCast]
  simp only [moebiusReal, mul_pow, sq_abs]
  ring

/-- The sum of all character SOURCE diagonals, not a new
abstract normalization, is exactly phi(q) times the original
UNIT-residue Möbius physical diagonal. -/
theorem allCharacterDiagonal_eq_totient_unitDiagonal (T : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      familyDiagonal (dirichletCharacterCoefficients χ) T) =
        (q.totient : ℝ) * unitDiagonal q T := by
  let S : Finset ℕ := endpointIndex T
  unfold familyDiagonal unitDiagonal
  calc
    (∑ χ : DirichletCharacter ℂ q,
      ∑ n ∈ S,
        ‖(dirichletCharacterCoefficients χ).mobius n‖^2 *
          pickupResponseGram T n n) =
      ∑ n ∈ S, ∑ χ : DirichletCharacter ℂ q,
        ‖(dirichletCharacterCoefficients χ).mobius n‖^2 *
          pickupResponseGram T n n := Finset.sum_comm
    _ = ∑ n ∈ S,
        (∑ χ : DirichletCharacter ℂ q,
          ‖(dirichletCharacterCoefficients χ).mobius n‖^2) *
          pickupResponseGram T n n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.sum_mul]
    _ = ∑ n ∈ S,
        if IsUnit (n : ZMod q) then
          (q.totient : ℝ) * (moebiusReal n)^2 *
            pickupResponseGram T n n else 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      have hc (χ : DirichletCharacter ℂ q) :=
        character_mobius_norm_sq q χ n
      simp_rw [hc]
      rw [← Finset.mul_sum, character_norm_sq_sum q n]
      by_cases hu : IsUnit (n : ZMod q)
      · simp [hu, mul_comm, mul_left_comm, mul_assoc]
      · simp [hu]
    _ = (q.totient : ℝ) *
        (∑ n ∈ S, if IsUnit (n : ZMod q) then
          (moebiusReal n)^2 *
            pickupResponseGram T n n else 0) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases hu : IsUnit (n : ZMod q)
      · simp [hu, mul_assoc]
      · simp [hu]

/-- The signed all-character cross MEAN is EXACTLY the
all-character mean wave energy minus its UNIT-RESTRICTED
original source diagonal, for T>=0. -/
def meanSignedCross (T : ℝ) : ℝ :=
  (∑ χ : DirichletCharacter ℂ q,
    familyCross (dirichletCharacterCoefficients χ) T) /
      (q.totient : ℝ)

theorem meanSignedCross_eq_unitEnergy_sub_diagonal
    (T : ℝ) (hT : 0 ≤ T) :
    meanSignedCross q T =
      (∑ a : ZMod q,
        if IsUnit a then originalResidueEnergy q a T else 0) -
        unitDiagonal q T := by
  have hphiNat : 0 < q.totient :=
    Nat.totient_pos.mpr (NeZero.pos q)
  have hphi : (0 : ℝ) < (q.totient : ℝ) := by
    exact_mod_cast hphiNat
  have hsplit :
      (∑ χ : DirichletCharacter ℂ q,
        familyFiniteResponseEnergy
          (dirichletCharacterCoefficients χ) T) =
      (∑ χ : DirichletCharacter ℂ q,
        familyDiagonal
          (dirichletCharacterCoefficients χ) T) +
      (∑ χ : DirichletCharacter ℂ q,
        familyCross
          (dirichletCharacterCoefficients χ) T) := by
    calc
      _ = ∑ χ : DirichletCharacter ℂ q,
          (familyDiagonal
            (dirichletCharacterCoefficients χ) T +
           familyCross
            (dirichletCharacterCoefficients χ) T) := by
        apply Finset.sum_congr rfl
        intro χ hχ
        exact familyEnergy_eq_diagonal_add_cross
          (dirichletCharacterCoefficients χ) hT
      _ = _ := Finset.sum_add_distrib
  have hparseval := all_character_energy_parseval q T
  have hdiag := allCharacterDiagonal_eq_totient_unitDiagonal q T
  rw [hparseval, hdiag] at hsplit
  unfold meanSignedCross
  apply (div_eq_iff₀ hphi).mpr
  nlinarith [hsplit]

private theorem unitDiagonal_nonneg
    (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ unitDiagonal q T := by
  unfold unitDiagonal
  apply Finset.sum_nonneg
  intro n hn
  by_cases hu : IsUnit (n : ZMod q)
  · simp only [if_pos hu]
    have hK : 0 ≤ pickupResponseGram T n n := by
      unfold pickupResponseGram
      exact intervalIntegral.integral_nonneg hT
        (fun u hu => mul_self_nonneg (pickupResponse n u))
    exact mul_nonneg (sq_nonneg _) hK
  · simp [hu]

/-- The unit-restricted original diagonal is bounded by the
ENTIRE original diagonal, which already has a quadratic budget. -/
theorem unitDiagonal_nonneg_le_original
    (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ unitDiagonal q T ∧
    unitDiagonal q T ≤ pickupDiagonal T := by
  constructor
  · exact unitDiagonal_nonneg q T hT
  · unfold unitDiagonal pickupDiagonal
    apply Finset.sum_le_sum
    intro n hn
    by_cases hu : IsUnit (n : ZMod q)
    · simp [hu]
    · simp only [if_neg hu]
      have hK : 0 ≤ pickupResponseGram T n n := by
        unfold pickupResponseGram
        exact intervalIntegral.integral_nonneg hT
          (fun u hu => mul_self_nonneg (pickupResponse n u))
      exact mul_nonneg (sq_nonneg _) hK

/-- The requested final SIGNED mean result. Both signs are
tracked; only the positive excursion uses the quotient
occupancy cap floor(N/q), not floor(N/q)+1. -/
theorem meanSignedCross_signed_bounds
    (T : ℝ) (hT : 0 ≤ T) :
    -unitDiagonal q T ≤ meanSignedCross q T ∧
    meanSignedCross q T ≤
      ((⌊Real.exp T⌋₊ / q : ℕ) : ℝ) *
        unitDiagonal q T := by
  have heq := meanSignedCross_eq_unitEnergy_sub_diagonal q T hT
  have hupper := unitResidueEnergy_le_occupationUnitDiagonal q T hT
  have hE :
      0 ≤ ∑ a : ZMod q,
        if IsUnit a then originalResidueEnergy q a T else 0 := by
    apply Finset.sum_nonneg
    intro a ha
    by_cases hu : IsUnit a
    · simp only [if_pos hu]
      unfold originalResidueEnergy
      exact intervalIntegral.integral_nonneg hT
        (fun u hu => sq_nonneg _)
    · simp [hu]
  constructor
  · linarith
  · nlinarith [heq, hupper]

/-- FINAL explicit original signed offdiagonal character
MEAN inequality, for every positive q and T>=0.
No primitive-only / fixed-character / RH conclusion. -/
theorem meanSignedCross_le_quotient_quadratic
    (T : ℝ) (hT : 0 ≤ T) :
    meanSignedCross q T ≤
      2 * ((⌊Real.exp T⌋₊ / q : ℕ) : ℝ) * T^2 := by
  have hc := (meanSignedCross_signed_bounds q T hT).2
  have hd := (unitDiagonal_nonneg_le_original q T hT).2
  have hquad := (pickupDiagonal_quadratic_bound hT).2
  have hN : 0 ≤ ((⌊Real.exp T⌋₊ / q : ℕ) : ℝ) := by
    positivity
  nlinarith [hc, mul_le_mul_of_nonneg_left
    (hd.trans hquad) hN]

end GRWTSK.NumberTheory.Moebius.DirichletMeanSignedCross
