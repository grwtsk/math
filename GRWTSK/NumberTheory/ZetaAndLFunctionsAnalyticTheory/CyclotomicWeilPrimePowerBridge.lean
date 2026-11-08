/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicFrobeniusLoops
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CharacterWeilWindowBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRootProjection
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Tactic

/-!
# Cyclotomic Frobenius coefficients in the actual Dirichlet Weil prime source

This module pushes the finite cyclotomic/Frobenius loop construction into the
actual Dirichlet prime-power source already consumed by the Weil modules.

The source inventory is NOT replaced.  `LowSchur.activePrimePowers T` still
enumerates every integer in the cutoff, and `primeWeight m` is the original
von-Mangoldt weight.  In particular, labels that are not prime powers remain in
the finite sum with weight zero.

For a Dirichlet character `chi` modulo `N`, define a total cyclotomic
coefficient on every natural label `m`:

* if `m` is coprime to `N`, read the same character on the actual unit
  `ZMod.unitOfCoprime m h`;
* otherwise return zero.

The first main theorem proves this total coefficient equals the repository's
literal Dirichlet character value `chi (m : ZMod N)` for EVERY `m`.
Ramified labels are therefore retained as zero character values rather than
discarded or assigned a phantom holonomy.

For a genuine unramified prime power `p^e`, the coefficient is exactly the
e-th power of the Frobenius-unit character value.  This is the precise finite
algebraic source of the `chi(p)^e` factors.

The bridge is then pushed through the existing consumers:

1. `CharacterWindow.twistedPrime` is exactly the same finite sum written with
   the total cyclotomic coefficient.
2. `OddRootProjection.pairedPrimeWeight` is exactly
   `primeWeight * Re(cyclotomic coefficient)`.
3. The complete paired prime response is returned with every original active
   label and every original correlation.
4. The literal primitive nonprincipal pair sine matrix is exactly unchanged
   when its character prime coefficient is rewritten through the cyclotomic
   coefficient.  Its conductor and gamma-parity term are retained verbatim.

This closes a real source-identification gap between cyclotomic Frobenius
holonomy and the finite Dirichlet Weil prime source.  It does NOT prove a lower
sign for that matrix or for the full form.  The archimedean term, finite low
block, continuum return, conductor/parity hypotheses, and all existing residual
budgets remain independent consumers.

Primary mechanism: character multiplicativity and the exact unit/nonunit
semantics of Mathlib Dirichlet characters.  Hostile boundary: the source finite
set contains composite non-prime-powers; these have zero von-Mangoldt weight and
are not falsely assigned a prime-base/exponent event.  Ramified prime powers
remain zero character coefficients.

Current source base: grwtsk/math
`c779a67fa824da8f9b75384f7d61c46baeb2ce1f`.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicPrimePowerBridge

open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicFrobeniusLoops
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

variable {N : ℕ} [NeZero N]

/-- Total source coefficient on every natural label.  Unit labels are read
through the actual cyclotomic unit; nonunits retain the character's zero. -/
def cyclotomicResidueCoefficient
    (χ : DirichletCharacter ℂ N) (m : ℕ) : ℂ :=
  if h : Nat.Coprime m N then
    (((χ.toUnitHom
      (frobeniusUnit (n := N) (p := m) h) : ℂˣ)) : ℂ)
  else 0

/-- The total cyclotomic coefficient is exactly the original Dirichlet
character value on every label, including ramified labels. -/
theorem cyclotomicResidueCoefficient_eq_character
    (χ : DirichletCharacter ℂ N) (m : ℕ) :
    cyclotomicResidueCoefficient χ m = χ (m : ZMod N) := by
  by_cases h : Nat.Coprime m N
  · rw [cyclotomicResidueCoefficient, dif_pos h]
    exact dirichlet_frobenius_value (n := N) (p := m) h χ
  · rw [cyclotomicResidueCoefficient, dif_neg h]
    have hnonunit : ¬ IsUnit (m : ZMod N) := by
      intro hu
      exact h ((ZMod.isUnit_iff_coprime m N).mp hu)
    have hz : χ (m : ZMod N) = 0 :=
      (MulChar.apply_eq_zero_iff).2 hnonunit
    exact hz.symm

