/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeOrbitHolonomy
import Mathlib

/-!
# Euler totient, finite Frobenius loops, invariant sections and spectral energy

Source pin: grwtsk/math@5f0b29531affef9d24876b68a48c5238d53cde83;
Mathlib4@d13f23b723b8a846827a245b89c10fc7d3f11612.
Upstream mathematical geometry: Alain Connes and Caterina Consani,
"Knots, primes and class field theory", arXiv:2501.06560 (2025),
prime periodic orbit / finite abelian Frobenius mapping-torus comparison.
The actual Lean interfaces are Mathlib Nat.totient, ZMod.unitOfCoprime,
ZMod.card_units_eq_totient, orderOf, Subgroup.zpowers and QuotientGroup,
and the existing PrimeOrbitHolonomy.MappingTorus.

## Exact arithmetic geometry

For n>0, prime p coprime to n, put G_n=(ZMod n)^x and
a=ZMod.unitOfCoprime p. The first return of x under x |-> a*x
has length f=orderOf a, independently of x. The exact orbit set is
G_n/(zpowers a); its size times f is phi(n), so it has phi(n)/f
elements. The mapping torus has the corresponding components, each
with period f*log p, by the published Connes--Consani identification
of cyclotomic Frobenius. The original mapping-torus algebraic carrier
is reused below; topological/homeomorphism/etale reciprocity is NOT
re-proved in Lean.

A function is invariant under the generator a iff constant on the
cosets of zpowers a. A linear equivalence between coset functions
and the invariant submodule proves that its complex dimension is
the orbit count. The sum of squared one-step differences vanishes
exactly on this invariant submodule. Multiplicative characters
diagonalize 2I-T_a-T_a^-1 with eigenvalue 2-chi(a)-chi(a^-1);
the phase is a root of unity of order dividing f.

The finite magnetic energy is positive semidefinite, not Lorentzian:
zero energy is NOT a nonconstant null geodesic. Unlike the independent
64-coordinate matching diffusion in WeilSpinHolonomyDiffusionBridge,
a nontrivial cyclotomic Frobenius can have nontrivial cyclic holonomy.
No canonical source-preserving map identifies these two operators.
A character Euler factor, complete Weil formula, conductor, gamma
terms, pole, signed remainder, global gap, RH or Dirichlet GRH is
not established by the finite loop count.

These are standard finite group and Fourier facts; no mathematical
novelty asserted. Lean elaboration and axiom audit have NOT run.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusInvariantLoops

section GenericFiniteAbelianFiber

variable {G : Type*} [CommGroup G] [Fintype G]

/-- The actual coset/orbit space of the cyclic holonomy subgroup. -/
abbrev OrbitSpace (a : G) : Type _ := G ⧸ Subgroup.zpowers a

/-- The number of connected lifted loops in the finite regular cover. -/
noncomputable def orbitCount (a : G) : ℕ := Nat.card (OrbitSpace a)

/-- Two fibers lie on the SAME cyclic holonomy orbit exactly when one
is an integral winding of the other. -/
theorem sameOrbit_iff (a x y : G) :
    (QuotientGroup.mk x : OrbitSpace a) = QuotientGroup.mk y ↔
      ∃ k : ℤ, y = a ^ k * x := by
  change QuotientGroup.mk' (Subgroup.zpowers a) x =
    QuotientGroup.mk' (Subgroup.zpowers a) y ↔ _
  rw [QuotientGroup.mk'_eq_mk']
  constructor
  · rintro ⟨z, hz, hxz⟩
    obtain ⟨k, hk⟩ := Subgroup.mem_zpowers_iff.mp hz
    refine ⟨k, ?_⟩
    calc
      y = x * z := hxz.symm
      _ = x * a ^ k := by rw [hk]
      _ = a ^ k * x := mul_comm _ _
  · rintro ⟨k, hxy⟩
    refine ⟨a ^ k, Subgroup.zpow_mem_zpowers a k, ?_⟩
    calc
      x * a ^ k = a ^ k * x := mul_comm _ _
      _ = y := hxy.symm

