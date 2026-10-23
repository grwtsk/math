/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentHarmonic
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.NumberTheory.LegendreSymbol.AddCharacter
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Alias-free cutoff regime for the period-4X sampled Fejer kernel. -/
def NonAliasingFejerCutoffRegime
    (X N : ℕ) : Prop :=
  0 < X ∧ 0 < N ∧ N < fejerOctavePeriod X

/-- Any nonzero Fourier mode in the triangular support is nonzero modulo the
period 4X when the cutoff is alias-free. -/
theorem triangularFrequency_nonzero_mod_octavePeriod
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    {k : ℤ}
    (hk0 : k ≠ 0)
    (hk : Int.natAbs k < N) :
    (k : ZMod (fejerOctavePeriod X)) ≠ 0 := by
  intro hz
  have hdiv :
      (fejerOctavePeriod X : ℤ) ∣ k := by
    simpa [ZMod.intCast_eq_zero_iff_dvd] using hz
  rcases hreg with ⟨hX, hN, hNL⟩
  have hLabs :
      fejerOctavePeriod X ≤ Int.natAbs k := by
    apply Int.natAbs_le_of_dvd_ne_zero hdiv hk0
  omega

/-- Zero Fourier coefficient of the symmetric triangular kernel is exactly one
in the nondegenerate cutoff regime. -/
theorem symmetricTriangularWeight_zero
    {N : ℕ} (hN : 0 < N) :
    symmetricTriangularWeight N 0 = 1 := by
  unfold symmetricTriangularWeight
  simp [hN]

/-- Exact finite DFT mass theorem still required for sharp-step reproduction.
Under N < 4X, all nonzero triangular frequencies are nontrivial characters on
ZMod (4X), so finite-character orthogonality should leave only the zero mode. -/
def PeriodFourXSampledKernelMassOneClaim : Prop :=
  ∀ X N : ℕ,
    NonAliasingFejerCutoffRegime X N →
      (∑ r ∈ Finset.range (fejerOctavePeriod X),
        signedSampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N r) = 1

/-- Matching nonnegativity supplier for the real signed sample.  This follows
from the Fejer closed form but is kept explicit for the discrete convolution
argument. -/
def PeriodFourXSampledKernelNonnegativeClaim : Prop :=
  ∀ X N : ℕ,
    NonAliasingFejerCutoffRegime X N →
      ∀ r : ℤ,
        0 ≤ signedSampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N r

/-- Corrected sharp-step comparison includes the alias-free cutoff hypothesis
needed by the discrete mass-one theorem. -/
def NonAliasingPrimePrefixFejerFirstMomentComparisonAtCutoff : Prop :=
  ∀ X N m : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X ≤ m → m ≤ 4 * X →
      |nonAliasingPrimePrefixFejerOperator.error X N m| ≤
        nonAliasingFejerFirstMomentBudget X N

/-- Finite-DFT prerequisites for the remaining convolution comparison. -/
structure NonAliasingFejerDiscreteReproductionData where
  massOne : PeriodFourXSampledKernelMassOneClaim
  nonnegative : PeriodFourXSampledKernelNonnegativeClaim

/-- The previous comparison interface without N < 4X is intentionally no
longer the accepted frontier. -/
structure NonAliasingFejerSharpStepAccepted where
  reproduction : NonAliasingFejerDiscreteReproductionData
  comparison : NonAliasingPrimePrefixFejerFirstMomentComparisonAtCutoff
  harmonicBound : NonAliasingFejerFirstMomentHarmonicBoundClaim

end GRWTSK.RiemannHypothesis
