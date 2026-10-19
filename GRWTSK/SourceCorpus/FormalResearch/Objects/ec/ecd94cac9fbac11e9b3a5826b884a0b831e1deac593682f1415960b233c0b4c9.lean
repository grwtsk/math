import Mathlib.Dynamics.PeriodicPts.Lemmas
import Mathlib.Data.ZMod.QuotientGroup
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Finsupp.Defs

/-!
# DAF cycle data for arbitrary finite permutations

This module is the finite-type core of the existing Boolean dynamical theory.
It applies to any finite carrier, without assuming that its cardinality is a
power of two or choosing an encoding by `Bits n`.

Fixed points of iterates decompose into complete exact-period orbits.  Their
primitive cycle counts satisfy the divisor-sum formula and integral Möbius
inversion, while `cycleEulerFactorData` stores the resulting finite Euler
exponents.  Conjugacy preserves all of this cycle data.  It does not imply
SAC, derivative-bit independence, differential uniformity, or any other
avalanche property.
-/

namespace FinitePermutationDynamics

open scoped BigOperators

universe u

variable {α : Type u} [Fintype α] [DecidableEq α]

/-! ## Explicit conjugation -/

/-- Conjugation in function order: `x ↦ g (H (g⁻¹ x))`. -/
def conjugate (g H : Equiv.Perm α) : Equiv.Perm α :=
  (g.symm.trans H).trans g

@[simp]
theorem conjugate_apply (g H : Equiv.Perm α) (x : α) :
    conjugate g H x = g (H (g.symm x)) :=
  rfl

theorem conjugate_pow (g H : Equiv.Perm α) (r : Nat) :
    (conjugate g H) ^ r = conjugate g (H ^ r) := by
  induction r with
  | zero =>
      ext x
      simp [conjugate]
  | succ r ih =>
      ext x
      simp only [pow_succ, Equiv.Perm.mul_apply, ih, conjugate_apply]
      simp

/-! ## Transport between equivalent finite carriers -/

/-- Transport a permutation through an equivalence of possibly different types. -/
def transport {β : Type*} (e : α ≃ β) (H : Equiv.Perm α) :
    Equiv.Perm β :=
  (e.symm.trans H).trans e

@[simp]
theorem transport_apply {β : Type*}
    (e : α ≃ β) (H : Equiv.Perm α) (x : β) :
    transport e H x = e (H (e.symm x)) :=
  rfl

theorem transport_pow {β : Type*}
    (e : α ≃ β) (H : Equiv.Perm α) (r : Nat) :
    (transport e H) ^ r = transport e (H ^ r) := by
  induction r with
  | zero =>
      ext x
      simp [transport]
  | succ r ih =>
      ext x
      simp only [pow_succ, Equiv.Perm.mul_apply, ih, transport_apply]
      simp

/-! ## Fixed and exact-period points -/

/-- States fixed by the `r`-th iterate. -/
def fixedPoints (H : Equiv.Perm α) (r : Nat) : Finset α :=
  Finset.univ.filter fun x => (H ^ r) x = x

/-- Number of states fixed by the `r`-th iterate. -/
def fixedPointCount (H : Equiv.Perm α) (r : Nat) : Nat :=
  (fixedPoints H r).card

theorem mem_fixedPoints_iff (H : Equiv.Perm α) (r : Nat) (x : α) :
    x ∈ fixedPoints H r ↔ (H ^ r) x = x := by
  simp [fixedPoints]

@[simp]
theorem fixedPoints_zero (H : Equiv.Perm α) :
    fixedPoints H 0 = Finset.univ := by
  ext x
  simp [fixedPoints]

@[simp]
theorem fixedPointCount_zero (H : Equiv.Perm α) :
    fixedPointCount H 0 = Fintype.card α := by
  simp [fixedPointCount]

theorem fixedPointCount_le (H : Equiv.Perm α) (r : Nat) :
    fixedPointCount H r ≤ Fintype.card α := by
  rw [← Finset.card_univ]
  exact Finset.card_le_card (Finset.filter_subset _ _)

theorem fixedPointCount_conjugate
    (g H : Equiv.Perm α) (r : Nat) :
    fixedPointCount (conjugate g H) r = fixedPointCount H r := by
  classical
  unfold fixedPointCount
  apply Finset.card_equiv g.symm
  intro x
  simp only [mem_fixedPoints_iff]
  rw [conjugate_pow, conjugate_apply]
  constructor
  · intro hx
    apply g.injective
    simpa using hx
  · intro hx
    simpa using congrArg g hx

theorem fixedPointCount_transport
    {β : Type*} [Fintype β] [DecidableEq β]
    (e : α ≃ β) (H : Equiv.Perm α) (r : Nat) :
    fixedPointCount (transport e H) r = fixedPointCount H r := by
  classical
  unfold fixedPointCount
  apply Finset.card_equiv e.symm
  intro x
  simp only [mem_fixedPoints_iff]
  rw [transport_pow, transport_apply]
  constructor
  · intro hx
    apply e.injective
    simpa using hx
  · intro hx
    simpa using congrArg e hx

@[simp]
theorem fixedPointCount_identity (r : Nat) :
    fixedPointCount (1 : Equiv.Perm α) r = Fintype.card α := by
  simp [fixedPointCount, fixedPoints]

/-- `r` is the first positive return time of `x`. -/
def HasExactPeriod (H : Equiv.Perm α) (r : Nat) (x : α) : Prop :=
  0 < r ∧
  (H ^ r) x = x ∧
  ∀ d, 0 < d → d < r → (H ^ d) x ≠ x

instance hasExactPeriodDecidable
    (H : Equiv.Perm α) (r : Nat) (x : α) :
    Decidable (HasExactPeriod H r x) := by
  let P : Prop :=
    0 < r ∧ (H ^ r) x = x ∧
      ∀ d : Fin r, 0 < d.val → (H ^ d.val) x ≠ x
  have hiff : P ↔ HasExactPeriod H r x := by
    constructor
    · rintro ⟨hr, hfix, hmin⟩
      refine ⟨hr, hfix, ?_⟩
      intro d hd hlt
      exact hmin ⟨d, hlt⟩ hd
    · rintro ⟨hr, hfix, hmin⟩
      refine ⟨hr, hfix, ?_⟩
      intro d hd
      exact hmin d.val hd d.isLt
  exact decidable_of_iff P hiff

def exactPeriodPoints (H : Equiv.Perm α) (r : Nat) : Finset α :=
  Finset.univ.filter fun x => HasExactPeriod H r x

def exactPeriodCount (H : Equiv.Perm α) (r : Nat) : Nat :=
  (exactPeriodPoints H r).card

theorem mem_exactPeriodPoints_iff
    (H : Equiv.Perm α) (r : Nat) (x : α) :
    x ∈ exactPeriodPoints H r ↔ HasExactPeriod H r x := by
  simp [exactPeriodPoints]

@[simp]
theorem exactPeriodPoints_zero (H : Equiv.Perm α) :
    exactPeriodPoints H 0 = ∅ := by
  ext x
  simp [exactPeriodPoints, HasExactPeriod]

@[simp]
theorem exactPeriodCount_zero (H : Equiv.Perm α) :
    exactPeriodCount H 0 = 0 := by
  simp [exactPeriodCount]

theorem exactPeriodPoints_subset_fixedPoints
    (H : Equiv.Perm α) {r : Nat} (hr : 0 < r) :
    exactPeriodPoints H r ⊆ fixedPoints H r := by
  intro x hx
  exact (mem_fixedPoints_iff H r x).2
    ((mem_exactPeriodPoints_iff H r x).1 hx).2.1

private theorem isPeriodicPt_iff_pow_apply
    (H : Equiv.Perm α) (r : Nat) (x : α) :
    Function.IsPeriodicPt H r x ↔ (H ^ r) x = x := by
  rfl

theorem hasExactPeriod_iff_minimalPeriod_eq
    (H : Equiv.Perm α) (r : Nat) (x : α) :
    HasExactPeriod H r x ↔ Function.minimalPeriod H x = r := by
  constructor
  · rintro ⟨hr, hfixed, hminimal⟩
    have hperiodic : Function.IsPeriodicPt H r x :=
      (isPeriodicPt_iff_pow_apply H r x).2 hfixed
    have hmin_le : Function.minimalPeriod H x ≤ r :=
      hperiodic.minimalPeriod_le hr
    have hmin_pos : 0 < Function.minimalPeriod H x :=
      hperiodic.minimalPeriod_pos hr
    apply Nat.le_antisymm hmin_le
    by_contra hnot
    have hlt : Function.minimalPeriod H x < r := by omega
    exact hminimal (Function.minimalPeriod H x) hmin_pos hlt
      ((isPeriodicPt_iff_pow_apply H _ x).1
        (Function.isPeriodicPt_minimalPeriod H x))
  · intro hmin
    have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
    have hmin_pos : 0 < Function.minimalPeriod H x :=
      Function.minimalPeriod_pos_of_mem_periodicPts hmem
    refine ⟨hmin ▸ hmin_pos, ?_, ?_⟩
    · rw [← hmin]
      exact (isPeriodicPt_iff_pow_apply H _ x).1
        (Function.isPeriodicPt_minimalPeriod H x)
    · intro d hd_pos hd_lt hd_fixed
      have hperiodic : Function.IsPeriodicPt H d x :=
        (isPeriodicPt_iff_pow_apply H d x).2 hd_fixed
      have hdvd : r ∣ d := by
        rw [← hmin]
        exact hperiodic.minimalPeriod_dvd
      exact (Nat.not_le_of_lt hd_lt) (Nat.le_of_dvd hd_pos hdvd)

theorem exactPeriod_dvd_of_fixed
    (H : Equiv.Perm α) {r k : Nat} {x : α}
    (hexact : HasExactPeriod H r x)
    (hk : 0 < k)
    (hfixed : (H ^ k) x = x) :
    r ∣ k := by
  rw [hasExactPeriod_iff_minimalPeriod_eq] at hexact
  rw [← hexact]
  exact ((isPeriodicPt_iff_pow_apply H k x).2 hfixed).minimalPeriod_dvd

theorem mem_fixedPoints_iff_exists_exactPeriod
    (H : Equiv.Perm α) {k : Nat} (hk : 0 < k) (x : α) :
    x ∈ fixedPoints H k ↔
      ∃ r ∈ k.divisors, x ∈ exactPeriodPoints H r := by
  constructor
  · intro hx
    have hfixed := (mem_fixedPoints_iff H k x).1 hx
    let r := Function.minimalPeriod H x
    have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
    have hr_pos : 0 < r := Function.minimalPeriod_pos_of_mem_periodicPts hmem
    have hr_dvd : r ∣ k :=
      ((isPeriodicPt_iff_pow_apply H k x).2 hfixed).minimalPeriod_dvd
    refine ⟨r, Nat.mem_divisors.2 ⟨hr_dvd, hk.ne'⟩, ?_⟩
    exact (mem_exactPeriodPoints_iff H r x).2
      ((hasExactPeriod_iff_minimalPeriod_eq H r x).2 rfl)
  · rintro ⟨r, hr_mem, hx⟩
    have hexact := (mem_exactPeriodPoints_iff H r x).1 hx
    have hr_dvd : r ∣ k := Nat.dvd_of_mem_divisors hr_mem
    obtain ⟨q, rfl⟩ := hr_dvd
    apply (mem_fixedPoints_iff H (r * q) x).2
    exact (isPeriodicPt_iff_pow_apply H (r * q) x).1
      (((isPeriodicPt_iff_pow_apply H r x).2 hexact.2.1).mul_const q)

theorem exactPeriodPoints_disjoint
    (H : Equiv.Perm α) {r s : Nat} (hrs : r ≠ s) :
    Disjoint (exactPeriodPoints H r) (exactPeriodPoints H s) := by
  rw [Finset.disjoint_left]
  intro x hxr hxs
  have hr := (hasExactPeriod_iff_minimalPeriod_eq H r x).1
    ((mem_exactPeriodPoints_iff H r x).1 hxr)
  have hs := (hasExactPeriod_iff_minimalPeriod_eq H s x).1
    ((mem_exactPeriodPoints_iff H s x).1 hxs)
  exact hrs (hr.symm.trans hs)

private theorem fixedPoints_eq_biUnion_exactPeriodPoints
    (H : Equiv.Perm α) {r : Nat} (hr : 0 < r) :
    fixedPoints H r = r.divisors.biUnion (exactPeriodPoints H) := by
  ext x
  rw [Finset.mem_biUnion]
  exact mem_fixedPoints_iff_exists_exactPeriod H hr x

theorem fixedPointCount_eq_sum_exactPeriodCount
    (H : Equiv.Perm α) {r : Nat} (hr : 0 < r) :
    fixedPointCount H r =
      ∑ d ∈ r.divisors, exactPeriodCount H d := by
  classical
  unfold fixedPointCount exactPeriodCount
  rw [fixedPoints_eq_biUnion_exactPeriodPoints H hr]
  rw [Finset.card_biUnion]
  intro a ha b hb hab
  exact exactPeriodPoints_disjoint H hab

/-! ## Complete exact-period orbits -/

private abbrev ExactPoint (H : Equiv.Perm α) (r : Nat) :=
  {x : α // x ∈ exactPeriodPoints H r}

private theorem hasExactPeriod_apply
    (H : Equiv.Perm α) {r : Nat} {x : α}
    (hx : HasExactPeriod H r x) :
    HasExactPeriod H r (H x) := by
  rw [hasExactPeriod_iff_minimalPeriod_eq] at hx ⊢
  have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
  rw [Function.minimalPeriod_apply hmem]
  exact hx

private theorem hasExactPeriod_symm_apply
    (H : Equiv.Perm α) {r : Nat} {x : α}
    (hx : HasExactPeriod H r x) :
    HasExactPeriod H r (H.symm x) := by
  rw [hasExactPeriod_iff_minimalPeriod_eq] at hx ⊢
  have hmem : H.symm x ∈ Function.periodicPts H :=
    H.injective.mem_periodicPts (H.symm x)
  have hperiod := Function.minimalPeriod_apply (f := H) hmem
  have hperiod' :
      Function.minimalPeriod H x = Function.minimalPeriod H (H.symm x) := by
    simpa using hperiod
  exact hperiod'.symm.trans hx

private def exactPeriodPerm
    (H : Equiv.Perm α) (r : Nat) : Equiv.Perm (ExactPoint H r) where
  toFun x := ⟨H x, (mem_exactPeriodPoints_iff H r (H x)).2 <|
    hasExactPeriod_apply H
      ((mem_exactPeriodPoints_iff H r x).1 x.property)⟩
  invFun x := ⟨H.symm x, (mem_exactPeriodPoints_iff H r (H.symm x)).2 <|
    hasExactPeriod_symm_apply H
      ((mem_exactPeriodPoints_iff H r x).1 x.property)⟩
  left_inv x := by ext; simp
  right_inv x := by ext; simp

private theorem exactPeriodPerm_pow_apply_val
    (H : Equiv.Perm α) (r k : Nat) (x : ExactPoint H r) :
    (((exactPeriodPerm H r) ^ k) x).val = (H ^ k) x.val := by
  induction k generalizing x with
  | zero => rfl
  | succ k ih =>
      rw [pow_succ, pow_succ, Equiv.Perm.mul_apply, Equiv.Perm.mul_apply]
      exact ih (exactPeriodPerm H r x)

private theorem minimalPeriod_exactPeriodPerm
    (H : Equiv.Perm α) {r : Nat} (x : ExactPoint H r) :
    Function.minimalPeriod (exactPeriodPerm H r) x = r := by
  have horiginal : Function.minimalPeriod H x.val = r :=
    (hasExactPeriod_iff_minimalPeriod_eq H r x).1
      ((mem_exactPeriodPoints_iff H r x).1 x.property)
  have hrestricted :
      Function.minimalPeriod (exactPeriodPerm H r) x =
        Function.minimalPeriod H x.val := by
    apply (Function.minimalPeriod_eq_minimalPeriod_iff).2
    intro k
    constructor
    · intro h
      change (((exactPeriodPerm H r) ^ k) x = x) at h
      apply (isPeriodicPt_iff_pow_apply H k x).2
      have hval := congrArg Subtype.val h
      rw [exactPeriodPerm_pow_apply_val] at hval
      exact hval
    · intro h
      change (((exactPeriodPerm H r) ^ k) x = x)
      apply Subtype.ext
      rw [exactPeriodPerm_pow_apply_val]
      exact (isPeriodicPt_iff_pow_apply H k x).1 h
  exact hrestricted.trans horiginal

theorem exactPeriodCount_dvd
    (H : Equiv.Perm α) {r : Nat} (hr : 0 < r) :
    r ∣ exactPeriodCount H r := by
  letI : NeZero r := ⟨hr.ne'⟩
  let X := ExactPoint H r
  let P : Equiv.Perm X := exactPeriodPerm H r
  let G := Subgroup.zpowers P
  let Ω := Quotient (MulAction.orbitRel G X)
  letI : Fintype Ω := Fintype.ofFinite Ω
  let orbitDecomposition : X ≃ Σ ω : Ω, MulAction.orbit G ω.out :=
    MulAction.selfEquivSigmaOrbits G X
  let orbitCoordinates :
      (Σ ω : Ω, MulAction.orbit G ω.out) ≃ Σ _ω : Ω, ZMod r :=
    Equiv.sigmaCongrRight fun ω =>
      (MulAction.orbitZPowersEquiv P ω.out).trans
        (Equiv.cast (congrArg ZMod (by
          change Function.minimalPeriod P ω.out = r
          exact minimalPeriod_exactPeriodPerm H ω.out)))
  have hcard : Fintype.card X = Fintype.card (Σ _ω : Ω, ZMod r) :=
    Fintype.card_congr (orbitDecomposition.trans orbitCoordinates)
  have hcard' : Fintype.card X = Fintype.card Ω * r := by
    simpa [Fintype.card_sigma, ZMod.card] using hcard
  refine ⟨Fintype.card Ω, ?_⟩
  have hcount : exactPeriodCount H r = Fintype.card X := by
    simp [exactPeriodCount, X]
  rw [hcount, hcard', Nat.mul_comm]

/-! ## Primitive cycles and Möbius inversion -/

def cycleCount (H : Equiv.Perm α) (r : Nat) : Nat :=
  if r = 0 then 0 else exactPeriodCount H r / r

@[simp]
theorem cycleCount_zero (H : Equiv.Perm α) : cycleCount H 0 = 0 := by
  simp [cycleCount]

theorem exactPeriodCount_eq_mul_cycleCount
    (H : Equiv.Perm α) {r : Nat} (hr : 0 < r) :
    exactPeriodCount H r = r * cycleCount H r := by
  rw [cycleCount, if_neg hr.ne']
  exact (Nat.mul_div_cancel' (exactPeriodCount_dvd H hr)).symm

theorem fixedPointCount_eq_sum_mul_cycleCount
    (H : Equiv.Perm α) {r : Nat} (hr : 0 < r) :
    fixedPointCount H r =
      ∑ d ∈ r.divisors, d * cycleCount H d := by
  rw [fixedPointCount_eq_sum_exactPeriodCount H hr]
  apply Finset.sum_congr rfl
  intro d hd
  exact exactPeriodCount_eq_mul_cycleCount H (Nat.pos_of_mem_divisors hd)

private theorem hasExactPeriod_conjugate_iff
    (g H : Equiv.Perm α) (r : Nat) (x : α) :
    HasExactPeriod (conjugate g H) r x ↔
      HasExactPeriod H r (g.symm x) := by
  constructor
  · rintro ⟨hr, hfix, hmin⟩
    refine ⟨hr, ?_, ?_⟩
    · rw [conjugate_pow, conjugate_apply] at hfix
      apply g.injective
      simpa using hfix
    · intro d hd hdlt hdFix
      apply hmin d hd hdlt
      rw [conjugate_pow, conjugate_apply]
      simpa using congrArg g hdFix
  · rintro ⟨hr, hfix, hmin⟩
    refine ⟨hr, ?_, ?_⟩
    · rw [conjugate_pow, conjugate_apply]
      simpa using congrArg g hfix
    · intro d hd hdlt hdFix
      apply hmin d hd hdlt
      rw [conjugate_pow, conjugate_apply] at hdFix
      apply g.injective
      simpa using hdFix

private theorem hasExactPeriod_transport_iff
    {β : Type*} [Fintype β] [DecidableEq β]
    (e : α ≃ β) (H : Equiv.Perm α) (r : Nat) (x : β) :
    HasExactPeriod (transport e H) r x ↔
      HasExactPeriod H r (e.symm x) := by
  constructor
  · rintro ⟨hr, hfix, hmin⟩
    refine ⟨hr, ?_, ?_⟩
    · rw [transport_pow, transport_apply] at hfix
      apply e.injective
      simpa using hfix
    · intro d hd hdlt hdFix
      apply hmin d hd hdlt
      rw [transport_pow, transport_apply]
      simpa using congrArg e hdFix
  · rintro ⟨hr, hfix, hmin⟩
    refine ⟨hr, ?_, ?_⟩
    · rw [transport_pow, transport_apply]
      simpa using congrArg e hfix
    · intro d hd hdlt hdFix
      apply hmin d hd hdlt
      rw [transport_pow, transport_apply] at hdFix
      apply e.injective
      simpa using hdFix

theorem exactPeriodCount_conjugate
    (g H : Equiv.Perm α) (r : Nat) :
    exactPeriodCount (conjugate g H) r = exactPeriodCount H r := by
  classical
  unfold exactPeriodCount
  apply Finset.card_bij (fun x _ => g.symm x)
  · intro x hx
    exact (mem_exactPeriodPoints_iff H r (g.symm x)).2
      ((hasExactPeriod_conjugate_iff g H r x).1
        ((mem_exactPeriodPoints_iff (conjugate g H) r x).1 hx))
  · intro x₁ hx₁ x₂ hx₂ h
    exact g.symm.injective h
  · intro y hy
    refine ⟨g y, ?_, by simp⟩
    exact (mem_exactPeriodPoints_iff (conjugate g H) r (g y)).2
      ((hasExactPeriod_conjugate_iff g H r (g y)).2 <| by
        simpa using (mem_exactPeriodPoints_iff H r y).1 hy)

theorem exactPeriodCount_transport
    {β : Type*} [Fintype β] [DecidableEq β]
    (e : α ≃ β) (H : Equiv.Perm α) (r : Nat) :
    exactPeriodCount (transport e H) r = exactPeriodCount H r := by
  classical
  unfold exactPeriodCount
  apply Finset.card_bij (fun x _ => e.symm x)
  · intro x hx
    exact (mem_exactPeriodPoints_iff H r (e.symm x)).2
      ((hasExactPeriod_transport_iff e H r x).1
        ((mem_exactPeriodPoints_iff (transport e H) r x).1 hx))
  · intro x₁ hx₁ x₂ hx₂ h
    exact e.symm.injective h
  · intro y hy
    refine ⟨e y, ?_, by simp⟩
    exact (mem_exactPeriodPoints_iff (transport e H) r (e y)).2
      ((hasExactPeriod_transport_iff e H r (e y)).2 <| by
        simpa using (mem_exactPeriodPoints_iff H r y).1 hy)

theorem cycleCount_conjugate
    (g H : Equiv.Perm α) (r : Nat) :
    cycleCount (conjugate g H) r = cycleCount H r := by
  simp [cycleCount, exactPeriodCount_conjugate]

theorem cycleCount_transport
    {β : Type*} [Fintype β] [DecidableEq β]
    (e : α ≃ β) (H : Equiv.Perm α) (r : Nat) :
    cycleCount (transport e H) r = cycleCount H r := by
  simp [cycleCount, exactPeriodCount_transport]

theorem exactPeriodCount_le_card
    (H : Equiv.Perm α) (r : Nat) :
    exactPeriodCount H r ≤ Fintype.card α := by
  calc
    exactPeriodCount H r = (exactPeriodPoints H r).card := rfl
    _ ≤ (Finset.univ : Finset α).card :=
      Finset.card_le_card (Finset.filter_subset _ _)
    _ = Fintype.card α := Finset.card_univ

theorem cycleCount_eq_zero_of_card_lt
    (H : Equiv.Perm α) {r : Nat}
    (hr : Fintype.card α < r) :
    cycleCount H r = 0 := by
  have hrpos : 0 < r := (Nat.zero_le (Fintype.card α)).trans_lt hr
  rw [cycleCount, if_neg hrpos.ne']
  exact Nat.div_eq_of_lt ((exactPeriodCount_le_card H r).trans_lt hr)

theorem cycleCount_mobius
    (H : Equiv.Perm α) {r : Nat} (hr : 0 < r) :
    ((r * cycleCount H r : Nat) : ℤ) =
      ∑ d ∈ r.divisors,
        (ArithmeticFunction.moebius (r / d) : ℤ) *
          (fixedPointCount H d : ℤ) := by
  let f : Nat → ℤ := fun d => ((d * cycleCount H d : Nat) : ℤ)
  let g : Nat → ℤ := fun d => (fixedPointCount H d : ℤ)
  have hsum : ∀ k > 0, ∑ d ∈ k.divisors, f d = g k := by
    intro k hk
    have h := fixedPointCount_eq_sum_mul_cycleCount H hk
    have hcast := congrArg (fun z : Nat => (z : ℤ)) h
    simpa [f, g] using hcast.symm
  have hmob :=
    (ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq.mp hsum) r hr
  simp only [Int.cast_id] at hmob
  rw [Nat.sum_divisorsAntidiagonal'
    (f := fun a b => (ArithmeticFunction.moebius a : ℤ) * g b)] at hmob
  exact hmob.symm

/-! ## Finite Euler-factor exponent data -/

def cycleEulerFactorData (H : Equiv.Perm α) : Nat →₀ Nat where
  support :=
    (Finset.range (Fintype.card α + 1)).filter fun r => cycleCount H r ≠ 0
  toFun := cycleCount H
  mem_support_toFun := by
    intro r
    simp only [Finset.mem_filter, Finset.mem_range]
    constructor
    · exact And.right
    · intro hrne
      refine ⟨?_, hrne⟩
      by_contra hrange
      have hr : Fintype.card α < r := by omega
      exact hrne (cycleCount_eq_zero_of_card_lt H hr)

@[simp]
theorem cycleEulerFactorData_apply (H : Equiv.Perm α) (r : Nat) :
    cycleEulerFactorData H r = cycleCount H r :=
  rfl

theorem cycleEulerFactorData_support_subset (H : Equiv.Perm α) :
    (cycleEulerFactorData H).support ⊆
      Finset.range (Fintype.card α + 1) :=
  Finset.filter_subset _ _

theorem cycleEulerFactorData_conjugate (g H : Equiv.Perm α) :
    cycleEulerFactorData (conjugate g H) = cycleEulerFactorData H := by
  ext r
  simp [cycleCount_conjugate]

theorem cycleEulerFactorData_transport
    {β : Type*} [Fintype β] [DecidableEq β]
    (e : α ≃ β) (H : Equiv.Perm α) :
    cycleEulerFactorData (transport e H) = cycleEulerFactorData H := by
  ext r
  simp [cycleCount_transport]

end FinitePermutationDynamics
