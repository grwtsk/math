/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueParseval
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueFibreArithmetic
import Mathlib.Algebra.Order.Chebyshev
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Finite residue occupancy and the ORIGINAL causal family-mean energy

The pinned DirichletCharacter orthogonality/Parseval source supplies
  sum_(chi mod q) E_chi(T)
    = phi(q) * sum_(a unit) integral_0^T |R_(q,a,T)(u)|² du,
where R_(q,a,T) is the literal original mu(n)*pickupResponse(n,u)
summed over n in 1..N(T) with n mod q=a.

At every positive modulus q and every residue a, the map n |-> n/q
is injective on this residue fiber: equality of n mod q and
equality of n/q imply equality by Nat.mod_add_div. Its image
lies in Finset.range (N/q+1); hence #fiber <= floor(N/q)+1.

The *actual complex* residue wave obeys the finite Hilbert
Cauchy-Schwarz bound
  |R_(q,a,T)(u)|² <= #fiber * sum_(n in fiber) |mu(n)r_n(u)|²
directly by norm_sum_le and the pinned
sq_sum_le_card_mul_sum_sq. Summing over unit residues yields
  sum_(a unit)|R_a(u)|²
    <= (N/q+1)*sum_(n<=N) mu(n)²*r_n(u)².
This works even though the original mu(n) signs are unchanged.
Each index occurs exactly once in the complete residue sum;
the nonunit residue contribution is discarded only from a
NONNEGATIVE right-side upper bound.

Finite interval-integral monotonicity, exact existing
pickupDiagonal_eq_integral_density and original finite character
Parseval give
  sum_chi E_chi(T) <= phi(q)*(N/q+1)*pickupDiagonal(T)
                 <= phi(q)*(N/q+1)*2*T², T>=0.
The normalized character mean follows since phi(q)>0.

This is finite positive arithmetic with no RH/GRH premise.
At a FIXED q the allowance is typically exponential in T.
Even for growing q it only bounds the ALL-character MEAN,
not an individual fixed primitive chi. It may not be used
to infer a characterwise low-gcd every-rate bound or GRH.

All authored Lean proof bodies are SOURCE PROOF CANDIDATES.
Compilation, expected types, native kernel and transitive axioms
are NOT_RUN; the earlier imported family sources are also
not yet accepted by a source-bound native replay.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletResidueFibreCapacity

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality
open GRWTSK.NumberTheory.Moebius.DirichletResidueParseval
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.ResidueFibreArithmetic

variable (q : ℕ) [NeZero q]
classical

/-- Original source values: true ordinary arithmetic Möbius
and the original REAL birth-gated response, cast to complex
without changing signs or time. -/
private def indexValue (n : ℕ) (u : ℝ) : ℂ :=
  (ArithmeticFunction.moebius n : ℂ) *
    (pickupResponse n u : ℂ)

private def indexSquare (n : ℕ) (u : ℝ) : ℝ :=
  ‖indexValue n u‖^2

private theorem indexSquare_nonneg (n : ℕ) (u : ℝ) :
    0 ≤ indexSquare n u := sq_nonneg _

private theorem indexSquare_eq_sourceDiagonal
    (n : ℕ) (u : ℝ) :
    indexSquare n u =
      (moebiusReal n)^2 * (pickupResponse n u)^2 := by
  unfold indexSquare indexValue moebiusReal
  rw [norm_mul, Complex.norm_intCast, Complex.norm_real]
  simp only [Real.norm_eq_abs, mul_pow, sq_abs]

/-- True original residue wave equals the complex sum of
actual individual birth-gated Möbius source values over the
literal finite fiber, not a synthetic coefficient vector. -/
theorem originalResidueWave_eq_fibre
    (a : ZMod q) (T u : ℝ) :
    originalResidueWave q a T u =
      ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        indexValue n u := by
  unfold originalResidueWave residueFibre indexValue endpointIndex
  rw [Finset.sum_filter]

