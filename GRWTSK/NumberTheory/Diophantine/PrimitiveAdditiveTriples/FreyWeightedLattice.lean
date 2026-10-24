/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the existing Frey weighted basis, lift, and source-block reversal.
Formalization assistance: OpenAI.

A selected Z-coefficient lattice INSIDE the previous rational W_k, with an
exact image criterion and sharp universal inverse-clearing ideal. This is
not the lattice of a complete geometric H0 space, a minimal-model lattice,
a Hodge metric, or the earlier saturated rectangular observation map.
Earlier sources and their hypotheses are unchanged. Unelaborated scripts.
-/
import GRWTSK.Algebra.LinearAlgebra.WeightedPermutationIntegral
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedLattice

open FreyTorsionOpen FreyWeightedSections FreyWeightedBasis
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

abbrev reverse := FreyWeightedEnergy.reverse

/-- Integer source weights, with exactly the established X/Y block convention. -/
def weight (h : ℤ) (k : ℕ) : Index k → ℤ
  | Sum.inl i => (-h) ^ i.val
  | Sum.inr j => h * (-h) ^ j.val

/-- Forward integer map exists without pretending ab is a unit in Z. -/
def integerMap (a b : ℤ) (k : ℕ) : (Index k → ℤ) →ₗ[ℤ] (Index k → ℤ) :=
  GRWTSK.Algebra.LinearAlgebra.WeightedPermutationIntegral.transport (reverse k) (weight (a * b) k)

@[simp] theorem integerMap_at (a b : ℤ) (k : ℕ) (v : Index k → ℤ) (i : Index k) :
    integerMap a b k v (reverse k i) = weight (a * b) k i * v i :=
  GRWTSK.Algebra.LinearAlgebra.WeightedPermutationIntegral.transport_at _ _ _ _

/-- The EXACT signed ideal divisibility, retaining all prime-power depths. -/
theorem integer_image_iff (a b : ℤ) (k : ℕ) (u : Index k → ℤ) :
    (∃ v, integerMap a b k v = u) ↔ ∀ i, weight (a * b) k i ∣ u (reverse k i) :=
  GRWTSK.Algebra.LinearAlgebra.WeightedPermutationIntegral.image_iff _ _ _

/-- Each signed column divides the full square multiplier. No radical replaces a power. -/
theorem weight_dvd_power (h : ℤ) (k : ℕ) (i : Index k) : weight h k i ∣ (-h) ^ k := by
  cases i with
  | inl i =>
    refine ⟨(-h) ^ (k - i.val), ?_⟩
    change (-h) ^ k = (-h) ^ i.val * (-h) ^ (k - i.val)
    rw [← pow_add, Nat.add_sub_of_le (Nat.le_of_lt_succ i.isLt)]
  | inr j =>
    have hj : j.val + 1 ≤ k := by have := j.isLt; omega
    refine ⟨-((-h) ^ (k - (j.val + 1))), ?_⟩
    change (-h) ^ k = (h * (-h) ^ j.val) * -((-h) ^ (k - (j.val + 1)))
    calc
      _ = (-h) ^ (j.val + 1) * (-h) ^ (k - (j.val + 1)) := by
        rw [← pow_add, Nat.add_sub_of_le hj]
      _ = _ := by rw [pow_succ]; ring

/-- The top X column supplies necessity; all other columns supply sufficiency. -/
theorem integer_clearing_iff (a b : ℤ) (k : ℕ) (d : ℤ) :
    (∀ u : Index k → ℤ, ∃ v, integerMap a b k v = d • u) ↔ (-(a * b)) ^ k ∣ d := by
  rw [integerMap, GRWTSK.Algebra.LinearAlgebra.WeightedPermutationIntegral.uniformClearing_iff]
  constructor
  · intro h
    exact h (Sum.inl ⟨k, Nat.lt_succ_self k⟩)
  · intro h i
    exact (weight_dvd_power (a * b) k i).trans h

/-- Synthesis uses the established rational basis of the SAME actual W_k. -/
def synthesize (a b : ℤ) (k : ℕ) (v : Index k → ℤ) : stage (a : ℚ) (b : ℚ) k :=
  ∑ i, (v i : ℚ) • basis (a : ℚ) (b : ℚ) k i

@[simp] theorem synthesize_coordinate (a b : ℤ) (k : ℕ) (v : Index k → ℤ) (i : Index k) :
    (basis (a : ℚ) (b : ℚ) k).repr (synthesize a b k v) i = (v i : ℚ) := by
  classical
  simp [synthesize, map_sum, Finsupp.single_apply]

/-- The integer coefficients are genuinely detected by the previous field basis. -/
theorem synthesize_injective (a b : ℤ) (k : ℕ) : Function.Injective (synthesize a b k) := by
  intro u v huv
  funext i
  have h := congrArg (fun f => (basis (a : ℚ) (b : ℚ) k).repr f i) huv
  rw [synthesize_coordinate, synthesize_coordinate] at h
  exact_mod_cast h

@[simp] theorem synthesize_zero (a b : ℤ) (k : ℕ) : synthesize a b k 0 = 0 := by
  simp [synthesize]

theorem synthesize_add (a b : ℤ) (k : ℕ) (u v : Index k → ℤ) :
    synthesize a b k (u + v) = synthesize a b k u + synthesize a b k v := by
  simp [synthesize, add_smul, Finset.sum_add_distrib]

/-- A Z-linear embedding, not a new coefficient-field or curve isomorphism. -/
def embedding (a b : ℤ) (k : ℕ) : (Index k → ℤ) →ₗ[ℤ] stage (a : ℚ) (b : ℚ) k :=
  let f : (Index k → ℤ) →+ stage (a : ℚ) (b : ℚ) k :=
    { toFun := synthesize a b k
      map_zero' := synthesize_zero a b k
      map_add' := synthesize_add a b k }
  { toFun := f
    map_add' := f.map_add
    map_smul' := fun n v => map_zsmul f v n }

/-- This selected coefficient lattice is an actual Z-submodule of rational functions. -/
def lattice (a b : ℤ) (k : ℕ) : Submodule ℤ (stage (a : ℚ) (b : ℚ) k) :=
  LinearMap.range (embedding a b k)

@[simp] theorem mem_lattice_iff (a b : ℤ) (k : ℕ) (f : stage (a : ℚ) (b : ℚ) k) :
    f ∈ lattice a b k ↔ ∃ v, synthesize a b k v = f := Iff.rfl

/-- The rational automorphism is exactly the previous stageEquiv, not an integral inverse. -/
def rationalLift (a b : ℤ) (l : ℚ) (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) :
    stage (a : ℚ) (b : ℚ) k ≃ₗ[ℚ] stage (a : ℚ) (b : ℚ) k :=
  stageEquiv (a : ℚ) (b : ℚ) l hl k

/-- Same-map binding on each old basis vector, retaining the signed Y multiplier. -/
theorem rationalLift_basis (a b : ℤ) (l : ℚ) (hl : (a : ℚ) * (b : ℚ) * l = 1)
    (k : ℕ) (i : Index k) :
    rationalLift a b l hl k (basis (a : ℚ) (b : ℚ) k i) =
      (weight (a * b) k i : ℚ) • basis (a : ℚ) (b : ℚ) k (reverse k i) := by
  apply Subtype.ext
  cases i with
  | inl i =>
    change FreyWeightedSections.lift (a : ℚ) (b : ℚ) l hl k
      ((basis (a : ℚ) (b : ℚ) k (Sum.inl i) : stage (a : ℚ) (b : ℚ) k) : OpenCurve _ _) = _
    rw [lift_basis_X, basis_coe]
    change (-((a : ℚ) * (b : ℚ))) ^ i.val • x (a : ℚ) (b : ℚ) ^ (k - i.val) =
      (((-(a * b)) ^ i.val : ℤ) : ℚ) • x (a : ℚ) (b : ℚ) ^ i.rev.val
    have hv : i.rev.val = k - i.val := by rw [Fin.val_rev]; omega
    rw [hv]
    simp only [Int.cast_pow, Int.cast_neg, Int.cast_mul]
  | inr j =>
    change FreyWeightedSections.lift (a : ℚ) (b : ℚ) l hl k
      ((basis (a : ℚ) (b : ℚ) k (Sum.inr j) : stage (a : ℚ) (b : ℚ) k) : OpenCurve _ _) = _
    rw [lift_basis_Y, basis_coe]
    have hv : j.rev.val = k - (j.val + 2) := by rw [Fin.val_rev]; omega
    change ((a : ℚ) * (b : ℚ) * (-((a : ℚ) * (b : ℚ))) ^ j.val) •
        (y (a : ℚ) (b : ℚ) * x (a : ℚ) (b : ℚ) ^ (k - (j.val + 2))) =
      ((a * b * (-(a * b)) ^ j.val : ℤ) : ℚ) •
        (y (a : ℚ) (b : ℚ) * x (a : ℚ) (b : ℚ) ^ j.rev.val)
    rw [hv]
    simp only [Int.cast_mul, Int.cast_pow, Int.cast_neg]

/-- Whole-vector agreement makes the integer map the restriction of the old function lift. -/
theorem rationalLift_synthesize (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (v : Index k → ℤ) :
    rationalLift a b l hl k (synthesize a b k v) = synthesize a b k (integerMap a b k v) := by
  classical
  unfold synthesize
  simp only [map_sum, map_smul, rationalLift_basis]
  rw [← (reverse k).sum_comp (fun j =>
    (integerMap a b k v j : ℚ) • basis (a : ℚ) (b : ℚ) k j)]
  apply Finset.sum_congr rfl
  intro i _
  rw [integerMap_at, Int.cast_mul, smul_smul]
  congr 1
  ring

/-- Forward stability does not claim backward stability. -/
theorem rationalLift_mem_lattice (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ)
    (f : stage (a : ℚ) (b : ℚ) k) (hf : f ∈ lattice a b k) :
    rationalLift a b l hl k f ∈ lattice a b k := by
  obtain ⟨v, rfl⟩ := hf
  exact ⟨integerMap a b k v, (rationalLift_synthesize a b l hl k v).symm⟩

/-- Exact image in the realized lattice, expressed in source-column order. -/
theorem lattice_image_iff (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (u : Index k → ℤ) :
    (∃ f, f ∈ lattice a b k ∧ rationalLift a b l hl k f = synthesize a b k u) ↔
      ∀ i, weight (a * b) k i ∣ u (reverse k i) := by
  rw [← integer_image_iff]
  constructor
  · rintro ⟨f, ⟨v, rfl⟩, h⟩
    refine ⟨v, synthesize_injective a b k ?_⟩
    exact (rationalLift_synthesize a b l hl k v).symm.trans h
  · rintro ⟨v, hv⟩
    refine ⟨synthesize a b k v, ⟨v, rfl⟩, ?_⟩
    rw [rationalLift_synthesize, hv]

/-- Integral inverse criterion for the same rational automorphism. -/
theorem inverse_mem_lattice_iff (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (u : Index k → ℤ) :
    (rationalLift a b l hl k).symm (synthesize a b k u) ∈ lattice a b k ↔
      ∀ i, weight (a * b) k i ∣ u (reverse k i) := by
  rw [← lattice_image_iff a b l hl k u]
  constructor
  · intro h
    exact ⟨_, h, (rationalLift a b l hl k).apply_symm_apply _⟩
  · rintro ⟨f, hf, h⟩
    have heq : (rationalLift a b l hl k).symm (synthesize a b k u) = f := by
      rw [← h, LinearEquiv.symm_apply_apply]
    rw [heq]
    exact hf

/-- The sharp universal inverse-clearing ideal is generated by (-ab)^k, including k=0. -/
theorem inverse_clearing_iff (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (d : ℤ) :
    (∀ u : Index k → ℤ,
      (rationalLift a b l hl k).symm (synthesize a b k (d • u)) ∈ lattice a b k) ↔
      (-(a * b)) ^ k ∣ d := by
  simp_rw [inverse_mem_lattice_iff, ← integer_image_iff]
  exact integer_clearing_iff a b k d

/-- Clearing all coefficients is a lattice statement, not just a fixed input-vector test. -/
theorem scalar_lattice_clearing_iff (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (d : ℤ) :
    (∀ f : stage (a : ℚ) (b : ℚ) k, f ∈ lattice a b k →
      (rationalLift a b l hl k).symm (d • f) ∈ lattice a b k) ↔
      (-(a * b)) ^ k ∣ d := by
  rw [← inverse_clearing_iff a b l hl k d]
  constructor
  · intro h u
    have hu := h (synthesize a b k u) ⟨u, rfl⟩
    have hs : synthesize a b k (d • u) = d • synthesize a b k u :=
      (embedding a b k).map_smul d u
    simpa only [hs] using hu
  · intro h f hf
    obtain ⟨u, rfl⟩ := hf
    have hs : synthesize a b k (d • u) = d • synthesize a b k u :=
      (embedding a b k).map_smul d u
    simpa only [hs] using h u

/-- Native source fixture: rational invertibility is not integral inverse closure. -/
theorem native_two_three_not_unimodular :
    ¬ (∀ u : Index 1 → ℤ, ∃ v, integerMap 2 3 1 v = u) := by
  intro h
  have hd := (integer_clearing_iff 2 3 1 1).mp (by simpa only [one_smul] using h)
  norm_num at hd

/-- The sign is retained; the corresponding positive generator is |ab|^k. -/
theorem no_depth_erasure_fixture : ¬ ((-(2 * 3) : ℤ) ^ 2 ∣ 6) := by norm_num

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedLattice
