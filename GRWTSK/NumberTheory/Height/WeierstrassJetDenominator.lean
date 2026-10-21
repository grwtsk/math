/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

All-order denominator accounting for the SAME normalized finite origin lift.
Integer rescaling gives a bound; a proved congruence gives equality only on
its declared subfamily. Actual Rat.den and the old vector denominator are
used. No coefficient-height upper estimate or conductor statement follows.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassRescaledJet
import GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
import Mathlib.Data.ZMod.Basic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Height.WeierstrassJetDenominator

open Polynomial
open GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassRescaledJet
open RationalVectorAffineHeight

/-- No second parameter is chosen: these are coefficients of the old-lift representative. -/
def coefficients (A B : ℤ) (N : ℕ) : Fin (N+1) → ℚ :=
  fun i => (rationalPolynomial A B (N+1)).coeff i

/-- Bound only: cancellation is possible for a general source. -/
theorem coefficient_den_dvd (A B : ℤ) (hB : B≠0) (N k : ℕ) (hk : 1≤k) :
    ((rationalPolynomial A B N).coeff k).den ∣ B.natAbs^(k-1) := by
  rw [rational_coefficient A B hB N k hk]
  apply (clearsValue_iff _ _).mp
  have hd : B^(k-1) ∣ ((B.natAbs^(k-1) : ℕ) : ℤ) := by
    rw [← Int.natAbs_pow,Int.natCast_natAbs]
    by_cases hh : 0≤B^(k-1)
    · simp only [abs_of_nonneg hh]; exact dvd_refl _
    · simp only [abs_of_neg (lt_of_not_ge hh)]; exact ⟨-1,by ring⟩
  have hh := clears_divisor 1 (B.natAbs^(k-1)) (B^(k-1))
    (pow_ne_zero _ hB) hd ((numeratorPolynomial A B N).coeff k : ℚ)
    ⟨(numeratorPolynomial A B N).coeff k,by simp⟩
  simpa only [mul_one,Int.cast_pow] using hh

theorem common_den_dvd (A B : ℤ) (hB : B≠0) (N : ℕ) :
    denominator (coefficients A B N) ∣ B.natAbs^(N-1) := by
  apply (denominator_dvd_iff _ _).mpr
  intro i
  by_cases hi : (i : ℕ)=0
  · simp [coefficients,hi,rational_low A B (N+1) 0 (by decide)]
  · exact dvd_trans (coefficient_den_dvd A B hB (N+1) i (by omega))
      (pow_dvd_pow B.natAbs (by omega))

private theorem coeff_X_mul_at {R : Type*} [CommRing R]
    (f : R[X]) (k : ℕ) (hk : 1≤k) : (X*f).coeff k=f.coeff (k-1) := by
  calc
    _ = ((X : R[X])^1*f).coeff k := by rw [pow_one]
    _ = _ := by rw [coeff_X_pow_mul',if_pos hk]

/-- When both nonlinear coefficients vanish, the complete iteration is geometric. -/
theorem geometric_coefficient {R : Type*} [CommRing R] (N k : ℕ)
    (hk : 2≤k) (hN : k≤N+1) :
    (iterate (0 : R[X]) 0 X N).coeff k=1 := by
  induction N generalizing k with
  | zero => omega
  | succ N ih =>
    rw [iterate]
    simp only [zero_mul,sub_zero,coeff_add]
    rw [coeff_X_mul_at _ k (by omega)]
    by_cases h2 : k=2
    · subst k
      have hl := (X_pow_dvd_iff.mp (square_dvd (0 : R[X]) 0 X N)) 1 (by decide)
      simpa using congrArg (fun z : R => 1+z) hl
    · have hk2 : 2≠k := Ne.symm h2
      rw [coeff_X_pow,if_neg hk2,zero_add]
      exact ih (k-1) (by omega) (by omega)

/-- Coefficient congruence is proved over Z/nZ for EVERY n, not only primes. -/
theorem numerator_one_mod (A : ℤ) (n N k : ℕ) (hA : (n : ℤ) ∣ A)
    (hk : 2≤k) (hN : k≤N+1) :
    (n : ℤ) ∣ (numeratorPolynomial A (n : ℤ) N).coeff k-1 := by
  let f : ℤ[X] →+* (ZMod n)[X] := Polynomial.mapRingHom (Int.castRingHom (ZMod n))
  have hAz : (A : ZMod n)=0 := (ZMod.intCast_zmod_eq_zero_iff_dvd A n).mpr hA
  have hm := map_iterate f (C A) (C (n : ℤ)) (X : ℤ[X]) N
  have hc := congrArg (fun p : (ZMod n)[X] => p.coeff k) hm
  have hh : ((numeratorPolynomial A (n : ℤ) N).coeff k : ZMod n)=1 := by
    simpa [f,numeratorPolynomial,hAz,geometric_coefficient N k hk hN] using hc
  apply (ZMod.intCast_zmod_eq_zero_iff_dvd _ n).mp
  simpa only [Int.cast_sub,Int.cast_one,hh,sub_self]

/-- Elementary cancellation at ALL prime powers, derived from p=1 modulo n. -/
theorem cancel_power (n p : ℤ) (hn : n≠0) (hp : n ∣ p-1)
    (r : ℕ) (d : ℤ) (h : n^r ∣ d*p) : n^r ∣ d := by
  induction r generalizing d with
  | zero => simp
  | succ r ih =>
    have hnp : n ∣ d*p := dvd_trans (by refine ⟨n^r,?_⟩; ring) h
    have hnd : n ∣ d := by
      have hh := dvd_sub hnp (dvd_mul_of_dvd_right hp d)
      convert hh using 1 <;> ring
    obtain ⟨e,he⟩ := hnd
    have hre : n^r ∣ e*p := by
      obtain ⟨z,hz⟩ := h
      refine ⟨z,mul_left_cancel₀ hn ?_⟩
      calc
        n*(e*p) = d*p := by rw [he]; ring
        _ = n^(r+1)*z := hz
        _ = n*(n^r*z) := by ring
    obtain ⟨z,hz⟩ := ih e hre
    refine ⟨z,?_⟩
    rw [he,hz]
    ring

/-- Exact all-multiplier clearing, including d=0, without fitting a denominator. -/
theorem one_mod_clears (n : ℕ) (hn : 0<n) (p : ℤ)
    (hp : (n : ℤ) ∣ p-1) (r d : ℕ) :
    ClearsValue d ((p : ℚ)/(n : ℚ)^r) ↔ n^r ∣ d := by
  have hnq : (n : ℚ)≠0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  have hnz : (n : ℤ)≠0 := Int.natCast_ne_zero.mpr (Nat.ne_of_gt hn)
  constructor
  · rintro ⟨z,hz⟩
    have he : (d : ℤ)*p=(n : ℤ)^r*z := by
      have hq : (d : ℚ)*(p : ℚ)=(z : ℚ)*(n : ℚ)^r := by
        calc
          _ = ((d : ℚ)*((p : ℚ)/(n : ℚ)^r))*(n : ℚ)^r := by field_simp [hnq]; ring
          _ = _ := by rw [hz]
      exact_mod_cast (by simpa only [mul_comm] using hq)
    have hd : (n : ℤ)^r ∣ (d : ℤ)*p := ⟨z,he⟩
    have hh := cancel_power (n : ℤ) p hnz hp r (d : ℤ) hd
    exact_mod_cast hh
  · rintro ⟨q,hq⟩
    refine ⟨(q : ℤ)*p,?_⟩
    rw [hq]
    push_cast
    field_simp [hnq]
    <;> ring

theorem one_mod_denominator (n : ℕ) (hn : 0<n) (p : ℤ)
    (hp : (n : ℤ) ∣ p-1) (r : ℕ) :
    ((p : ℚ)/(n : ℚ)^r).den=n^r := by
  apply Nat.dvd_antisymm
  · exact (clearsValue_iff _ _).mp ((one_mod_clears n hn p hp r _).mpr (dvd_refl _))
  · exact (one_mod_clears n hn p hp r _).mp ((clearsValue_iff _ _).mpr (dvd_refl _))

/-- Equality, not only a bound, on the stated divisibility subfamily. -/
theorem sharp_coefficient_denominator (A : ℤ) (n : ℕ) (hn : 0<n)
    (hA : (n : ℤ) ∣ A) (N k : ℕ) (hk : 2≤k) (hN : k≤N+1) :
    ((rationalPolynomial A (n : ℤ) N).coeff k).den=n^(k-1) := by
  rw [rational_coefficient A (n : ℤ)
    (Int.natCast_ne_zero.mpr (Nat.ne_of_gt hn)) N k (by omega)]
  simpa only [Int.cast_natCast] using one_mod_denominator n hn
    ((numeratorPolynomial A (n : ℤ) N).coeff k)
    (numerator_one_mod A n N k hA hk hN) (k-1)

/-- The old vector LCM gives the exact whole-stage denominator, not an index. -/
theorem sharp_common_denominator (A : ℤ) (n : ℕ) (hn : 0<n)
    (hA : (n : ℤ) ∣ A) (N : ℕ) (hN : 2≤N) :
    denominator (coefficients A (n : ℤ) N)=n^(N-1) := by
  apply Nat.dvd_antisymm
  · simpa only [Int.natAbs_natCast] using common_den_dvd A (n : ℤ)
      (Int.natCast_ne_zero.mpr (Nat.ne_of_gt hn)) N
  · have hh := (denominator_dvd_iff (coefficients A (n : ℤ) N) _).mp
      (dvd_refl (denominator (coefficients A (n : ℤ) N))) (Fin.last N)
    change ((rationalPolynomial A (n : ℤ) (N+1)).coeff N).den ∣ _ at hh
    rwa [sharp_coefficient_denominator A n hn hA (N+1) N hN (by omega)] at hh

/-- A fixed n>=2 already has unbounded order-dependent common denominator. -/
theorem power_exceeds (n D : ℕ) (hn : 2≤n) : D<n^(D+1) := by
  induction D with
  | zero => exact pow_pos (by omega) _
  | succ D ih =>
    rw [show D+1+1=(D+1)+1 by omega,pow_succ]
    have hp : 0<n^(D+1) := pow_pos (by omega) _
    nlinarith

end GRWTSK.NumberTheory.Height.WeierstrassJetDenominator