/-- An unramified prime power is read as the literal corresponding power of
the prime Frobenius-unit value. -/
theorem cyclotomicResidueCoefficient_prime_pow
    (χ : DirichletCharacter ℂ N)
    {p e : ℕ} (_hp : Nat.Prime p) (hcop : Nat.Coprime p N) :
    cyclotomicResidueCoefficient χ (p ^ e) =
      ((((χ.toUnitHom
        (frobeniusUnit (n := N) (p := p) hcop)) ^ e : ℂˣ)) : ℂ) := by
  rw [cyclotomicResidueCoefficient_eq_character]
  calc
    χ ((p ^ e : ℕ) : ZMod N) =
        χ ((p : ZMod N) ^ e) := by simp
    _ = (χ (p : ZMod N)) ^ e := by
      rw [map_pow]
    _ = ((((χ.toUnitHom
        (frobeniusUnit (n := N) (p := p) hcop) : ℂˣ)) : ℂ)) ^ e := by
      rw [← dirichlet_frobenius_value (n := N) (p := p) hcop χ]
    _ = ((((χ.toUnitHom
        (frobeniusUnit (n := N) (p := p) hcop)) ^ e : ℂˣ)) : ℂ) := by
      rw [Units.val_pow_eq_pow_val]

/-- Nonzero original von-Mangoldt weight implies that the source label is a
genuine prime power.  The finite source set itself is intentionally larger. -/
theorem primeWeight_ne_zero_isPrimePow
    {m : ℕ} (hweight : primeWeight m ≠ 0) :
    IsPrimePow m := by
  apply ArithmeticFunction.vonMangoldt_ne_zero_iff.mp
  intro hΛ
  apply hweight
  simp [primeWeight, hΛ]

/-- Canonical prime-power decomposition for every source label carrying
nonzero arithmetic weight. -/
theorem nonzero_primeWeight_minFac_power
    {m : ℕ} (hweight : primeWeight m ≠ 0) :
    m.minFac ^ m.factorization m.minFac = m :=
  (primeWeight_ne_zero_isPrimePow hweight).minFac_pow_factorization_eq

/-- The canonical base of a nonzero-weight source label is prime. -/
theorem nonzero_primeWeight_minFac_prime
    {m : ℕ} (hweight : primeWeight m ≠ 0) :
    Nat.Prime m.minFac := by
  exact Nat.minFac_prime
    (IsPrimePow.ne_one (primeWeight_ne_zero_isPrimePow hweight))

/-- If a nonzero-weight source label is unramified at the modulus, then its
canonical prime base is also unramified. -/
theorem nonzero_primeWeight_minFac_coprime
    {m : ℕ} (hweight : primeWeight m ≠ 0)
    (hcop : Nat.Coprime m N) :
    Nat.Coprime m.minFac N :=
  hcop.coprime_dvd_left (Nat.minFac_dvd m)

/-- The original paired real character weight is literally the real part of
the total cyclotomic coefficient, with the original von-Mangoldt weight
unchanged. -/
theorem pairedPrimeWeight_eq_cyclotomic
    (χ : DirichletCharacter ℂ N) (m : ℕ) :
    pairedPrimeWeight χ m =
      primeWeight m * (cyclotomicResidueCoefficient χ m).re := by
  unfold pairedPrimeWeight
  rw [cyclotomicResidueCoefficient_eq_character]

/-- The individual source character prime response written entirely through
the total cyclotomic coefficient. -/
def cyclotomicTwistedPrime
    (T : ℝ) (χ : DirichletCharacter ℂ N)
    (correlation : ℕ → ℂ) : ℝ :=
  2 * ∑ m ∈ activePrimePowers T,
    primeWeight m *
      (conj (cyclotomicResidueCoefficient χ m) * correlation m).re

/-- Exact return to the existing individual-character prime source. -/
theorem cyclotomicTwistedPrime_eq_source
    (T : ℝ) (χ : DirichletCharacter ℂ N)
    (correlation : ℕ → ℂ) :
    cyclotomicTwistedPrime T χ correlation =
      twistedPrime T χ correlation := by
  unfold cyclotomicTwistedPrime twistedPrime
  congr 1
  apply Finset.sum_congr rfl
  intro m hm
  rw [cyclotomicResidueCoefficient_eq_character]

/-- The conjugate-paired real prime response through the cyclotomic
coefficient, with every active source label retained. -/
def cyclotomicPairedPrimeResponse
    (χ : DirichletCharacter ℂ N)
    (T : ℝ) (correlation : ℕ → ℝ) : ℝ :=
  2 * ∑ m ∈ activePrimePowers T,
    primeWeight m * (cyclotomicResidueCoefficient χ m).re *
      correlation m

/-- Exact return of the full existing conjugate-paired prime response. -/
theorem pairedPrimeResponse_eq_cyclotomic
    (χ : DirichletCharacter ℂ N)
    (T : ℝ) (correlation : ℕ → ℝ) :
    pairedPrimeResponse χ T (fun m => (correlation m : ℂ)) =
      cyclotomicPairedPrimeResponse χ T correlation := by
  rw [pairedPrimeResponse_native]
  unfold cyclotomicPairedPrimeResponse
  congr 1
  apply Finset.sum_congr rfl
  intro m hm
  simp only [Complex.ofReal_re]
  rw [pairedPrimeWeight_eq_cyclotomic]
  ring

/-- The literal primitive nonprincipal pair sine matrix with the same
archimedean/conductor term, but its finite prime coefficient written through
the exact cyclotomic source. -/
def cyclotomicPrimitivePairSineMatrix
    (χ : DirichletCharacter ℂ N)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℝ) (M : ℕ) : Matrix (Fin M) (Fin M) ℝ :=
  fun i j =>
    sineArchimedeanEntry T
        (gammaConstant N (gammaParity χ)) (gammaParity χ)
        (i.val + 1) (j.val + 1) -
      ∑ m ∈ activePrimePowers T,
        primeWeight m * (cyclotomicResidueCoefficient χ m).re *
          sineShiftEntry T (i.val + 1) (j.val + 1)
            (Real.log (m : ℝ))

/-- Exact finite operator-source return: rewriting every character prime
coefficient through cyclotomic units leaves the original primitive-pair sine
matrix unchanged. -/
theorem cyclotomicPrimitivePairSineMatrix_eq_source
    (χ : DirichletCharacter ℂ N)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℝ) (M : ℕ) :
    cyclotomicPrimitivePairSineMatrix χ hprimitive hnonprincipal T M =
      primitivePairSineMatrix χ hprimitive hnonprincipal T M := by
  ext i j
  unfold cyclotomicPrimitivePairSineMatrix primitivePairSineMatrix
  congr 1
  apply Finset.sum_congr rfl
  intro m hm
  rw [pairedPrimeWeight_eq_cyclotomic]
  ring

/-- On every unramified nonzero-weight source label, the exact coefficient can
be read from the canonical prime base and exponent of that same integer. -/
theorem nonzero_weight_cyclotomic_coefficient_as_frobenius_power
    (χ : DirichletCharacter ℂ N)
    {m : ℕ} (hweight : primeWeight m ≠ 0)
    (hcop : Nat.Coprime m N) :
    cyclotomicResidueCoefficient χ m =
      ((((χ.toUnitHom
        (frobeniusUnit
          (n := N) (p := m.minFac)
          (nonzero_primeWeight_minFac_coprime hweight hcop))) ^
        (m.factorization m.minFac) : ℂˣ)) : ℂ) := by
  have hp := nonzero_primeWeight_minFac_prime hweight
  have hbase := nonzero_primeWeight_minFac_coprime hweight hcop
  have hpow := nonzero_primeWeight_minFac_power hweight
  calc
    cyclotomicResidueCoefficient χ m =
        cyclotomicResidueCoefficient χ
          (m.minFac ^ m.factorization m.minFac) := by
      rw [hpow]
    _ = _ :=
      cyclotomicResidueCoefficient_prime_pow χ hp hbase

/-- The logarithmic shift of a nonzero-weight source label is the exponent
multiple of the logarithm of its canonical prime base. -/
theorem nonzero_primeWeight_log_eq_exponent_mul_log_minFac
    {m : ℕ} (hweight : primeWeight m ≠ 0) :
    Real.log (m : ℝ) =
      (m.factorization m.minFac : ℝ) * Real.log (m.minFac : ℝ) := by
  have hpow := nonzero_primeWeight_minFac_power hweight
  have hcast : (m : ℝ) =
      (m.minFac : ℝ) ^ (m.factorization m.minFac) := by
    exact_mod_cast hpow.symm
  rw [hcast, Real.log_pow]

/-- On an unramified nonzero-weight source label, the actual paired Weil
coefficient is literally the real part of the canonical prime Frobenius value
raised to its exact source exponent. -/
theorem pairedPrimeWeight_nonzero_unramified_as_frobenius_power
    (χ : DirichletCharacter ℂ N)
    {m : ℕ} (hweight : primeWeight m ≠ 0)
    (hcop : Nat.Coprime m N) :
    pairedPrimeWeight χ m =
      primeWeight m *
        (((((χ.toUnitHom
          (frobeniusUnit
            (n := N) (p := m.minFac)
            (nonzero_primeWeight_minFac_coprime hweight hcop))) ^
          (m.factorization m.minFac) : ℂˣ)) : ℂ)).re := by
  rw [pairedPrimeWeight_eq_cyclotomic,
    nonzero_weight_cyclotomic_coefficient_as_frobenius_power χ hweight hcop]


end GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicPrimePowerBridge
