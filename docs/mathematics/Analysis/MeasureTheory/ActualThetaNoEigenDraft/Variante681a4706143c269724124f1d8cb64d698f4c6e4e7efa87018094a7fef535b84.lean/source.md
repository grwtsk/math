# Complete source: GRWTSK.Analysis.MeasureTheory.ActualThetaNoEigenDraft.Variante681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85d6ea5b1d34751872b072959942f336a568c307` · SHA-256 `e681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import NoEigenDraft
import ThetaJacobiUnitary

set_option autoImplicit false

namespace ContinuousThetaNoEigenDraft

open MeasureTheory
open FormalResearch.RiemannHypothesis
open ThetaMomentMeasure ThetaMultiplicationDomain ThetaJacobiUnitary

noncomputable section

/-- Literal actual theta moment measure, not a renamed spectral assumption. -/
theorem actualMomentMeasure_nullSingleton (t : ℝ) :
    NullSingletonClass (momentMeasure t) :=
  shiftedDensityMeasure_nullSingleton t (fun u => ENNReal.ofReal (ThetaPositiveLift.thetaPhi u))

/-- Actual theta multiplication has no nonzero eigenvector at any complex value. -/
theorem actualTheta_coordinate_eigenvector_eq_zero (t : ℝ) (z : ℂ)
    (f : coordinateDomain (momentMeasure t))
    (h : coordinateMultiplication (momentMeasure t) f =
      z • (f : Lp ℂ 2 (momentMeasure t))) :
    (f : Lp ℂ 2 (momentMeasure t)) = 0 := by
  have := actualMomentMeasure_nullSingleton t
  exact coordinate_eigenvector_eq_zero _ z f h

/-- Exact domain-preserving unitary transports the actual absence of eigenvectors. -/
theorem actualTheta_jacobi_eigenvector_eq_zero {t : ℝ} (ht : 0 ≤ t) (z : ℂ)
    (f : jacobiDomain t ht)
    (h : jacobiOperator t ht f = z • (f : lp (fun _ : ℕ => ℂ) 2)) :
    (f : lp (fun _ : ℕ => ℂ) 2) = 0 := by
  have he : (domainUnitary t ht f : Lp ℂ 2 (momentMeasure t)) = 0 :=
    actualTheta_coordinate_eigenvector_eq_zero t z (domainUnitary t ht f) (by
      rw [← pointedUnitary_jacobiOperator ht f, h, map_smul]
      rfl)
  apply (pointedUnitary t ht).injective
  rw [map_zero]
  exact he

#print axioms actualMomentMeasure_nullSingleton
#print axioms actualTheta_coordinate_eigenvector_eq_zero
#print axioms actualTheta_jacobi_eigenvector_eq_zero

end
end ContinuousThetaNoEigenDraft
```
