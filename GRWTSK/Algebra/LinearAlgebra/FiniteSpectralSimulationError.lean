/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Imported Mathlib and finite spectral results retain original authorship and licenses. -/
import GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeatGap

set_option autoImplicit false
noncomputable section

/-!
# Quantitative finite spectral simulation error propagation

These estimates use the *positive* pairing transported through the spectral
frame. They do not apply contraction to an indefinite signed consumer.
Sector damping is asserted only for the selected supported coordinates,
not for complementary zero modes. No limiting spectral or arithmetic claim
is obtained from these finite inequalities.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat

open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat

universe u v

variable {ι : Type u} [Fintype ι]
variable {E : Type v} [AddCommGroup E] [Module ℝ E]

namespace Model

/-- The exact finite heat semigroup cannot increase the squared distance
between two inputs measured in the pulled-back positive pairing. -/
theorem heat_difference_contracts
    (M : Model ι E) (x y : E) {t : ℝ} (ht : 0 ≤ t) :
    M.pairing (M.heat t x - M.heat t y) (M.heat t x - M.heat t y) ≤
      M.pairing (x - y) (x - y) := by
  simpa [map_sub] using (M.heat_contracts (x - y) ht)

/-- A separately certified input square-error bound remains valid after
exact finite heat propagation, with no invented amplification constant. -/
theorem heat_difference_budget
    (M : Model ι E) (x y : E) {t ε : ℝ}
    (ht : 0 ≤ t)
    (hε : M.pairing (x - y) (x - y) ≤ ε) :
    M.pairing (M.heat t x - M.heat t y) (M.heat t x - M.heat t y) ≤ ε :=
  (M.heat_difference_contracts x y ht).trans hε

/-- A coordinate mask supported entirely above γ produces a vector supported
above γ. No hypothesis is made on its complementary sector. -/
theorem sector_supported_of_mask
    (M : Model ι E) (mask : ι → Bool) (γ : ℝ)
    (hmask : ∀ i, mask i = true → γ ≤ M.eigenvalue i)
    (x : E) :
    M.SupportedAbove γ (M.sectorProjector mask x) := by
  intro i hi
  cases h : mask i
  · exact False.elim (hi (by
      simp [Model.sectorProjector, maskProjector, diagonal,
        LinearMap.comp_apply, h]))
  · exact hmask i h

/-- The gap on a selected sector contracts the selected squared error.
Unselected coordinates are not silently included in the conclusion. -/
theorem sector_heat_difference_gap
    (M : Model ι E) (mask : ι → Bool)
    (x y : E) {t γ : ℝ} (ht : 0 ≤ t)
    (hmask : ∀ i, mask i = true → γ ≤ M.eigenvalue i) :
    M.pairing
        (M.heat t (M.sectorProjector mask (x - y)))
        (M.heat t (M.sectorProjector mask (x - y))) ≤
      Real.exp (-2 * t * γ) *
        M.pairing (M.sectorProjector mask (x - y))
          (M.sectorProjector mask (x - y)) := by
  exact M.heat_gap_contracts
    (M.sectorProjector mask (x - y)) ht
    (M.sector_supported_of_mask mask γ hmask (x - y))

/-- Exact source-difference transport commutes with the coordinate sector
projector, because both selected maps genuinely commute with finite heat. -/
theorem heat_sector_difference_comm
    (M : Model ι E) (mask : ι → Bool) (x y : E) (t : ℝ) :
    M.heat t (M.sectorProjector mask x - M.sectorProjector mask y) =
      M.sectorProjector mask (M.heat t x - M.heat t y) := by
  have h := congrArg (fun f : E →ₗ[ℝ] E => f (x - y))
    (M.heat_sector_comm mask t)
  simpa [LinearMap.comp_apply, map_sub] using h

end Model

end GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat
