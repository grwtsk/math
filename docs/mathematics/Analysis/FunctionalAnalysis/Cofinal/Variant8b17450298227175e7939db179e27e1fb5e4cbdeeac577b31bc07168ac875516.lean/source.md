# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Cofinal.Variant8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5deb91f4d945a70d47804d09bf3b6bcbc6d854dd` · SHA-256 `8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.SpectralClosure

/-!
# Cofinal divisor-measure route

No literal limiting operator is required.  Exact finite support equality,
critical-line spectral support, and cofinal analytic coverage suffice.
-/

namespace Mathematics.RHIsolation

structure CountingMeasure where
  support : Set ℂ
  multiplicity : ℂ → Nat

def RiemannHypothesisFor
    (xi : ℂ → ℂ) : Prop :=
  ∀ z,
    xi z = 0 →
    0 < z.re →
    z.re < 1 →
    0 < z.im →
    z.re = (1 : ℝ) / 2

structure CofinalHeightSystem
    (xi : ℂ → ℂ) where
  height : Nat → ℝ
  strictMono : StrictMono height
  tendsToInfinity : Prop
  tendsToInfinityProof : tendsToInfinity
  cut : Nat → CriticalStripCut
  analyticMeasure :
    Nat → CountingMeasure
  spectralMeasure :
    Nat → CountingMeasure
  finiteEquality :
    ∀ index,
      analyticMeasure index =
        spectralMeasure index
  restrictionCompatible : Prop
  restrictionCompatibleProof :
    restrictionCompatible
  completeCofinalCoverage :
    ∀ z,
      xi z = 0 →
      0 < z.re →
      z.re < 1 →
      0 < z.im →
      ∃ index,
        z ∈ (analyticMeasure index).support
  spectralSupport :
    ∀ index z,
      z ∈ (spectralMeasure index).support →
      z.re = (1 : ℝ) / 2

theorem cofinal_measure_equality_implies_RH
    {xi : ℂ → ℂ}
    (system : CofinalHeightSystem xi) :
    RiemannHypothesisFor xi := by
  intro z zZero realPositive realLtOne imagPositive
  obtain ⟨index, analyticSupport⟩ :=
    system.completeCofinalCoverage
      z zZero realPositive realLtOne imagPositive
  have spectralSupport :
      z ∈ (system.spectralMeasure index).support := by
    rw [← system.finiteEquality index]
    exact analyticSupport
  exact system.spectralSupport index z spectralSupport

end Mathematics.RHIsolation
```
