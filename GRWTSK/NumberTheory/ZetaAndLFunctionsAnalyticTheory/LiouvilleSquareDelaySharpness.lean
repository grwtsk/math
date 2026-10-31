/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleSquareDivisorReverseCounting
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The exact causal square-delay test and its sharp pointwise cost

The source-specific square-delay relation from the preceding module is used
without changing CCC.pickupResponse, Liouville coefficients, the Moebius
squareful-zero convention, or the signed double-Abel aggregate.

The formalized scalar tests below quantify a sign-free obstruction:
the causal constant signal has harmonic-square-delay output between
u/2 and 1+u/2 for u>=0. This is NOT an estimate on Liouville energy.

The L² operator norm sharpness and Fourier/Dirichlet multiplier identities
are proved mathematically in the companion review; they remain
UNFORMALIZED in Lean. No unconditional arithmetic cancellation is assumed.
-/

namespace GRWTSK.NumberTheory.LiouvilleSquareDelaySharpness

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleSquareDivisorReverseCounting

/-- A finite signed causal square-delay operation in the physical-time
coordinate; all coefficients and both time/weight transformations remain. -/
def finiteSquareDelay (D : Finset ℕ) (a : ℕ → ℝ)
    (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  ∑ d ∈ D, a d / (d : ℝ) * f (u - 2 * Real.log (d : ℝ))

/-- The witness is zero at negative physical times, not the constant-one
function extended to the whole real line. -/
def causalConstant (u : ℝ) : ℝ :=
  if 0 ≤ u then 1 else 0

/-- General real-frequency test, with the same causal birth condition. -/
def causalExponential (σ u : ℝ) : ℝ :=
  if 0 ≤ u then Real.exp (σ * u / 2) else 0

/-- Finite real Mellin multiplier. The infinite Dirichlet series and its
complex Fourier interpretation are outside the present Lean proof. -/
def finiteMellinMultiplier (D : Finset ℕ)
    (a : ℕ → ℝ) (σ : ℝ) : ℝ :=
  ∑ d ∈ D, a d / (d : ℝ) *
    Real.exp (-σ * Real.log (d : ℝ))

/-- Every index in the ORIGINAL exponential floor cutoff has actually
been born at the shifted time; equality at birth is allowed. -/
theorem cutoff_delay_nonneg (u : ℝ) {d : ℕ}
    (hd : d ∈ Finset.Icc 1 ⌊Real.exp (u / 2)⌋₊) :
    0 ≤ u - 2 * Real.log (d : ℝ) := by
  obtain ⟨hd1, hdN⟩ := Finset.mem_Icc.mp hd
  have hdpos : (0 : ℝ) < d := by
    exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one hd1)
  have hcast : (d : ℝ) ≤ Real.exp (u / 2) :=
    (Nat.le_floor_iff (Real.exp_pos (u / 2)).le).mp hdN
  have hlog : Real.log (d : ℝ) ≤ u / 2 :=
    (Real.log_le_iff_le_exp hdpos).mpr hcast
  linarith

/-- The causal constant produces the exact harmonic sum; zero-time and
exact birth are included, with no artificial extension to negative time. -/
theorem cutoff_causal_constant_harmonic (u : ℝ) :
    finiteSquareDelay (Finset.Icc 1 ⌊Real.exp (u / 2)⌋₊)
      (fun _ => (1 : ℝ)) causalConstant u =
    ∑ d ∈ Finset.Icc 1 ⌊Real.exp (u / 2)⌋₊,
      (d : ℝ)⁻¹ := by
  classical
  unfold finiteSquareDelay
  apply Finset.sum_congr rfl
  intro d hd
  have hborn := cutoff_delay_nonneg u hd
  simp [causalConstant, hborn]

/-- The pinned Mathlib harmonic LOWER inequality makes the sign-free
causal signal grow at least linearly in physical time, unconditionally. -/
theorem cutoff_causal_constant_ge_half_time (u : ℝ) :
    u / 2 ≤ finiteSquareDelay
      (Finset.Icc 1 ⌊Real.exp (u / 2)⌋₊)
      (fun _ => (1 : ℝ)) causalConstant u := by
  rw [cutoff_causal_constant_harmonic]
  have h := log_le_harmonic_floor
    (Real.exp (u / 2)) (Real.exp_pos (u / 2)).le
  have hh : u / 2 ≤
      (harmonic ⌊Real.exp (u / 2)⌋₊ : ℝ) := by
    simpa only [Real.log_exp] using h
  simpa only [harmonic_eq_sum_Icc, Rat.cast_sum,
    Rat.cast_inv, Rat.cast_natCast] using hh

/-- The matching pinned harmonic UPPER inequality shows the exact
sign-free causal output is between two affine functions for u>=0. -/
theorem cutoff_causal_constant_le_one_add_half_time
    (u : ℝ) (hu : 0 ≤ u) :
    finiteSquareDelay
      (Finset.Icc 1 ⌊Real.exp (u / 2)⌋₊)
      (fun _ => (1 : ℝ)) causalConstant u ≤ 1 + u / 2 := by
  rw [cutoff_causal_constant_harmonic]
  have hu2 : (0 : ℝ) ≤ u / 2 := by linarith
  have hexp : (1 : ℝ) ≤ Real.exp (u / 2) := by
    have he := Real.exp_le_exp.mpr hu2
    simpa only [Real.exp_zero] using he
  have h := harmonic_floor_le_one_add_log
    (Real.exp (u / 2)) hexp
  have hh :
      (harmonic ⌊Real.exp (u / 2)⌋₊ : ℝ) ≤ 1 + u / 2 := by
    simpa only [Real.log_exp] using h
  simpa only [harmonic_eq_sum_Icc, Rat.cast_sum,
    Rat.cast_inv, Rat.cast_natCast] using hh

/-- The full signed finite multiplier is an exact eigenvalue for a causal
exponential after all included delays are born; no sign is discarded. -/
theorem cutoff_causal_exponential_multiplier
    (u σ : ℝ) (a : ℕ → ℝ) :
    finiteSquareDelay
      (Finset.Icc 1 ⌊Real.exp (u / 2)⌋₊)
      a (causalExponential σ) u =
    Real.exp (σ * u / 2) *
      finiteMellinMultiplier
        (Finset.Icc 1 ⌊Real.exp (u / 2)⌋₊) a σ := by
  classical
  unfold finiteSquareDelay finiteMellinMultiplier
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d hd
  have hborn := cutoff_delay_nonneg u hd
  have harg :
      σ * (u - 2 * Real.log (d : ℝ)) / 2 =
        σ * u / 2 + (-σ * Real.log (d : ℝ)) := by
    ring
  simp only [causalExponential, if_pos hborn]
  rw [harg, Real.exp_add]
  ring

/-- The generic signed delay uses the literal original response:
no altered kernel is needed to compare a square-factor source. -/
theorem finite_square_delay_pickup
    (D : Finset ℕ) (a : ℕ → ℝ) (k : ℕ) (hk : 1 ≤ k)
    (u : ℝ) (hD : ∀ d ∈ D, 1 ≤ d) :
    (∑ d ∈ D, a d * pickupResponse (d * d * k) u) =
      finiteSquareDelay D a (pickupResponse k) u := by
  classical
  unfold finiteSquareDelay
  apply Finset.sum_congr rfl
  intro d hd
  rw [pickupResponse_square_scaling d k (hD d hd) hk u]
  ring

end GRWTSK.NumberTheory.LiouvilleSquareDelaySharpness
