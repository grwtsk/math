/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyFullRestrictionResidual

/-! # Two genuine coordinates reconstructed at every sufficiently large scale

Rows isolating anchors 3 and 5 are chosen in the literal Green window.
The resulting reconstruction covers both genuine cells. This is still a
restricted two-coordinate family, not the full RH application family.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.RiemannHypothesis

def twoAnchor (j : Bool) : ℕ := if j then 5 else 3
def twoFamily (j : Bool) : CanonicalFourFamily := if j then (true, false) else (true, true)
def twoCenter (j : Bool) : ℕ := if j then 2 else 1

def twoCofactor (X : ℕ) (j : Bool) : ℕ :=
  if j then (if (X / 5 + 1) % 3 = 0 then X / 5 + 2 else X / 5 + 1)
  else (if (X / 3 + 1) % 5 = 0 then X / 3 + 2 else X / 3 + 1)

def twoRow (X : ℕ) (j : Bool) : ℕ := twoAnchor j * twoCofactor X j

theorem twoCofactor_ge_two {X : ℕ} (hX : 10 ≤ X) (j : Bool) : 2 ≤ twoCofactor X j := by
  cases j <;> simp only [twoCofactor, Bool.false_eq_true, if_false, if_true] <;>
    split_ifs <;> omega

theorem twoRow_mem {X : ℕ} (hX : 10 ≤ X) (j : Bool) : twoRow X j ∈ centeredGreenWindow X := by
  cases j <;> simp only [twoRow, twoAnchor, twoCofactor, Bool.false_eq_true, if_false, if_true,
    centeredGreenWindow, Finset.mem_Ioc] <;> split_ifs <;> omega

theorem twoRow_other_not_dvd (X : ℕ) (j : Bool) : ¬ twoAnchor (!j) ∣ twoRow X j := by
  cases j
  · have hk : ¬5 ∣ twoCofactor X false := by
      rw [Nat.dvd_iff_mod_eq_zero]
      simp only [twoCofactor, Bool.false_eq_true, if_false]
      split_ifs <;> omega
    change ¬5 ∣ 3 * twoCofactor X false
    intro h
    rcases (Nat.prime_five.dvd_mul).mp h with h | h
    · norm_num at h
    · exact hk h
  · have hk : ¬3 ∣ twoCofactor X true := by
      rw [Nat.dvd_iff_mod_eq_zero]
      simp only [twoCofactor, if_true]
      split_ifs <;> omega
    change ¬3 ∣ 5 * twoCofactor X true
    intro h
    rcases (Nat.prime_three.dvd_mul).mp h with h | h
    · norm_num at h
    · exact hk h

theorem twoCell_unique (j : Bool) {a : ℕ}
    (hf : twoFamily j = canonicalFourFamilyOfAnchor a)
    (hc : twoCenter j = (anchoredMobiusPair a).center) : a = twoAnchor j := by
  cases j
  · exact canonicalVisibleColumn_anchor_unique hf hc
  · by_cases he : a % 2 = 0
    · have hr := congrArg Prod.fst hf
      simp [twoFamily, canonicalFourFamilyOfAnchor, anchoredMobiusPair, he] at hr
    · simp only [twoCenter, if_true, anchoredMobiusPair, if_neg he,
        CenteredAdditiveMobiusPair.center] at hc
      change a = 5
      omega

theorem twoCell_entry_multiple {X : ℕ} (hX : 10 ≤ X) (j : Bool) (k : ℕ) (hk : 0 < k) :
    canonicalFourFamilyGreenMatrixEntry X (twoAnchor j * k) (twoFamily j) (twoCenter j) =
      Real.log (k : ℝ) := by
  classical
  have ha : 0 < twoAnchor j := by cases j <;> decide
  have hmem : (twoAnchor j, k) ∈ (twoAnchor j * k).divisorsAntidiagonal :=
    Nat.mem_divisorsAntidiagonal.mpr ⟨rfl, by positivity⟩
  unfold canonicalFourFamilyGreenMatrixEntry
  rw [Finset.sum_eq_single (twoAnchor j, k)]
  · have hsource : twoAnchor j ∈ anchoredDyadicSourceIndices X := by
      cases j
      · change 3 ∈ Finset.Icc 1 (2 * X)
        exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
      · change 5 ∈ Finset.Icc 1 (2 * X)
        exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
    cases j <;> norm_num [twoAnchor, twoFamily, twoCenter, anchoredMobiusPair,
      canonicalFourFamilyOfAnchor, CenteredAdditiveMobiusPair.center, anchoredPairSign,
      ArithmeticFunction.log_apply] at hsource ⊢
    all_goals simp_all
  · intro p hp hne
    split_ifs with hu
    · have hpa := twoCell_unique j hu.2.2.1 hu.2.2.2
      have hprod := (Nat.mem_divisorsAntidiagonal.mp hp).1
      rw [hpa] at hprod
      have hpk : p.2 = k := Nat.eq_of_mul_eq_mul_left ha hprod
      exact False.elim (hne (Prod.ext hpa hpk))
    · rfl
  · intro hn
    exact False.elim (hn hmem)

theorem twoCell_entry_zero_of_not_dvd (X n : ℕ) (j : Bool) (hn : ¬twoAnchor j ∣ n) :
    canonicalFourFamilyGreenMatrixEntry X n (twoFamily j) (twoCenter j) = 0 := by
  classical
  unfold canonicalFourFamilyGreenMatrixEntry
  apply Finset.sum_eq_zero
  intro p hp
  split_ifs with hu
  · have hpa := twoCell_unique j hu.2.2.1 hu.2.2.2
    have hprod := (Nat.mem_divisorsAntidiagonal.mp hp).1
    exact False.elim (hn ⟨p.2, by rw [← hpa]; exact hprod.symm⟩)
  · rfl

def twoPacket (v : Bool → ℝ) : CanonicalFourFamilyRealPacket :=
  fun F c => ∑ j : Bool, if F = twoFamily j ∧ c = twoCenter j then v j else 0

theorem twoPacket_energy {X : ℕ} (hX : 10 ≤ X) (v : Bool → ℝ) :
    canonicalFourFamilyAmbientSourceEnergy X (twoPacket v) = (v false) ^ 2 + (v true) ^ 2 := by
  classical
  simp [canonicalFourFamilyAmbientSourceEnergy, twoPacket, Fintype.sum_prod_type,
    twoFamily, twoCenter, Finset.sum_ite_eq',
    show 0 < X by omega, show 2 < 1 + 2 * X by omega, add_comm]

theorem twoPacket_apply {X : ℕ} (hX : 10 ≤ X) (n : ℕ) (v : Bool → ℝ) :
    canonicalFourFamilyGreenMatrixApply X n (twoPacket v) =
      ∑ j : Bool, canonicalFourFamilyGreenMatrixEntry X n (twoFamily j) (twoCenter j) * v j := by
  classical
  unfold canonicalFourFamilyGreenMatrixApply twoPacket
  simp only [Finset.mul_sum]
  conv_lhs =>
    arg 2
    ext F
    rw [Finset.sum_comm]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro j _
  have hc : twoCenter j ∈ Finset.range (2 * X + 1) := by cases j <;> simp [twoCenter] <;> omega
  simp [mul_ite, ite_and, Finset.sum_ite_eq', hc]


theorem twoPacket_row {X : ℕ} (hX : 10 ≤ X) (v : Bool → ℝ) (j : Bool) :
    canonicalFourFamilyGreenMatrixApply X (twoRow X j) (twoPacket v) =
      Real.log (twoCofactor X j : ℝ) * v j := by
  classical
  rw [twoPacket_apply hX]
  rw [Finset.sum_eq_single j]
  · exact congrArg (fun t : ℝ => t * v j)
      (twoCell_entry_multiple hX j (twoCofactor X j) (by have := twoCofactor_ge_two hX j; omega))
  · intro k _ hkj
    have hk : k = !j := by cases k <;> cases j <;> simp_all
    subst k
    rw [twoCell_entry_zero_of_not_dvd X (twoRow X j) (!j) (twoRow_other_not_dvd X j)]
    simp
  · simp

theorem two_log_pos {X : ℕ} (hX : 10 ≤ X) (j : Bool) :
    0 < Real.log (twoCofactor X j : ℝ) := by
  apply Real.log_pos
  exact_mod_cast (show 1 < twoCofactor X j from by have := twoCofactor_ge_two hX j; omega)

def twoReconstruction (X : ℕ) (hX : 10 ≤ X)
    (y : {n : ℕ // n ∈ centeredGreenWindow X} → ℝ) : CanonicalFourFamilyRealPacket :=
  twoPacket (fun j => y ⟨twoRow X j, twoRow_mem hX j⟩ / Real.log (twoCofactor X j : ℝ))

theorem twoReconstruction_exact {X : ℕ} (hX : 10 ≤ X) (v : Bool → ℝ) :
    twoReconstruction X hX (canonicalFourFamilyWindowReadout X (twoPacket v)) = twoPacket v := by
  unfold twoReconstruction canonicalFourFamilyWindowReadout
  simp_rw [twoPacket_row hX]
  congr 1
  funext j
  exact mul_div_cancel_left₀ (v j) (ne_of_gt (two_log_pos hX j))

theorem twoReconstruction_uniform_bound {X : ℕ} (hX : 10 ≤ X)
    (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyAmbientSourceEnergy X
      (twoReconstruction X hX (canonicalFourFamilyWindowReadout X v)) ≤
        (2 / (Real.log 2) ^ 2) * canonicalFourFamilyWindowOutputEnergy X v := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hsq : 0 < (Real.log 2) ^ 2 := sq_pos_of_pos hlog
  have hb (j : Bool) :
      (canonicalFourFamilyGreenMatrixApply X (twoRow X j) v /
        Real.log (twoCofactor X j : ℝ)) ^ 2 ≤
        canonicalFourFamilyWindowOutputEnergy X v / (Real.log 2) ^ 2 := by
    have hk : (2 : ℝ) ≤ twoCofactor X j := by exact_mod_cast twoCofactor_ge_two hX j
    have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 2) hk
    have hle : (Real.log 2) ^ 2 ≤ Real.log (twoCofactor X j : ℝ) ^ 2 := by nlinarith
    have he := Finset.single_le_sum
      (f := fun n => (canonicalFourFamilyGreenMatrixApply X n v) ^ 2)
      (fun _ _ => sq_nonneg _) (twoRow_mem hX j)
    rw [div_pow]
    exact (div_le_div_of_nonneg_left (sq_nonneg _) hsq hle).trans
      (div_le_div_of_nonneg_right he hsq.le)
  rw [twoReconstruction, twoPacket_energy hX]
  change (_ / _) ^ 2 + (_ / _) ^ 2 ≤ _
  calc
    _ ≤ canonicalFourFamilyWindowOutputEnergy X v / (Real.log 2) ^ 2 +
        canonicalFourFamilyWindowOutputEnergy X v / (Real.log 2) ^ 2 :=
      add_le_add (hb false) (hb true)
    _ = _ := by ring

def CanonicalTwoCoordinateArithmeticDifferences (X : ℕ) : Set CanonicalFourFamilyRealPacket :=
  {v | v ∈ CanonicalFourFamilyRestrictionDifferenceSet X ∧ ∃ w : Bool → ℝ, v = twoPacket w}

theorem twoArithmetic_residual_zero {X : ℕ} (hX : 10 ≤ X)
    {v : CanonicalFourFamilyRealPacket} (hv : v ∈ CanonicalTwoCoordinateArithmeticDifferences X) :
    canonicalFourFamilyReconstructionResidual X (twoReconstruction X hX) v = 0 := by
  obtain ⟨_, w, rfl⟩ := hv
  unfold canonicalFourFamilyReconstructionResidual
  rw [twoReconstruction_exact hX, sub_self]

theorem twoArithmetic_uniform_frame {X : ℕ} (hX : 10 ≤ X) :
    HasCanonicalFourFamilyRestrictedLowerFrame X
      (CanonicalTwoCoordinateArithmeticDifferences X) ((Real.log 2) ^ 2 / 2) := by
  have hd : 0 < (Real.log 2) ^ 2 := sq_pos_of_pos (Real.log_pos (by norm_num))
  refine ⟨div_pos hd (by norm_num), ?_⟩
  intro v hv
  obtain ⟨_, w, rfl⟩ := hv
  have he := twoReconstruction_uniform_bound hX (twoPacket w)
  rw [twoReconstruction_exact hX, div_mul_eq_mul_div] at he
  have hh := (le_div_iff₀ hd).mp he
  nlinarith

theorem twoArithmetic_contains_anchorFive {X : ℕ} (hX : 10 ≤ X) :
    canonicalAnchorFivePacket ∈ CanonicalTwoCoordinateArithmeticDifferences X := by
  refine ⟨canonicalAnchorFive_mem_full_differences (by omega),
    (fun j => if j then -1 else 0), ?_⟩
  funext F c
  simp [twoPacket, canonicalAnchorFivePacket, twoFamily, twoCenter]

theorem twoArithmetic_contains_anchorThree {X : ℕ} (hX : 10 ≤ X) :
    canonicalVisibleCellPacketThree (-1) ∈ CanonicalTwoCoordinateArithmeticDifferences X := by
  refine ⟨?_, (fun j => if j then 0 else -1), ?_⟩
  · refine ⟨canonicalVisibleRestriction X (by omega), canonicalFourFamilyEmptyRestriction X, ?_⟩
    rw [canonicalFourFamilyRestrictionPacket_empty, sub_zero, canonicalVisible_actual_packet]
  · funext F c
    simp [twoPacket, canonicalVisibleCellPacketThree, twoFamily, twoCenter]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
