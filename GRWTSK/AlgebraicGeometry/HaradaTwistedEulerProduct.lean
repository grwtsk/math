/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.AlgebraicGeometry.HaradaLocalZeta
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResonanceDeterminantReturn
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib.Algebra.CharP.Defs
import Mathlib.Topology.Algebra.InfiniteSum.Basic

/-!
# All-prime Dirichlet twists of Harada's local factors

The local factor is the already maintained `HaradaLocalZeta.localFactor`,
with its characteristic-two multiplicity. Twisting means substituting
`chi(p) * p^(-s)` for its local variable. It is an explicitly defined weighted
arithmetic product, not a constructed sheaf on the link complement.

For Re(s)>3 we derive a genuine `HasProd` over ALL primes and identify its
value with `LFunction chi s ^ 2 * LFunction chi (s-2) * (1-chi(2)*2^(-s))`.
The right side uses Mathlib's actual analytically continued L-function,
not a Dirichlet series evaluated outside its convergence region.

The expression `continuedValue` is defined even at totalized pole values;
no assertion that such values are meromorphic values is made. The zero and
order-return theorems explicitly require a nonvanishing multiplier, and the
order theorem additionally requires analytic germs. Program 4's unit-factor
transport is reused; arithmetic zero orders are doubled, not deduplicated.

Source: Harada, arXiv:1207.6177v2, Introduction, f2 and the theorem for
L2=(12/5); local consequences of its exact affine count and the classical
Dirichlet Euler product. No novelty claim. This continues issue #1802.
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
review and CI: NOT_RUN. No completed Weil form or GRH assertion is supplied.
MSC2020: 14G15, 11G25, 11M41.
-/

set_option autoImplicit false
noncomputable section
open scoped Topology

namespace GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct

open HaradaLocalZeta

variable {N : ℕ} [NeZero N]

/-- The local variable retains the actual character value, including zero at ramified primes. -/
def argument (chi : DirichletCharacter ℂ N) (s : ℂ) (p : Nat.Primes) : ℂ :=
  chi (p : ℕ) * (p : ℂ) ^ (-s)

/-- The exceptional multiplicity belongs only to the prime 2. -/
def primeMultiplicity (p : Nat.Primes) : ℕ :=
  if (p : ℕ) = 2 then 1 else 2

/-- Substitute the character-weighted local variable into the existing local factor. -/
def primeFactor (chi : DirichletCharacter ℂ N) (s : ℂ) (p : Nat.Primes) : ℂ :=
  localFactor (p : ℂ) (primeMultiplicity p) (argument chi s p)

/-- The standard Dirichlet Euler factor, used only in the convergence argument. -/
def eulerFactor (chi : DirichletCharacter ℂ N) (s : ℂ) (p : Nat.Primes) : ℂ :=
  (1 - argument chi s p)⁻¹

/-- The exceptional numerator, not an optional normalization constant. -/
def badPrimeCorrection (chi : DirichletCharacter ℂ N) (s : ℂ) : ℂ :=
  1 - chi 2 * (2 : ℂ) ^ (-s)

/-- This multiplier is not assumed globally nonvanishing. -/
def sourceMultiplier (chi : DirichletCharacter ℂ N) (s : ℂ) : ℂ :=
  chi.LFunction (s - 2) * badPrimeCorrection chi s

/-- An expression in actual continued L-functions, identified with the product only on Re(s)>3. -/
def continuedValue (chi : DirichletCharacter ℂ N) (s : ℂ) : ℂ :=
  chi.LFunction s ^ 2 * sourceMultiplier chi s

/-- Identify the branch condition with the characteristic of the actual prime field. -/
theorem residualMultiplicity_zmod (p : ℕ) [Fact p.Prime] :
    residualMultiplicity (ZMod p) = if p = 2 then 1 else 2 := by
  have hp : p.Prime := Fact.out
  have htwo : (2 : ZMod p) = 0 ↔ p = 2 := by
    change ((2 : ℕ) : ZMod p) = 0 ↔ p = 2
    rw [CharP.cast_eq_zero_iff (ZMod p) p 2, Nat.dvd_prime Nat.prime_two]
    simp only [hp.ne_one, false_or]
  unfold residualMultiplicity
  rw [htwo]

/-- The Euler factor uses the cardinality and residual multiplicity of the prime field,
not an independently fitted coefficient sequence. -/
theorem primeFactor_eq_primeField (chi : DirichletCharacter ℂ N) (s : ℂ)
    (p : ℕ) [Fact p.Prime] :
    primeFactor chi s ⟨p, Fact.out⟩ =
      localFactor (Fintype.card (ZMod p) : ℂ) (residualMultiplicity (ZMod p))
        (chi p * (p : ℂ) ^ (-s)) := by
  rw [ZMod.card p, residualMultiplicity_zmod p]
  rfl

private theorem shifted_argument (chi : DirichletCharacter ℂ N)
    (s : ℂ) (p : Nat.Primes) :
    (p : ℂ) ^ 2 * argument chi s p = argument chi (s - 2) p := by
  have hp0 : (p : ℂ) ≠ 0 := by exact_mod_cast p.property.ne_zero
  unfold argument
  rw [show -(s - 2) = (2 : ℂ) + (-s) by ring,
    Complex.cpow_add _ _ hp0, Complex.cpow_two]
  ring

private theorem localFactor_one_correction (q z : ℂ) :
    localFactor q 1 z = localFactor q 2 z * (1 - z) := by
  by_cases hz : 1 - z = 0
  · simp [localFactor, hz]
  · simp only [localFactor, pow_one]
    have hc : ((1 - z)⁻¹) ^ 2 * (1 - z) = (1 - z)⁻¹ := by
      rw [pow_two, mul_assoc, inv_mul_cancel₀ hz, mul_one]
    rw [mul_assoc, hc]

/-- Exact factor-by-factor decomposition; the correction is supported at the single prime 2.
This algebraic identity of totalized functions does not assert values at meromorphic poles. -/
theorem primeFactor_eq_eulerFactors (chi : DirichletCharacter ℂ N)
    (s : ℂ) (p : Nat.Primes) :
    primeFactor chi s p = eulerFactor chi s p ^ 2 * eulerFactor chi (s - 2) p *
      (if (p : ℕ) = 2 then badPrimeCorrection chi s else 1) := by
  have hg : localFactor (p : ℂ) 2 (argument chi s p) =
      eulerFactor chi s p ^ 2 * eulerFactor chi (s - 2) p := by
    unfold localFactor eulerFactor
    rw [shifted_argument]
    exact mul_comm _ _
  by_cases hp : (p : ℕ) = 2
  · simp only [primeFactor, primeMultiplicity, if_pos hp]
    rw [localFactor_one_correction, hg]
    have hc : 1 - argument chi s p = badPrimeCorrection chi s := by
      simp [argument, badPrimeCorrection, hp]
    rw [hc]
  · simp only [primeFactor, primeMultiplicity, if_neg hp, mul_one]
    exact hg

/-- A zero character value removes the whole local factor, including its shifted component. -/
theorem primeFactor_eq_one_of_character_zero (chi : DirichletCharacter ℂ N)
    (s : ℂ) (p : Nat.Primes) (hp : chi (p : ℕ) = 0) :
    primeFactor chi s p = 1 := by
  simp [primeFactor, argument, hp, localFactor]

/-- In particular, no spurious correction is inserted when chi(2)=0. -/
theorem badPrimeCorrection_eq_one_of_character_zero (chi : DirichletCharacter ℂ N)
    (s : ℂ) (hchi : chi 2 = 0) : badPrimeCorrection chi s = 1 := by
  simp [badPrimeCorrection, hchi]

private theorem hasProd_badPrimeCorrection (chi : DirichletCharacter ℂ N) (s : ℂ) :
    HasProd (fun p : Nat.Primes =>
      if (p : ℕ) = 2 then badPrimeCorrection chi s else 1) (badPrimeCorrection chi s) := by
  classical
  have h := hasProd_ite_eq (⟨2, Nat.prime_two⟩ : Nat.Primes) (badPrimeCorrection chi s)
  apply h.congr_fun
  intro p
  have heq : (p : ℕ) = 2 ↔ p = (⟨2, Nat.prime_two⟩ : Nat.Primes) := by
    constructor
    · exact Subtype.ext
    · intro hp
      exact congrArg Subtype.val hp
  simp only [heq]

/-- Genuine convergence of the all-prime product, not just an equality of default `tprod` values.
No primitivity or nonprincipality is needed on this absolute-convergence half-plane. -/
theorem hasProd_primeFactor (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : 3 < s.re) :
    HasProd (primeFactor chi s) (continuedValue chi s) := by
  have hs1 : 1 < s.re := by linarith
  have hs2 : 1 < (s - 2).re := by simpa using (show (1 : ℝ) < s.re - 2 by linarith)
  have h1 : HasProd (eulerFactor chi s) (chi.LFunction s) := by
    rw [chi.LFunction_eq_LSeries hs1]
    simpa only [eulerFactor, argument] using chi.LSeries_eulerProduct_hasProd hs1
  have h2 : HasProd (eulerFactor chi (s - 2)) (chi.LFunction (s - 2)) := by
    rw [chi.LFunction_eq_LSeries hs2]
    simpa only [eulerFactor, argument] using chi.LSeries_eulerProduct_hasProd hs2
  have h := ((h1.mul h1).mul h2).mul (hasProd_badPrimeCorrection chi s)
  have h' := h.congr_fun (g := primeFactor chi s) (fun p => by
    simpa only [pow_two] using primeFactor_eq_eulerFactors chi s p)
  simpa only [continuedValue, sourceMultiplier, pow_two, mul_assoc] using h'

/-- The total-product notation is used only after proving `HasProd`. -/
theorem tprod_primeFactor (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : 3 < s.re) :
    (∏' p : Nat.Primes, primeFactor chi s p) = continuedValue chi s :=
  (hasProd_primeFactor chi hs).tprod_eq

private theorem modOne_two : (1 : DirichletCharacter ℂ 1) (2 : ZMod 1) = 1 := by
  have h : (2 : ZMod 1) = 1 := Subsingleton.elim _ _
  rw [h, map_one]

/-- The untwisted expression specializes to Harada's zeta-factor formula.
The all-prime identification still has the Re(s)>3 hypothesis in `hasProd_primeFactor`. -/
theorem continuedValue_modOne (s : ℂ) :
    continuedValue (1 : DirichletCharacter ℂ 1) s =
      riemannZeta s ^ 2 * riemannZeta (s - 2) * (1 - (2 : ℂ) ^ (-s)) := by
  simp [continuedValue, sourceMultiplier, badPrimeCorrection, modOne_two, mul_assoc]

/-- Pointwise source-zero return requires the multiplier to be nonzero at that point. -/
theorem continuedValue_zero_iff (chi : DirichletCharacter ℂ N) {s : ℂ}
    (hu : sourceMultiplier chi s ≠ 0) :
    continuedValue chi s = 0 ↔ chi.LFunction s = 0 := by
  simp [continuedValue, hu]

/-- Program 4 unit transport followed by multiplicativity of analytic order.
Every source zero is counted twice; no assumption of simplicity or finite order is imposed. -/
theorem analyticOrderAt_continuedValue (chi : DirichletCharacter ℂ N) {s : ℂ}
    (hL : AnalyticAt ℂ chi.LFunction s) (hu : AnalyticAt ℂ (sourceMultiplier chi) s)
    (hu0 : sourceMultiplier chi s ≠ 0) :
    analyticOrderAt (continuedValue chi) s = 2 * analyticOrderAt chi.LFunction s := by
  have hret : continuedValue chi =ᶠ[𝓝 s]
      (fun z => sourceMultiplier chi z * chi.LFunction z ^ 2) :=
    Filter.Eventually.of_forall (fun z => by unfold continuedValue; ring)
  calc
    analyticOrderAt (continuedValue chi) s =
        analyticOrderAt (fun z => chi.LFunction z ^ 2) s :=
      GRWTSK.ResonanceDeterminantReturn.analyticOrder_eq_of_unit_factor hu (hL.pow 2) hu0 hret
    _ = 2 * analyticOrderAt chi.LFunction s := by
      simpa only [pow_two, two_mul] using analyticOrderAt_mul hL hL

/-- Exact negative control: dropping the exceptional factor changes the normalization at s=4. -/
theorem badPrimeCorrection_modOne_four :
    badPrimeCorrection (1 : DirichletCharacter ℂ 1) 4 = (15 / 16 : ℂ) := by
  norm_num [badPrimeCorrection, modOne_two, Complex.cpow_neg, Complex.cpow_ofNat]

end GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct
