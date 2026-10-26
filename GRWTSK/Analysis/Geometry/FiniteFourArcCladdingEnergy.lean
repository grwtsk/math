/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and original GRWTSK source retain upstream license/credit. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcHodge
import GRWTSK.Analysis.Geometry.FiniteFourArcFillingTopology
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# A finite cladding potential around the four-contact waveguide

The original four-contact graph Hodge form is nonnegative and has
independently defined topology. A Boolean cladding mask selects
costly sites; strength λ ≥ 0 gives the positive potential term

  E_λ(u) = <u, Δu> + λ * Σ_{cladding} u_i².

For λ>0, a bounded energy enforces a quantitative bound on
the squared field amplitude in the cladding. This is a finite
Schrödinger/Dirichlet-form *barrier* model, not a light-ray
refraction equation, not a harmonic path bending theorem, and
not a physical optical fiber's Maxwell boundary-value problem.

Changing λ does NOT attach or delete a topological two-cell.
The unfilled graph's circulation invariant remains unchanged.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Mass in the chosen high-cost medium. All four original state
coordinates are retained; the mask merely weights their energy. -/
def claddingMass (mask : Fin 4 → Bool) (u : FourCochain) : ℝ :=
  ∑ i, if mask i then (u i) ^ 2 else 0

theorem claddingMass_nonneg
    (mask : Fin 4 → Bool) (u : FourCochain) :
    0 ≤ claddingMass mask u := by
  unfold claddingMass
  apply Finset.sum_nonneg
  intro i _
  split_ifs
  · exact sq_nonneg _
  · exact le_refl 0

/-- Exact positive graph-Dirichlet plus barrier potential energy. -/
def mediumEnergy
    (mask : Fin 4 → Bool) (λ : ℝ) (u : FourCochain) : ℝ :=
  fourDot u (cycleLaplacian u) + λ * claddingMass mask u

/-- For a nonnegative barrier strength, the finite operator form
cannot acquire a negative energy from the added medium. -/
theorem mediumEnergy_nonneg
    (mask : Fin 4 → Bool) {λ : ℝ} (hλ : 0 ≤ λ) (u : FourCochain) :
    0 ≤ mediumEnergy mask λ u := by
  unfold mediumEnergy
  exact add_nonneg (cycleLaplacian_nonneg u)
    (mul_nonneg hλ (claddingMass_nonneg mask u))

/-- This is the actual confinement supplier: the positive
Laplacian cannot cancel the selected barrier contribution.
In particular no full-space spectral gap is asserted. -/
theorem barrier_mass_le_energy
    (mask : Fin 4 → Bool) (λ : ℝ) (u : FourCochain) :
    λ * claddingMass mask u ≤ mediumEnergy mask λ u := by
  unfold mediumEnergy
  have hd := cycleLaplacian_nonneg u
  linarith

/-- A finite state of energy at most B has cladding squared
mass at most B/λ, for a genuinely positive barrier λ. -/
theorem claddingMass_le_of_energy_budget
    (mask : Fin 4 → Bool) {λ B : ℝ} (hλ : 0 < λ)
    (u : FourCochain)
    (hB : mediumEnergy mask λ u ≤ B) :
    claddingMass mask u ≤ B / λ := by
  apply (le_div_iff₀ hλ).2
  have h := barrier_mass_le_energy mask λ u
  nlinarith

/-- Strict quantitative confinement: if the finite total energy
is bounded by B and the cladding penalty λ is large enough that
B < λ ε, then its cladding squared mass is strictly below ε.
This is an energy estimate; it does not assert literal topological
deletion of cladding cells even at very large finite λ. -/
theorem claddingMass_lt_of_high_barrier
    (mask : Fin 4 → Bool) {λ B ε : ℝ}
    (hλ : 0 < λ) (u : FourCochain)
    (hB : mediumEnergy mask λ u ≤ B)
    (hthreshold : B < λ * ε) :
    claddingMass mask u < ε := by
  have h := barrier_mass_le_energy mask λ u
  nlinarith

/-- The energy is monotone in the barrier strength for fixed
geometry and state, without altering edges or 2-cells. -/
theorem mediumEnergy_monotone
    (mask : Fin 4 → Bool) (u : FourCochain)
    {λ μ : ℝ} (h : λ ≤ μ) :
    mediumEnergy mask λ u ≤ mediumEnergy mask μ u := by
  unfold mediumEnergy
  have hm := claddingMass_nonneg mask u
  exact add_le_add_left (mul_le_mul_of_nonneg_right h hm) _

theorem mediumEnergy_zero_barrier
    (mask : Fin 4 → Bool) (u : FourCochain) :
    mediumEnergy mask 0 u = fourDot u (cycleLaplacian u) := by
  simp [mediumEnergy]

/-- Changing the cladding penalty cannot change the topological
criterion from the *unchanged* oriented contact incidence.
A potential barrier is not a topological deletion or filling. -/
theorem topology_unchanged_by_medium
    (mask : Fin 4 → Bool) (λ : ℝ) (a : FourCochain) :
    ((∃ f : FourCochain, edgeDifference f = a) ↔
      cycleFlux a = 0) := by
  exact exact_edgeDifference_iff_zero_flux a

/-- The same nonexact circulation survives *every* energy penalty,
including arbitrarily large finite ones. -/
theorem nonexact_unit_survives_all_barriers
    (mask : Fin 4 → Bool) (λ : ℝ) :
    ¬ ∃ f : FourCochain,
      edgeDifference f = (fun _ : Fin 4 => (1 : ℝ)) :=
  constant_one_not_edgeDifference

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