/-- The finite COMPLEX Hilbert Cauchy-Schwarz step:
the norm is taken AFTER the original Möbius cancellation within
each residue class, with no coefficientwise sign replacement. -/
theorem originalResidueWave_norm_sq_le_card
    (a : ZMod q) (T u : ℝ) :
    ‖originalResidueWave q a T u‖^2 ≤
      ((residueFibre q a ⌊Real.exp T⌋₊).card : ℝ) *
        ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          indexSquare n u := by
  let S : Finset ℕ := residueFibre q a ⌊Real.exp T⌋₊
  let w : ℕ → ℂ := fun n => indexValue n u
  have hnorm :
      ‖∑ n ∈ S, w n‖ ≤ ∑ n ∈ S, ‖w n‖ :=
    norm_sum_le _ _
  have hsum_nonneg :
      0 ≤ ∑ n ∈ S, ‖w n‖ :=
    Finset.sum_nonneg (fun n hn => norm_nonneg _)
  have hsquare :
      ‖∑ n ∈ S, w n‖^2 ≤
        (∑ n ∈ S, ‖w n‖)^2 :=
    (sq_le_sq₀ (norm_nonneg _) hsum_nonneg).mpr hnorm
  have hcs :
      (∑ n ∈ S, ‖w n‖)^2 ≤
        (S.card : ℝ) * ∑ n ∈ S, (‖w n‖)^2 :=
    sq_sum_le_card_mul_sum_sq
  rw [originalResidueWave_eq_fibre]
  exact hsquare.trans (by simpa [S,w,indexSquare] using hcs)

/-- Each residue's complete original complex source satisfies
the SAME uniform occupation factor floor(N/q)+1. -/
theorem originalResidueWave_norm_sq_le_capacity
    (a : ZMod q) (T u : ℝ) :
    ‖originalResidueWave q a T u‖^2 ≤
      (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)) *
        ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          indexSquare n u := by
  have hs := originalResidueWave_norm_sq_le_card q a T u
  have hc :
      ((residueFibre q a ⌊Real.exp T⌋₊).card : ℝ) ≤
        (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)) := by
    exact_mod_cast residueFibre_card_le_quotient_succ q a ⌊Real.exp T⌋₊
  have hnonneg :
      0 ≤ ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        indexSquare n u :=
    Finset.sum_nonneg (fun n hn => indexSquare_nonneg n u)
  exact hs.trans (mul_le_mul_of_nonneg_right hc hnonneg)

/-- Every original index in 1..N occurs in EXACTLY one
residue class, regardless of whether the class is a unit. -/
theorem sum_residueFibre_indexSquare
    (T u : ℝ) :
    (∑ a : ZMod q,
      ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        indexSquare n u) =
      ∑ n ∈ endpointIndex T, indexSquare n u := by
  calc
    _ = ∑ a : ZMod q, ∑ n ∈ endpointIndex T,
        if (n : ZMod q) = a then indexSquare n u else 0 := by
      apply Finset.sum_congr rfl
      intro a ha
      simp only [residueFibre,endpointIndex,Finset.sum_filter]
    _ = ∑ n ∈ endpointIndex T, ∑ a : ZMod q,
        if (n : ZMod q) = a then indexSquare n u else 0 := by
      exact Finset.sum_comm
    _ = ∑ n ∈ endpointIndex T, indexSquare n u := by
      apply Finset.sum_congr rfl
      intro n hn
      simp

