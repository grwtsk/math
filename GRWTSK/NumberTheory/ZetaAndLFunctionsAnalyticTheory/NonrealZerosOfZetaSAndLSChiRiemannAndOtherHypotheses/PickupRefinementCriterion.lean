/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.MeasureAndIntegration.PickupCellQuadratic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedPairDescent
import GRWTSK.FunctionalAnalysis.NormedLinearSpacesAndBanachSpacesBanachLattices.ObservationSandwich

/-!
# A source-complete, signed quadratic refinement route to the existing RH consumer

An arbitrary certified birth-respecting partition is allowed, and a canonical
partition is constructed for EVERY nonnegative outer time. Thus coverage and
source matching are discharged, not new arithmetic assumptions. Negative cell
allowances remain negative. Both extra curve refinement and extra proved
prime-pair credit give monotone certificate descent for the SAME pickupCross.
The all-positive-rate estimate on that explicit signed certificate remains open.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRefinementCriterion

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- All physical intervals and their actual integer-birth indices are retained. -/
structure BirthPartition (T : ℝ) where
  length : ℕ
  cut : ℕ → ℝ
  index : ℕ → ℕ
  first : cut 0 = 0
  last : cut length = T
  ordered : ∀ k < length, cut k ≤ cut (k + 1)
  positive : ∀ k < length, 1 ≤ index k
  inventory : ∀ k < length, index k ≤ ⌊Real.exp T⌋₊
  left_birth : ∀ k < length, Real.log (index k : ℝ) ≤ cut k
  right_birth : ∀ k < length, cut (k + 1) ≤ Real.log ((index k + 1 : ℕ) : ℝ)

/-- Sum AFTER retaining the signs of every complete local polynomial. -/
def partitionUpper {T : ℝ} (P : BirthPartition T) (depth : ℕ → ℕ) : ℝ :=
  ∑ k ∈ Finset.range P.length,
    (P.cut (k + 1) - P.cut k) * cellUpper (P.index k) (P.cut k) (P.cut (k + 1)) (depth k)

theorem cross_le_partitionUpper {T : ℝ} (P : BirthPartition T) (depth : ℕ → ℕ) :
    pickupCross T ≤ partitionUpper P depth := by
  have hsum := intervalIntegral.sum_integral_adjacent_intervals
    (f := crossDensity T) (a := P.cut) (n := P.length)
    (fun k _ => (crossDensity_continuous T).intervalIntegrable _ _)
  rw [P.first, P.last, integral_crossDensity] at hsum
  rw [← hsum]
  apply Finset.sum_le_sum
  intro k hk
  have hkl := Finset.mem_range.mp hk
  exact integral_crossDensity_le_cell (P.ordered k hkl)
    (P.positive k hkl) (P.inventory k hkl)
    (P.left_birth k hkl) (P.right_birth k hkl) (depth k)

theorem partitionUpper_refinement_le {T : ℝ} (P : BirthPartition T)
    (d e : ℕ → ℕ) (hde : ∀ k < P.length, d k ≤ e k) :
    partitionUpper P e ≤ partitionUpper P d := by
  apply Finset.sum_le_sum
  intro k hk
  have hkl := Finset.mem_range.mp hk
  exact mul_le_mul_of_nonneg_left
    (cellUpper_refinement_le _ _ _ (hde k hkl))
    (sub_nonneg.mpr (P.ordered k hkl))


def partitionLower {T : ℝ} (P : BirthPartition T) (depth : ℕ → ℕ) : ℝ :=
  ∑ k ∈ Finset.range P.length,
    (P.cut (k + 1) - P.cut k) * cellLower (P.index k) (P.cut k) (P.cut (k + 1)) (depth k)

theorem partitionLower_le_cross {T : ℝ} (P : BirthPartition T) (depth : ℕ → ℕ) :
    partitionLower P depth ≤ pickupCross T := by
  have hsum := intervalIntegral.sum_integral_adjacent_intervals
    (f := crossDensity T) (a := P.cut) (n := P.length)
    (fun k _ => (crossDensity_continuous T).intervalIntegrable _ _)
  rw [P.first, P.last, integral_crossDensity] at hsum
  rw [← hsum]
  apply Finset.sum_le_sum
  intro k hk
  have hkl := Finset.mem_range.mp hk
  exact cell_le_integral_crossDensity (P.ordered k hkl)
    (P.positive k hkl) (P.inventory k hkl)
    (P.left_birth k hkl) (P.right_birth k hkl) (depth k)


theorem partitionLower_refinement_le {T : ℝ} (P : BirthPartition T)
    (d e : ℕ → ℕ) (hde : ∀ k < P.length, d k ≤ e k) :
    partitionLower P d ≤ partitionLower P e := by
  apply Finset.sum_le_sum
  intro k hk
  have hkl := Finset.mem_range.mp hk
  exact mul_le_mul_of_nonneg_left
    (cellLower_refinement_le _ _ _ (hde k hkl))
    (sub_nonneg.mpr (P.ordered k hkl))

