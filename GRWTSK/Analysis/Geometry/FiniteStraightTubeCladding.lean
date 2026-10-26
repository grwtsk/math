/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and prior GRWTSK sources retain their upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
import GRWTSK.Analysis.Geometry.FiniteFourArcCladdingEnergy

set_option autoImplicit false
noncomputable section

/-!
# Geometrically defined cladding sampled by a finite Hodge carrier

The physical *straight* cylinder is unchanged when a positive
exterior potential is added. The barrier mask is now DERIVED from
actual site positions relative to the fixed Euclidean tube rather than
chosen arbitrarily. On the same four-contact positive graph Hodge
carrier, bounded total energy constrains the squared amplitude at
these geometrically exterior sites.

This is a finite site sampling of a potential, not Maxwell's equations,
a curved replacement for the Kakeya tube, a spectral limit, or an
analytic tube-intersection/volume bound.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

open GRWTSK.Analysis.Geometry.FiniteFourArcContact

variable {d : ℕ}

namespace Tube

/-- High-cost exterior, exactly the complement of the unchanged
geometric straight cylinder. -/
def exterior (T : Tube d) : Set (Space d) := T.regionᶜ

theorem measurableSet_exterior (T : Tube d) :
    MeasurableSet T.exterior :=
  T.measurableSet_region.compl

/-- Purely geometric exterior potential: zero inside the tube and λ
outside. This is a scalar finite potential model, not refractive
index, optical path length, or an imposed Dirichlet boundary. -/
def exteriorPotential (T : Tube d) (λ : ℝ) (x : Space d) : ℝ :=
  if x ∈ T.region then 0 else λ

theorem exteriorPotential_zero_of_mem (T : Tube d) (λ : ℝ)
    {x : Space d} (h : x ∈ T.region) :
    T.exteriorPotential λ x = 0 := by
  simp [exteriorPotential, h]

theorem exteriorPotential_eq_of_not_mem (T : Tube d) (λ : ℝ)
    {x : Space d} (h : x ∉ T.region) :
    T.exteriorPotential λ x = λ := by
  simp [exteriorPotential, h]

theorem exteriorPotential_nonneg (T : Tube d)
    {λ : ℝ} (hλ : 0 ≤ λ) (x : Space d) :
    0 ≤ T.exteriorPotential λ x := by
  by_cases h : x ∈ T.region
  · simp [T.exteriorPotential_zero_of_mem λ h]
  · rw [T.exteriorPotential_eq_of_not_mem λ h]
    exact hλ

/-- Pointwise low potential implies location inside the original
straight tube when the exterior potential exceeds the budget.
This is pointwise geometry, not the minimization of a bent route. -/
theorem mem_region_of_potential_lt_strength (T : Tube d)
    {λ : ℝ} {x : Space d} (h : T.exteriorPotential λ x < λ) :
    x ∈ T.region := by
  by_contra hx
  rw [T.exteriorPotential_eq_of_not_mem λ hx] at h
  exact (lt_irrefl λ) h

/-- Actual sampled sites, not an abstract arbitrary graph mask. -/
def outsideMask (T : Tube d) (site : Fin 4 → Space d) :
    Fin 4 → Bool :=
  fun i => decide (site i ∉ T.region)

theorem outsideMask_eq_true_iff (T : Tube d)
    (site : Fin 4 → Space d) (i : Fin 4) :
    T.outsideMask site i = true ↔ site i ∉ T.region := by
  simp [outsideMask]

theorem outsideMask_eq_false_iff (T : Tube d)
    (site : Fin 4 → Space d) (i : Fin 4) :
    T.outsideMask site i = false ↔ site i ∈ T.region := by
  simp [outsideMask]

/-- The existing positive Hodge energy plus the *geometric* tube
exterior selector. The four vertex positions are explicit new data. -/
def sampledExteriorEnergy (T : Tube d)
    (site : Fin 4 → Space d) (λ : ℝ)
    (u : FourCochain) : ℝ :=
  mediumEnergy (T.outsideMask site) λ u

/-- A genuine medium-confined finite site model:
for λ>0, any bounded-energy field has small squared amplitude
on those sites actually outside the unbent source cylinder. -/
theorem sampled_exterior_mass_le
    (T : Tube d) (site : Fin 4 → Space d)
    {λ B : ℝ} (hλ : 0 < λ)
    (u : FourCochain)
    (hB : T.sampledExteriorEnergy site λ u ≤ B) :
    claddingMass (T.outsideMask site) u ≤ B / λ := by
  exact claddingMass_le_of_energy_budget
    (T.outsideMask site) hλ u hB

/-- In particular a geometrically exterior sample with amplitude u_i
has squared amplitude at most B/λ, with NO claim about volume,
a continuously defined harmonic field, or bent Kakeya witnesses. -/
theorem exterior_site_amplitude_sq_le
    (T : Tube d) (site : Fin 4 → Space d)
    {λ B : ℝ} (hλ : 0 < λ)
    (u : FourCochain)
    (hB : T.sampledExteriorEnergy site λ u ≤ B)
    (i : Fin 4) (hi : site i ∉ T.region) :
    (u i) ^ 2 ≤ B / λ := by
  have hmask : T.outsideMask site i = true :=
    (T.outsideMask_eq_true_iff site i).2 hi
  have hsingle :
      (u i) ^ 2 ≤ claddingMass (T.outsideMask site) u := by
    unfold claddingMass
    have h :=
      Finset.single_le_sum
        (s := (Finset.univ : Finset (Fin 4)))
        (f := fun j => if T.outsideMask site j then (u j) ^ 2 else 0)
        (fun j _ => by
          split_ifs
          · exact sq_nonneg _
          · exact le_refl 0)
        (Finset.mem_univ i)
    simpa [hmask] using h
  exact hsingle.trans (T.sampled_exterior_mass_le site hλ u hB)

/-- The actual straight tube region is unchanged for every exterior
strength: a finite potential is not a geometry-modifying operation. -/
theorem region_independent_of_exterior_strength
    (T : Tube d) (λ μ : ℝ) :
    T.region = T.region := rfl

theorem volume_independent_of_exterior_strength
    (T : Tube d) (λ μ : ℝ) :
    T.lebesgueVolume = T.lebesgueVolume := rfl

end Tube

end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
