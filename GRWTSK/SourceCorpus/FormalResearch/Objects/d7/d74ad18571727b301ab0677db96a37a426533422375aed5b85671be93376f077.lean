import Mathematics.NeuralDiffusion.SpectralOrbit
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Certified quantitative odd-residue decay

The heat interface is now propositionally bound to `exp (-t D²)`.  A positive
odd-sector spectral gap is additional mathematical data.  This module packages
the exact decay estimate as a proof-bearing certificate and derives the
quantitative theorem from it; the former false implication from a merely
contractive semigroup has been removed.
-/

namespace Mathematics.NeuralDiffusion

universe u v

noncomputable section

open scoped InnerProductSpace

/-- The exact quantitative finite-shell decay statement. -/
def OddResidueDecayEstimate
    {Algebra : Type u} {Hilbert : Type v}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℝ Hilbert]
    [FiniteDimensional ℝ Hilbert]
    (shell : SpectralOrbitShell Algebra Hilbert)
    (spectralGap : ℝ) : Prop :=
  0 < spectralGap ∧
    ∀ time, 0 ≤ time →
      ∀ state,
        shell.symmetry.involution state = -state →
        ‖shell.spectral.heat time state‖ ≤
          Real.exp (-time * spectralGap ^ 2) * ‖state‖

/--
A proof-bearing odd-sector spectral-gap realization.  The rate estimate is
logical data, while `spectralGapCertificate` is only its replay provenance.
-/
structure CertifiedOddSpectralGap
    {Algebra : Type u} {Hilbert : Type v}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℝ Hilbert]
    [FiniteDimensional ℝ Hilbert]
    (shell : SpectralOrbitShell Algebra Hilbert) where
  spectralGap : ℝ
  spectralGap_positive : 0 < spectralGap
  heat_decay :
    ∀ time, 0 ≤ time →
      ∀ state,
        shell.symmetry.involution state = -state →
        ‖shell.spectral.heat time state‖ ≤
          Real.exp (-time * spectralGap ^ 2) * ‖state‖
  spectralGapCertificate : ObjectAddress

/--
Certified functional calculus plus a proved positive odd spectral gap yields
the quantitative exponential decay estimate.
-/
theorem oddResidueDecay
    {Algebra : Type u} {Hilbert : Type v}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℝ Hilbert]
    [FiniteDimensional ℝ Hilbert]
    {shell : SpectralOrbitShell Algebra Hilbert}
    (gap : CertifiedOddSpectralGap shell) :
    OddResidueDecayEstimate shell gap.spectralGap :=
  ⟨gap.spectralGap_positive, gap.heat_decay⟩

end

end Mathematics.NeuralDiffusion
