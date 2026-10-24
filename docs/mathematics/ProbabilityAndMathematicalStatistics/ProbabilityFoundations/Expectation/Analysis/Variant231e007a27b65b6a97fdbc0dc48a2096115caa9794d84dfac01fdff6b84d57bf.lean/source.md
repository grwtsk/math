# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Analysis.Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39514dcafb5d2813e22094f733fbbe1b118f3ea5` · SHA-256 `d0f7961af4c70f14361ef9919d495e5cc9bf946e395e8d242350b7a020b8fe06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.SampleCount.Variantc198a7ffe946a6b8efd05032ee6b042d997faf66c895881ab0da6593894e2d07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c198a7ffe946a6b8efd05032ee6b042d997faf66c895881ab0da6593894e2d07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.SampleCount.Variantc198a7ffe946a6b8efd05032ee6b042d997faf66c895881ab0da6593894e2d07","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"c198a7ffe946a6b8efd05032ee6b042d997faf66c895881ab0da6593894e2d07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/WalshFourier/Analysis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.WalshFourier.Noise


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.SampleCount.Variantc198a7ffe946a6b8efd05032ee6b042d997faf66c895881ab0da6593894e2d07

namespace Boolean.Cube

namespace WalshFourier

/-- Number of samples in the finite Boolean cube. -/
def sampleCount (n : Nat) : Nat :=
  (Hypercube.vertices n).length

/-- Sum of function values over the finite Boolean cube. -/
def expectationNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    Int :=
  ListTools.sumInt ((Hypercube.vertices n).map f)

/-- Expectation over the uniform finite Boolean cube, as a dyadic value. -/
def expectation {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.CoordinateValue where
  numerator := WalshFourier.expectationNumerator f
  exponent := n

/-- Uncentered moment numerator over the finite Boolean cube. -/
def momentNumerator {n : Nat}
    (p : Nat)
    (f : WalshFourier.Function n) :
    Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).map
      (fun x => f x ^ p))

/-- `L^p` power numerator for integer-valued cube functions. -/
def lpPowerNumerator {n : Nat}
    (p : Nat)
    (f : WalshFourier.Function n) :
    Nat :=
  ListTools.sumNat
    ((Hypercube.vertices n).map
      (fun x => Int.natAbs (f x) ^ p))

/-- Second moment numerator, written separately for energy identities. -/
def secondMomentNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    Int :=
  WalshFourier.momentNumerator 2 f

/--
Numerator of the centered value `f(x) - E[f]`.

The represented value is divided by `2^n`.
-/
def centeredValueNumerator {n : Nat}
    (f : WalshFourier.Function n)
    (x : WalshFourier.Sample n) :
    Int :=
  (2 ^ n : Nat) * f x - WalshFourier.expectationNumerator f

/-- Sum of squared centered-value numerators. -/
def centeredSecondMomentNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).map
      (fun x =>
        WalshFourier.centeredValueNumerator f x *
          WalshFourier.centeredValueNumerator f x))

/-- Covariance numerator with denominator `2^(2n)`. -/
def covarianceNumerator {n : Nat}
    (f g : WalshFourier.Function n) :
    Int :=
  (2 ^ n : Nat) * WalshFourier.innerProduct f g -
    WalshFourier.expectationNumerator f *
      WalshFourier.expectationNumerator g

/-- Covariance over the uniform finite Boolean cube, as a dyadic value. -/
def covariance {n : Nat}
    (f g : WalshFourier.Function n) :
    Fourier.Dyadic where
  numerator := WalshFourier.covarianceNumerator f g
  exponent := n + n

/-- Variance numerator with denominator `2^(2n)`. -/
def varianceNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    Int :=
  WalshFourier.covarianceNumerator f f

/-- Variance over the uniform finite Boolean cube, as a dyadic value. -/
def variance {n : Nat}
    (f : WalshFourier.Function n) :
    Fourier.Dyadic where
  numerator := WalshFourier.varianceNumerator f
  exponent := n + n

/-- Synthesis numerator from an arbitrary Walsh-coordinate table. -/
def synthesisNumeratorFromCoordinates {n : Nat}
    (coordinate : WalshFourier.Frequency n → Int)
    (x : WalshFourier.Sample n) :
    Int :=
  ListTools.sumInt
    ((Fourier.subsets n).map
      (fun S => coordinate S * WalshFourier.character S x))

/-- Walsh synthesis numerator using the projection numerators of `f`. -/
def spectralSynthesisNumerator {n : Nat}
    (f : WalshFourier.Function n)
    (x : WalshFourier.Sample n) :
    Int :=
  WalshFourier.synthesisNumeratorFromCoordinates
    (fun S => WalshFourier.projectionNumerator f S)
    x

