# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Inequalities.Variant1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `029cefe4bebafd9dcfcdb9d7cfde49d1a7b62b97` · SHA-256 `1b7c7358194027d3460018cfd48cfc968f64954f8af11b2a5f2c7eb69275dea2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.WalshFourier.Analysis

namespace Boolean.Cube

namespace WalshFourier

/--
Finite numerator-form KKL-style statement.

The fields intentionally expose the selected lower-bound numerator and
denominator; this file does not install an analytic asymptotic theorem.
-/
structure KKLBound (n : Nat) where
  function : WalshFourier.Function n
  lowerBoundNumerator : Nat
  lowerBoundDenominator : Nat
  positiveDenominator : 0 < lowerBoundDenominator

/-- The finite KKL-style inequality, represented without division. -/
def KKLHolds {n : Nat} (B : KKLBound n) : Prop :=
  B.lowerBoundNumerator ≤
    Int.natAbs (WalshFourier.influenceSpectralMassNumerator B.function) *
      B.lowerBoundDenominator

/-- Certificate for a finite KKL-style bound. -/
structure KKLCertificate {n : Nat} (B : KKLBound n) where
  bound : WalshFourier.KKLHolds B

/-- Extract the certified finite KKL-style inequality. -/
theorem kkl_bound
    {n : Nat}
    {B : KKLBound n}
    (C : KKLCertificate B) :
    WalshFourier.KKLHolds B :=
  C.bound

/--
Finite numerator-form Bonami-Beckner-style comparison.

The statement compares an `L^q` numerator after applying the finite spectral
noise operator with an `L^p` numerator before noise.
-/
structure BonamiBecknerBound (n : Nat) where
  function : WalshFourier.Function n
  rho : Int
  p : Nat
  q : Nat
  scaleNumerator : Nat
  scaleDenominator : Nat
  positiveDenominator : 0 < scaleDenominator

/-- The finite Bonami-Beckner-style inequality, represented without division. -/
def BonamiBecknerHolds {n : Nat} (B : BonamiBecknerBound n) : Prop :=
  WalshFourier.noiseLpPowerNumerator B.q B.rho B.function *
      B.scaleDenominator ≤
    WalshFourier.lpPowerNumerator B.p B.function *
      B.scaleNumerator

/-- Certificate for a finite Bonami-Beckner-style bound. -/
structure BonamiBecknerCertificate {n : Nat}
    (B : BonamiBecknerBound n) where
  bound : WalshFourier.BonamiBecknerHolds B

/-- Extract the certified finite Bonami-Beckner-style inequality. -/
theorem bonami_beckner_bound
    {n : Nat}
    {B : BonamiBecknerBound n}
    (C : BonamiBecknerCertificate B) :
    WalshFourier.BonamiBecknerHolds B :=
  C.bound

end WalshFourier

end Boolean.Cube
```
