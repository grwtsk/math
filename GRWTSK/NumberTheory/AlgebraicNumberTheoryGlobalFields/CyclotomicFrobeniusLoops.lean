/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeOrbitHolonomy
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicGaloisPublic
import Mathlib.Data.Nat.Totient
import Mathlib.GroupTheory.Coset.Card
import Mathlib.NumberTheory.MulChar.Duality
import Mathlib.Tactic

/-!
# Totient, cyclotomic Frobenius loops, and invariant finite diffusion modes

This module formalizes the finite arithmetic-loop part of the supplied argument.

For positive modulus `n`, the source fiber is the actual unit group

  `G_n = (ZMod n)ˣ`.

Its cardinality is Euler's totient.  If `p` is coprime to `n`, the element
`u = ZMod.unitOfCoprime p hn` acts by left multiplication.  Every starting
state has the same positive return order `orderOf u`, because

  `u^m * a = a <-> u^m = 1`.

The cyclic holonomy subgroup is exactly `zpowers u`.  The set of arithmetic
loops is represented by the quotient `G_n / <u>`.  Lagrange's theorem and
`Nat.card_zpowers` give the exact loop-count identity

  `totient n = card(loops) * orderOf u`

and hence

  `card(loops) = totient n / orderOf u`.

This is a finite group statement.  It is not a Weil-positivity theorem.

## Actual cyclotomic Frobenius source

The imported cyclotomic Galois source already proves that for a cyclotomic
number field and an unramified prime, `galEquivZMod` maps the decomposition
group to `zpowers (ZMod.unitOfCoprime p hn)`.  The theorem
`cyclotomic_decomposition_group_eq_holonomy` below is therefore an exact
source return, not a newly asserted Frobenius analogy.

The imported `PrimeOrbitHolonomy` module supplies the abstract algebraic
mapping torus at real period `log p`.  We specialize it to the additive type
tag of the unit group.  That source explicitly does NOT impose the topology
needed to prove that the quotient is a disjoint union of geometric circles, so
the circle-component and circumference statement from the supplied note is not
promoted here.

## Finite diffusion and zero energy

For a complex function on `G_n`, define the transfer

  `T_u F(a) = F(u*a)`

and the nonnegative edge energy

  `E_u(F) = sum_a ||F(u*a)-F(a)||^2`.

The energy vanishes exactly when the function is constant along every
Frobenius orbit.  A pointwise Laplacian

  `L_u F(a) = 2F(a)-F(u*a)-F(u⁻¹*a)`

is also defined, and every invariant function is annihilated by it.  The reverse
kernel implication is a standard finite-cycle Laplacian fact but is not used to
smuggle in the missing dimension theorem; the exact loop count is already
proved by the quotient carrier above.

## Character sector

For a group character `psi : G_n ->* Complexˣ`, its coefficient function is
an eigenfunction of the transfer with eigenvalue `psi u`, and of the
Laplacian with eigenvalue

  `2 - psi(u) - psi(u)⁻¹`.

Its edge energy is zero exactly when `psi(u)=1`.

Independently, Mathlib's finite character duality theorem identifies the
cardinality of the subgroup of multiplicative characters trivial on `<u>`
with the quotient cardinality.  Thus the number of trivial-holonomy character
sectors equals the finite Frobenius-loop count.

For a Dirichlet character, evaluation on `u` is exactly evaluation at the
residue of `p`; its powers therefore give the same `chi(p)^m` factors that
occur in the unramified local Euler-factor expansion.  This module does not
formalize an analytic logarithmic derivative.

## Boundaries retained

* `n=0` is excluded from the unit-fiber cardinality statement; Mathlib has
  `Nat.totient_zero`, but `(ZMod 0)ˣ` is not the intended finite cyclotomic
  fiber.
* Ramified primes are excluded by the explicit coprimality hypothesis.
* The additive residue identity `n = sum_{d|n} totient d` is exported
  separately and is not identified with the multiplicative Frobenius orbits.
* The factorization of a cyclotomic polynomial modulo `p` into equal-degree
  irreducibles is supported by Mathlib's cyclotomic factorization theory, but
  the distinct-factor count is not reassembled in this increment.
* No invariant arithmetic loop is called a null geodesic.
* No finite Frobenius energy, character eigenvalue, or loop count is identified
  with the complete pole/gamma/conductor/residual Weil quadratic form.
  A source-preserving operator bridge remains a separate open obligation.

Current source base: grwtsk/math
`0d7adb3bca0a87868e928b625bdad1ba1b281552`.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicFrobeniusLoops

open scoped BigOperators
open MulChar
open PrimeOrbitHolonomy
open IsCyclotomicExtension.Rat

/-- The finite cyclotomic arithmetic fiber. -/
abbrev UnitFiber (n : ℕ) := (ZMod n)ˣ

variable {n p : ℕ} [NeZero n]

/-- The exact unit-fiber cardinality is Euler's totient. -/
theorem card_unitFiber :
    Fintype.card (UnitFiber n) = Nat.totient n := by
  exact ZMod.card_units_eq_totient n

/-- Euler's rational product formula, retained at its Mathlib normalization. -/
theorem totient_rational_product :
    (Nat.totient n : ℚ) =
      n * ∏ q ∈ n.primeFactors, (1 - (q : ℚ)⁻¹) := by
  exact Nat.totient_eq_mul_prod_factors n

/-- Euler's prime-factorization product formula. -/
theorem totient_factorization_product :
    Nat.totient n =
      n.factorization.prod fun q k => q ^ (k - 1) * (q - 1) := by
  exact Nat.totient_eq_prod_factorization (NeZero.ne n)

/-- The exceptional scalar values remain explicit and separate from the
positive-modulus unit-fiber theorem. -/
theorem totient_zero : Nat.totient 0 = 0 := by
  exact Nat.totient_zero

theorem totient_one : Nat.totient 1 = 1 := by
  exact Nat.totient_one

/-- The unramified residue of `p` as an actual unit modulo `n`. -/
def frobeniusUnit (hn : Nat.Coprime p n) : UnitFiber n :=
  ZMod.unitOfCoprime p hn

@[simp] theorem coe_frobeniusUnit (hn : Nat.Coprime p n) :
    ((frobeniusUnit hn : UnitFiber n) : ZMod n) = (p : ZMod n) := by
  simp [frobeniusUnit]

/-- One finite Frobenius step on the unit fiber. -/
def frobeniusStep (u : UnitFiber n) (a : UnitFiber n) : UnitFiber n :=
  u * a

/-- The exact state after `m` circuits. -/
def frobeniusIterate (u : UnitFiber n) (m : ℕ) (a : UnitFiber n) :
    UnitFiber n :=
  u ^ m * a

@[simp] theorem frobeniusIterate_zero (u a : UnitFiber n) :
    frobeniusIterate u 0 a = a := by
  simp [frobeniusIterate]

theorem frobeniusIterate_add (u : UnitFiber n) (m k : ℕ)
    (a : UnitFiber n) :
    frobeniusIterate u (m + k) a =
      frobeniusIterate u k (frobeniusIterate u m a) := by
  simp [frobeniusIterate, pow_add, mul_assoc, mul_left_comm]

/-- Return to the starting state is independent of the selected unit state. -/
theorem frobenius_return_iff_pow_eq_one
    (u a : UnitFiber n) (m : ℕ) :
    frobeniusIterate u m a = a ↔ u ^ m = 1 := by
  constructor
  · intro h
    have h' := congrArg (fun x : UnitFiber n => x * a⁻¹) h
    simpa [frobeniusIterate, mul_assoc] using h'
  · intro h
    simp [frobeniusIterate, h]

/-- The positive return times are exactly the multiples of the group-theoretic
order of the Frobenius unit. -/
theorem frobenius_return_iff_orderOf_dvd
    (u a : UnitFiber n) (m : ℕ) :
    frobeniusIterate u m a = a ↔ orderOf u ∣ m := by
  rw [frobenius_return_iff_pow_eq_one]
  exact orderOf_dvd_iff_pow_eq_one

/-- Euler's theorem in its exact group-order form. -/
theorem frobenius_order_dvd_totient (u : UnitFiber n) :
    orderOf u ∣ Nat.totient n := by
  rw [← ZMod.card_units_eq_totient n]
  exact orderOf_dvd_card

/-- The actual finite cyclic holonomy subgroup generated by the Frobenius unit. -/
def frobeniusHolonomy (u : UnitFiber n) : Subgroup (UnitFiber n) :=
  Subgroup.zpowers u

theorem card_frobeniusHolonomy (u : UnitFiber n) :
    Nat.card (frobeniusHolonomy u) = orderOf u := by
  simpa [frobeniusHolonomy] using (Nat.card_zpowers u)

/-- Arithmetic Frobenius loops are the cosets of the cyclic holonomy subgroup. -/
abbrev FrobeniusLoops (u : UnitFiber n) :=
  UnitFiber n ⧸ frobeniusHolonomy u

/-- Exact multiplicative loop-count identity:
`totient n = number of loops * common return length`. -/
theorem totient_eq_card_loops_mul_order (u : UnitFiber n) :
    Nat.totient n = Nat.card (FrobeniusLoops u) * orderOf u := by
  have h :=
    Subgroup.card_eq_card_quotient_mul_card_subgroup (frobeniusHolonomy u)
  rw [Nat.card_eq_fintype_card, ZMod.card_units_eq_totient,
    card_frobeniusHolonomy] at h
  exact h

/-- The number of invariant Frobenius loops is exactly
`totient n / orderOf u`. -/
theorem card_loops_eq_totient_div_order (u : UnitFiber n) :
    Nat.card (FrobeniusLoops u) = Nat.totient n / orderOf u := by
  symm
  rw [Nat.div_eq_iff_eq_mul_left (orderOf_pos u)
    (frobenius_order_dvd_totient u)]
  exact totient_eq_card_loops_mul_order u

/-- The supplied prime specializes the loop count through its residue order. -/
theorem card_prime_loops_eq_totient_div_order (hn : Nat.Coprime p n) :
    Nat.card (FrobeniusLoops (frobeniusUnit hn)) =
      Nat.totient n / orderOf (frobeniusUnit hn) :=
  card_loops_eq_totient_div_order (frobeniusUnit hn)

/-- The additive residue-period partition is a separate totient identity. -/
theorem additive_residue_period_partition (n : ℕ) :
    (∑ d ∈ n.divisors, Nat.totient d) = n := by
  exact Nat.sum_totient n

/-! ## Abstract prime-orbit mapping torus specialization -/

/-- The existing abstract prime-orbit mapping torus specialized to the additive
type tag of the cyclotomic unit fiber. -/
def cyclotomicMappingTorus (hn : Nat.Coprime p n) : Type _ :=
  PrimeOrbitHolonomy.MappingTorus
    (Additive.ofMul (frobeniusUnit hn))
    (PrimeOrbitHolonomy.primePeriod p)

/-- At a genuine prime, the mapping-torus base period is strictly positive. -/
theorem cyclotomicMappingTorus_period_pos
    (hp : Nat.Prime p) (hn : Nat.Coprime p n) :
    0 < PrimeOrbitHolonomy.primePeriod p := by
  exact PrimeOrbitHolonomy.primePeriod_pos hp

/-! ## Actual cyclotomic decomposition-group source return -/

section CyclotomicGalois

variable (n : ℕ) [NeZero n]
  (K : Type*) [Field K] [NumberField K]
  [hK : IsCyclotomicExtension {n} ℚ K]
  (p : ℕ) [hp : Fact (Nat.Prime p)]
  (P : Ideal (𝓞 K)) [P.IsMaximal]
  [P.LiesOver (Ideal.span {(p : ℤ)})]
  (hn : p.Coprime n)

/-- The actual cyclotomic decomposition group maps to the same cyclic subgroup
used by the finite Frobenius-loop carrier. -/
theorem cyclotomic_decomposition_group_eq_holonomy :
    (galEquivZMod n K).mapSubgroup
        (MulAction.stabilizer Gal(K/ℚ) P) =
      frobeniusHolonomy (frobeniusUnit hn) := by
  simpa [frobeniusHolonomy, frobeniusUnit] using
    (galEquivZMod_stabilizer n K p P hn)

end CyclotomicGalois

/-! ## Finite transfer, energy, and character modes -/

/-- Pullback by one Frobenius multiplication step. -/
def transfer (u : UnitFiber n) (F : UnitFiber n → ℂ) :
    UnitFiber n → ℂ :=
  fun a => F (u * a)

/-- Positive edge energy of the finite Frobenius permutation. -/
def frobeniusEnergy (u : UnitFiber n) (F : UnitFiber n → ℂ) : ℝ :=
  ∑ a : UnitFiber n, ‖transfer u F a - F a‖ ^ 2

theorem frobeniusEnergy_nonneg (u : UnitFiber n)
    (F : UnitFiber n → ℂ) :
    0 ≤ frobeniusEnergy u F := by
  unfold frobeniusEnergy
  exact Finset.sum_nonneg fun _ _ => sq_nonneg _

/-- Zero finite diffusion energy is exactly constancy along every Frobenius
edge, hence along each generated orbit. -/
theorem frobeniusEnergy_eq_zero_iff (u : UnitFiber n)
    (F : UnitFiber n → ℂ) :
    frobeniusEnergy u F = 0 ↔
      ∀ a : UnitFiber n, F (u * a) = F a := by
  unfold frobeniusEnergy transfer
  rw [Finset.sum_eq_zero_iff_of_nonneg
    (fun a _ => sq_nonneg ‖F (u * a) - F a‖)]
  simp [sub_eq_zero]

/-- The finite symmetric Frobenius graph Laplacian. -/
def frobeniusLaplacian (u : UnitFiber n) (F : UnitFiber n → ℂ) :
    UnitFiber n → ℂ :=
  fun a => 2 * F a - F (u * a) - F (u⁻¹ * a)

