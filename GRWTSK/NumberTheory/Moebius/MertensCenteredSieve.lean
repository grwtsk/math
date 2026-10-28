/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Farey.CenteredResidueReturn
import GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent

/-!
# An adaptive centered residue chart for the actual signed pickup

At outer time T the complete closed inventory fits into q=floor(exp T)+1.
This modulus is not required to be prime. Its center can change arbitrarily
with T because the retained gcd-stratum return reconstructs each source label.
No totient-density factor occurs, no prime power/sign/multiplicity is removed,
and all selected-pair credits are exactly the old credits after return.

This is a zero-loss change of finite arithmetic representation, NOT a new
cancellation rate. The same signed budgets and good-scale return are consumed.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.MertensCenteredSieve

open GRWTSK.NumberTheory.Farey.CenteredResidueReturn
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- A deterministic sufficient modulus; no prime-existence theorem is required. -/
def cutoffModulus (T : ℝ) : ℕ := ⌊Real.exp T⌋₊ + 1

instance cutoffModulus_neZero (T : ℝ) : NeZero (cutoffModulus T) := by
  constructor
  unfold cutoffModulus
  omega

theorem source_label_lt_modulus {T : ℝ} {n : ℕ}
    (hn : n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊) : n < cutoffModulus T := by
  have h := (Finset.mem_Icc.mp hn).2
  unfold cutoffModulus
  omega

/-- The actual source inventory induces a growing finite carrier. -/
theorem cutoffModulus_monotone : Monotone cutoffModulus := by
  intro T S hTS
  exact Nat.add_le_add_right (Nat.floor_mono (Real.exp_le_exp.mpr hTS)) 1

/-- Decode before evaluating the original signed arithmetic atom. -/
def returnedAtom (T : ℝ) (c : ZMod (cutoffModulus T)) (z : ℕ × ℕ) : ℝ :=
  signedAtom T (recoveredNat (cutoffModulus T) c z.1)
    (recoveredNat (cutoffModulus T) c z.2)

theorem returnedAtom_eq {T : ℝ} (c : ZMod (cutoffModulus T))
    {z : ℕ × ℕ} (hz : z ∈ sourcePairs T) :
    returnedAtom T c z = signedAtom T z.1 z.2 := by
  obtain ⟨hm, hn⟩ := Finset.mem_product.mp hz
  unfold returnedAtom
  rw [recoveredNat_eq (cutoffModulus T) c (source_label_lt_modulus hm),
    recoveredNat_eq (cutoffModulus T) c (source_label_lt_modulus hn)]

/-- The complete signed cross sum, not a unit-only or averaged substitute. -/
def returnedCross (T : ℝ) (c : ZMod (cutoffModulus T)) : ℝ :=
  ∑ z ∈ sourcePairs T, returnedAtom T c z

theorem returnedCross_eq (T : ℝ) (c : ZMod (cutoffModulus T)) :
    returnedCross T c = pickupCross T := by
  rw [← sum_signedAtom_eq_cross T]
  unfold returnedCross
  exact Finset.sum_congr rfl (fun z hz => returnedAtom_eq c hz)

/-- Source-pair multiplicities and the original prime-pair selection are retained. -/
def returnedCredit (T : ℝ) (c : ZMod (cutoffModulus T)) (P : Finset ℕ) : ℝ :=
  ∑ z ∈ matchedPairs T P, |returnedAtom T c z|

theorem returnedCredit_eq (T : ℝ) (c : ZMod (cutoffModulus T)) (P : Finset ℕ) :
    returnedCredit T c P = primePairCredit T P := by
  unfold returnedCredit primePairCredit
  apply Finset.sum_congr rfl
  intro z hz
  rw [returnedAtom_eq c (matchedPairs_subset T P hz)]

/-- Optional unsigned certificate with the original negative credit, exactly returned. -/
def returnedUpper (T : ℝ) (c : ZMod (cutoffModulus T)) (P : Finset ℕ) : ℝ :=
  (∑ z ∈ sourcePairs T, |returnedAtom T c z|) - 2 * returnedCredit T c P

theorem returnedUpper_eq (T : ℝ) (c : ZMod (cutoffModulus T)) (P : Finset ℕ) :
    returnedUpper T c P = signedUpper T P := by
  unfold returnedUpper signedUpper absoluteCross
  rw [returnedCredit_eq]
  have hs : (∑ z ∈ sourcePairs T, |returnedAtom T c z|) =
      ∑ z ∈ sourcePairs T, |signedAtom T z.1 z.2| :=
    Finset.sum_congr rfl (fun z hz => congrArg abs (returnedAtom_eq c hz))
  rw [hs]

/-- Changing the center does not itself create a descent or alter arithmetic mass. -/
theorem center_change_exact (T : ℝ) (c d : ZMod (cutoffModulus T)) (P : Finset ℕ) :
    returnedCross T c = returnedCross T d ∧
      returnedUpper T c P = returnedUpper T d P := by
  simp only [returnedCross_eq, returnedUpper_eq, and_self]

/-- Real bound improvement comes from NEW arithmetic credit, not moving the center. -/
theorem returnedUpper_step (T : ℝ) (c d : ZMod (cutoffModulus T))
    {P Q : Finset ℕ} (hPQ : P ⊆ Q) :
    returnedUpper T d Q = returnedUpper T c P -
      2 * ∑ z ∈ matchedPairs T Q \ matchedPairs T P, |signedAtom T z.1 z.2| := by
  rw [returnedUpper_eq, returnedUpper_eq]
  exact signedUpper_step T hPQ

/-- Direct application to the pre-existing canonical RH consumer. -/
theorem centered_good_scales_implies_RH
    (center : (T : ℝ) → ZMod (cutoffModulus T)) (P : ℝ → Finset ℕ)
    {G : Set ℝ} (hcover : AffineFrequent G)
    (hP : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ P T, p.Prime)
    (hb : SubexponentialOn (fun T => returnedUpper T (center T) (P T)) G) :
    _root_.RiemannHypothesis := by
  apply signedUpper_good_scales_implies_RH P hcover hP
  simpa only [returnedUpper_eq] using hb

/-- Different centering/sieve methods can cover complementary outer-time regions. -/
theorem centered_finite_cover_implies_RH {ι : Type*} (methods : Finset ι)
    (center : (i : ι) → (T : ℝ) → ZMod (cutoffModulus T))
    (P : ι → ℝ → Finset ℕ) (regions : ι → Set ℝ)
    (hcover : AffineFrequent {T | ∃ i ∈ methods, T ∈ regions i})
    (hP : ∀ i ∈ methods, ∀ T ∈ regions i, 0 ≤ T → ∀ p ∈ P i T, p.Prime)
    (hb : ∀ i ∈ methods,
      SubexponentialOn (fun T => returnedUpper T (center i T) (P i T)) (regions i)) :
    _root_.RiemannHypothesis := by
  apply signedUpper_finite_cover_implies_RH methods P regions hcover hP
  intro i hi
  simpa only [returnedUpper_eq] using hb i hi

end GRWTSK.NumberTheory.Moebius.MertensCenteredSieve
