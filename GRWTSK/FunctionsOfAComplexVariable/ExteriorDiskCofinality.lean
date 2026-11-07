/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.ExteriorDiskOrder
import GRWTSK.GeneralTopology.OpenNeighborhoodRefinement
import Mathlib.Order.Cofinal

/-!
# Cofinality at infinity and its scalar escape criterion

For A=(center,radius), `escapeRadius A = radius - ‖center‖`. It is not
truncated at zero: moving centers are precisely why radius growth alone is
insufficient. The radius-R centered exterior contains A.exterior exactly
when R ≤ escapeRadius A. A family is cofinal iff these numbers are unbounded.

Primary proof: test against centered disks for necessity; for sufficiency,
use ‖a-b‖ ≤ ‖a‖+‖b‖. Finite sets have bounded escape. Integer and dyadic
centered disks give explicit cofinal families. The drifting disks (n+1,n+1)
are a monotone counterexample with unbounded radii but zero escape.

The compact-complement characterization of the ACTUAL OnePoint topology
then proves that this is cofinality among all open neighborhoods of infinity,
not only among a newly defined family. Monotonicity plus cofinality supplies
an eventual refinement theorem; monotonicity alone does not.

These elementary proofs have no arithmetic source or positivity premise.
No RH/GRH result, PGL2 realization, or incidence-algebra inversion is claimed.
Elaboration, compilation, kernel replay, axiom audit, independent review:
NOT_RUN at publication. Mathlib pin: d13f23b723b8a846827a245b89c10fc7d3f11612.
-/

set_option autoImplicit false
noncomputable section
open Set Filter

namespace GRWTSK.ComplexGeometry.ExteriorDisk

/-- This signed quantity detects refinement towards the fixed point infinity. -/
def escapeRadius (A : ExteriorDisk) : ℝ := A.radius - ‖A.center‖

def radial (R : ℝ) (hR : 0 < R) : ExteriorDisk := ⟨0, R, hR⟩

@[simp] theorem radial_le_iff (R : ℝ) (hR : 0 < R) (A : ExteriorDisk) :
    radial R hR ≤ A ↔ R ≤ A.escapeRadius := by
  simp only [le_def, radial, zero_sub, norm_neg, escapeRadius]
  constructor <;> intro h <;> linarith

@[simp] theorem radial_escapeRadius (R : ℝ) (hR : 0 < R) :
    (radial R hR).escapeRadius = R := by simp [escapeRadius, radial]

theorem escapeRadius_monotone : Monotone escapeRadius := by
  intro A B h
  change ‖A.center - B.center‖ + A.radius ≤ B.radius at h
  have ht := norm_add_le A.center (B.center - A.center)
  have heq : A.center + (B.center - A.center) = B.center := by ring
  rw [heq, norm_sub_rev B.center A.center] at ht
  dsimp [escapeRadius]
  linarith

theorem exists_common_upper_bound (A B : ExteriorDisk) :
    ∃ C : ExteriorDisk, A ≤ C ∧ B ≤ C := by
  let R := max (‖A.center‖ + A.radius) (‖B.center‖ + B.radius)
  have hRA : ‖A.center‖ + A.radius ≤ R := le_max_left _ _
  have hRB : ‖B.center‖ + B.radius ≤ R := le_max_right _ _
  have hR : 0 < R := lt_of_lt_of_le
    (add_pos_of_nonneg_of_pos (norm_nonneg _) A.radius_pos) hRA
  refine ⟨radial R hR, ?_, ?_⟩
  · simpa only [le_def, radial, sub_zero] using hRA
  · simpa only [le_def, radial, sub_zero] using hRB

theorem exists_strict_upper_bound (A : ExteriorDisk) : ∃ B : ExteriorDisk, A < B := by
  let B : ExteriorDisk := ⟨A.center, A.radius + 1, by linarith [A.radius_pos]⟩
  refine ⟨B, lt_iff_le_not_ge.mpr ⟨?_, ?_⟩⟩ <;> simp [le_def, B]

/-- Weak unboundedness over ALL real thresholds; a bound is defeated at R+1. -/
theorem isCofinal_iff_escape_unbounded (S : Set ExteriorDisk) :
    IsCofinal S ↔ ∀ R : ℝ, ∃ A ∈ S, R ≤ A.escapeRadius := by
  constructor
  · intro h R
    have hpos : 0 < max R 1 := lt_of_lt_of_le zero_lt_one (le_max_right _ _)
    obtain ⟨A, hA, hRA⟩ := h (radial (max R 1) hpos)
    exact ⟨A, hA, (le_max_left R 1).trans ((radial_le_iff _ _ _).mp hRA)⟩
  · intro h A
    obtain ⟨B, hB, hlarge⟩ := h (‖A.center‖ + A.radius)
    refine ⟨B, hB, ?_⟩
    have ht := norm_add_le A.center (-B.center)
    simp only [← sub_eq_add_neg, norm_neg] at ht
    change ‖A.center - B.center‖ + A.radius ≤ B.radius
    dsimp [escapeRadius] at hlarge
    linarith