/-- Sample-space numerator for the finite spectral noise operator. -/
def noiseSynthesisNumerator {n : Nat}
    (rho : Int)
    (f : WalshFourier.Function n)
    (x : WalshFourier.Sample n) :
    Int :=
  WalshFourier.synthesisNumeratorFromCoordinates
    (fun S => WalshFourier.NoiseOperator rho f S)
    x

/--
`L^p` power numerator for the synthesized noisy function.

Each noisy value has denominator `2^n`; this definition records only the
integer numerator side used by finite hypercontractive comparisons.
-/
def noiseLpPowerNumerator {n : Nat}
    (p : Nat)
    (rho : Int)
    (f : WalshFourier.Function n) :
    Nat :=
  ListTools.sumNat
    ((Hypercube.vertices n).map
      (fun x =>
        Int.natAbs
          (WalshFourier.noiseSynthesisNumerator rho f x) ^ p))

/-- Spectral mass concentrated on a fixed Walsh degree. -/
def degreeLayerSpectralMassNumerator {n : Nat}
    (k : Nat)
    (f : WalshFourier.Function n) :
    Int :=
  WalshFourier.weightedSpectralMassNumerator
    (fun S => if WalshFourier.degree S = k then 1 else 0)
    f

/-- Spectral mass on degrees at most `k`. -/
def lowDegreeSpectralMassNumerator {n : Nat}
    (k : Nat)
    (f : WalshFourier.Function n) :
    Int :=
  WalshFourier.weightedSpectralMassNumerator
    (fun S => if WalshFourier.degree S ≤ k then 1 else 0)
    f

/-- Spectral mass on degrees greater than `k`. -/
def highDegreeSpectralMassNumerator {n : Nat}
    (k : Nat)
    (f : WalshFourier.Function n) :
    Int :=
  WalshFourier.weightedSpectralMassNumerator
    (fun S => if k < WalshFourier.degree S then 1 else 0)
    f

/-- Discrete coordinate difference of an integer-valued cube function. -/
def coordinateDifference {n : Nat}
    (f : WalshFourier.Function n)
    (i : Fin n) :
    WalshFourier.Function n :=
  fun x => f (Hypercube.flip x i) - f x

/-- Energy numerator of one coordinate difference. -/
def coordinateDifferenceEnergyNumerator {n : Nat}
    (f : WalshFourier.Function n)
    (i : Fin n) :
    Int :=
  WalshFourier.sampleEnergy
    (WalshFourier.coordinateDifference f i)

/-- Total coordinate-difference energy over all coordinates. -/
def totalDifferenceEnergyNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    Int :=
  ListTools.sumInt
    ((List.finRange n).map
      (fun i =>
        WalshFourier.coordinateDifferenceEnergyNumerator f i))

@[simp] theorem sampleCount_eq_pow (n : Nat) :
    WalshFourier.sampleCount n = 2 ^ n := by
  simp [WalshFourier.sampleCount]

@[simp] theorem expectation_numerator {n : Nat}
    (f : WalshFourier.Function n) :
    (WalshFourier.expectation f).numerator =
      WalshFourier.expectationNumerator f := rfl

@[simp] theorem expectation_exponent {n : Nat}
    (f : WalshFourier.Function n) :
    (WalshFourier.expectation f).exponent = n := rfl

@[simp] theorem expectation_denominator {n : Nat}
    (f : WalshFourier.Function n) :
    (WalshFourier.expectation f).denominator = 2 ^ n := rfl

@[simp] theorem covariance_numerator {n : Nat}
    (f g : WalshFourier.Function n) :
    (WalshFourier.covariance f g).numerator =
      WalshFourier.covarianceNumerator f g := rfl

@[simp] theorem covariance_exponent {n : Nat}
    (f g : WalshFourier.Function n) :
    (WalshFourier.covariance f g).exponent = n + n := rfl

@[simp] theorem variance_numerator {n : Nat}
    (f : WalshFourier.Function n) :
    (WalshFourier.variance f).numerator =
      WalshFourier.varianceNumerator f := rfl

@[simp] theorem variance_exponent {n : Nat}
    (f : WalshFourier.Function n) :
    (WalshFourier.variance f).exponent = n + n := rfl