theorem partition_width_refinement_le {T : ℝ} (P : BirthPartition T)
    (d e : ℕ → ℕ) (hde : ∀ k < P.length, d k ≤ e k) :
    partitionUpper P e - partitionLower P e ≤ partitionUpper P d - partitionLower P d := by
  have hu := partitionUpper_refinement_le P d e hde
  have hl := partitionLower_refinement_le P d e hde
  linarith

/-- This returned interval contains the actual signed cross energy. -/
theorem partition_observation_error {T : ℝ} (P : BirthPartition T) (depth : ℕ → ℕ) :
    ‖partitionUpper P depth - pickupCross T‖ ≤ partitionUpper P depth - partitionLower P depth := by
  have hl := partitionLower_le_cross P depth
  have hu := cross_le_partitionUpper P depth
  rw [Real.norm_eq_abs, abs_of_nonneg (sub_nonneg.mpr hu)]
  linarith

/-- A concrete arithmetic instantiation of the existing observation sandwich.
Source/sector compatibility is still an independent guard, not inferred from proximity. -/
def pickupObservationSandwich {V : Type*} (time : V → ℝ)
    (partition : (v : V) → BirthPartition (time v)) (depth : V → ℕ → ℕ)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Sandwich V :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.fromErrorBounds
    guard (fun v => pickupCross (time v))
    (fun v => partitionUpper (partition v) (depth v))
    (fun v => partitionUpper (partition v) (depth v) - partitionLower (partition v) (depth v))
    tolerance (fun v => partition_observation_error (partition v) (depth v))


/-- Refinement changes the certificates, not the actual middle relation. -/
theorem pickupObservationSandwich_same_middle {V : Type*} (time : V → ℝ)
    (partition : (v : V) → BirthPartition (time v)) (d e : V → ℕ → ℕ)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    (pickupObservationSandwich time partition d guard tolerance).middle =
      (pickupObservationSandwich time partition e guard tolerance).middle := rfl

/-- The older graph ambiguity theorem is now applied to actual arithmetic curves. -/
theorem accumulated_pickup_unresolved_subset {V : Type*} (time : V → ℝ)
    (partition : (v : V) → BirthPartition (time v)) (d e : V → ℕ → ℕ)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    let S := pickupObservationSandwich time partition d guard tolerance
    let R := pickupObservationSandwich time partition e guard tolerance
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Subrelation
      (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.unresolved
        (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.meetEvidence S R rfl))
      (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.unresolved S) :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.unresolved_meet_subset _ _ rfl

/-- Physical cut points, with the last active birth cell clipped at the actual horizon. -/
def eventCut (T : ℝ) (k : ℕ) : ℝ :=
  min (Real.log ((k + 1 : ℕ) : ℝ)) T

theorem eventCut_monotone (T : ℝ) : Monotone (eventCut T) := by
  intro a b hab
  apply min_le_min _ le_rfl
  apply Real.log_le_log (by positivity)
  exact_mod_cast Nat.add_le_add_right hab 1

theorem eventCut_first {T : ℝ} (hT : 0 ≤ T) : eventCut T 0 = 0 := by
  simp [eventCut, min_eq_left hT]

theorem eventCut_last (T : ℝ) : eventCut T ⌊Real.exp T⌋₊ = T := by
  unfold eventCut
  apply min_eq_right
  apply Real.exp_le_exp.mp
  rw [Real.exp_log (by positivity : (0 : ℝ) < (⌊Real.exp T⌋₊ + 1 : ℕ))]
  have h := (Nat.lt_floor_add_one (Real.exp T)).le
  exact_mod_cast h

theorem eventCut_at_active {T : ℝ} {k : ℕ} (hk : k < ⌊Real.exp T⌋₊) :
    eventCut T k = Real.log ((k + 1 : ℕ) : ℝ) := by
  unfold eventCut
  apply min_eq_left
  apply (Real.log_le_iff_le_exp (by positivity)).mpr
  have hkR : ((k + 1 : ℕ) : ℝ) ≤ (⌊Real.exp T⌋₊ : ℝ) := by
    exact_mod_cast (Nat.succ_le_of_lt hk)
  exact hkR.trans (Nat.floor_le (Real.exp_pos T).le)

/-- No unproved coverage or no-birth hypothesis is left in the canonical construction. -/
def canonicalPartition (T : ℝ) (hT : 0 ≤ T) : BirthPartition T where
  length := ⌊Real.exp T⌋₊
  cut := eventCut T
  index := fun k => k + 1
  first := eventCut_first hT
  last := eventCut_last T
  ordered := fun k _ => eventCut_monotone T (Nat.le_succ k)
  positive := fun k _ => Nat.succ_le_succ (Nat.zero_le k)
  inventory := fun _ hk => Nat.succ_le_of_lt hk
  left_birth := fun _ hk => (eventCut_at_active hk).ge
  right_birth := fun k _ => min_le_left _ _


/-- A concrete graph producer: canonical source coverage is supplied here, not assumed. -/
def canonicalPickupSandwich {V : Type*} (time : V → ℝ)
    (nonnegative : ∀ v, 0 ≤ time v) (depth : V → ℕ → ℕ)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Sandwich V :=
  pickupObservationSandwich time
    (fun v => canonicalPartition (time v) (nonnegative v)) depth guard tolerance

/-- Explicit finite expression, defined without choosing a verification witness. -/
def canonicalUpper (T : ℝ) (depth : ℕ → ℕ) : ℝ :=
  ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
    (eventCut T (k + 1) - eventCut T k) *
      cellUpper (k + 1) (eventCut T k) (eventCut T (k + 1)) (depth k)

theorem cross_le_canonicalUpper {T : ℝ} (hT : 0 ≤ T) (depth : ℕ → ℕ) :
    pickupCross T ≤ canonicalUpper T depth :=
  cross_le_partitionUpper (canonicalPartition T hT) depth

theorem canonicalUpper_refinement_le {T : ℝ} (hT : 0 ≤ T)
    (d e : ℕ → ℕ) (hde : ∀ k < ⌊Real.exp T⌋₊, d k ≤ e k) :
    canonicalUpper T e ≤ canonicalUpper T d :=
  partitionUpper_refinement_le (canonicalPartition T hT) d e hde

/-- Independent certificates of one source combine by minimum, not subtraction of
an already counted negative credit. Neither method must dominate everywhere. -/
def hybridUpper (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ) : ℝ :=
  min (canonicalUpper T depth) (signedUpper T primes)

theorem cross_le_hybridUpper {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ) (hp : ∀ p ∈ primes, p.Prime) :
    pickupCross T ≤ hybridUpper T depth primes :=
  le_min (cross_le_canonicalUpper hT depth) (cross_le_signedUpper hT primes hp)

/-- Both refinement mechanisms act monotonically on the same certified upper bound. -/
theorem hybridUpper_refinement_le {T : ℝ} (hT : 0 ≤ T)
    (d e : ℕ → ℕ) (hde : ∀ k < ⌊Real.exp T⌋₊, d k ≤ e k)
    {P Q : Finset ℕ} (hPQ : P ⊆ Q) :
    hybridUpper T e Q ≤ hybridUpper T d P :=
  min_le_min (canonicalUpper_refinement_le hT d e hde) (signedUpper_antitone T hPQ)

/-- Direct application to the existing arithmetic-energy analytic return. -/
theorem riemannHypothesis_of_quadratic_good_scales
    (depth : ℝ → ℕ → ℕ) {G : Set ℝ} (hcover : AffineFrequent G)
    (hbudget : SubexponentialOn (fun T => canonicalUpper T (depth T)) G) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  exact subexponentialOn_mono hbudget (fun T _ hT => cross_le_canonicalUpper hT (depth T))

/-- The combined signed bound, rather than either method separately, may supply the rate. -/
theorem riemannHypothesis_of_hybrid_good_scales
    (depth : ℝ → ℕ → ℕ) (primes : ℝ → Finset ℕ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hp : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ primes T, p.Prime)
    (hbudget : SubexponentialOn (fun T => hybridUpper T (depth T) (primes T)) G) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  exact subexponentialOn_mono hbudget
    (fun T hG hT => cross_le_hybridUpper hT (depth T) (primes T) (hp T hG hT))

/-- Different interpolation/credit choices may control complementary outer-time regions. -/
theorem riemannHypothesis_of_hybrid_finite_cover {ι : Type*}
    (methods : Finset ι) (regions : ι → Set ℝ)
    (depth : ι → ℝ → ℕ → ℕ) (primes : ι → ℝ → Finset ℕ)
    (hcover : AffineFrequent {T | ∃ i ∈ methods, T ∈ regions i})
    (hp : ∀ i ∈ methods, ∀ T ∈ regions i, 0 ≤ T → ∀ p ∈ primes i T, p.Prime)
    (hbudget : ∀ i ∈ methods,
      SubexponentialOn (fun T => hybridUpper T (depth i T) (primes i T)) (regions i)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_finite_cover methods regions
  intro i hi
  exact subexponentialOn_mono (hbudget i hi)
    (fun T hG hT => cross_le_hybridUpper hT (depth i T) (primes i T) (hp i hi T hG hT))

end GRWTSK.NumberTheory.Moebius.PickupRefinementCriterion
