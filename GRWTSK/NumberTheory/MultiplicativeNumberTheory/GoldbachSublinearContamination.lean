/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachChebyshevContamination
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology

/-!
# Sublinear contamination and the remaining binary correlation obligation

The actual contamination is eventually below delta*N for every delta>0.
A positive linear correlation bound for all sufficiently large even N
would therefore suffice there. That correlation estimate and the remaining
finite targets are not supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachSublinearContamination
open GoldbachMangoldtContamination GoldbachChebyshevContamination

theorem eventually_contamination_le_linear (δ : ℝ) (hδ : 0 < δ) :
    ∀ᶠ N : ℕ in atTop, contamination N ≤ δ * (N : ℝ) := by
  have hsmall := (Asymptotics.isLittleO_iff.mp
    (Real.isLittleO_log_rpow_rpow_atTop (2 : ℝ) (s := 1 / 2) (by norm_num)))
      (show 0 < δ / 8 by positivity)
  have hs : ∀ᶠ x : ℝ in atTop,
      Real.log x ^ 2 ≤ δ / 8 * Real.sqrt x := by
    simpa only [Real.rpow_two, ← Real.sqrt_eq_rpow, Real.norm_eq_abs,
      abs_of_nonneg (sq_nonneg _), abs_of_nonneg (Real.sqrt_nonneg _)] using hsmall
  have hnat := hs.comp_tendsto tendsto_natCast_atTop_atTop
  filter_upwards [hnat, eventually_ge_atTop (2 : ℕ)] with N hsmallN hN
  have hn : (1 : ℝ) ≤ (N : ℝ) := by exact_mod_cast (show 1 ≤ N by omega)
  have hn0 : (0 : ℝ) ≤ (N : ℝ) := by positivity
  have hlog : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg hn
  have hlognext : Real.log ((N : ℝ) + 1) ≤ 2 * Real.log (N : ℝ) := by
    have hsq : (N : ℝ) + 1 ≤ (N : ℝ) ^ 2 := by
      have htwo : (2 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
      nlinarith
    have h := Real.log_le_log (by positivity : 0 < (N : ℝ) + 1) hsq
    simpa only [Real.log_pow] using h
  calc
    contamination N ≤ 4 * Real.sqrt (N : ℝ) * Real.log (N : ℝ) *
        Real.log ((N : ℝ) + 1) := contamination_le_explicit_sqrt_bound N (by omega)
    _ ≤ 8 * Real.sqrt (N : ℝ) * Real.log (N : ℝ) ^ 2 := by
      nlinarith [mul_le_mul_of_nonneg_left hlognext
        (mul_nonneg (mul_nonneg (by norm_num) (Real.sqrt_nonneg _)) hlog)]
    _ ≤ 8 * Real.sqrt (N : ℝ) * (δ / 8 * Real.sqrt (N : ℝ)) :=
      mul_le_mul_of_nonneg_left hsmallN (by positivity)
    _ = δ * (Real.sqrt (N : ℝ)) ^ 2 := by ring
    _ = δ * (N : ℝ) := by rw [Real.sq_sqrt hn0]

theorem eventually_prime_pair_of_linear_correlation (c : ℝ) (hc : 0 < c)
    (hcorrelation : ∀ᶠ N : ℕ in atTop, Even N → c * (N : ℝ) ≤ mangoldtMass N) :
    ∀ᶠ N : ℕ in atTop, Even N →
      ∃ p q : ℕ, p.Prime ∧ q.Prime ∧ p + q = N := by
  filter_upwards [eventually_contamination_le_linear (c / 2) (by positivity),
    hcorrelation, eventually_ge_atTop (1 : ℕ)] with N herror hcorr hN
  intro heven
  apply prime_pair_of_mass_exceeds_contamination N
  have hp : (0 : ℝ) < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hstrict : c / 2 * (N : ℝ) < c * (N : ℝ) := by nlinarith
  exact herror.trans_lt (hstrict.trans_le (hcorr heven))

end GRWTSK.NumberTheory.Primes.GoldbachSublinearContamination
