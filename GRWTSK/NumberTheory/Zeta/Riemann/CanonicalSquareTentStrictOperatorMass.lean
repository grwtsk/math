/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream mathematical sources retain their authorship and licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Strict operator positivity has an arithmetic square-window obligation

The actual canonical square-tent source has a nonnegative diagonal arithmetic
Gram.  At every distinguished basis vector its diagonal equals the original
square-window von Mangoldt mass, not an arbitrary positive spectral weight.

Thus a strictly positive Hilbert-space operator that realizes this *entire*
source Gram through an injective linear map would require strictly positive
mass in each represented square window.  The existing arithmetic construction
proves only nonnegativity: strict source positivity is not silently imported
from finite-dimensional self-adjoint-path positivity.

The conditional zero-mass witness is an explicit nonzero isotropic vector.
No square-window mass is asserted to vanish or to be strictly positive.
A positive von Mangoldt mass in a square window is NOT identified with an
actual prime between consecutive squares without a separate prime-power
analysis.  No classical zeta Weil form, Connes trace formula, RH implication,
or general Legendre conjecture result is established here.

SOURCE_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictOperatorMass

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction
open GRWTSK.NumberTheory.Chebyshev.TentSource

/-- The canonical coefficient basis vector is genuinely nonzero. -/
theorem basisCombination_ne_zero {M : ℕ} (i : Fin (M + 1)) :
    basisCombination i ≠ (0 : Combination M) := by
  intro h
  have hi := congrArg (fun u : Combination M => u i) h
  simp [basisCombination] at hi

/-- Each concrete arithmetic basis energy is the actual square-window
von Mangoldt source.  This does not assert strict positivity. -/
theorem basis_energy_eq_square_mass {M : ℕ} (i : Fin (M + 1)) :
    realTargetForm (basisCombination i) (basisCombination i) =
      squareTentMangoldt (i.1 + 2) := by
  change (sourcePolarizedForm (basisCombination i) (basisCombination i)).re =
    squareTentMangoldt (i.1 + 2)
  rw [sourcePolarizedForm_basis_eq_arithmeticCrossCoefficient i i]
  simpa using (arithmeticCrossCoefficient_diag_eq_mangoldt i)

/-- Strict source Gram positivity necessarily pays every diagonal arithmetic
square-window mass; it cannot be inferred from nonnegative stages alone. -/
theorem strict_source_gram_forces_square_mass_positive
    {M : ℕ}
    (hstrict : ∀ u : Combination M, u ≠ 0 → 0 < realTargetForm u u)
    (i : Fin (M + 1)) :
    0 < squareTentMangoldt (i.1 + 2) := by
  have h := hstrict (basisCombination i) (basisCombination_ne_zero i)
  rwa [basis_energy_eq_square_mass] at h

/-- A zero-mass stage, if supplied, gives an actual nonzero isotropic
source vector: nonnegative source energy alone cannot rule this out. -/
theorem zero_square_mass_gives_nonzero_isotropic
    {M : ℕ} (i : Fin (M + 1))
    (hzero : squareTentMangoldt (i.1 + 2) = 0) :
    ∃ u : Combination M, u ≠ 0 ∧ realTargetForm u u = 0 := by
  refine ⟨basisCombination i, basisCombination_ne_zero i, ?_⟩
  exact (basis_energy_eq_square_mass i).trans hzero

/-- Any injective linear realization of the entire actual arithmetic diagonal
as a strictly positive operator quadratic form forces positive square-window
mass at every represented stage. The source/operator equality and injection
are explicit independent hypotheses; no classical Weil identification is made. -/
theorem strict_operator_image_forces_square_mass_positive
    {M : ℕ} {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (A : E →L[ℂ] E)
    (representation : Combination M →ₗ[ℂ] E)
    (hinjective : Function.Injective representation)
    (hidentify : ∀ u : Combination M,
      realTargetForm u u =
        (inner ℂ (A (representation u)) (representation u)).re)
    (hstrict : ∀ x : E, x ≠ 0 → 0 < (inner ℂ (A x) x).re)
    (i : Fin (M + 1)) :
    0 < squareTentMangoldt (i.1 + 2) := by
  have hrep : representation (basisCombination i) ≠ 0 := by
    intro hz
    apply basisCombination_ne_zero i
    apply hinjective
    simpa only [map_zero] using hz
  have hpos := hstrict (representation (basisCombination i)) hrep
  rw [← hidentify (basisCombination i)] at hpos
  rwa [basis_energy_eq_square_mass] at hpos

/-- A proven zero-mass square stage would obstruct every exact, injective
realization in a strictly positive operator. This is a conditional no-go
statement, not a constructed zero-mass stage or an RH conclusion. -/
theorem zero_square_mass_excludes_strict_operator_image
    {M : ℕ} {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (i : Fin (M + 1))
    (hzero : squareTentMangoldt (i.1 + 2) = 0)
    (A : E →L[ℂ] E)
    (representation : Combination M →ₗ[ℂ] E)
    (hinjective : Function.Injective representation)
    (hidentify : ∀ u : Combination M,
      realTargetForm u u =
        (inner ℂ (A (representation u)) (representation u)).re) :
    ¬ (∀ x : E, x ≠ 0 → 0 < (inner ℂ (A x) x).re) := by
  intro hstrict
  have hi := strict_operator_image_forces_square_mass_positive
    A representation hinjective hidentify hstrict i
  simp [hzero] at hi

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictOperatorMass
