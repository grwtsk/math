/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.OperatorTheory.DeterminantSectorCoercivity

set_option autoImplicit false
noncomputable section

/-!
# Sector coercivity relative to a vacuum energy

Raw sector lower bounds must be shifted by E0 before forming the gap
determinant. A nonzero vector at energy E0 obstructs a positive relative
bound on the entire space. A physical gap must restrict to the justified
vacuum complement; that identification is not supplied here.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.VacuumRelativeSectorCoercivity
open DeterminantSectorCoercivity

variable (N : ℕ) [NeZero N]

def relativeEnergy (t : ℝ) (q : ZMod N → ℝ) (E0 : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) : ℝ :=
  hamiltonianEnergy N t q x - E0 * ‖x‖ ^ 2

theorem relative_energy_add (t : ℝ) (q : ZMod N → ℝ) (E0 : ℝ)
    (u v : EuclideanSpace ℂ (ZMod N))
    (hnorm : ‖u + v‖ ^ 2 = ‖u‖ ^ 2 + ‖v‖ ^ 2) :
    relativeEnergy N t q E0 (u + v) = relativeEnergy N t q E0 u +
      relativeEnergy N t q E0 v + mixedEnergy N t q u v := by
  unfold relativeEnergy
  rw [energy_add, hnorm]
  ring

theorem shifted_sector_coercivity (t : ℝ) (q : ZMod N → ℝ)
    (E0 a b c : ℝ) (u v : EuclideanSpace ℂ (ZMod N))
    (htrace : 0 < (a - E0) + (b - E0))
    (hdet : 0 < (a - E0) * (b - E0) - c ^ 2)
    (hnorm : ‖u + v‖ ^ 2 = ‖u‖ ^ 2 + ‖v‖ ^ 2)
    (hu : a * ‖u‖ ^ 2 ≤ hamiltonianEnergy N t q u)
    (hv : b * ‖v‖ ^ 2 ≤ hamiltonianEnergy N t q v)
    (hcross : -2 * c * ‖u‖ * ‖v‖ ≤ mixedEnergy N t q u v) :
    0 < determinantGap (a - E0) (b - E0) c ∧
      determinantGap (a - E0) (b - E0) c * ‖u + v‖ ^ 2 ≤
        relativeEnergy N t q E0 (u + v) := by
  refine ⟨determinantGap_pos _ _ _ htrace hdet, ?_⟩
  have hb := comparison_lower_bound (a - E0) (b - E0) c ‖u‖ ‖v‖ htrace
  rw [hnorm]
  unfold relativeEnergy
  rw [energy_add, hnorm]
  unfold comparisonForm at hb
  nlinarith

/-- The shifted determinant can fail despite a positive raw determinant. -/
theorem raw_margin_does_not_imply_relative_margin :
    0 < determinantGap 2 2 0 ∧ determinantGap (2 - 2) (2 - 2) 0 = 0 := by
  norm_num [determinantGap]

theorem no_positive_full_space_relative_bound (t : ℝ) (q : ZMod N → ℝ)
    (E0 : ℝ) (ω : EuclideanSpace ℂ (ZMod N)) (hω : ω ≠ 0)
    (henergy : hamiltonianEnergy N t q ω = E0 * ‖ω‖ ^ 2) :
    ¬ ∃ κ : ℝ, 0 < κ ∧ ∀ x, κ * ‖x‖ ^ 2 ≤ relativeEnergy N t q E0 x := by
  rintro ⟨κ, hκ, hbound⟩
  have hb := hbound ω
  have hn : 0 < ‖ω‖ ^ 2 := pow_pos (norm_pos_iff.mpr hω) 2
  have hp := mul_pos hκ hn
  simp only [relativeEnergy, henergy, sub_self] at hb
  linarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.VacuumRelativeSectorCoercivity
