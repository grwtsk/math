/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilySharpResidualFrame

/-! # Explicit reconstruction of the visible anchor-3 cell at every large scale

The row 3*(X/3+1) lies in the literal Green window for X>=3. Its anchor-3
column has coefficient log(X/3+1), giving a concrete left inverse on the
one-cell span, a uniform reconstruction bound, and zero residual there.
The arithmetic family retains that genuine cell or retains nothing.
This small family is not asserted to contain the RH application packet.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.RiemannHypothesis

def canonicalVisibleCofactor (X : ℕ) : ℕ := X / 3 + 1

def canonicalVisibleRow (X : ℕ) : ℕ := 3 * canonicalVisibleCofactor X

theorem canonicalVisibleCofactor_ge_two {X : ℕ} (hX : 3 ≤ X) :
    2 ≤ canonicalVisibleCofactor X := by
  unfold canonicalVisibleCofactor
  omega

theorem canonicalVisibleRow_mem {X : ℕ} (hX : 3 ≤ X) :
    canonicalVisibleRow X ∈ centeredGreenWindow X := by
  simp only [centeredGreenWindow, Finset.mem_Ioc, canonicalVisibleRow,
    canonicalVisibleCofactor]
  omega

theorem canonicalVisibleColumn_anchor_unique {a : ℕ}
    (hf : (true, true) = canonicalFourFamilyOfAnchor a)
    (hc : 1 = (anchoredMobiusPair a).center) : a = 3 := by
  by_cases he : a % 2 = 0
  · have hr := congrArg Prod.fst hf
    simp [canonicalFourFamilyOfAnchor, anchoredMobiusPair, he] at hr
  · simp only [anchoredMobiusPair, if_neg he,
      CenteredAdditiveMobiusPair.center] at hc
    omega

theorem canonicalVisibleRow_entry {X : ℕ} (hX : 3 ≤ X) :
    canonicalFourFamilyGreenMatrixEntry X (canonicalVisibleRow X) (true, true) 1 =
      Real.log (canonicalVisibleCofactor X : ℝ) := by
  classical
  let k := canonicalVisibleCofactor X
  have hk : 2 ≤ k := canonicalVisibleCofactor_ge_two hX
  have hmem : (3, k) ∈ (canonicalVisibleRow X).divisorsAntidiagonal := by
    apply Nat.mem_divisorsAntidiagonal.mpr
    constructor
    · rfl
    · change 3 * k ≠ 0
      omega
  unfold canonicalFourFamilyGreenMatrixEntry
  rw [Finset.sum_eq_single (3, k)]
  · have h3 : 3 ∈ anchoredDyadicSourceIndices X := by
      change 3 ∈ Finset.Icc 1 (2 * X)
      simp only [Finset.mem_Icc]
      omega
    simp [h3, anchoredMobiusPair, canonicalFourFamilyOfAnchor,
      CenteredAdditiveMobiusPair.center, anchoredPairSign, ArithmeticFunction.log_apply, k]
  · intro p hp hne
    split_ifs with hu
    · have ha : p.1 = 3 := canonicalVisibleColumn_anchor_unique hu.2.2.1 hu.2.2.2
      have hprod := (Nat.mem_divisorsAntidiagonal.mp hp).1
      have hb : p.2 = k := by
        change p.1 * p.2 = 3 * k at hprod
        rw [ha] at hprod
        omega
      exact False.elim (hne (Prod.ext ha hb))
    · rfl
  · intro hn
    exact False.elim (hn hmem)

theorem canonicalVisibleRow_apply {X : ℕ} (hX : 3 ≤ X) (a : ℝ) :
    canonicalFourFamilyGreenMatrixApply X (canonicalVisibleRow X)
      (canonicalVisibleCellPacketThree a) = Real.log (canonicalVisibleCofactor X : ℝ) * a := by
  classical
  have hc : 1 ∈ Finset.range (2 * X + 1) := by simp; omega
  simpa [canonicalFourFamilyGreenMatrixApply, canonicalVisibleCellPacketThree,
    ite_and, mul_ite, Finset.sum_ite_eq', hc] using
      congrArg (fun t : ℝ => t * a) (canonicalVisibleRow_entry hX)

theorem canonicalVisibleCell_energy (X : ℕ) (hX : 1 ≤ X) (a : ℝ) :
    canonicalFourFamilyAmbientSourceEnergy X (canonicalVisibleCellPacketThree a) = a ^ 2 := by
  classical
  have hc : 1 ∈ Finset.range (2 * X + 1) := by simp; omega
  simp [canonicalFourFamilyAmbientSourceEnergy, canonicalVisibleCellPacketThree,
    ite_and, Finset.sum_ite_eq', hc]

def canonicalVisibleReconstruction (X : ℕ) (hX : 3 ≤ X)
    (y : {n : ℕ // n ∈ centeredGreenWindow X} → ℝ) : CanonicalFourFamilyRealPacket :=
  canonicalVisibleCellPacketThree
    (y ⟨canonicalVisibleRow X, canonicalVisibleRow_mem hX⟩ /
      Real.log (canonicalVisibleCofactor X : ℝ))

theorem canonicalVisible_log_pos {X : ℕ} (hX : 3 ≤ X) :
    0 < Real.log (canonicalVisibleCofactor X : ℝ) := by
  apply Real.log_pos
  exact_mod_cast (show 1 < canonicalVisibleCofactor X from by
    have := canonicalVisibleCofactor_ge_two hX; omega)

theorem canonicalVisibleReconstruction_exact {X : ℕ} (hX : 3 ≤ X) (a : ℝ) :
    canonicalVisibleReconstruction X hX
      (canonicalFourFamilyWindowReadout X (canonicalVisibleCellPacketThree a)) =
        canonicalVisibleCellPacketThree a := by
  unfold canonicalVisibleReconstruction canonicalFourFamilyWindowReadout
  rw [canonicalVisibleRow_apply hX]
  congr 1
  exact mul_div_cancel_left₀ a (ne_of_gt (canonicalVisible_log_pos hX))

/-- A concrete norm estimate for this constructed R on every actual readout.
The scale-dependent coefficient is bounded uniformly below by log 2. -/
theorem canonicalVisibleReconstruction_bound {X : ℕ} (hX : 3 ≤ X)
    (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyAmbientSourceEnergy X
      (canonicalVisibleReconstruction X hX (canonicalFourFamilyWindowReadout X v)) ≤
        (1 / Real.log (canonicalVisibleCofactor X : ℝ) ^ 2) *
          canonicalFourFamilyWindowOutputEnergy X v := by
  have he := Finset.single_le_sum
    (f := fun n => (canonicalFourFamilyGreenMatrixApply X n v) ^ 2)
    (fun _ _ => sq_nonneg _) (canonicalVisibleRow_mem hX)
  rw [canonicalVisibleReconstruction, canonicalVisibleCell_energy X (by omega)]
  change (_ / _) ^ 2 ≤ _
  rw [div_pow, one_div_mul_eq_div]
  exact div_le_div_of_nonneg_right he (sq_nonneg _)

theorem canonicalVisibleReconstruction_uniform_constant {X : ℕ} (hX : 3 ≤ X) :
    1 / Real.log (canonicalVisibleCofactor X : ℝ) ^ 2 ≤ 1 / (Real.log 2) ^ 2 := by
  have hk : (2 : ℝ) ≤ canonicalVisibleCofactor X := by
    exact_mod_cast canonicalVisibleCofactor_ge_two hX
  have hl : Real.log 2 ≤ Real.log (canonicalVisibleCofactor X : ℝ) :=
    Real.log_le_log (by norm_num) hk
  have hp : 0 < Real.log 2 := Real.log_pos (by norm_num)
  apply one_div_le_one_div_of_le (sq_pos_of_pos hp)
  nlinarith

theorem canonicalVisibleReconstruction_uniform_bound {X : ℕ} (hX : 3 ≤ X)
    (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyAmbientSourceEnergy X
      (canonicalVisibleReconstruction X hX (canonicalFourFamilyWindowReadout X v)) ≤
        (1 / (Real.log 2) ^ 2) * canonicalFourFamilyWindowOutputEnergy X v := by
  have hn : 0 ≤ canonicalFourFamilyWindowOutputEnergy X v :=
    Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  exact (canonicalVisibleReconstruction_bound hX v).trans
    (mul_le_mul_of_nonneg_right (canonicalVisibleReconstruction_uniform_constant hX) hn)

/-- Exact residual on the one-cell span, without a contraction premise. -/
theorem canonicalVisibleReconstruction_residual_zero {X : ℕ} (hX : 3 ≤ X) (a : ℝ) :
    canonicalFourFamilyReconstructionResidual X (canonicalVisibleReconstruction X hX)
      (canonicalVisibleCellPacketThree a) = 0 := by
  unfold canonicalFourFamilyReconstructionResidual
  rw [canonicalVisibleReconstruction_exact hX, sub_self]


/-- Retain the genuine anchor-3 cell, leaving all other cells omitted. -/
def canonicalVisibleRestriction (X : ℕ) (hX : 3 ≤ X) :
    CanonicalFourFamilyRestrictionConfig X :=
  ⟨{((true, true), 1)}, by
    intro p hp
    have he := Finset.mem_singleton.mp hp
    subst p
    simp [canonicalFourFamilyCells]
    omega⟩

theorem canonicalVisible_actual_amplitude {X : ℕ} (hX : 3 ≤ X) :
    canonicalFourFamilyCenteredData X (true, true) 1 = -1 := by
  have hset : zeroWindingCenteredShiftSet (2 * X) 1 1
      (canonicalFourFamilyShiftSet (2 * X) (true, true)) = {1} := by
    ext h
    simp only [zeroWindingCenteredShiftSet, canonicalFourFamilyShiftSet,
      if_true, positiveEndpointOddShiftSet, positiveEndpointShiftSet,
      Finset.mem_filter, Finset.mem_Ico, Finset.mem_singleton]
    omega
  change parityCenteredIntegerCoordinateAmplitude (2 * X) 1
    (canonicalFourFamilyShiftSet (2 * X) (true, true)) 1 = -1
  rw [authentic_integer_center_amplitude_eq_centered_sum]
  unfold parityZeroWindingCenteredMobiusCorrelation
  rw [hset]
  norm_num [moebiusReal, ArithmeticFunction.moebius_apply_prime
    (by norm_num : Nat.Prime 3)]

theorem canonicalVisible_actual_packet {X : ℕ} (hX : 3 ≤ X) :
    canonicalFourFamilyRestrictionPacket X (canonicalVisibleRestriction X hX) =
      canonicalVisibleCellPacketThree (-1) := by
  funext F c
  simp only [canonicalFourFamilyRestrictionPacket, canonicalVisibleRestriction,
    canonicalVisibleCellPacketThree, Finset.mem_singleton, Prod.mk.injEq]
  split_ifs with h
  · obtain ⟨rfl, rfl⟩ := h
    exact canonicalVisible_actual_amplitude hX
  · rfl

def CanonicalVisibleArithmeticDifferences (X : ℕ) (hX : 3 ≤ X) :
    Set CanonicalFourFamilyRealPacket :=
  {v | ∃ b d : Bool, v =
    canonicalFourFamilyRestrictionPacket X
      (if b then canonicalVisibleRestriction X hX else canonicalFourFamilyEmptyRestriction X) -
    canonicalFourFamilyRestrictionPacket X
      (if d then canonicalVisibleRestriction X hX else canonicalFourFamilyEmptyRestriction X)}

theorem canonicalVisibleArithmetic_subset {X : ℕ} (hX : 3 ≤ X) :
    CanonicalVisibleArithmeticDifferences X hX ⊆ CanonicalFourFamilyRestrictionDifferenceSet X := by
  intro v hv
  obtain ⟨b, d, he⟩ := hv
  exact ⟨if b then canonicalVisibleRestriction X hX else canonicalFourFamilyEmptyRestriction X,
    if d then canonicalVisibleRestriction X hX else canonicalFourFamilyEmptyRestriction X, he⟩

theorem canonicalVisibleArithmetic_shape {X : ℕ} (hX : 3 ≤ X)
    {v : CanonicalFourFamilyRealPacket} (hv : v ∈ CanonicalVisibleArithmeticDifferences X hX) :
    ∃ a : ℝ, v = canonicalVisibleCellPacketThree a := by
  obtain ⟨b, d, rfl⟩ := hv
  have hp (b : Bool) : canonicalFourFamilyRestrictionPacket X
      (if b then canonicalVisibleRestriction X hX else canonicalFourFamilyEmptyRestriction X) =
      canonicalVisibleCellPacketThree (if b then -1 else 0) := by
    cases b
    · change canonicalFourFamilyRestrictionPacket X (canonicalFourFamilyEmptyRestriction X) =
        canonicalVisibleCellPacketThree 0
      rw [canonicalFourFamilyRestrictionPacket_empty]
      funext F c
      simp [canonicalVisibleCellPacketThree]
    · exact canonicalVisible_actual_packet hX
  rw [hp b, hp d]
  refine ⟨(if b then -1 else 0) - (if d then -1 else 0), ?_⟩
  funext F c
  simp only [Pi.sub_apply, canonicalVisibleCellPacketThree]
  split_ifs <;> ring

/-- The actual arithmetic family has zero reconstruction residual at every X>=3. -/
theorem canonicalVisibleArithmetic_residual_zero {X : ℕ} (hX : 3 ≤ X)
    {v : CanonicalFourFamilyRealPacket} (hv : v ∈ CanonicalVisibleArithmeticDifferences X hX) :
    canonicalFourFamilyReconstructionResidual X (canonicalVisibleReconstruction X hX) v = 0 := by
  obtain ⟨a, rfl⟩ := canonicalVisibleArithmetic_shape hX hv
  exact canonicalVisibleReconstruction_residual_zero hX a

theorem canonicalVisibleArithmetic_uniform_frame {X : ℕ} (hX : 3 ≤ X) :
    HasCanonicalFourFamilyRestrictedLowerFrame X
      (CanonicalVisibleArithmeticDifferences X hX) ((Real.log 2) ^ 2) := by
  have hp : 0 < Real.log 2 := Real.log_pos (by norm_num)
  refine ⟨sq_pos_of_pos hp, ?_⟩
  intro v hv
  obtain ⟨a, rfl⟩ := canonicalVisibleArithmetic_shape hX hv
  rw [canonicalVisibleCell_energy X (by omega)]
  have hk : (2 : ℝ) ≤ canonicalVisibleCofactor X := by
    exact_mod_cast canonicalVisibleCofactor_ge_two hX
  have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 2) hk
  have hs : (Real.log 2) ^ 2 ≤ Real.log (canonicalVisibleCofactor X : ℝ) ^ 2 := by nlinarith
  have he := Finset.single_le_sum
    (f := fun n => (canonicalFourFamilyGreenMatrixApply X n
      (canonicalVisibleCellPacketThree a)) ^ 2)
    (fun _ _ => sq_nonneg _) (canonicalVisibleRow_mem hX)
  rw [canonicalVisibleRow_apply hX] at he
  calc
    _ ≤ Real.log (canonicalVisibleCofactor X : ℝ) ^ 2 * a ^ 2 :=
      mul_le_mul_of_nonneg_right hs (sq_nonneg a)
    _ ≤ _ := by simpa only [mul_pow, canonicalFourFamilyWindowOutputEnergy] using he

theorem canonicalVisibleArithmetic_nontrivial {X : ℕ} (hX : 3 ≤ X) :
    ∃ v ∈ CanonicalVisibleArithmeticDifferences X hX,
      canonicalFourFamilyAmbientSourceEnergy X v = 1 := by
  refine ⟨canonicalFourFamilyRestrictionPacket X (canonicalVisibleRestriction X hX), ?_, ?_⟩
  · refine ⟨true, false, ?_⟩
    change canonicalFourFamilyRestrictionPacket X (canonicalVisibleRestriction X hX) =
      canonicalFourFamilyRestrictionPacket X (canonicalVisibleRestriction X hX) -
        canonicalFourFamilyRestrictionPacket X (canonicalFourFamilyEmptyRestriction X)
    rw [canonicalFourFamilyRestrictionPacket_empty, sub_zero]
  · rw [canonicalVisible_actual_packet hX, canonicalVisibleCell_energy X (by omega)]
    norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