@[simp] theorem varianceNumerator_eq_covariance_self {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.varianceNumerator f =
      WalshFourier.covarianceNumerator f f := rfl

@[simp] theorem character_zeroFrequency :
    ∀ {n : Nat} (x : WalshFourier.Sample n),
      WalshFourier.character (WalshFourier.zeroFrequency n) x = 1
  | 0, _x => by
      simp [WalshFourier.character, Fourier.character]
  | n + 1, x => by
      have ih := character_zeroFrequency (Hypercube.dropLast x)
      have hdrop :
          Hypercube.dropLast (WalshFourier.zeroFrequency (n + 1)) =
            WalshFourier.zeroFrequency n := by
        funext i
        rfl
      rw [WalshFourier.character, Fourier.character, hdrop]
      simp [WalshFourier.zeroFrequency, Hypercube.last]
      simpa [WalshFourier.character] using ih

theorem expectationNumerator_eq_projection_zero {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.expectationNumerator f =
      WalshFourier.projectionNumerator f
        (WalshFourier.zeroFrequency n) := by
  unfold WalshFourier.expectationNumerator
    WalshFourier.projectionNumerator WalshFourier.innerProduct
    WalshFourier.characterFunction
  apply ListTools.sumInt_map_congr
  intro x
  simp

theorem expectation_eq_averageCoordinate {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.expectation f =
      WalshFourier.averageCoordinate f := by
  unfold WalshFourier.expectation WalshFourier.averageCoordinate
    WalshFourier.projection
  simp [WalshFourier.expectationNumerator_eq_projection_zero]

theorem secondMomentNumerator_eq_sampleEnergy {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.secondMomentNumerator f =
      WalshFourier.sampleEnergy f := by
  unfold WalshFourier.secondMomentNumerator
    WalshFourier.momentNumerator WalshFourier.sampleEnergy
    WalshFourier.innerProduct
  apply ListTools.sumInt_map_congr
  intro x
  rw [show 2 = Nat.succ 1 by rfl, Int.pow_succ]
  rw [show 1 = Nat.succ 0 by rfl, Int.pow_succ]
  simp

theorem spectralMass_eq_scaled_secondMoment {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.spectralMassNumerator f =
      (2 ^ n : Nat) *
        WalshFourier.secondMomentNumerator f := by
  rw [WalshFourier.secondMomentNumerator_eq_sampleEnergy]
  exact WalshFourier.spectralMass_eq_scaled_sampleEnergy f

theorem varianceNumerator_eq_spectralMass_sub_zeroFrequency {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.varianceNumerator f =
      WalshFourier.spectralMassNumerator f -
        WalshFourier.projectionNumerator f
          (WalshFourier.zeroFrequency n) *
        WalshFourier.projectionNumerator f
          (WalshFourier.zeroFrequency n) := by
  unfold WalshFourier.varianceNumerator
    WalshFourier.covarianceNumerator
  rw [WalshFourier.spectralMass_eq_scaled_sampleEnergy f]
  rw [← WalshFourier.expectationNumerator_eq_projection_zero f]
  rfl

theorem noiseSynthesisNumerator_one {n : Nat}
    (f : WalshFourier.Function n)
    (x : WalshFourier.Sample n) :
    WalshFourier.noiseSynthesisNumerator 1 f x =
      WalshFourier.spectralSynthesisNumerator f x := by
  unfold WalshFourier.noiseSynthesisNumerator
    WalshFourier.spectralSynthesisNumerator
    WalshFourier.synthesisNumeratorFromCoordinates
  apply ListTools.sumInt_map_congr
  intro S
  simp [WalshFourier.NoiseOperator]

theorem degreeLayerSpectralMass_eq_weightedSpectralMass {n : Nat}
    (k : Nat)
    (f : WalshFourier.Function n) :
    WalshFourier.degreeLayerSpectralMassNumerator k f =
      WalshFourier.weightedSpectralMassNumerator
        (fun S => if WalshFourier.degree S = k then 1 else 0)
        f := rfl

theorem lowDegreeSpectralMass_eq_weightedSpectralMass {n : Nat}
    (k : Nat)
    (f : WalshFourier.Function n) :
    WalshFourier.lowDegreeSpectralMassNumerator k f =
      WalshFourier.weightedSpectralMassNumerator
        (fun S => if WalshFourier.degree S ≤ k then 1 else 0)
        f := rfl

theorem highDegreeSpectralMass_eq_weightedSpectralMass {n : Nat}
    (k : Nat)
    (f : WalshFourier.Function n) :
    WalshFourier.highDegreeSpectralMassNumerator k f =
      WalshFourier.weightedSpectralMassNumerator
        (fun S => if k < WalshFourier.degree S then 1 else 0)
        f := rfl

end WalshFourier

end Boolean.Cube
```
