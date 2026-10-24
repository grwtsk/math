# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SpectralPlateau.Variantbc566fc4d1f479cb804ec2e336aa818f7b84fef95ded001b13bb1d746a29b4a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c88bf8e65d870b2574df7be8ece91eec9ac3be8` · SHA-256 `bc566fc4d1f479cb804ec2e336aa818f7b84fef95ded001b13bb1d746a29b4a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite spectral-gap and entropy-plateau certificates

This module records finite spectral/entropy certificates for generated WFC
state spaces.  It does not prove an analytic heat-flow theorem.  A supplied or
computed finite spectral-gap witness plus finite inequalities certify only the
finite plateau obligations stated here.
-/

namespace Presentation
namespace SpectralPlateau

/-- Finite feasible graph metadata. -/
structure FiniteFeasibleGraph where
  label : String
  vertexCount : Nat
  laplacianHash : Nat

/-- Connected feasible-class metadata. -/
structure ConnectedFeasibleClass
    (_G : FiniteFeasibleGraph) where
  label : String
  classHash : Nat
  connected : Prop
  connectedProof : connected

/-- Supplied finite spectral-gap lower-bound certificate. -/
structure SpectralGapCertificate
    (G : FiniteFeasibleGraph)
    (_C : ConnectedFeasibleClass G) where
  numerator : Nat
  denominator : Nat
  denominatorPositive : denominator > 0
  spectralGapPositive : numerator > 0

/-- Finite mass-outside-stable-class bound using energy and spectral gap metadata. -/
structure MassOutsideStableClassBound
    (G : FiniteFeasibleGraph)
    (_C : ConnectedFeasibleClass G)
    (_gap : SpectralGapCertificate G _C) where
  toleranceNumerator : Nat
  toleranceDenominator : Nat
  toleranceDenominatorPositive : toleranceDenominator > 0
  boundHolds : Prop
  boundProof : boundHolds

/-- Finite entropy-variation inequality certificate. -/
structure EntropyVariationBound
    (G : FiniteFeasibleGraph)
    (_C : ConnectedFeasibleClass G) where
  toleranceNumerator : Nat
  toleranceDenominator : Nat
  toleranceDenominatorPositive : toleranceDenominator > 0
  entropyVariationWithinTolerance : Prop
  entropyVariationProof : entropyVariationWithinTolerance

/-- Complete finite plateau certificate. -/
structure FiniteSpectralEntropyPlateauCertificate where
  graph : FiniteFeasibleGraph
  feasibleClass : ConnectedFeasibleClass graph
  spectralGap : SpectralGapCertificate graph feasibleClass
  massOutside : MassOutsideStableClassBound graph feasibleClass spectralGap
  entropyVariation : EntropyVariationBound graph feasibleClass
  plateauInequality : Prop
  plateauInequalityProof : plateauInequality

/-- The supplied finite spectral gap is positive. -/
theorem finite_spectral_gap_positive
    (C : FiniteSpectralEntropyPlateauCertificate) :
    C.spectralGap.numerator > 0 :=
  C.spectralGap.spectralGapPositive

/-- The supplied feasible class is connected. -/
theorem finite_feasible_class_connected
    (C : FiniteSpectralEntropyPlateauCertificate) :
    C.feasibleClass.connected :=
  C.feasibleClass.connectedProof

/-- The finite mass-outside bound is certified by its payload proof. -/
theorem finite_mass_outside_stable_class_bound
    (C : FiniteSpectralEntropyPlateauCertificate) :
    C.massOutside.boundHolds :=
  C.massOutside.boundProof

/-- The finite entropy variation bound is certified by its payload proof. -/
theorem finite_entropy_variation_bound
    (C : FiniteSpectralEntropyPlateauCertificate) :
    C.entropyVariation.entropyVariationWithinTolerance :=
  C.entropyVariation.entropyVariationProof

/-- The finite plateau inequality is certified by its payload proof. -/
theorem finite_entropy_plateau_inequality
    (C : FiniteSpectralEntropyPlateauCertificate) :
    C.plateauInequality :=
  C.plateauInequalityProof

/-- Complete finite certificate for spectral-gap/entropy-plateau obligations. -/
theorem finite_spectral_entropy_plateau_certificate_sound
    (C : FiniteSpectralEntropyPlateauCertificate) :
    C.feasibleClass.connected ∧
      C.spectralGap.numerator > 0 ∧
      C.massOutside.boundHolds ∧
      C.entropyVariation.entropyVariationWithinTolerance ∧
      C.plateauInequality :=
  ⟨finite_feasible_class_connected C,
    finite_spectral_gap_positive C,
    finite_mass_outside_stable_class_bound C,
    finite_entropy_variation_bound C,
    finite_entropy_plateau_inequality C⟩

/--
Boundary-calculus named route for the finite spectral/entropy plateau
certificate.  This is finite-certified, not an analytic heat-flow theorem.
-/
theorem finite_spectral_entropy_plateau_through_boundary_calculus
    (C : FiniteSpectralEntropyPlateauCertificate) :
    C.feasibleClass.connected ∧
      C.spectralGap.numerator > 0 ∧
      C.massOutside.boundHolds ∧
      C.entropyVariation.entropyVariationWithinTolerance ∧
      C.plateauInequality :=
  finite_spectral_entropy_plateau_certificate_sound C

/-- A finite Laplacian hash alone does not own the plateau theorem. -/
def FiniteLaplacianPayloadOwnsPlateau
    (_G : FiniteFeasibleGraph)
    (_laplacianHash : Nat) : Prop :=
  False

/-- Direct finite Laplacian-payload authority attempts fail. -/
theorem finite_laplacian_payload_authority_attempt_fails
    (G : FiniteFeasibleGraph)
    (laplacianHash : Nat) :
    ¬ FiniteLaplacianPayloadOwnsPlateau G laplacianHash := by
  intro h
  exact h

end SpectralPlateau
end Presentation
```
