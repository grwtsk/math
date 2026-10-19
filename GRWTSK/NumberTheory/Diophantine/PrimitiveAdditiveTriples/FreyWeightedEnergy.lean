/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the existing Frey weighted basis and exact coefficient energy formulas.
Formalization assistance: OpenAI.

Real coefficient metrics on the SAME W_k and SAME L_k. Sharp bounds retain
(ab)^k. A source-dependent diagonal form is not an intrinsic Hodge metric,
an integral lattice, or a uniform arithmetic-height theorem. No global norm
instance is installed. Unelaborated source proof scripts only.
-/
import GRWTSK.LinearAlgebra.WeightedPermutationEnergy
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBasis
import Mathlib.Data.Fin.Rev

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy

open FreyTorsionOpen FreyWeightedSections FreyWeightedBasis
open GRWTSK.LinearAlgebra.WeightedPermutationEnergy
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

/-- Reverse each existing basis block without swapping its source identity. -/
def reverse (k : ℕ) : Equiv.Perm (Index k) :=
  Equiv.sumCongr Fin.revPerm Fin.revPerm

/-- The exponent of ab in the absolute source-column multiplier. -/
def exponent (k : ℕ) : Index k → ℕ
  | Sum.inl i => i.val
  | Sum.inr j => j.val + 1

/-- Signed multipliers of the actual old weighted lift, not an alternative map. -/
def weight (h : ℝ) (k : ℕ) : Index k → ℝ
  | Sum.inl i => (-h) ^ i.val
  | Sum.inr j => h * (-h) ^ j.val

theorem exponent_le (k : ℕ) (i : Index k) : exponent k i ≤ k := by
  cases i with
  | inl i => exact Nat.le_of_lt_succ i.isLt
  | inr j => dsimp [exponent]; have := j.isLt; omega

/-- Complementary exponents are exact even though the two blocks have different lengths. -/
theorem exponent_reverse (k : ℕ) (i : Index k) :
    exponent k (reverse k i) + exponent k i = k := by
  cases i with
  | inl i =>
    change i.rev.val + i.val = k
    rw [Fin.val_rev]
    have := i.isLt
    omega
  | inr j =>
    change (j.rev.val + 1) + (j.val + 1) = k
    rw [Fin.val_rev]
    have := j.isLt
    omega

/-- Squaring does not lose the Y-block's additional ab multiplier. -/
theorem weight_square (h : ℝ) (k : ℕ) (i : Index k) :
    weight h k i ^ 2 = (h ^ 2) ^ exponent k i := by
  cases i with
  | inl i =>
    change ((-h) ^ i.val) ^ 2 = (h ^ 2) ^ i.val
    rw [← pow_mul, Nat.mul_comm i.val 2, pow_mul]
    simp
  | inr j =>
    change (h * (-h) ^ j.val) ^ 2 = (h ^ 2) ^ (j.val + 1)
    rw [mul_pow, ← pow_mul, Nat.mul_comm j.val 2, pow_mul, neg_sq, pow_succ]
    ring

/-- Coordinates refer to the established field basis of the previous function span. -/
def coordinates (a b : ℝ) (k : ℕ) (f : stage a b k) : Index k → ℝ :=
  fun i => (basis a b k).repr f i

/-- Synthesis lands in the original W_k, not an abstract replacement carrier. -/
def synthesize (a b : ℝ) (k : ℕ) (v : Index k → ℝ) : stage a b k :=
  ∑ i, v i • basis a b k i

@[simp] theorem coordinates_synthesize (a b : ℝ) (k : ℕ) (v : Index k → ℝ) :
    coordinates a b k (synthesize a b k v) = v := by
  classical
  funext i
  simp [coordinates, synthesize, map_sum, Finsupp.single_apply]

@[simp] theorem synthesize_coordinates (a b : ℝ) (k : ℕ) (f : stage a b k) :
    synthesize a b k (coordinates a b k f) = f :=
  (basis a b k).sum_repr f

/-- The signed permutation law is proved for the actual old stage map on each basis vector. -/
theorem stage_on_basis (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (i : Index k) :
    stageEquiv a b l hl k (basis a b k i) =
      weight (a * b) k i • basis a b k (reverse k i) := by
  apply Subtype.ext
  cases i with
  | inl i =>
    change FreyWeightedSections.lift a b l hl k
      ((basis a b k (Sum.inl i) : stage a b k) : OpenCurve a b) = _
    rw [lift_basis_X, basis_coe]
    change (-(a * b)) ^ i.val • x a b ^ (k - i.val) =
      (-(a * b)) ^ i.val • x a b ^ i.rev.val
    have hv : i.rev.val = k - i.val := by rw [Fin.val_rev]; omega
    rw [hv]
  | inr j =>
    change FreyWeightedSections.lift a b l hl k
      ((basis a b k (Sum.inr j) : stage a b k) : OpenCurve a b) = _
    rw [lift_basis_Y, basis_coe]
    change (a * b * (-(a * b)) ^ j.val) • (y a b * x a b ^ (k - (j.val + 2))) =
      (a * b * (-(a * b)) ^ j.val) • (y a b * x a b ^ j.rev.val)
    have hv : j.rev.val = k - (j.val + 2) := by rw [Fin.val_rev]; omega
    rw [hv]

/-- Whole-vector agreement comes from the basis, not sampled functions. -/
theorem stage_synthesize (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ)
    (v : Index k → ℝ) :
    stageEquiv a b l hl k (synthesize a b k v) =
      synthesize a b k (transport (reverse k) (weight (a * b) k) v) := by
  classical
  unfold synthesize
  simp only [map_sum, map_smul, stage_on_basis]
  rw [← (reverse k).sum_comp (fun j =>
    transport (reverse k) (weight (a * b) k) v j • basis a b k j)]
  apply Finset.sum_congr rfl
  intro i _
  rw [transport_at, smul_smul]
  congr 1
  ring

/-- The quantitative formulas concern exactly the coefficients of L_k(f). -/
theorem coordinates_stage (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ)
    (f : stage a b k) :
    coordinates a b k (stageEquiv a b l hl k f) =
      transport (reverse k) (weight (a * b) k) (coordinates a b k f) := by
  have h := congrArg (coordinates a b k)
    (stage_synthesize a b l hl k (coordinates a b k f))
  simpa only [synthesize_coordinates, coordinates_synthesize] using h

/-- Standard squared coefficient norm with the basis and model named. -/
def coefficientEnergy (a b : ℝ) (k : ℕ) (f : stage a b k) : ℝ :=
  energy (coordinates a b k f)

/-- The coefficient form is positive definite on the actual stage, not only on a model vector. -/
theorem coefficientEnergy_zero_iff (a b : ℝ) (k : ℕ) (f : stage a b k) :
    coefficientEnergy a b k f = 0 ↔ f = 0 := by
  rw [coefficientEnergy, energy_eq_zero_iff]
  constructor
  · intro h
    have hs := congrArg (synthesize a b k) h
    simpa [synthesize_coordinates, synthesize] using hs
  · rintro rfl
    funext i
    simp [coordinates]

theorem coefficientEnergy_formula (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ)
    (f : stage a b k) :
    coefficientEnergy a b k (stageEquiv a b l hl k f) =
      ∑ i, ((a * b) ^ 2) ^ exponent k i * (coordinates a b k f i) ^ 2 := by
  rw [coefficientEnergy, coordinates_stage, energy_transport]
  simp only [weight_square]

private theorem powers_between (h : ℝ) (hh : 1 ≤ h) (n k : ℕ) (hnk : n ≤ k) :
    1 ≤ h ^ n ∧ h ^ n ≤ h ^ k := by
  have hp : ∀ m : ℕ, 1 ≤ h ^ m := by
    intro m
    induction m with
    | zero => simp
    | succ m hm =>
      rw [pow_succ]
      nlinarith [mul_nonneg (sub_nonneg.mpr hm) (sub_nonneg.mpr hh)]
  refine ⟨hp n, ?_⟩
  have h1 := hp (k - n)
  have h2 := hp n
  calc
    h ^ n ≤ h ^ n * h ^ (k - n) :=
      le_mul_of_one_le_right (by linarith) h1
    _ = h ^ k := by rw [← pow_add, Nat.add_sub_of_le hnk]

/-- Sharp standard-metric bounds. The upper factor depends on the source and grade. -/
theorem coefficientEnergy_bounds (a b l : ℝ) (hl : a * b * l = 1)
    (hab : 1 ≤ a * b) (k : ℕ) (f : stage a b k) :
    coefficientEnergy a b k f ≤ coefficientEnergy a b k (stageEquiv a b l hl k f) ∧
      coefficientEnergy a b k (stageEquiv a b l hl k f) ≤
        ((a * b) ^ 2) ^ k * coefficientEnergy a b k f := by
  have hh : 1 ≤ (a * b) ^ 2 := by nlinarith [sq_nonneg (a * b - 1)]
  have h := energyWith_bounds (fun i => ((a * b) ^ 2) ^ exponent k i)
    (coordinates a b k f) 1 (((a * b) ^ 2) ^ k)
    (fun i => (powers_between _ hh _ _ (exponent_le k i)).1)
    (fun i => (powers_between _ hh _ _ (exponent_le k i)).2)
  rw [coefficientEnergy_formula a b l hl k f]
  simpa only [one_mul, energyWith, coefficientEnergy] using h

/-- The constant-function basis vector attains the lower energy factor. -/
theorem lower_sharp (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) :
    ∃ f : stage a b k, coefficientEnergy a b k f = 1 ∧
      coefficientEnergy a b k (stageEquiv a b l hl k f) = 1 := by
  classical
  let i : Index k := Sum.inl ⟨0, Nat.zero_lt_succ k⟩
  refine ⟨synthesize a b k (unitVector i), ?_, ?_⟩
  · simp [coefficientEnergy]
  · rw [coefficientEnergy, coordinates_stage, coordinates_synthesize,
      energy_transport_unitVector]
    simp [i, weight]

/-- The X^k basis vector attains the upper factor at every grade, including zero. -/
theorem upper_sharp (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) :
    ∃ f : stage a b k, coefficientEnergy a b k f = 1 ∧
      coefficientEnergy a b k (stageEquiv a b l hl k f) = ((a * b) ^ 2) ^ k := by
  classical
  let i : Index k := Sum.inl ⟨k, Nat.lt_succ_self k⟩
  refine ⟨synthesize a b k (unitVector i), ?_, ?_⟩
  · simp [coefficientEnergy]
  · rw [coefficientEnergy, coordinates_stage, coordinates_synthesize,
      energy_transport_unitVector, weight_square]
    rfl

/-- A deliberately source-dependent positive diagonal coefficient form when ab>=1. -/
def balancedEnergy (a b : ℝ) (k : ℕ) (f : stage a b k) : ℝ :=
  energyWith (fun i => (a * b) ^ exponent k i) (coordinates a b k f)

/-- Exact conformal law, not a declaration of an intrinsic Hodge or adelic metric. -/
theorem balancedEnergy_transport (a b l : ℝ) (hl : a * b * l = 1)
    (k : ℕ) (f : stage a b k) :
    balancedEnergy a b k (stageEquiv a b l hl k f) = (a * b) ^ k * balancedEnergy a b k f := by
  unfold balancedEnergy
  rw [coordinates_stage]
  apply energyWith_conformal
  intro i
  rw [weight_square]
  calc
    (a * b) ^ exponent k (reverse k i) * ((a * b) ^ 2) ^ exponent k i =
        (a * b) ^ (exponent k (reverse k i) + exponent k i) *
          (a * b) ^ exponent k i := by
      have hp : ((a * b) ^ 2) ^ exponent k i =
          (a * b) ^ exponent k i * (a * b) ^ exponent k i := by
        rw [← pow_mul, Nat.mul_comm 2 (exponent k i), pow_mul, pow_two]
      rw [hp, pow_add]
      ring
    _ = _ := by rw [exponent_reverse]

/-- Changing to the balanced form has its own explicit grade-dependent distortion. -/
theorem balancedEnergy_bounds (a b : ℝ) (hab : 1 ≤ a * b)
    (k : ℕ) (f : stage a b k) :
    coefficientEnergy a b k f ≤ balancedEnergy a b k f ∧
      balancedEnergy a b k f ≤ (a * b) ^ k * coefficientEnergy a b k f := by
  have h := energyWith_bounds (fun i => (a * b) ^ exponent k i)
    (coordinates a b k f) 1 ((a * b) ^ k)
    (fun i => (powers_between _ hab _ _ (exponent_le k i)).1)
    (fun i => (powers_between _ hab _ _ (exponent_le k i)).2)
  simpa only [one_mul, coefficientEnergy, balancedEnergy] using h

/-- A normalization factor is kept as an explicit input, not silently absorbed into a metric. -/
theorem balancedEnergy_scaled_transport (a b l : ℝ) (hl : a * b * l = 1)
    (k : ℕ) (q : ℝ) (f : stage a b k) :
    balancedEnergy a b k (q • stageEquiv a b l hl k f) =
      (q ^ 2 * (a * b) ^ k) * balancedEnergy a b k f := by
  have hc : coordinates a b k (q • stageEquiv a b l hl k f) =
      fun i => q * coordinates a b k (stageEquiv a b l hl k f) i := by
    funext i
    simp [coordinates]
  change energyWith _ (coordinates a b k (q • stageEquiv a b l hl k f)) = _
  rw [hc, energyWith_scale]
  change q ^ 2 * balancedEnergy a b k (stageEquiv a b l hl k f) = _
  rw [balancedEnergy_transport]
  ring

/-- Isometry of this selected form is conditional on the exact normalization equation. -/
theorem balancedEnergy_normalized (a b l : ℝ) (hl : a * b * l = 1)
    (k : ℕ) (q : ℝ) (hq : q ^ 2 * (a * b) ^ k = 1) (f : stage a b k) :
    balancedEnergy a b k (q • stageEquiv a b l hl k f) = balancedEnergy a b k f := by
  rw [balancedEnergy_scaled_transport, hq, one_mul]

/-- Even the first nonconstant grade is not a standard-coefficient isometry when ab>1. -/
theorem grade_one_expands (a b l : ℝ) (hl : a * b * l = 1) (hab : 1 < a * b) :
    ∃ f : stage a b 1, coefficientEnergy a b 1 f = 1 ∧
      1 < coefficientEnergy a b 1 (stageEquiv a b l hl 1 f) := by
  obtain ⟨f, hf, hLf⟩ := upper_sharp a b l hl 1
  refine ⟨f, hf, ?_⟩
  rw [hLf, pow_one]
  nlinarith [sq_nonneg (a * b - 1)]

/-- Positive native integers supply the bound without a fitted source restriction. -/
theorem native_product_bound (t : PrimitiveAdditiveTriple) : 1 ≤ (t.a : ℝ) * (t.b : ℝ) := by
  have ha : (1 : ℝ) ≤ (t.a : ℝ) := by exact_mod_cast (Nat.succ_le_of_lt t.a_pos)
  have hb : (1 : ℝ) ≤ (t.b : ℝ) := by exact_mod_cast (Nat.succ_le_of_lt t.b_pos)
  nlinarith [mul_nonneg (sub_nonneg.mpr ha) (sub_nonneg.mpr hb)]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy
