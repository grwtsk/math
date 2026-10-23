/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCanonicalResidue
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

inductive GreenFrequencyClass
  | lowPrincipal
  | exactAlias
  | highNonalias
  deriving DecidableEq

def greenFrequencyClass (X : ℕ) (k : ℤ) : GreenFrequencyClass :=
  let q := greenCanonicalQuotient X k
  let r := greenCanonicalResidue X k
  if r = 0 then .exactAlias
  else if q = 0 then .lowPrincipal
  else .highNonalias

theorem greenFrequencyClass_alias_iff
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenFrequencyClass X k = .exactAlias ↔
      greenCanonicalResidue X k = 0 := by
  unfold greenFrequencyClass
  by_cases hr : greenCanonicalResidue X k = 0 <;> simp [hr]

theorem greenFrequencyClass_low_iff
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenFrequencyClass X k = .lowPrincipal ↔
      greenCanonicalResidue X k ≠ 0 ∧
      greenCanonicalQuotient X k = 0 := by
  unfold greenFrequencyClass
  by_cases hr : greenCanonicalResidue X k = 0 <;>
    by_cases hq : greenCanonicalQuotient X k = 0 <;> simp [hr, hq]

theorem greenFrequencyClass_high_iff
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenFrequencyClass X k = .highNonalias ↔
      greenCanonicalResidue X k ≠ 0 ∧
      greenCanonicalQuotient X k ≠ 0 := by
  unfold greenFrequencyClass
  by_cases hr : greenCanonicalResidue X k = 0 <;>
    by_cases hq : greenCanonicalQuotient X k = 0 <;> simp [hr, hq]

/-- Canonical alias class is exactly divisibility by X. -/
theorem canonicalResidue_zero_iff_alias
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenCanonicalResidue X k = 0 ↔ GreenMeshAliasing X k := by
  constructor
  · intro hr
    unfold GreenMeshAliasing
    refine ⟨greenCanonicalQuotient X k, ?_⟩
    have hd := greenCanonical_decomposition hX k
    rw [hr, add_zero] at hd
    simpa [mul_comm] using hd
  · intro hk
    obtain ⟨q, hq⟩ := hk
    apply greenCanonicalResidue_eq_of_condition hX k 0
    · unfold GreenCanonicalResidueCondition greenCenteredResidueLower
        greenCenteredResidueUpper
      constructor <;> omega
    · rw [hq]
      simp

/-- q=0 canonical frequencies are exactly their centered residues, hence lie
in the low principal interval. -/
theorem canonical_low_eq_residue
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hq : greenCanonicalQuotient X k = 0) :
    k = greenCanonicalResidue X k := by
  have hd := greenCanonical_decomposition hX k
  rw [hq] at hd
  simpa using hd

/-- A high canonical frequency with positive quotient has one of the two
existing positive-q parameterizations qX±rAbs. -/
theorem canonical_high_positive_quotient_parameterization
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hq : 0 < greenCanonicalQuotient X k)
    (hr : greenCanonicalResidue X k ≠ 0) :
    ∃ q r : ℕ, 1 ≤ q ∧ 1 ≤ r ∧ r ≤ X / 2 ∧
      (k = ((q * X + r : ℕ) : ℤ) ∨
       k = ((q * X - r : ℕ) : ℤ)) := by
  let qz := greenCanonicalQuotient X k
  let rz := greenCanonicalResidue X k
  have hrange := greenCanonicalResidue_range hX k
  have hd := greenCanonical_decomposition hX k
  let q : ℕ := qz.toNat
  let r : ℕ := Int.natAbs rz
  refine ⟨q, r, ?_, ?_, ?_, ?_⟩
  · exact_mod_cast hq
  · exact Int.natAbs_pos.mpr hr
  · unfold GreenCanonicalResidueCondition greenCenteredResidueLower
      greenCenteredResidueUpper at hrange
    dsimp [r, rz]
    omega
  · by_cases hrz : 0 < rz
    · left
      have hqcast : (q : ℤ) = qz := by
        exact Int.toNat_of_nonneg hq.le
      have hrcast : (r : ℤ) = rz := by
        simp [r, Int.natAbs_of_nonneg hrz.le]
      push_cast
      rw [hqcast, hrcast]
      exact hd
    · right
      have hrzneg : rz < 0 := lt_of_le_of_ne (le_of_not_gt hrz) (Ne.symm hr)
      have hqcast : (q : ℤ) = qz := Int.toNat_of_nonneg hq.le
      have hrcast : (r : ℤ) = -rz := by
        simp [r, Int.natAbs_of_nonpos hrzneg.le]
      have hnonneg : r ≤ q * X := by
        have hkpos : 0 < k := by
          rw [hd]
          dsimp [qz, rz] at *
          nlinarith
        push_cast
        rw [hqcast, hrcast]
        nlinarith
      push_cast
      rw [hqcast, hrcast]
      nlinarith [hd]

/-- Negative quotient frequencies are parameterized after negation. No norm
symmetry is asserted here. -/
theorem canonical_high_negative_quotient_parameterization
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hq : greenCanonicalQuotient X k < 0)
    (hr : greenCanonicalResidue X k ≠ 0) :
    ∃ q r : ℕ, 1 ≤ q ∧ 1 ≤ r ∧ r ≤ X / 2 ∧
      (-k = ((q * X + r : ℕ) : ℤ) ∨
       -k = ((q * X - r : ℕ) : ℤ)) := by
  let qz := greenCanonicalQuotient X k
  let rz := greenCanonicalResidue X k
  have hrange := greenCanonicalResidue_range hX k
  have hd := greenCanonical_decomposition hX k
  let q : ℕ := Int.natAbs qz
  let r : ℕ := Int.natAbs rz
  refine ⟨q, r, Int.natAbs_pos.mpr (by omega), Int.natAbs_pos.mpr hr, ?_, ?_⟩
  · unfold GreenCanonicalResidueCondition greenCenteredResidueLower
      greenCenteredResidueUpper at hrange
    dsimp [r, rz]
    omega
  · by_cases hrz : 0 < rz
    · right
      push_cast
      simp [q, r, Int.natAbs_of_nonpos hq.le,
        Int.natAbs_of_nonneg hrz.le]
      nlinarith [hd]
    · left
      have hrzneg : rz < 0 := lt_of_le_of_ne (le_of_not_gt hrz) (Ne.symm hr)
      push_cast
      simp [q, r, Int.natAbs_of_nonpos hq.le,
        Int.natAbs_of_nonpos hrzneg.le]
      nlinarith [hd]

end GRWTSK.RiemannHypothesis
