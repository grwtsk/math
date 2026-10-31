/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonLocalDensityBounds

/-!
# Actual crossing-plaquette control of boundary changes

Two configurations use the same resampled A-links. Only plaquettes touching
both A and the changed boundary set D contribute to the local action difference.
No fixed incidence count, block independence or uniform contraction is assumed.
The result even allows overlap of A,D: identical resampling cancels those links.
SOURCE_PROOF_CANDIDATE; all four qualification facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Geometry.GaugeTheory.WilsonCrossingAction
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Topology
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
open GRWTSK.Geometry.GaugeTheory.WilsonLocalAction
open GRWTSK.Geometry.GaugeTheory.WilsonLocalDensityCancellation
variable (L : ℕ) [NeZero L]

def crossing (A D : Finset (Link L)) : Finset (Plaquette L) :=
  (affected L A).filter (fun p => p ∈ affected L D)

theorem resample_agree_outside (A D : Finset (Link L))
    (V W : Configuration L SU2) (hVW : ∀ l, l ∉ D → V l = W l)
    (u : {l // l ∈ A} → SU2) (l : Link L) (hl : l ∉ D) :
    resample L A V u l = resample L A W u l := by
  by_cases hA : l ∈ A
  · simp [resample, hA]
  · simp [resample, hA, hVW l hl]

/-- Exact restriction before absolute values or density comparison. -/
theorem local_difference (A D : Finset (Link L))
    (V W : Configuration L SU2) (hVW : ∀ l, l ∉ D → V l = W l)
    (u : {l // l ∈ A} → SU2) :
    localAction L A (resample L A V u)-localAction L A (resample L A W u) =
      ∑ p ∈ crossing L A D,
        (plaquetteEnergy L p (resample L A V u)-plaquetteEnergy L p (resample L A W u)) := by
  unfold localAction
  rw [← Finset.sum_sub_distrib]
  symm
  apply Finset.sum_subset (Finset.filter_subset _ _)
  intro p hpA hpC
  have hpD : p ∉ affected L D := by
    intro hD
    apply hpC
    exact Finset.mem_filter.mpr ⟨hpA,hD⟩
  exact sub_eq_zero.mpr (energy_eq_of_not_affected L D
    (resample L A V u) (resample L A W u)
    (fun l hl => resample_agree_outside L A D V W hVW u l hl) p hpD)

/-- Every retained penalty difference lies in [-2,2], uniformly in resampling. -/
theorem local_difference_bounds (A D : Finset (Link L))
    (V W : Configuration L SU2) (hVW : ∀ l, l ∉ D → V l = W l)
    (u : {l // l ∈ A} → SU2) :
    -2*((crossing L A D).card : ℝ) ≤
      localAction L A (resample L A V u)-localAction L A (resample L A W u) ∧
    localAction L A (resample L A V u)-localAction L A (resample L A W u) ≤
      2*((crossing L A D).card : ℝ) := by
  rw [local_difference L A D V W hVW u]
  constructor
  · calc
      _ = ∑ _p ∈ crossing L A D, (-2 : ℝ) := by simp [mul_comm]
      _ ≤ _ := Finset.sum_le_sum (fun p _ => by
        have hv := plaquetteEnergy_bounds L p (resample L A V u)
        have hw := plaquetteEnergy_bounds L p (resample L A W u)
        linarith)
  · calc
      _ ≤ ∑ _p ∈ crossing L A D, (2 : ℝ) := Finset.sum_le_sum (fun p _ => by
        have hv := plaquetteEnergy_bounds L p (resample L A V u)
        have hw := plaquetteEnergy_bounds L p (resample L A W u)
        linarith)
      _ = _ := by simp [mul_comm]

/-- The action-difference oscillation costs only the crossing inventory. -/
theorem local_difference_oscillation (A D : Finset (Link L))
    (V W : Configuration L SU2) (hVW : ∀ l, l ∉ D → V l = W l)
    (u v : {l // l ∈ A} → SU2) :
    (localAction L A (resample L A V u)-localAction L A (resample L A W u)) -
      (localAction L A (resample L A V v)-localAction L A (resample L A W v)) ≤
      4*((crossing L A D).card : ℝ) := by
  have hu := local_difference_bounds L A D V W hVW u
  have hv := local_difference_bounds L A D V W hVW v
  linarith

end GRWTSK.Geometry.GaugeTheory.WilsonCrossingAction