/-- True original pointwise residue-family energy is bounded
by the finite occupancy factor times the ORIGINAL μ²r_n²
diagonal density, with no false positive offdiagonal premise. -/
theorem unitResidueWaveDensity_le_occupationDiagonal
    (T u : ℝ) :
    (∑ a : ZMod q,
      if IsUnit a then ‖originalResidueWave q a T u‖^2 else 0) ≤
      (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)) *
        ∑ n ∈ endpointIndex T,
          (moebiusReal n)^2 * (pickupResponse n u)^2 := by
  let C : ℝ := ((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)
  have hC : 0 ≤ C := by positivity
  have hsum :
      (∑ a : ZMod q,
        if IsUnit a then ‖originalResidueWave q a T u‖^2 else 0) ≤
      ∑ a : ZMod q, C *
        (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
          indexSquare n u) := by
    apply Finset.sum_le_sum
    intro a ha
    by_cases hu : IsUnit a
    · simpa only [if_pos hu,C] using
        originalResidueWave_norm_sq_le_capacity q a T u
    · have hnonneg :
          0 ≤ ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
            indexSquare n u :=
        Finset.sum_nonneg (fun n hn => indexSquare_nonneg n u)
      simpa only [if_neg hu] using (mul_nonneg hC hnonneg)
  calc
    _ ≤ ∑ a : ZMod q, C *
      (∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        indexSquare n u) := hsum
    _ = C *
      (∑ a : ZMod q, ∑ n ∈ residueFibre q a ⌊Real.exp T⌋₊,
        indexSquare n u) := by rw [Finset.mul_sum]
    _ = C * (∑ n ∈ endpointIndex T, indexSquare n u) := by
      rw [sum_residueFibre_indexSquare q T u]
    _ = C * (∑ n ∈ endpointIndex T,
        (moebiusReal n)^2 * (pickupResponse n u)^2) := by
      congr 1
      apply Finset.sum_congr rfl
      intro n hn
      exact indexSquare_eq_sourceDiagonal n u
    _ = _ := rfl

private theorem originalResidueWave_continuous
    (a : ZMod q) (T : ℝ) :
    Continuous (fun u : ℝ => originalResidueWave q a T u) := by
  unfold originalResidueWave
  apply continuous_finsetSum
  intro n hn
  by_cases ha : (n : ZMod q) = a
  · simp only [if_pos ha]
    have hnpos : 0 < n := (Finset.mem_Icc.mp hn).1
    have hr :
        Continuous (fun u : ℝ => (pickupResponse n u : ℂ)) :=
      Complex.continuous_ofReal.comp (pickupResponse_continuous hnpos)
    exact continuous_const.mul hr
  · simp [ha]

private theorem originalDiagonalDensity_continuous
    (T : ℝ) :
    Continuous (fun u : ℝ =>
      ∑ n ∈ endpointIndex T,
        (moebiusReal n)^2 * (pickupResponse n u)^2) := by
  apply continuous_finsetSum
  intro n hn
  have hnpos : 0 < n := (Finset.mem_Icc.mp hn).1
  exact continuous_const.mul ((pickupResponse_continuous hnpos).pow 2)

/-- Integrate the actual source pointwise Cauchy-Schwarz
inequality, using REAL original Lebesgue interval integrals. -/
theorem unitResidueEnergy_le_occupationDiagonal
    (T : ℝ) (hT : 0 ≤ T) :
    (∑ a : ZMod q,
      if IsUnit a then originalResidueEnergy q a T else 0) ≤
      (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)) *
        pickupDiagonal T := by
  let C : ℝ := ((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)
  let L : ℝ → ℝ := fun u =>
    ∑ a : ZMod q,
      if IsUnit a then ‖originalResidueWave q a T u‖^2 else 0
  let D : ℝ → ℝ := fun u =>
    ∑ n ∈ endpointIndex T,
      (moebiusReal n)^2 * (pickupResponse n u)^2
  have hLa (a : ZMod q) :
      Continuous (fun u : ℝ =>
        if IsUnit a then ‖originalResidueWave q a T u‖^2 else 0) := by
    by_cases ha : IsUnit a
    · simpa only [if_pos ha] using
        ((originalResidueWave_continuous q a T).norm.pow 2)
    · simpa only [if_neg ha] using
        (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
  have hL : Continuous L :=
    continuous_finsetSum _ (fun a ha => hLa a)
  have hD : Continuous D :=
    originalDiagonalDensity_continuous T
  have hR : Continuous (fun u : ℝ => C * D u) :=
    continuous_const.mul hD
  have hpoint (u : ℝ) : L u ≤ C * D u :=
    unitResidueWaveDensity_le_occupationDiagonal q T u
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
      (fun a ha => (hLa a).intervalIntegrable 0 T)]
    apply Finset.sum_congr rfl
    intro a ha
    by_cases hu : IsUnit a
    · simp [originalResidueEnergy,hu]
    · simp [hu]
  rw [heq]
  calc
    (∫ u in (0 : ℝ)..T, L u) ≤
      ∫ u in (0 : ℝ)..T, C * D u := hmono
    _ = C * (∫ u in (0 : ℝ)..T, D u) := by
      rw [intervalIntegral.integral_const_mul]
    _ = C * pickupDiagonal T := by
      rw [pickupDiagonal_eq_integral_density]
    _ = _ := rfl

/-- Main arithmetic FINITE family mean estimate, unnormalized.
No division by the character count, and q may be composite. -/
theorem allCharactersEnergy_le_occupationDiagonal
    (T : ℝ) (hT : 0 ≤ T) :
    (∑ χ : DirichletCharacter ℂ q,
      familyFiniteResponseEnergy
        (dirichletCharacterCoefficients χ) T) ≤
      (q.totient : ℝ) *
        (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ) *
          pickupDiagonal T) := by
  rw [all_character_energy_parseval q T]
  exact mul_le_mul_of_nonneg_left
    (unitResidueEnergy_le_occupationDiagonal q T hT)
    (by positivity)

/-- Quantified complete ORIGINAL χ-family source budget using
the already-authored bound pickupDiagonal<=2*T^2. -/
theorem allCharactersEnergy_le_occupationQuadratic
    (T : ℝ) (hT : 0 ≤ T) :
    (∑ χ : DirichletCharacter ℂ q,
      familyFiniteResponseEnergy
        (dirichletCharacterCoefficients χ) T) ≤
      (q.totient : ℝ) *
        (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ) * (2*T^2)) := by
  have hb := allCharactersEnergy_le_occupationDiagonal q T hT
  have hdiag := (pickupDiagonal_quadratic_bound hT).2
  have hC : 0 ≤ (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)) := by
    positivity
  have hphi : 0 ≤ (q.totient : ℝ) := by positivity
  calc
    _ ≤ (q.totient : ℝ) *
      (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ) *
        pickupDiagonal T) := hb
    _ ≤ (q.totient : ℝ) *
      (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ) * (2*T^2)) :=
        mul_le_mul_of_nonneg_left
          (mul_le_mul_of_nonneg_left hdiag hC) hphi

/-- The normalized complete-character MEAN, not a
fixed/primitive character estimate. The positive totient
allows cancellation of the exact family cardinal factor. -/
theorem meanCharacterEnergy_le_occupationQuadratic
    (T : ℝ) (hT : 0 ≤ T) :
    (∑ χ : DirichletCharacter ℂ q,
      familyFiniteResponseEnergy
        (dirichletCharacterCoefficients χ) T) /
        (q.totient : ℝ) ≤
      (((⌊Real.exp T⌋₊ / q + 1 : ℕ) : ℝ)) * (2*T^2) := by
  have hqpos : 0 < q := NeZero.pos q
  have hphiNat : 0 < q.totient := Nat.totient_pos.mpr hqpos
  have hphi : (0 : ℝ) < (q.totient : ℝ) := by
    exact_mod_cast hphiNat
  apply (div_le_iff₀ hphi).mpr
  simpa only [mul_comm] using
    (allCharactersEnergy_le_occupationQuadratic q T hT)

/-- Under q>N, the occupation capacity specializes to one
and independently reproduces the previous large-modulus mean
bound, without replacing the actual Dirichlet character family. -/
theorem meanCharacterEnergy_le_quadratic_of_largeModulus
    (T : ℝ) (hT : 0 ≤ T)
    (hq : ⌊Real.exp T⌋₊ < q) :
    (∑ χ : DirichletCharacter ℂ q,
      familyFiniteResponseEnergy
        (dirichletCharacterCoefficients χ) T) /
        (q.totient : ℝ) ≤ 2*T^2 := by
  have hz : ⌊Real.exp T⌋₊ / q = 0 := Nat.div_eq_of_lt hq
  have h := meanCharacterEnergy_le_occupationQuadratic q T hT
  simpa only [hz, zero_add, Nat.cast_one, one_mul] using h

end GRWTSK.NumberTheory.Moebius.DirichletResidueFibreCapacity