/-- Every invariant function is a zero mode of the finite Laplacian. -/
theorem frobeniusLaplacian_eq_zero_of_invariant
    (u : UnitFiber n) (F : UnitFiber n → ℂ)
    (hF : ∀ a, F (u * a) = F a) :
    frobeniusLaplacian u F = 0 := by
  funext a
  have hforward := hF a
  have hback := hF (u⁻¹ * a)
  have hback' : F (u⁻¹ * a) = F a := by
    have : u * (u⁻¹ * a) = a := by group
    rw [← this, hback]
  simp [frobeniusLaplacian, hforward, hback']

/-- A multiplicative group character regarded as a complex-valued coefficient
function on the unit fiber. -/
def characterFunction (χ : UnitFiber n →* ℂˣ) :
    UnitFiber n → ℂ :=
  fun a => (χ a : ℂ)

/-- Every group character diagonalizes one Frobenius transfer step. -/
theorem transfer_character (u : UnitFiber n)
    (χ : UnitFiber n →* ℂˣ) (a : UnitFiber n) :
    transfer u (characterFunction χ) a =
      (χ u : ℂ) * characterFunction χ a := by
  simp [transfer, characterFunction]

/-- Complex eigenvalue of the finite Laplacian in one character sector. -/
def characterLaplacianEigenvalue
    (u : UnitFiber n) (χ : UnitFiber n →* ℂˣ) : ℂ :=
  2 - (χ u : ℂ) - ((χ u : ℂ)⁻¹)

/-- Character-by-character Laplacian diagonalization. -/
theorem laplacian_character (u : UnitFiber n)
    (χ : UnitFiber n →* ℂˣ) (a : UnitFiber n) :
    frobeniusLaplacian u (characterFunction χ) a =
      characterLaplacianEigenvalue u χ * characterFunction χ a := by
  simp [frobeniusLaplacian, characterFunction,
    characterLaplacianEigenvalue]
  ring

/-- A character is invariant exactly when its Frobenius holonomy is trivial. -/
theorem character_invariant_iff_value_one
    (u : UnitFiber n) (χ : UnitFiber n →* ℂˣ) :
    (∀ a : UnitFiber n,
      transfer u (characterFunction χ) a = characterFunction χ a) ↔
      (χ u : ℂ) = 1 := by
  constructor
  · intro h
    simpa [transfer, characterFunction] using h 1
  · intro h a
    simp [transfer, characterFunction, h]

/-- Character zero energy is precisely trivial Frobenius holonomy. -/
theorem character_energy_eq_zero_iff
    (u : UnitFiber n) (χ : UnitFiber n →* ℂˣ) :
    frobeniusEnergy u (characterFunction χ) = 0 ↔
      (χ u : ℂ) = 1 := by
  rw [frobeniusEnergy_eq_zero_iff]
  exact character_invariant_iff_value_one u χ

/-! ## Dual-character count -/

/-- Multiplicative characters trivial on the Frobenius holonomy subgroup. -/
noncomputable def frobeniusTrivialCharacters
    (hn : Nat.Coprime p n) : Subgroup (MulChar (ZMod n) ℂ) :=
  (subgroupOrderIsoSubgroupMulChar (ZMod n) ℂ
    (frobeniusHolonomy (frobeniusUnit hn))).ofDual

/-- Finite character duality gives exactly one trivial-holonomy character
dimension per Frobenius loop. -/
theorem card_frobeniusTrivialCharacters_eq_loops
    (hn : Nat.Coprime p n) :
    Nat.card (frobeniusTrivialCharacters hn) =
      Nat.card (FrobeniusLoops (frobeniusUnit hn)) := by
  simpa [frobeniusTrivialCharacters, FrobeniusLoops] using
    (card_subgroupOrderIsoSubgroupMulChar
      (M := ZMod n) (R := ℂ)
      (H := frobeniusHolonomy (frobeniusUnit hn)))

/-- Hence the trivial-holonomy character count is
`totient n / orderOf(p mod n)`. -/
theorem card_frobeniusTrivialCharacters_eq_totient_div_order
    (hn : Nat.Coprime p n) :
    Nat.card (frobeniusTrivialCharacters hn) =
      Nat.totient n / orderOf (frobeniusUnit hn) := by
  rw [card_frobeniusTrivialCharacters_eq_loops]
  exact card_prime_loops_eq_totient_div_order hn

/-- Membership means triviality on the entire cyclic Frobenius holonomy group. -/
theorem mem_frobeniusTrivialCharacters_iff
    (hn : Nat.Coprime p n) (χ : MulChar (ZMod n) ℂ) :
    χ ∈ frobeniusTrivialCharacters hn ↔
      ∀ u ∈ frobeniusHolonomy (frobeniusUnit hn), χ u = 1 := by
  simpa [frobeniusTrivialCharacters] using
    (mem_subgroupOrderIsoSubgroupMulChar_iff
      (M := ZMod n) (R := ℂ)
      (H := frobeniusHolonomy (frobeniusUnit hn)) (χ := χ))

/-! ## Dirichlet-character prime powers -/

/-- Evaluation on the Frobenius unit is exactly evaluation at the residue of
the prime. -/
theorem dirichlet_frobenius_value
    (hn : Nat.Coprime p n) (χ : DirichletCharacter ℂ n) :
    ((χ.toUnitHom (frobeniusUnit hn) : (ℂˣ)) : ℂ) =
      χ (p : ZMod n) := by
  rw [MulChar.coe_toUnitHom]
  simp [frobeniusUnit]

/-- Iterated unramified Frobenius contributes the literal powers
`χ(p)^m`.  This is the finite algebraic part of the local Euler-factor
expansion; no analytic logarithmic derivative is asserted. -/
theorem dirichlet_frobenius_power
    (hn : Nat.Coprime p n) (χ : DirichletCharacter ℂ n) (m : ℕ) :
    ((((χ.toUnitHom (frobeniusUnit hn)) ^ m : ℂˣ) : ℂ)) =
      (χ (p : ZMod n)) ^ m := by
  rw [Units.val_pow_eq_pow_val, dirichlet_frobenius_value hn χ]

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicFrobeniusLoops
