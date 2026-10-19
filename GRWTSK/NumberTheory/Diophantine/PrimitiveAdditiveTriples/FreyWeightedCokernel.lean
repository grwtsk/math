/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses the existing rational Frey lattice and Mathlib quotient modules.
Formalization assistance: OpenAI.

Cokernel of the SAME weighted function map on its realized coefficient
lattice. Source-ordered cyclic factors retain every prime-power depth.
The index |ab|^(k*k) differs from the sharp scalar annihilator |ab|^k.
This is not intrinsic integral H0, a model lattice, or a height theorem.
All declarations below are unelaborated source proof scripts.
-/
import GRWTSK.LinearAlgebra.WeightedPermutationCokernel
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedLattice
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Fin

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedCokernel

open FreyWeightedBasis FreyWeightedLattice
open scoped BigOperators
open GRWTSK.LinearAlgebra.WeightedPermutationCokernel
attribute [local instance] FreyWeightedSections.coefficientAlgebra

/-- The source exponent is unchanged from the coefficient-energy construction. -/
abbrev exponent := FreyWeightedEnergy.exponent

/-- Signs do not erase multiplicity: the modulus in each cyclic slot is a full power. -/
theorem weight_natAbs (h : ℤ) (k : ℕ) (i : Index k) :
    (weight h k i).natAbs = h.natAbs ^ exponent k i := by
  cases i with
  | inl i => simp [weight, FreyWeightedEnergy.exponent]
  | inr j => simp [weight, FreyWeightedEnergy.exponent, pow_succ, mul_comm]

theorem weight_ne_zero (h : ℤ) (hh : h ≠ 0) (k : ℕ) (i : Index k) :
    weight h k i ≠ 0 := by
  cases i with
  | inl i => exact pow_ne_zero _ (neg_ne_zero.mpr hh)
  | inr j => exact mul_ne_zero hh (pow_ne_zero _ (neg_ne_zero.mpr hh))

/-- Sum both blocks before computing the index, including the empty Y block. -/
private theorem two_block_sum (n : ℕ) :
    (∑ i : Fin (n + 2), i.val) + (∑ j : Fin n, j.val + 1) = (n + 1) * (n + 1) := by
  induction n with
  | zero => simp [Fin.sum_univ_succ]
  | succ n ih =>
    have hx : (∑ i : Fin (n + 3), i.val) = (∑ i : Fin (n + 2), i.val) + (n + 2) := by
      rw [Fin.sum_univ_castSucc]
      rfl
    have hy : (∑ j : Fin (n + 1), j.val + 1) = (∑ j : Fin n, j.val + 1) + (n + 1) := by
      rw [Fin.sum_univ_castSucc]
      rfl
    change (∑ i : Fin (n + 3), i.val) + (∑ j : Fin (n + 1), j.val + 1) = _
    rw [hx, hy]
    nlinarith

/-- The exponent sum is k squared; this is not a rank count. -/
theorem exponent_sum (k : ℕ) : (∑ i : Index k, exponent k i) = k * k := by
  rw [Fintype.sum_sum_type]
  cases k with
  | zero => simp [FreyWeightedEnergy.exponent]
  | succ n =>
    simpa [FreyWeightedEnergy.exponent, Nat.succ_eq_add_one] using two_block_sum n

/-- Exact product of all cyclic moduli at every grade. -/
theorem weight_product (h : ℤ) (k : ℕ) :
    (∏ i : Index k, (weight h k i).natAbs) = h.natAbs ^ (k * k) := by
  simp_rw [weight_natAbs]
  rw [Finset.prod_pow_eq_pow_sum, exponent_sum]

/-- This integer coefficient cokernel uses the previously implemented integerMap. -/
abbrev CoefficientCokernel (a b : ℤ) (k : ℕ) :=
  (Index k → ℤ) ⧸ LinearMap.range (integerMap a b k)

def coefficientCokernelEquiv (a b : ℤ) (k : ℕ) :
    CoefficientCokernel a b k ≃ₗ[ℤ] Residues (weight (a * b) k) :=
  cokernelEquiv (reverse k) (weight (a * b) k)

/-- Finiteness is not asserted at zero ab without checking the zero-weight slots. -/
theorem coefficient_cokernel_card (a b : ℤ) (hab : a * b ≠ 0) (k : ℕ) :
    Nat.card (CoefficientCokernel a b k) = (a * b).natAbs ^ (k * k) := by
  rw [Nat.card_congr (coefficientCokernelEquiv a b k).toEquiv,
    residues_natCard _ (weight_ne_zero _ hab k), weight_product]

/-- A coordinate equivalence onto the ACTUAL old range lattice, not a new lattice. -/
def latticeCoordinates (a b : ℤ) (k : ℕ) : (Index k → ℤ) ≃ₗ[ℤ] lattice a b k :=
  LinearEquiv.ofInjective (embedding a b k) (synthesize_injective a b k)

@[simp] theorem latticeCoordinates_val (a b : ℤ) (k : ℕ) (u : Index k → ℤ) :
    (latticeCoordinates a b k u).val = synthesize a b k u := rfl

/-- Independently restrict the OLD rational function lift using its forward stability. -/
def latticeMap (a b : ℤ) (l : ℚ) (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) :
    lattice a b k →ₗ[ℤ] lattice a b k where
  toFun f := ⟨rationalLift a b l hl k f,
    rationalLift_mem_lattice a b l hl k f f.property⟩
  map_add' f g := Subtype.ext ((rationalLift a b l hl k).map_add f g)
  map_smul' d f := Subtype.ext (map_zsmul (rationalLift a b l hl k).toAddEquiv f d)

/-- Whole-vector conjugacy follows from the pre-existing function-level synthesis theorem. -/
theorem latticeMap_coordinates (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (u : Index k → ℤ) :
    latticeMap a b l hl k (latticeCoordinates a b k u) =
      latticeCoordinates a b k (integerMap a b k u) := by
  apply Subtype.ext
  exact rationalLift_synthesize a b l hl k u

/-- Quotient of the realized lattice by the image of the actual function restriction. -/
abbrev LatticeCokernel (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) :=
  (lattice a b k) ⧸ LinearMap.range (latticeMap a b l hl k)

/-- Residues are extracted from the actual lattice coordinates in the same source order. -/
def latticeResidue (a b : ℤ) (k : ℕ) :
    lattice a b k →ₗ[ℤ] Residues (weight (a * b) k) :=
  (residue (reverse k) (weight (a * b) k)).comp (latticeCoordinates a b k).symm.toLinearMap

theorem latticeResidue_surjective (a b : ℤ) (k : ℕ) :
    Function.Surjective (latticeResidue a b k) :=
  (residue_surjective _ _).comp (latticeCoordinates a b k).symm.surjective

/-- Exactness is transferred by same-map conjugacy, not by equal ranks. -/
theorem latticeResidue_kernel (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) :
    LinearMap.ker (latticeResidue a b k) = LinearMap.range (latticeMap a b l hl k) := by
  ext f
  obtain ⟨u, rfl⟩ := (latticeCoordinates a b k).surjective f
  change residue (reverse k) (weight (a * b) k)
      ((latticeCoordinates a b k).symm (latticeCoordinates a b k u)) = 0 ↔
    ∃ g, latticeMap a b l hl k g = latticeCoordinates a b k u
  rw [LinearEquiv.symm_apply_apply, residue_zero_iff, ← integer_image_iff]
  constructor
  · rintro ⟨v, hv⟩
    exact ⟨latticeCoordinates a b k v, by rw [latticeMap_coordinates, hv]⟩
  · rintro ⟨g, hg⟩
    obtain ⟨v, rfl⟩ := (latticeCoordinates a b k).surjective g
    refine ⟨v, (latticeCoordinates a b k).injective ?_⟩
    rw [← latticeMap_coordinates]
    exact hg

/-- The full module structure of the realized cokernel, with both inverse maps. -/
def latticeCokernelEquiv (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) :
    LatticeCokernel a b l hl k ≃ₗ[ℤ] Residues (weight (a * b) k) :=
  (Submodule.quotEquivOfEq _ _ (latticeResidue_kernel a b l hl k).symm).trans
    ((latticeResidue a b k).quotKerEquivOfSurjective (latticeResidue_surjective a b k))

@[simp] theorem latticeCokernelEquiv_mk (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (u : Index k → ℤ) :
    latticeCokernelEquiv a b l hl k (Submodule.Quotient.mk (latticeCoordinates a b k u)) =
      residue (reverse k) (weight (a * b) k) u := by
  change residue (reverse k) (weight (a * b) k)
    ((latticeCoordinates a b k).symm (latticeCoordinates a b k u)) = _
  rw [LinearEquiv.symm_apply_apply]

/-- The rational inverse witness rules out zero ab but is not a unit witness over Z. -/
theorem product_ne_zero (a b : ℤ) (l : ℚ) (hl : (a : ℚ) * (b : ℚ) * l = 1) :
    a * b ≠ 0 := by
  intro h
  have hq : (a : ℚ) * (b : ℚ) = 0 := by exact_mod_cast h
  rw [hq, zero_mul] at hl
  exact zero_ne_one hl

/-- The index of the SAME weighted map on the SAME realized lattice. -/
theorem lattice_cokernel_card (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) :
    Nat.card (LatticeCokernel a b l hl k) = (a * b).natAbs ^ (k * k) := by
  rw [Nat.card_congr (latticeCokernelEquiv a b l hl k).toEquiv,
    residues_natCard _ (weight_ne_zero _ (product_ne_zero a b l hl) k), weight_product]

/-- Exact annihilator of the realized cokernel, distinct from its cardinality. -/
theorem lattice_cokernel_annihilator (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (d : ℤ) :
    (∀ z : LatticeCokernel a b l hl k, d • z = 0) ↔ (-(a * b)) ^ k ∣ d := by
  let E : LatticeCokernel a b l hl k ≃ₗ[ℤ] CoefficientCokernel a b k :=
    (latticeCokernelEquiv a b l hl k).trans (coefficientCokernelEquiv a b k).symm
  have he : (∀ z : LatticeCokernel a b l hl k, d • z = 0) ↔
      (∀ z : CoefficientCokernel a b k, d • z = 0) := by
    constructor
    · intro h z
      obtain ⟨u, rfl⟩ := E.surjective z
      simpa only [map_smul, map_zero] using congrArg E (h u)
    · intro h z
      apply E.injective
      simpa only [map_smul, map_zero] using h (E z)
  rw [he, annihilator_iff, ← GRWTSK.LinearAlgebra.WeightedPermutationIntegral.uniformClearing_iff]
  exact integer_clearing_iff a b k d

/-- A grade-two native example separates cokernel order 1296 from clearing factor 36. -/
theorem two_three_grade_two_index : Nat.card (CoefficientCokernel 2 3 2) = 1296 := by
  rw [coefficient_cokernel_card 2 3 (by norm_num) 2]
  norm_num

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedCokernel
