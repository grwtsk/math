-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HasExactPeriod.Variant2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.HasExactPeriod.Variant2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/DynamicalZeta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix.Symmetry
import DAF.FiniteDynamics.Permutation
import Mathlib.Dynamics.PeriodicPts.Lemmas
import Mathlib.Data.ZMod.QuotientGroup
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Finsupp.Defs

/-!
# Exact cycle data for finite Boolean dynamics

For a state permutation `H`, `fixedPointCount H r` counts states fixed by the
iterate `H ^ r`.  Those states split disjointly according to their exact
positive period.  Exact-period points occur in complete cycles of that period,
so division by the period defines the primitive cycle count.

Möbius inversion recovers primitive cycle counts from fixed-point counts.  The
finitely supported `cycleEulerFactorData` introduced below is exact finite
Euler-product exponent data; there is no analytic convergence question.

Conjugacy implies equal orbit and cycle structure.  Cycle structure does not,
however, imply SAC, independence of derivative bits, or low differential
concentration.  Those remain separate properties of the avalanche layer.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HasExactPeriod.Variant2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f

namespace DynamicalZeta

open SATReduction
open Avalanche
open PermutationNetwork
open Symmetry
open scoped BigOperators

/-- A state has exact period `r` when `r` is its first positive return time. -/
def HasExactPeriod {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) : Prop :=
  0 < r ∧
  (H ^ r) x = x ∧
  ∀ d, 0 < d → d < r → (H ^ d) x ≠ x

/-!
The bounded `Fin r` formulation below makes exact-period membership
computable, while `HasExactPeriod` retains the direct mathematical API.
-/

instance hasExactPeriodDecidable {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) : Decidable (HasExactPeriod H r x) := by
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

/-- The finite set of states whose exact period is `r`. -/
def exactPeriodPoints {n : Nat}
    (H : BitPerm n)
    (r : Nat) : Finset (Bits n) :=
  Finset.univ.filter fun x => HasExactPeriod H r x

/-- Number of states whose exact period is `r`. -/
def exactPeriodCount {n : Nat}
    (H : BitPerm n)
    (r : Nat) : Nat :=
  (exactPeriodPoints H r).card

theorem mem_exactPeriodPoints_iff {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
    x ∈ exactPeriodPoints H r ↔ HasExactPeriod H r x := by
  simp [exactPeriodPoints]

@[simp]
theorem exactPeriodPoints_zero {n : Nat} (H : BitPerm n) :
    exactPeriodPoints H 0 = ∅ := by
  ext x
  simp [exactPeriodPoints, HasExactPeriod]

@[simp]
theorem exactPeriodCount_zero {n : Nat} (H : BitPerm n) :
    exactPeriodCount H 0 = 0 := by
  simp [exactPeriodCount]

/-- Exact-period points are fixed by the corresponding iterate. -/
theorem exactPeriodPoints_subset_fixedPoints {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    exactPeriodPoints H r ⊆ fixedPoints H r := by
  have _hr : 0 < r := hr
  intro x hx
  exact (mem_fixedPoints_iff H r x).2
    ((mem_exactPeriodPoints_iff H r x).1 hx).2.1

private theorem isPeriodicPt_iff_pow_apply {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
    Function.IsPeriodicPt H r x ↔ (H ^ r) x = x := by
  rfl

/-- The explicit exact-period predicate agrees with Mathlib's minimal period. -/
theorem hasExactPeriod_iff_minimalPeriod_eq {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
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

/-- The exact period divides every positive return time. -/
theorem exactPeriod_dvd_of_fixed {n : Nat}
    (H : BitPerm n)
    {r k : Nat}
    {x : Bits n}
    (hexact : HasExactPeriod H r x)
    (hk : 0 < k)
    (hfixed : (H ^ k) x = x) :
    r ∣ k := by
  have _hk : 0 < k := hk
  rw [hasExactPeriod_iff_minimalPeriod_eq] at hexact
  rw [← hexact]
  exact ((isPeriodicPt_iff_pow_apply H k x).2 hfixed).minimalPeriod_dvd

/-- A positive-time fixed point has one exact period dividing that time. -/
theorem mem_fixedPoints_iff_exists_exactPeriod {n : Nat}
    (H : BitPerm n)
    {k : Nat}
    (hk : 0 < k)
    (x : Bits n) :
    x ∈ fixedPoints H k ↔
      ∃ r ∈ k.divisors, x ∈ exactPeriodPoints H r := by
  constructor
  · intro hx
    have hfixed := (mem_fixedPoints_iff H k x).1 hx
    let r := Function.minimalPeriod H x
    have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
    have hr_pos : 0 < r :=
      Function.minimalPeriod_pos_of_mem_periodicPts hmem
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

/-- Different exact periods define disjoint state sets. -/
theorem exactPeriodPoints_disjoint {n : Nat}
    (H : BitPerm n)
    {r s : Nat}
    (hrs : r ≠ s) :
    Disjoint (exactPeriodPoints H r) (exactPeriodPoints H s) := by
  rw [Finset.disjoint_left]
  intro x hxr hxs
  have hr := (hasExactPeriod_iff_minimalPeriod_eq H r x).1
    ((mem_exactPeriodPoints_iff H r x).1 hxr)
  have hs := (hasExactPeriod_iff_minimalPeriod_eq H s x).1
    ((mem_exactPeriodPoints_iff H s x).1 hxs)
  exact hrs (hr.symm.trans hs)

private theorem fixedPoints_eq_biUnion_exactPeriodPoints {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    fixedPoints H r = r.divisors.biUnion (exactPeriodPoints H) := by
  ext x
  rw [Finset.mem_biUnion]
  exact mem_fixedPoints_iff_exists_exactPeriod H hr x

/-- Fixed points split as a disjoint union over exact periods dividing `r`. -/
theorem fixedPointCount_eq_sum_exactPeriodCount {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    fixedPointCount H r =
      ∑ d ∈ r.divisors, exactPeriodCount H d := by
  classical
  unfold fixedPointCount exactPeriodCount
  rw [fixedPoints_eq_biUnion_exactPeriodPoints H hr]
  rw [Finset.card_biUnion]
  intro a ha b hb hab
  exact exactPeriodPoints_disjoint H hab

/-! ## Complete exact-period orbits -/

private abbrev ExactPoint {n : Nat} (H : BitPerm n) (r : Nat) :=
  {x : Bits n // x ∈ exactPeriodPoints H r}

private theorem hasExactPeriod_apply {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    {x : Bits n}
    (hx : HasExactPeriod H r x) :
    HasExactPeriod H r (H x) := by
  rw [hasExactPeriod_iff_minimalPeriod_eq] at hx ⊢
  have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
  rw [Function.minimalPeriod_apply hmem]
  exact hx

private theorem hasExactPeriod_symm_apply {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    {x : Bits n}
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

private def exactPeriodPerm {n : Nat}
    (H : BitPerm n)
    (r : Nat) : Equiv.Perm (ExactPoint H r) where
  toFun x := ⟨H x, (mem_exactPeriodPoints_iff H r (H x)).2 <|
    hasExactPeriod_apply H
      ((mem_exactPeriodPoints_iff H r x).1 x.property)⟩
  invFun x := ⟨H.symm x, (mem_exactPeriodPoints_iff H r (H.symm x)).2 <|
    hasExactPeriod_symm_apply H
      ((mem_exactPeriodPoints_iff H r x).1 x.property)⟩
  left_inv x := by ext; simp
  right_inv x := by ext; simp

@[simp]
private theorem exactPeriodPerm_apply_val {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : ExactPoint H r) :
    (exactPeriodPerm H r x).val = H x.val :=
  rfl

private theorem exactPeriodPerm_pow_apply_val {n : Nat}
    (H : BitPerm n)
    (r k : Nat)
    (x : ExactPoint H r) :
    (((exactPeriodPerm H r) ^ k) x).val = (H ^ k) x.val := by
  induction k generalizing x with
  | zero => rfl
  | succ k ih =>
      rw [pow_succ, pow_succ, Equiv.Perm.mul_apply, Equiv.Perm.mul_apply]
      exact ih (exactPeriodPerm H r x)

private theorem minimalPeriod_exactPeriodPerm {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (x : ExactPoint H r) :
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

/-- Exact-period points decompose into genuine cycles of length `r`. -/
theorem exactPeriodCount_dvd {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
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

/-! ## Primitive cycle counts and divisor sums -/

/-- Number of primitive cycles of length `r`; by convention it is zero at `r = 0`. -/
def cycleCount {n : Nat} (H : BitPerm n) (r : Nat) : Nat :=
  if r = 0 then 0 else exactPeriodCount H r / r

@[simp]
theorem cycleCount_zero {n : Nat} (H : BitPerm n) :
    cycleCount H 0 = 0 := by
  simp [cycleCount]

/-- Exact-period states are `r` times the number of primitive `r`-cycles. -/
theorem exactPeriodCount_eq_mul_cycleCount {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    exactPeriodCount H r = r * cycleCount H r := by
  rw [cycleCount, if_neg hr.ne']
  exact (Nat.mul_div_cancel' (exactPeriodCount_dvd H hr)).symm

/-- Fixed points of `H ^ r` are the points in cycles whose lengths divide `r`. -/
theorem fixedPointCount_eq_sum_mul_cycleCount {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    fixedPointCount H r =
      ∑ d ∈ r.divisors, d * cycleCount H d := by
  rw [fixedPointCount_eq_sum_exactPeriodCount H hr]
  apply Finset.sum_congr rfl
  intro d hd
  exact exactPeriodCount_eq_mul_cycleCount H (Nat.pos_of_mem_divisors hd)

/-! ## Conjugacy invariance -/

private theorem hasExactPeriod_conjugate_iff {n : Nat}
    (g H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
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

/-- Conjugacy transports exact-period points by an explicit bijection. -/
theorem exactPeriodCount_conjugate {n : Nat}
    (g H : BitPerm n)
    (r : Nat) :
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

/-- Primitive cycle counts are conjugacy invariants. -/
theorem cycleCount_conjugate {n : Nat}
    (g H : BitPerm n)
    (r : Nat) :
    cycleCount (conjugate g H) r = cycleCount H r := by
  simp [cycleCount, exactPeriodCount_conjugate]

theorem exactPeriodCount_le_stateCard {n : Nat}
    (H : BitPerm n)
    (r : Nat) :
    exactPeriodCount H r ≤ 2 ^ n := by
  calc
    exactPeriodCount H r = (exactPeriodPoints H r).card := rfl
    _ ≤ (Finset.univ : Finset (Bits n)).card :=
      Finset.card_le_card (Finset.filter_subset _ _)
    _ = 2 ^ n := by rw [Finset.card_univ, Avalanche.card_bits]

/-- A cycle cannot be longer than the finite state space. -/
theorem cycleCount_eq_zero_of_card_lt {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 2 ^ n < r) :
    cycleCount H r = 0 := by
  have hrpos : 0 < r := (Nat.zero_le (2 ^ n)).trans_lt hr
  rw [cycleCount, if_neg hrpos.ne']
  exact Nat.div_eq_of_lt ((exactPeriodCount_le_stateCard H r).trans_lt hr)

/-! ## Integer Möbius inversion -/

/-- Möbius inversion recovers the number of exact-period states from fixed points. -/
theorem cycleCount_mobius {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
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

/--
The finitely supported function of primitive cycle counts.  Its bounded,
computable support is the exact finite dynamical-zeta datum.
-/
def cycleEulerFactorData {n : Nat} (H : BitPerm n) : Nat →₀ Nat where
  support := (Finset.range (2 ^ n + 1)).filter fun r => cycleCount H r ≠ 0
  toFun := cycleCount H
  mem_support_toFun := by
    intro r
    simp only [Finset.mem_filter, Finset.mem_range]
    constructor
    · exact And.right
    · intro hrne
      refine ⟨?_, hrne⟩
      by_contra hrange
      have hr : 2 ^ n < r := by omega
      exact hrne (cycleCount_eq_zero_of_card_lt H hr)

@[simp]
theorem cycleEulerFactorData_apply {n : Nat}
    (H : BitPerm n)
    (r : Nat) :
    cycleEulerFactorData H r = cycleCount H r :=
  rfl

/-- Euler-factor support is bounded by the number of Boolean states. -/
theorem cycleEulerFactorData_support_subset {n : Nat}
    (H : BitPerm n) :
    (cycleEulerFactorData H).support ⊆ Finset.range (2 ^ n + 1) := by
  exact Finset.filter_subset _ _

/-- The complete finite Euler-factor datum is a conjugacy invariant. -/
theorem cycleEulerFactorData_conjugate {n : Nat}
    (g H : BitPerm n) :
    cycleEulerFactorData (conjugate g H) = cycleEulerFactorData H := by
  ext r
  simp [cycleCount_conjugate]

/-! ## Cycle structure does not imply avalanche diffusion

The coordinate transposition below is a nonidentity state permutation with
deterministic one-bit propagation.  Its SAC scores therefore vanish even
though its cycle data differs from the identity.  This supplies the formal
nonimplication from nontrivial cycle structure to avalanche diffusion.
-/

private def firstSecondSwap {n : Nat} (hn : 1 < n) :
    Equiv.Perm (Fin n) :=
  Equiv.swap ⟨0, by omega⟩ ⟨1, hn⟩

private theorem firstSecondSwap_ne_one {n : Nat} (hn : 1 < n) :
    firstSecondSwap hn ≠ 1 := by
  intro h
  have hx :=
    congrArg (fun π : Equiv.Perm (Fin n) => π ⟨0, by omega⟩) h
  simp [firstSecondSwap, Equiv.Perm.one_def] at hx

private theorem coordinate_firstSecondSwap_ne_one {n : Nat}
    (hn : 1 < n) :
    coordinatePermutation (firstSecondSwap hn) ≠ (1 : BitPerm n) := by
  intro h
  apply firstSecondSwap_ne_one hn
  apply coordinatePermutationHom_injective
  change coordinatePermutation (firstSecondSwap hn) =
    coordinatePermutation (1 : Equiv.Perm (Fin n))
  rw [show coordinatePermutation (1 : Equiv.Perm (Fin n)) =
    (1 : BitPerm n) from map_one coordinatePermutationHom]
  exact h

/-- A nonidentity bijection can have zero SAC and variance scores. -/
theorem exists_nontrivial_bitPerm_with_zero_avalanche
    {n : Nat}
    (hn : 1 < n) :
    ∃ H : BitPerm n,
      H ≠ 1 ∧
      sacScore H = 0 ∧
      varianceScore H = 0 := by
  let π := firstSecondSwap hn
  refine ⟨coordinatePermutation π, ?_,
    coordinatePermutation_sacScore π (by omega),
    coordinatePermutation_varianceScore π (by omega)⟩
  exact coordinate_firstSecondSwap_ne_one hn

private theorem cycleEulerFactorData_ne_identity_of_ne {n : Nat}
    (H : BitPerm n)
    (hH : H ≠ 1) :
    cycleEulerFactorData H ≠ cycleEulerFactorData (1 : BitPerm n) := by
  intro heuler
  have hcycle : cycleCount H 1 = cycleCount (1 : BitPerm n) 1 := by
    have h := DFunLike.congr_fun heuler 1
    simpa using h
  have hfixedH :=
    fixedPointCount_eq_sum_mul_cycleCount H (by decide : 0 < 1)
  have hfixedOne :=
    fixedPointCount_eq_sum_mul_cycleCount
      (1 : BitPerm n) (by decide : 0 < 1)
  have hfixed :
      fixedPointCount H 1 = fixedPointCount (1 : BitPerm n) 1 := by
    calc
      fixedPointCount H 1 = cycleCount H 1 := by simpa using hfixedH
      _ = cycleCount (1 : BitPerm n) 1 := hcycle
      _ = fixedPointCount (1 : BitPerm n) 1 := by
        simpa using hfixedOne.symm
  have hcard :
      (fixedPoints H 1).card = (Finset.univ : Finset (Bits n)).card := by
    calc
      (fixedPoints H 1).card = fixedPointCount H 1 := rfl
      _ = fixedPointCount (1 : BitPerm n) 1 := hfixed
      _ = 2 ^ n := fixedPointCount_identity 1
      _ = (Finset.univ : Finset (Bits n)).card := by
        rw [Finset.card_univ, Avalanche.card_bits]
  have hset : fixedPoints H 1 = (Finset.univ : Finset (Bits n)) :=
    Finset.eq_of_subset_of_card_le (Finset.filter_subset _ _)
      (Nat.le_of_eq hcard.symm)
  apply hH
  apply Equiv.ext
  intro x
  have hx : x ∈ fixedPoints H 1 := by rw [hset]; simp
  have hfix := (mem_fixedPoints_iff H 1 x).1 hx
  simpa using hfix

/--
There is nontrivial primitive cycle data with zero avalanche scores.  Thus
cycle information alone proves neither SAC nor derivative-bit independence.
-/
theorem exists_nontrivial_cycle_data_with_zero_avalanche
    {n : Nat}
    (hn : 1 < n) :
    ∃ H : BitPerm n,
      cycleEulerFactorData H ≠ cycleEulerFactorData (1 : BitPerm n) ∧
      sacScore H = 0 ∧
      varianceScore H = 0 := by
  let π := firstSecondSwap hn
  let H : BitPerm n := coordinatePermutation π
  have hH : H ≠ 1 := coordinate_firstSecondSwap_ne_one hn
  refine ⟨H, cycleEulerFactorData_ne_identity_of_ne H hH,
    coordinatePermutation_sacScore π (by omega),
    coordinatePermutation_varianceScore π (by omega)⟩

/-! ## Connection to arbitrary finite permutation dynamics

The generic module uses the same finite predicates and counts, but replaces
the Boolean cardinal bound `2^n` by `Fintype.card α`.  These lemmas make the
existing Boolean API an explicit specialization of the generic cycle theory.
-/

theorem fixedPointCount_eq_generic {n : Nat}
    (H : BitPerm n) (r : Nat) :
    fixedPointCount H r =
      FinitePermutationDynamics.fixedPointCount H r :=
  rfl

theorem hasExactPeriod_iff_generic {n : Nat}
    (H : BitPerm n) (r : Nat) (x : Bits n) :
    HasExactPeriod H r x ↔
      FinitePermutationDynamics.HasExactPeriod H r x :=
  Iff.rfl

theorem exactPeriodCount_eq_generic {n : Nat}
    (H : BitPerm n) (r : Nat) :
    exactPeriodCount H r =
      FinitePermutationDynamics.exactPeriodCount H r :=
  rfl

theorem cycleCount_eq_generic {n : Nat}
    (H : BitPerm n) (r : Nat) :
    cycleCount H r = FinitePermutationDynamics.cycleCount H r := by
  simp [cycleCount, FinitePermutationDynamics.cycleCount,
    exactPeriodCount_eq_generic]

theorem cycleEulerFactorData_apply_eq_generic {n : Nat}
    (H : BitPerm n) (r : Nat) :
    cycleEulerFactorData H r =
      FinitePermutationDynamics.cycleEulerFactorData H r := by
  simp [cycleCount_eq_generic]

end DynamicalZeta