/-- The generator's return is independent of the starting fiber. -/
theorem winding_fixed_iff (a x : G) (m : ℕ) :
    a ^ m * x = x ↔ orderOf a ∣ m := by
  rw [orderOf_dvd_iff_pow_eq_one]
  constructor
  · intro h
    have hx := congrArg (fun y : G => y * x⁻¹) h
    simpa [mul_assoc] using hx
  · intro h
    simp [h]

/-- The finite arithmetic period is strictly positive. -/
theorem period_pos (a : G) : 0 < orderOf a := orderOf_pos a

theorem winding_period_return (a x : G) :
    a ^ orderOf a * x = x := by
  simp

/-- Lagrange's theorem as the exact cyclotomic orbit-count identity. -/
theorem orbitCount_mul_order (a : G) :
    orbitCount a * orderOf a = Fintype.card G := by
  classical
  calc
    orbitCount a * orderOf a =
        (Subgroup.zpowers a).index *
          Nat.card (Subgroup.zpowers a) := by
            simp only [orbitCount, OrbitSpace, Subgroup.index_eq_card,
              Nat.card_eq_fintype_card, Fintype.card_zpowers]
    _ = Nat.card G := (Subgroup.zpowers a).index_mul_card
    _ = Fintype.card G := Nat.card_eq_fintype_card

theorem orbitCount_eq_card_div_order (a : G) :
    orbitCount a = Fintype.card G / orderOf a := by
  classical
  calc
    orbitCount a = (Subgroup.zpowers a).index := rfl
    _ = Nat.card G / Nat.card (Subgroup.zpowers a) :=
      (Subgroup.zpowers a).index_eq_card_div
    _ = Fintype.card G / orderOf a := by
      simp only [Nat.card_eq_fintype_card, Fintype.card_zpowers]

/-- A function constant on one-step Frobenius transport. -/
def IsInvariant (a : G) (f : G → ℂ) : Prop :=
  ∀ x : G, f (a * x) = f x

/-- All group elements fixing a function form a subgroup. -/
def functionStabilizer (f : G → ℂ) : Subgroup G where
  carrier := {g | ∀ x : G, f (g * x) = f x}
  one_mem' := by
    intro x
    simp
  mul_mem' := by
    intro g h hg hh x
    change f ((g * h) * x) = f x
    rw [mul_assoc, hg (h * x), hh x]
  inv_mem' := by
    intro g hg x
    have hx := hg (g⁻¹ * x)
    have hh : g * (g⁻¹ * x) = x := by simp [mul_comm, mul_left_comm, mul_assoc]
    rw [hh] at hx
    exact hx.symm

/-- One-step invariance already implies invariance under every winding,
including negative winding; no extra orbit-invariance assumption. -/
theorem invariant_iff_zpowers (a : G) (f : G → ℂ) :
    IsInvariant a f ↔
      ∀ g ∈ Subgroup.zpowers a, ∀ x : G, f (g * x) = f x := by
  constructor
  · intro h g hg x
    have ha : a ∈ functionStabilizer f := h
    have hle : Subgroup.zpowers a ≤ functionStabilizer f :=
      (Subgroup.zpowers_le).2 ha
    exact (hle hg) x
  · intro h x
    exact h a (Subgroup.mem_zpowers a) x

def IsCosetInvariant (a : G) (f : G → ℂ) : Prop :=
  ∀ x y : G,
    (QuotientGroup.mk x : OrbitSpace a) = QuotientGroup.mk y →
      f x = f y

/-- No loss of fibers: one-generator invariance is EXACTLY constancy
on the genuine cyclic-orbit quotient. -/
theorem invariant_iff_cosetInvariant (a : G) (f : G → ℂ) :
    IsInvariant a f ↔ IsCosetInvariant a f := by
  constructor
  · intro h x y hxy
    have ha : a ∈ functionStabilizer f := h
    have hle : Subgroup.zpowers a ≤ functionStabilizer f :=
      (Subgroup.zpowers_le).2 ha
    have hmem : x⁻¹ * y ∈ Subgroup.zpowers a :=
      QuotientGroup.eq.mp hxy
    have hx := (hle hmem) x
    have hm : (x⁻¹ * y) * x = y := by simp [mul_comm, mul_left_comm, mul_assoc]
    rw [hm] at hx
    exact hx.symm
  · intro h x
    have hxy :
        (QuotientGroup.mk x : OrbitSpace a) =
          QuotientGroup.mk (a * x) := by
      apply QuotientGroup.eq.mpr
      have hm : x⁻¹ * (a * x) = a := by simp [mul_comm, mul_left_comm, mul_assoc]
      rw [hm]
      exact Subgroup.mem_zpowers a
    exact (h x (a * x) hxy).symm

/-- The subspace of ALL zero-energy/invariant fiber functions. -/
def invariantSubmodule (a : G) : Submodule ℂ (G → ℂ) where
  carrier := {f | IsInvariant a f}
  zero_mem' := by
    intro x
    rfl
  add_mem' := by
    intro f g hf hg x
    change f (a * x) + g (a * x) = f x + g x
    rw [hf x, hg x]
  smul_mem' := by
    intro c f hf x
    change c * f (a * x) = c * f x
    rw [hf x]

/-- Pull a function on the true orbit quotient back to the original
unit-fiber states. -/
def pullback (a : G) (F : OrbitSpace a → ℂ) (x : G) : ℂ :=
  F (QuotientGroup.mk x)

theorem pullback_invariant (a : G) (F : OrbitSpace a → ℂ) :
    IsInvariant a (pullback a F) := by
  intro x
  have hxy :
      (QuotientGroup.mk (a * x) : OrbitSpace a) =
        QuotientGroup.mk x := by
    apply QuotientGroup.eq.mpr
    have hm : (a * x)⁻¹ * x = a⁻¹ := by simp [mul_comm, mul_left_comm, mul_assoc]
    rw [hm]
    exact (Subgroup.zpowers a).inv_mem (Subgroup.mem_zpowers a)
  exact congrArg F hxy

/-- Descent is justified by proved coset invariance, not merely
a cardinality coincidence or a guessed coding map. -/
noncomputable def descend (a : G) (f : invariantSubmodule a) :
    OrbitSpace a → ℂ :=
  Quotient.lift f.1 (by
    intro x y hxy
    exact ((invariant_iff_cosetInvariant a f.1).mp f.2)
      x y (Quotient.sound hxy))

/-- Source-exact linear equivalence between invariant functions and
all functions on the true Frobenius-orbit quotient. -/
noncomputable def invariantLinearEquiv (a : G) :
    (OrbitSpace a → ℂ) ≃ₗ[ℂ] invariantSubmodule a where
  toFun F := ⟨pullback a F, pullback_invariant a F⟩
  invFun := descend a
  left_inv := by
    intro F
    funext q
    refine Quotient.inductionOn q ?_
    intro x
    rfl
  right_inv := by
    intro f
    apply Subtype.ext
    funext x
    rfl
  map_add' := by
    intro F H
    apply Subtype.ext
    funext x
    rfl
  map_smul' := by
    intro c F
    apply Subtype.ext
    funext x
    rfl

/-- Dimension of the invariant Fourier-zero-mode space equals
the number of ACTUAL cyclic holonomy orbits. -/
theorem finrank_invariant_eq_orbitCount (a : G) :
    Module.finrank ℂ (invariantSubmodule a) = orbitCount a := by
  classical
  letI : Fintype (OrbitSpace a) := Fintype.ofFinite (OrbitSpace a)
  calc
    Module.finrank ℂ (invariantSubmodule a) =
        Module.finrank ℂ (OrbitSpace a → ℂ) :=
          (invariantLinearEquiv a).finrank_eq.symm
    _ = Fintype.card (OrbitSpace a) := Module.finrank_pi ℂ
    _ = orbitCount a := by
      simp only [orbitCount, Nat.card_eq_fintype_card]

/-- A finite positive-semidefinite magnetic energy on the SAME unit fiber.
No Lorentzian metric or geodesic equation is introduced. -/
def cycleEnergy (a : G) (f : G → ℂ) : ℝ :=
  ∑ x : G, (‖f (a * x) - f x‖ : ℝ) ^ 2

theorem cycleEnergy_nonneg (a : G) (f : G → ℂ) :
    0 ≤ cycleEnergy a f := by
  unfold cycleEnergy
  exact Finset.sum_nonneg (fun x hx => sq_nonneg _)

/-- The zero-energy condition does not invent a new kernel: it is
exactly the invariant submodule already identified with orbit functions. -/
theorem cycleEnergy_eq_zero_iff (a : G) (f : G → ℂ) :
    cycleEnergy a f = 0 ↔ IsInvariant a f := by
  classical
  constructor
  · intro h x
    have hle :
        (‖f (a * x) - f x‖ : ℝ) ^ 2 ≤
          ∑ y : G, (‖f (a * y) - f y‖ : ℝ) ^ 2 := by
      apply Finset.single_le_sum (s := Finset.univ) (f := fun y : G => (‖f (a * y) - f y‖ : ℝ) ^ 2)
      · intro y hy
        exact sq_nonneg _
      · exact Finset.mem_univ x
    have hsum :
        (∑ y : G, (‖f (a * y) - f y‖ : ℝ) ^ 2) = 0 := h
    rw [hsum] at hle
    have hn : (‖f (a * x) - f x‖ : ℝ) = 0 := by
      nlinarith [norm_nonneg (f (a * x) - f x)]
    exact sub_eq_zero.mp ((norm_eq_zero).mp hn)
  · intro h
    change ∀ x : G, f (a * x) = f x at h
    simp [cycleEnergy, h]

/-- The usual finite magnetic Laplacian (2I - T - T^{-1}). -/
def cycleLaplacian (a : G) (f : G → ℂ) (x : G) : ℂ :=
  (2 : ℂ) * f x - f (a * x) - f (a⁻¹ * x)

/-- Each actual multiplicative character is an eigenfunction, without
requiring an unproved operator comparison with the arithmetic Weil form. -/
theorem character_eigen (a : G) (χ : G →* ℂ) :
    cycleLaplacian a (fun x => χ x) =
      fun x => ((2 : ℂ) - χ a - χ a⁻¹) * χ x := by
  funext x
  simp only [cycleLaplacian, map_mul]
  ring

theorem character_invariant_iff (a : G) (χ : G →* ℂ) :
    IsInvariant a (fun x => χ x) ↔ χ a = 1 := by
  constructor
  · intro h
    have ha := h 1
    simpa only [mul_one, map_one] using ha
  · intro h x
    change χ (a * x) = χ x
    rw [map_mul, h, one_mul]

/-- The character evaluation of the holonomy is a root of unity.
No arbitrary unitary phase is assumed in place of the actual character. -/
theorem character_phase_period (a : G) (χ : G →* ℂ) :
    (χ a) ^ orderOf a = 1 := by
  have h := congrArg χ (pow_orderOf_eq_one a)
  simpa only [map_pow, map_one] using h

end GenericFiniteAbelianFiber

section ActualCyclotomicFiber

variable (n : ℕ) [NeZero n]

/-- The ORIGINAL arithmetic fiber: units of the literal residue ring. -/
abbrev UnitFiber : Type := (ZMod n)ˣ

theorem unitFiber_card_eq_totient :
    Fintype.card (UnitFiber n) = Nat.totient n := by
  classical
  exact ZMod.card_units_eq_totient n

/-- Frobenius is defined only for unramified labels p coprime to n. -/
def frobeniusUnit (p : ℕ) (hprime : Nat.Prime p) (hp : Nat.Coprime p n) : UnitFiber n :=
  ZMod.unitOfCoprime p hp

/-- Connes--Consani's period log p, with a genuine unit-fiber return.
The mapping-torus carrier is the EXISTING PrimeOrbitHolonomy definition. -/
abbrev cyclotomicMappingTorus (p : ℕ) (hprime : Nat.Prime p) (hp : Nat.Coprime p n) : Type _ :=
  GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeOrbitHolonomy.MappingTorus
    (Additive.ofMul (frobeniusUnit n p hprime hp))
    (GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeOrbitHolonomy.primePeriod p)

noncomputable def cyclotomicLoopCount (p : ℕ)
    (hprime : Nat.Prime p) (hp : Nat.Coprime p n) : ℕ :=
  orbitCount (frobeniusUnit n p hprime hp)

/-- The exact return length / loop count identity for the true
cyclotomic group, INCLUDING all phi(n) units, no fake ring graph. -/
theorem cyclotomicLoopCount_mul_period (p : ℕ)
    (hprime : Nat.Prime p) (hp : Nat.Coprime p n) :
    cyclotomicLoopCount n p hprime hp * orderOf (frobeniusUnit n p hprime hp) =
      Nat.totient n := by
  have h := orbitCount_mul_order (frobeniusUnit n p hprime hp)
  rw [unitFiber_card_eq_totient n] at h
  exact h

theorem cyclotomicLoopCount_eq_div (p : ℕ)
    (hprime : Nat.Prime p) (hp : Nat.Coprime p n) :
    cyclotomicLoopCount n p hprime hp =
      Nat.totient n / orderOf (frobeniusUnit n p hprime hp) := by
  have h := orbitCount_eq_card_div_order (frobeniusUnit n p hprime hp)
  rw [unitFiber_card_eq_totient n] at h
  exact h

theorem frobeniusPeriod_dvd_totient (p : ℕ)
    (hprime : Nat.Prime p) (hp : Nat.Coprime p n) :
    orderOf (frobeniusUnit n p hprime hp) ∣ Nat.totient n := by
  rw [← unitFiber_card_eq_totient n]
  exact orderOf_dvd_card

theorem fullTotientWinding_returns (p : ℕ)
    (hprime : Nat.Prime p) (hp : Nat.Coprime p n) (x : UnitFiber n) :
    (frobeniusUnit n p hprime hp) ^ Nat.totient n * x = x := by
  exact (winding_fixed_iff (frobeniusUnit n p hprime hp) x
    (Nat.totient n)).2 (frobeniusPeriod_dvd_totient n p hprime hp)

/-- Reuse the actual Euler-product factorization of phi, with n>0. -/
theorem totient_factorization (hn : n ≠ 0) :
    Nat.totient n =
      n.factorization.prod (fun p k => p ^ (k - 1) * (p - 1)) :=
  Nat.totient_eq_prod_factorization hn

/-- All residue classes, including nonunits, are retained separately:
sum of exact additive-period counts equals n. -/
theorem totient_divisor_sum :
    (∑ d ∈ n.divisors, Nat.totient d) = n :=
  Nat.sum_totient n

/-- The invariant complex function dimension in the cyclotomic cover. -/
theorem cyclotomicInvariant_finrank (p : ℕ)
    (hprime : Nat.Prime p) (hp : Nat.Coprime p n) :
    Module.finrank ℂ (invariantSubmodule (frobeniusUnit n p hprime hp)) =
      cyclotomicLoopCount n p hprime hp :=
  finrank_invariant_eq_orbitCount (frobeniusUnit n p hprime hp)

end ActualCyclotomicFiber

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusInvariantLoops
