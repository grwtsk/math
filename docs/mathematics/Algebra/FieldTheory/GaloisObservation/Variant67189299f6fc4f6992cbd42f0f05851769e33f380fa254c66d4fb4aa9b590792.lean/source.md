# Complete source: GRWTSK.Algebra.FieldTheory.GaloisObservation.Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b69ddc4064e7ebcea351859ddcbffc60239dbb23` · SHA-256 `67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation
import Mathlib.FieldTheory.Separable
import Mathlib.Data.ZMod.Basic
import Mathlib.GroupTheory.Perm.Cycle.Type
import Mathlib.Algebra.Group.Subgroup.Basic

/-!
# Presentation-sensitive factor and cycle observations

Reduction is attached to an exact integer polynomial and a proved prime. Full
factorization, degree preservation, separability, and factor irreducibility are
proof obligations. A Frobenius-to-factor correspondence is an additional explicit
hypothesis, not inferred from a histogram. No theorem here identifies a Galois
group, provides canonical DPRM representations, or constructs a halting oracle.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.GaloisObservation

open Polynomial Equiv
open scoped BigOperators

/-- Exact coefficient reduction of the source polynomial at a declared modulus. -/
noncomputable def reduction (source : Observation.PolynomialSource) (p : ℕ) : Polynomial (ZMod p) :=
  source.polynomial.map (Int.castRingHom (ZMod p))

/-- Complete finite-field factor evidence at a proved prime; it cannot be created
from a degree histogram alone. Monicity fixes the otherwise missing scalar. -/
structure GoodPrimeFactorization (source : Observation.PolynomialSource)
    (p : ℕ) [Fact p.Prime] where
  /-- Explicit finite list of factors, including linear factors. -/
  factors : List (Polynomial (ZMod p))
  /-- Reduction is monic, fixing its scalar coefficient. -/
  monic : (reduction source p).Monic
  /-- Degree does not collapse at the selected prime. -/
  degree_preserved : (reduction source p).natDegree = source.polynomial.natDegree
  /-- The reduced polynomial has no repeated roots. -/
  separable : (reduction source p).Separable
  /-- Every listed factor is monic. -/
  factors_monic : ∀ f ∈ factors, f.Monic
  /-- Every listed factor is irreducible over the finite field. -/
  factors_irreducible : ∀ f ∈ factors, Irreducible f
  /-- No factors may be omitted: their exact product is the reduced polynomial. -/
  complete : factors.prod = reduction source p

/-- Degree multiset from a complete factorization; ordering carries no algebraic authority. -/
def factorDegrees {source : Observation.PolynomialSource} {p : ℕ} [Fact p.Prime]
    (f : GoodPrimeFactorization source p) : Multiset ℕ :=
  (f.factors.map Polynomial.natDegree : List ℕ)

/-- Full permutation cycle data, explicitly retaining fixed points omitted by `cycleType`. -/
noncomputable def fullCycleType {α : Type*} [Fintype α] [DecidableEq α] (σ : Perm α) :
    Multiset ℕ :=
  σ.cycleType + Multiset.replicate (Fintype.card α - σ.support.card) 1

/-- The identity permutation has one linear cycle per point, not an empty factor list. -/
theorem full_cycle_type_identity {α : Type*} [Fintype α] [DecidableEq α] :
    fullCycleType (1 : Perm α) = Multiset.replicate (Fintype.card α) 1 := by
  simp [fullCycleType]

/-- Including fixed points makes the sum of all cycle lengths equal the complete root inventory. -/
theorem full_cycle_type_sum {α : Type*} [Fintype α] [DecidableEq α] (σ : Perm α) :
    (fullCycleType σ).sum = Fintype.card α := by
  simp only [fullCycleType, Multiset.sum_add, Perm.sum_cycleType, Multiset.sum_replicate,
    smul_eq_mul, mul_one]
  exact Nat.add_sub_of_le (Finset.card_le_univ σ.support)

/-- Conditional cycle interpretation. The correspondence is a genuine additional
proof field whose algebraic hypotheses must be discharged by its constructor. -/
structure FactorCycleWitness {source : Observation.PolynomialSource} {p : ℕ} [Fact p.Prime]
    (f : GoodPrimeFactorization source p) (E : Type*) [Field E] [Algebra (ZMod p) E]
    (α : Type*) [Fintype α] [DecidableEq α] where
  /-- Permutation of a declared root inventory. -/
  frobenius : Perm α
  /-- Actual roots in one declared extension field, not arbitrary labels. -/
  rootValue : α → E
  /-- Distinct labels identify distinct roots. -/
  roots_injective : Function.Injective rootValue
  /-- Every listed point is a root of the exact reduced source polynomial. -/
  roots_valid : ∀ a, (reduction source p).eval₂ (algebraMap (ZMod p) E) (rootValue a) = 0
  /-- Every root in the declared splitting field is represented. -/
  roots_complete : ∀ z, (reduction source p).eval₂ (algebraMap (ZMod p) E) z = 0 →
    ∃ a, rootValue a = z
  /-- The permutation actually acts by the prime-power Frobenius on these roots. -/
  frobenius_action : ∀ a, rootValue (frobenius a) = rootValue a ^ p
  /-- Root inventory has the source degree, with no dropped roots. -/
  root_count : Fintype.card α = source.polynomial.natDegree
  /-- Explicitly proved factor/Frobenius correspondence; it is not a group identification. -/
  correspondence : factorDegrees f = fullCycleType frobenius

/-- Complete factor data with the separate correspondence witness proves only cycle type. -/
theorem factor_degrees_identify_cycles {source : Observation.PolynomialSource} {p : ℕ}
    [Fact p.Prime] (f : GoodPrimeFactorization source p) {E : Type*} [Field E]
    [Algebra (ZMod p) E] {α : Type*} [Fintype α] [DecidableEq α]
    (w : FactorCycleWitness f E α) :
    factorDegrees f = fullCycleType w.frobenius := w.correspondence

/-- Even exact observed identity cycles cannot distinguish the trivial subgroup
from the full two-point permutation group. Group inference needs more evidence. -/
theorem cycle_observation_does_not_determine_group :
    ∃ H K : Subgroup (Perm (Fin 2)), H ≠ K ∧
      (1 : Perm (Fin 2)) ∈ H ∧ (1 : Perm (Fin 2)) ∈ K := by
  refine ⟨⊥, ⊤, bot_ne_top, Subgroup.one_mem _, Subgroup.one_mem _⟩

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.GaloisObservation
```