theorem isCofinal_iff_not_bddAbove (S : Set ExteriorDisk) :
    IsCofinal S ↔ ¬ BddAbove (escapeRadius '' S) := by
  rw [isCofinal_iff_escape_unbounded]
  constructor
  · intro h ⟨R, hR⟩
    obtain ⟨A, hA, hlarge⟩ := h (R + 1)
    have hsmall := hR ⟨A, hA, rfl⟩
    linarith
  · intro h R
    by_contra hn
    apply h
    refine ⟨R, ?_⟩
    rintro t ⟨A, hA, rfl⟩
    have hnot : ¬ R ≤ A.escapeRadius := fun ha => hn ⟨A, hA, ha⟩
    exact (lt_of_not_ge hnot).le

/-- An elementary finite bound, avoiding any assumption of a largest disk. -/
theorem finset_escape_bounded (s : Finset ExteriorDisk) :
    ∃ R : ℝ, ∀ A ∈ s, A.escapeRadius ≤ R := by
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨0, by simp⟩
  | @insert A s hA ih =>
    obtain ⟨R, hR⟩ := ih
    refine ⟨max A.escapeRadius R, ?_⟩
    intro B hB
    rcases Finset.mem_insert.mp hB with rfl | hB
    · exact le_max_left _ _
    · exact (hR B hB).trans (le_max_right _ _)

theorem finite_not_isCofinal {S : Set ExteriorDisk} (hS : S.Finite) : ¬ IsCofinal S := by
  classical
  intro hc
  obtain ⟨R, hR⟩ := finset_escape_bounded hS.toFinset
  obtain ⟨A, hA, hlarge⟩ := (isCofinal_iff_escape_unbounded S).mp hc (R + 1)
  have hsmall := hR A (hS.mem_toFinset.mpr hA)
  linarith

def integerDisk (n : ℕ) : ExteriorDisk := radial ((n : ℝ) + 1) (by positivity)
def dyadicDisk (n : ℕ) : ExteriorDisk := radial ((2 : ℝ) ^ n) (by positivity)

theorem integerDisk_cofinal : IsCofinal (Set.range integerDisk) := by
  apply (isCofinal_iff_escape_unbounded _).mpr
  intro R
  obtain ⟨n, hn⟩ := exists_nat_gt R
  refine ⟨integerDisk n, ⟨n, rfl⟩, ?_⟩
  simp only [integerDisk, radial_escapeRadius]
  linarith

theorem nat_add_one_le_two_pow (n : ℕ) : (n : ℝ) + 1 ≤ (2 : ℝ) ^ n := by
  induction n with
  | zero => norm_num
  | succ n ih =>
    rw [Nat.cast_succ, pow_succ]
    have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
    nlinarith

theorem dyadicDisk_cofinal : IsCofinal (Set.range dyadicDisk) := by
  apply (isCofinal_iff_escape_unbounded _).mpr
  intro R
  obtain ⟨n, hn⟩ := exists_nat_gt R
  refine ⟨dyadicDisk n, ⟨n, rfl⟩, ?_⟩
  simp only [dyadicDisk, radial_escapeRadius]
  exact (by linarith : R ≤ (n : ℝ) + 1).trans (nat_add_one_le_two_pow n)

/-- Cofinality plus monotonicity gives eventual containment, not merely visits. -/
theorem eventual_refinement_of_monotone_cofinal {A : ℕ → ExteriorDisk}
    (hm : Monotone A) (hc : IsCofinal (Set.range A)) (R : ℝ) (hR : 0 < R) :
    ∃ N : ℕ, ∀ n ≥ N, (A n).exterior ⊆ (radial R hR).exterior := by
  obtain ⟨B, ⟨N, rfl⟩, hN⟩ := hc (radial R hR)
  exact ⟨N, fun n hn => (exterior_subset_iff _ _).mpr (hN.trans (hm hn))⟩

theorem tendsto_escape_of_monotone_cofinal {A : ℕ → ExteriorDisk}
    (hm : Monotone A) (hc : IsCofinal (Set.range A)) :
    Tendsto (fun n => (A n).escapeRadius) atTop atTop := by
  apply Filter.tendsto_atTop.mpr
  intro R
  obtain ⟨B, ⟨N, rfl⟩, hN⟩ := (isCofinal_iff_escape_unbounded _).mp hc R
  exact Filter.eventually_atTop.mpr
    ⟨N, fun n hn => hN.trans (escapeRadius_monotone (hm hn))⟩

/-- A monotone chain with growing radii but no escape towards infinity. -/
def driftingDisk (n : ℕ) : ExteriorDisk where
  center := (((n : ℝ) + 1 : ℝ) : ℂ)
  radius := (n : ℝ) + 1
  radius_pos := by positivity

@[simp] theorem drifting_escape (n : ℕ) : (driftingDisk n).escapeRadius = 0 := by
  simp [driftingDisk, escapeRadius, Complex.norm_real,
    Real.norm_of_nonneg (by positivity : 0 ≤ (n : ℝ) + 1)]

theorem drifting_monotone : Monotone driftingDisk := by
  intro m n hmn
  have hmnR : (m : ℝ) ≤ (n : ℝ) := by exact_mod_cast hmn
  change ‖(((m : ℝ) + 1 : ℝ) : ℂ) - (((n : ℝ) + 1 : ℝ) : ℂ)‖ +
    ((m : ℝ) + 1) ≤ (n : ℝ) + 1
  rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonpos (by linarith : (m : ℝ) + 1 - ((n : ℝ) + 1) ≤ 0)]
  linarith

theorem drifting_radii_unbounded (R : ℝ) : ∃ n, R < (driftingDisk n).radius := by
  obtain ⟨n, hn⟩ := exists_nat_gt R
  exact ⟨n, by dsimp [driftingDisk]; linarith⟩

theorem drifting_not_cofinal : ¬ IsCofinal (Set.range driftingDisk) := by
  intro hc
  obtain ⟨A, ⟨n, rfl⟩, hn⟩ := (isCofinal_iff_escape_unbounded _).mp hc 1
  have hbad : (1 : ℝ) ≤ 0 := by simpa only [drifting_escape] using hn
  norm_num at hbad

/-- Turn a disk into its actual open neighborhood of infinity. -/
def neighborhood (A : ExteriorDisk) :
    GRWTSK.Topology.OpenNeighborhood (OnePoint.infty : OnePoint ℂ) :=
  ⟨A.exterior, A.exterior_open, A.infty_mem_exterior⟩

@[simp] theorem neighborhood_le_iff (A B : ExteriorDisk) :
    A.neighborhood ≤ B.neighborhood ↔ A ≤ B := exterior_subset_iff A B

/-- Compact complements give an actual radial neighborhood base. -/
theorem exists_radial_refinement
    (U : GRWTSK.Topology.OpenNeighborhood (OnePoint.infty : OnePoint ℂ)) :
    ∃ (R : ℝ) (hR : 0 < R), U ≤ (radial R hR).neighborhood := by
  have hk : IsCompact (OnePoint.some ⁻¹' U.val : Set ℂ)ᶜ :=
    ((OnePoint.isOpen_iff_of_mem' U.property.2).mp U.property.1).1
  obtain ⟨R, hR, hs⟩ := hk.isBounded.subset_closedBall_lt 0 (0 : ℂ)
  refine ⟨R, hR, ?_⟩
  change (radial R hR).exterior ⊆ U.val
  intro z hz
  induction z using OnePoint.rec with
  | infty => exact U.property.2
  | coe z =>
    by_contra hn
    have hb := hs (show z ∈ (OnePoint.some ⁻¹' U.val : Set ℂ)ᶜ from hn)
    have hsmall : ‖z‖ ≤ R := by
      simpa only [Metric.mem_closedBall, dist_eq_norm, sub_zero] using hb
    have hlarge : R < ‖z‖ := by simpa only [coe_mem_exterior, radial, sub_zero] using hz
    linarith

/-- Cofinality is equivalent in the disk model and the full neighborhood poset. -/
theorem neighborhood_image_cofinal_iff (S : Set ExteriorDisk) :
    IsCofinal (neighborhood '' S) ↔ IsCofinal S := by
  constructor
  · intro hc A
    obtain ⟨U, ⟨B, hB, rfl⟩, hAB⟩ := hc A.neighborhood
    exact ⟨B, hB, (neighborhood_le_iff A B).mp hAB⟩
  · intro hc U
    obtain ⟨R, hR, hUR⟩ := exists_radial_refinement U
    obtain ⟨A, hA, hRA⟩ := hc (radial R hR)
    exact ⟨A.neighborhood, ⟨A, hA, rfl⟩,
      hUR.trans ((neighborhood_le_iff _ _).mpr hRA)⟩

theorem infinity_not_isolated : ¬ IsOpen ({OnePoint.infty} : Set (OnePoint ℂ)) := by
  intro h
  let U : GRWTSK.Topology.OpenNeighborhood (OnePoint.infty : OnePoint ℂ) :=
    ⟨{OnePoint.infty}, h, by simp⟩
  obtain ⟨R, hR, hsub⟩ := exists_radial_refinement U
  let z : ℂ := ((R + 1 : ℝ) : ℂ)
  have hz : (z : OnePoint ℂ) ∈ (radial R hR).exterior := by
    rw [coe_mem_exterior]
    change R < ‖z - 0‖
    rw [sub_zero]
    dsimp [z]
    rw [Complex.norm_real, Real.norm_of_nonneg (by linarith : 0 ≤ R + 1)]
    linarith
  have hmem : (z : OnePoint ℂ) ∈ U.val := hsub hz
  simpa [U] using hmem

theorem finite_neighborhoods_not_cofinal
    {S : Set (GRWTSK.Topology.OpenNeighborhood (OnePoint.infty : OnePoint ℂ))}
    (hS : S.Finite) : ¬ IsCofinal S :=
  GRWTSK.Topology.OpenNeighborhood.not_isCofinal_of_finite infinity_not_isolated hS

end GRWTSK.ComplexGeometry.ExteriorDisk
