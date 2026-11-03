/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib operator and inner-product facts retain upstream authorship and licenses. -/
import GRWTSK.OperatorTheory.VacuumComplementOverlap
import GRWTSK.OperatorTheory.ArithmeticCyclicRelativeGapPerturbation

set_option autoImplicit false
noncomputable section

/-!
# Finite gap transfer with changing complement

For a normalized old eigen-vacuum, removing its component preserves
relative energy exactly. A gap kappa on its complement transfers to
the complement of a nearby vector with coefficient
kappa*(1-eta^2)-norm(q-r)-abs(E-F).
No positivity of this coefficient is asserted without a further bound.
The new vector is not proved to be an eigen-vacuum; physical identification,
uniform regulator estimates and continuum reconstruction remain missing.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicChangingVacuumGap
open VacuumComplementOverlap ArithmeticCyclicVacuumComplement
open VacuumRelativeSectorCoercivity ArithmeticCyclicRelativeGapPerturbation
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (N : ℕ) [NeZero N]

theorem relative_energy_removeVacuum (t : ℝ) (r : ZMod N → ℝ) (F : ℝ)
    (ω x : EuclideanSpace ℂ (ZMod N)) (hunit : ‖ω‖ = 1)
    (hω : hamiltonianOperator N t r ω = (F : ℂ) • ω) :
    relativeEnergy N t r F x = relativeEnergy N t r F (removeVacuum N ω x) := by
  have heigen : hamiltonianOperator N t r ((inner ℂ ω x) • ω) =
      (F : ℂ) • ((inner ℂ ω x) • ω) := by
    simp [map_smul, hω, smul_smul, mul_comm]
  have horth : inner ℂ ((inner ℂ ω x) • ω) (removeVacuum N ω x) = 0 := by
    rw [inner_smul_left, removeVacuum_orthogonal N ω x hunit, mul_zero]
  have hs := relative_energy_vacuum_split N t r F ((inner ℂ ω x) • ω)
    (removeVacuum N ω x) heigen horth
  have he : (inner ℂ ω x) • ω + removeVacuum N ω x = x := by
    unfold removeVacuum
    abel
  rwa [he] at hs

theorem actual_changing_complement_gap (t : ℝ) (q r : ZMod N → ℝ) (E F κ η : ℝ)
    (ω ν x : EuclideanSpace ℂ (ZMod N)) (hunit : ‖ω‖ = 1)
    (hω : hamiltonianOperator N t r ω = (F : ℂ) • ω)
    (hκ : 0 ≤ κ) (hη : 0 ≤ η) (hchange : ‖ω - ν‖ ≤ η)
    (hgap : ∀ y : EuclideanSpace ℂ (ZMod N), inner ℂ ω y = 0 →
      κ * ‖y‖ ^ 2 ≤ relativeEnergy N t r F y)
    (hx : inner ℂ ν x = 0) :
    (κ * (1 - η ^ 2) - ‖q - r‖ - |E - F|) * ‖x‖ ^ 2 ≤
      relativeEnergy N t q E x := by
  have hn := mul_le_mul_of_nonneg_left
    (retained_norm_lower_of_vacuum_change N ω ν x hunit hx η hη hchange) hκ
  have hg := hgap (removeVacuum N ω x) (removeVacuum_orthogonal N ω x hunit)
  have he := relative_energy_removeVacuum N t r F ω x hunit hω
  have hp := relative_energy_lower N t q r E F x
  nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicChangingVacuumGap
