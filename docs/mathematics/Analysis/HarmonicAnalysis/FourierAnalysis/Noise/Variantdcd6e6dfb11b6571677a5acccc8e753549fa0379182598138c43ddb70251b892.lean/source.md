# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Noise.Variantdcd6e6dfb11b6571677a5acccc8e753549fa0379182598138c43ddb70251b892

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `677ea5d9d64113866d7f69338f2779f78b4945c6` · SHA-256 `dcd6e6dfb11b6571677a5acccc8e753549fa0379182598138c43ddb70251b892`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.WalshFourier.Energy

namespace Boolean.Cube

namespace WalshFourier

/-- Frequency multiplier for the spectral noise operator. -/
def noiseMultiplier {n : Nat}
    (rho : Int)
    (S : WalshFourier.Frequency n) :
    Int :=
  rho ^ WalshFourier.degree S

/--
The spectral action of the noise operator on Walsh projection numerators.

For the current integer-numerator normalization, this records the transformed
projection numerator at each frequency.
-/
def NoiseOperator {n : Nat}
    (rho : Int)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    Int :=
  WalshFourier.noiseMultiplier rho S *
    WalshFourier.projectionNumerator f S

/-- A Walsh coordinate after applying the spectral noise multiplier. -/
def noiseCoordinate {n : Nat}
    (rho : Int)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.CoordinateValue where
  numerator := WalshFourier.NoiseOperator rho f S
  exponent := n

/-- Spectral mass with an arbitrary frequency weight. -/
def weightedSpectralMassNumerator {n : Nat}
    (weight : WalshFourier.Frequency n → Int)
    (f : WalshFourier.Function n) :
    Int :=
  ListTools.sumInt
    ((Fourier.subsets n).map
      (fun S => weight S * projectionProductNumerator f f S))

/-- Spectral mass, expressed through the weighted-mass interface. -/
def spectralMassNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    Int :=
  WalshFourier.spectralEnergyNumerator f

/-- Noise stability numerator: spectral mass weighted by `rho ^ degree`. -/
def noiseStabilityNumerator {n : Nat}
    (rho : Int)
    (f : WalshFourier.Function n) :
    Int :=
  weightedSpectralMassNumerator
    (fun S => WalshFourier.noiseMultiplier rho S)
    f

/-- Coordinate spectral influence mass. -/
def coordinateInfluenceSpectralMassNumerator {n : Nat}
    (f : WalshFourier.Function n)
    (i : Fin n) :
    Int :=
  weightedSpectralMassNumerator
    (fun S => if S i then 1 else 0)
    f

/-- Total spectral influence mass, weighted by Walsh degree. -/
def influenceSpectralMassNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    Int :=
  weightedSpectralMassNumerator
    (fun S => WalshFourier.degree S)
    f

private theorem int_one_pow (k : Nat) :
    (1 : Int) ^ k = 1 := by
  induction k with
  | zero => rfl
  | succ k ih =>
      rw [Int.pow_succ, ih]
      rfl

@[simp] theorem noiseMultiplier_one {n : Nat}
    (S : WalshFourier.Frequency n) :
    WalshFourier.noiseMultiplier 1 S = 1 := by
  exact int_one_pow (WalshFourier.degree S)

@[simp] theorem NoiseOperator_projectionNumerator {n : Nat}
    (rho : Int)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.NoiseOperator rho f S =
      WalshFourier.noiseMultiplier rho S *
        WalshFourier.projectionNumerator f S := rfl

@[simp] theorem NoiseOperator_one {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.NoiseOperator 1 f S =
      WalshFourier.projectionNumerator f S := by
  simp [WalshFourier.NoiseOperator]

@[simp] theorem noiseCoordinate_numerator {n : Nat}
    (rho : Int)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    (WalshFourier.noiseCoordinate rho f S).numerator =
      WalshFourier.NoiseOperator rho f S := rfl

@[simp] theorem noiseCoordinate_exponent {n : Nat}
    (rho : Int)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    (WalshFourier.noiseCoordinate rho f S).exponent = n := rfl

theorem spectralMassNumerator_eq_energy {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.spectralMassNumerator f =
      WalshFourier.spectralEnergyNumerator f := rfl

theorem noiseStability_eq_weightedSpectralMass {n : Nat}
    (rho : Int)
    (f : WalshFourier.Function n) :
    WalshFourier.noiseStabilityNumerator rho f =
      weightedSpectralMassNumerator
        (fun S => WalshFourier.noiseMultiplier rho S)
        f := rfl

theorem noiseStability_one {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.noiseStabilityNumerator 1 f =
      WalshFourier.spectralMassNumerator f := by
  unfold WalshFourier.noiseStabilityNumerator
    WalshFourier.spectralMassNumerator WalshFourier.spectralEnergyNumerator
    weightedSpectralMassNumerator
  apply ListTools.sumInt_map_congr
  intro S
  simp

theorem spectralMass_eq_scaled_sampleEnergy {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.spectralMassNumerator f =
      (2 ^ n : Nat) * WalshFourier.sampleEnergy f := by
  exact WalshFourier.parsevalNumerator f

theorem noiseStability_one_eq_scaled_sampleEnergy {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.noiseStabilityNumerator 1 f =
      (2 ^ n : Nat) * WalshFourier.sampleEnergy f := by
  rw [WalshFourier.noiseStability_one]
  exact WalshFourier.spectralMass_eq_scaled_sampleEnergy f

theorem coordinateInfluenceSpectralMass_eq_weightedSpectralMass {n : Nat}
    (f : WalshFourier.Function n)
    (i : Fin n) :
    WalshFourier.coordinateInfluenceSpectralMassNumerator f i =
      weightedSpectralMassNumerator
        (fun S => if S i then 1 else 0)
        f := rfl

theorem influenceSpectralMass_eq_degreeWeightedSpectralMass {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.influenceSpectralMassNumerator f =
      weightedSpectralMassNumerator
        (fun S => WalshFourier.degree S)
        f := rfl

end WalshFourier

end Boolean.Cube
```
