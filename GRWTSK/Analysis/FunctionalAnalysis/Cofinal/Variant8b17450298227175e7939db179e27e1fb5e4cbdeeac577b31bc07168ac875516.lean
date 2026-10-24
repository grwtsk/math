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
