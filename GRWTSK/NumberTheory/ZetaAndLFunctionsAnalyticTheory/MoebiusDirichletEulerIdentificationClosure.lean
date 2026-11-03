/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionEulerSynthesis
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionFamilyInverse
import Mathlib.NumberTheory.ArithmeticFunction.Defs
import Mathlib.Data.Nat.Factorization.Induction
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Finsupp

/-!
# Identify the ACTUAL Dirichlet-character Euler-source coefficients

The source data is the PINNED Mathlib DirichletCharacter χ,
its actual complex character-twisted classical Möbius function
  mu_chi(n)=mu(n)*chi(n),
and the previously defined honest global Euler synthesis from
  P_p(X)=1-chi(p)*X.

The synthesized prime-power reciprocal is exactly the coefficient
of P_p at r, from the ACTUAL Nat.factorization (including r=0).
The global Euler Möbius is multiplicative by the disjoint prime
support formula. The PINNED ArithmeticFunction.IsMultiplicative
.eq_iff_eq_on_prime_powers then identifies it with mu_chi.

Lastly, uniqueness of the true Dirichlet convolution inverse
transports the equality of MOBIUS coefficients to the equality of
the corresponding normalized L-series DIRICHLET coefficients.
No Euler-product analytic continuation or circular equality is
assumed, and no GRH or all-rate signed cancellation is proved.

All Lean bodies are SOURCE PROOF CANDIDATES; compilation,
expected-types, fresh kernel, transitive axiom review NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletEulerIdentificationClosure

open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionLocalEuler
open GRWTSK.NumberTheory.Moebius.LFunctionEulerSynthesis
open ArithmeticFunction

classical

/-- The exact generated Möbius from any Euler polynomial family
is the factorization product, not an unrelated multiplicative
model. Valid at every NONZERO integer index. -/
theorem primeEuler_mobius_factorization
    (F : PrimeEulerPolynomialSource)
    (n : ℕ) (hn : n ≠ 0) :
    F.mobius n =
      n.factorization.prod (fun p k => (F.polynomial p).coeff k) := by
  change
    (if n = 0 then (0 : ℂ)
      else ∏ p ∈ n.primeFactors,
        (F.polynomial p).coeff (n.factorization p)) = _
  rw [if_neg hn]
  rfl

/-- Every exact prime Euler polynomial synthesis is
multiplicative on COPRIME nonzero positive source indices. -/
theorem primeEuler_mobius_multiplicative
    (F : PrimeEulerPolynomialSource) :
    F.mobius.IsMultiplicative := by
  refine ArithmeticFunction.IsMultiplicative.iff_ne_zero.mpr
    ⟨F.mobius_one, ?_⟩
  intro m n hm hn hcop
  rw [primeEuler_mobius_factorization F (m*n)
        (mul_ne_zero hm hn),
      primeEuler_mobius_factorization F m hm,
      primeEuler_mobius_factorization F n hn,
      Nat.factorization_mul_of_coprime hcop,
      ← Finsupp.prod_add_index_of_disjoint]
  exact hcop.disjoint_primeFactors

/-- The unit coefficient at p^0 is the TRUE Euler polynomial
constant 1, and for r>0 the only prime-factor support is p. -/
theorem synthesized_prime_power_compatibility
    (F : PrimeEulerPolynomialSource) :
    SynthesizedPrimePowerCompatibilityTarget F := by
  intro p r hp
  by_cases hr : r = 0
  · subst r
    simpa [F.mobius_one] using (F.constant_one p hp).symm
  · have hprime := Nat.primeFactors_prime_pow hr hp
    have hfactor := Nat.factorization_pow_self (p := p) (n := r) hp
    have hnonzero : p^r ≠ 0 := pow_ne_zero _ hp.ne_zero
    change
      (if p^r = 0 then (0 : ℂ)
        else ∏ q ∈ (p^r).primeFactors,
          (F.polynomial q).coeff ((p^r).factorization q)) =
        (F.polynomial p).coeff r
    simp [hnonzero, hprime, hfactor]

/-- The explicit previously defined linear reciprocal Euler
polynomial has its declared three-term coefficient sequence,
with no extra coefficient at any higher prime power. -/
theorem linearReciprocalPolynomial_coeff
    (alpha : ℕ → ℂ) (p r : ℕ) :
    (linearReciprocalPolynomial alpha p).coeff r =
      linearReciprocalCoefficient alpha p r := by
  by_cases h0 : r = 0
  · subst r
    simp [linearReciprocalPolynomial,
      linearReciprocalCoefficient]
  · by_cases h1 : r = 1
    · subst r
      simp [linearReciprocalPolynomial,
        linearReciprocalCoefficient]
    · simp [linearReciprocalPolynomial,
        linearReciprocalCoefficient, h0, h1]

/-- The ACTUAL χ-twisted ordinary Möbius at p^r agrees with the
linear Euler reciprocal coefficient. No hypothetical local signs. -/
theorem characterTwistedMobius_prime_power
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (p r : ℕ) (hp : p.Prime) :
    dirichletCharacterMobius χ (p^r) =
      linearReciprocalCoefficient
        (fun p => χ (p : ZMod q)) p r := by
  by_cases h0 : r = 0
  · subst r
    simp [dirichletCharacterMobius, characterTwist,
      classicalMoebiusComplex, linearReciprocalCoefficient]
  · by_cases h1 : r = 1
    · subst r
      simp [dirichletCharacterMobius, characterTwist,
        classicalMoebiusComplex,
        ArithmeticFunction.moebius_apply_prime hp,
        linearReciprocalCoefficient]
    · have hμ := ArithmeticFunction.moebius_apply_prime_pow hp h0
      simp [dirichletCharacterMobius, characterTwist,
        classicalMoebiusComplex, hμ, h0, h1,
        linearReciprocalCoefficient]

/-- The true χ-twisted Möbius is multiplicative; both the
character and the classical μ are actual pinned Mathlib objects. -/
theorem characterTwistedMobius_multiplicative
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    (dirichletCharacterMobius χ).IsMultiplicative := by
  have hμ : classicalMoebiusComplex.IsMultiplicative :=
    ArithmeticFunction.IsMultiplicative.intCast
      ArithmeticFunction.isMultiplicative_moebius
  refine ArithmeticFunction.IsMultiplicative.iff_ne_zero.mpr
    ⟨by simp [dirichletCharacterMobius, characterTwist,
      classicalMoebiusComplex], ?_⟩
  intro m n hm hn hcop
  have hmult := hμ.map_mul_of_coprime hcop
  change
    χ ((m*n : ℕ) : ZMod q) * classicalMoebiusComplex (m*n) =
      (χ (m : ZMod q) * classicalMoebiusComplex m) *
      (χ (n : ZMod q) * classicalMoebiusComplex n)
  rw [Nat.cast_mul, map_mul, hmult]
  ring

/-- Identify the ENTIRE global Euler-Möbius coefficients with
the pinned character-twisted ordinary μ. PRIME POWERS and
multiplicativity, not a postulated analytic Euler product, do it. -/
theorem dirichletEuler_mobius_eq_characterTwist
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    (dirichletEulerSource χ).mobius =
      dirichletCharacterMobius χ := by
  have hmult := primeEuler_mobius_multiplicative
    (dirichletEulerSource χ)
  have hχ := characterTwistedMobius_multiplicative χ
  apply (ArithmeticFunction.IsMultiplicative.eq_iff_eq_on_prime_powers
    (dirichletEulerSource χ).mobius hmult
    (dirichletCharacterMobius χ) hχ).mpr
  intro p r hp
  calc
    (dirichletEulerSource χ).mobius (p^r) =
      ((dirichletEulerSource χ).polynomial p).coeff r :=
        synthesized_prime_power_compatibility
          (dirichletEulerSource χ) p r hp
    _ = linearReciprocalCoefficient
      (fun p => χ (p : ZMod q)) p r := by
        exact linearReciprocalPolynomial_coeff _ p r
    _ = dirichletCharacterMobius χ (p^r) :=
      (characterTwistedMobius_prime_power χ p r hp).symm

/-- DISCHARGE the existing explicit finite
DirichletEulerSourceIdentificationTarget: the global
Dirichlet-coefficient Euler synthesis really is the PINNED
Dirichlet character coefficient arithmetic function.
No GRH, nontrivial zero bound or RH-strength assumption. -/
theorem dirichletEulerSourceIdentification_proof
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    DirichletEulerSourceIdentificationTarget χ := by
  change (dirichletEulerSource χ).family.coeff =
    (dirichletCharacterCoefficients χ).coeff
  have hμ :
      (dirichletEulerSource χ).family.mobius =
        (dirichletCharacterCoefficients χ).mobius := by
    calc
      _ = (dirichletEulerSource χ).mobius :=
        (dirichletEulerSource χ).family_mobius_eq
      _ = dirichletCharacterMobius χ :=
        dirichletEuler_mobius_eq_characterTwist χ
      _ = (dirichletCharacterCoefficients χ).mobius :=
        (dirichletCharacter_mobius_eq_twist χ).symm
  calc
    (dirichletEulerSource χ).family.coeff =
      (dirichletEulerSource χ).family.coeff * 1 := by simp
    _ = (dirichletEulerSource χ).family.coeff *
      ((dirichletCharacterCoefficients χ).mobius *
        (dirichletCharacterCoefficients χ).coeff) := by
      rw [(dirichletCharacterCoefficients χ).mobius_mul]
    _ = ((dirichletEulerSource χ).family.coeff *
        (dirichletEulerSource χ).family.mobius) *
        (dirichletCharacterCoefficients χ).coeff := by
      rw [hμ]
      ring
    _ = (dirichletCharacterCoefficients χ).coeff := by
      rw [(dirichletEulerSource χ).family.mul_mobius, one_mul]

end GRWTSK.NumberTheory.Moebius.DirichletEulerIdentificationClosure
