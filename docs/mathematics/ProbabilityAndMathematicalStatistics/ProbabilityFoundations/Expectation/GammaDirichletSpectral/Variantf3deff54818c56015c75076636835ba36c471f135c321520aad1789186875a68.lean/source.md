# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GammaDirichletSpectral.Variantf3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec237a4304fcb4c1c930009879ab0a6a3509f730` · SHA-256 `f3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Probability
import BitMatrix.Spectral
import Mathlib.Tactic

/-!
# Gamma--Dirichlet and spectral transport tests

Focused kernel checks for the exact finite formal profile.  The tests do not
identify Mathlib's analytic Gamma with the foreign Lanczos implementation.
-/

namespace BitMatrix.Tests.GammaDirichletSpectral

noncomputable section

open scoped BigOperators
open BitMatrix.Probability
open BitMatrix.Probability.GammaDirichlet
open BitMatrix.Spectral
open MeasureTheory

def twoUnitShapes : DirichletParameters (Fin 2) where
  shape := fun _ => 1
  shapePositive := fun _ => by norm_num

def twoUnitScales : Parameters (Fin 2) :=
  Parameters.equalScale twoUnitShapes 1 (by norm_num)

def midpoint : InteriorSimplexPoint (Fin 2) where
  weight := fun _ => 1 / 2
  nonnegative := fun _ => by norm_num
  normalized := by simp
  positive := fun _ => by norm_num

def positivePair : PositiveSample (Fin 2) where
  mass i := if i = 0 then 1 else 3
  positive i := by
    split <;> norm_num

def singletonPacket (value : ℝ) : FinitePacket (Fin 1) where
  spectralValue := fun _ => value
  probability :=
    { weight := fun _ => 1
      nonnegative := fun _ => by norm_num
      normalized := by simp }

example : twoUnitShapes.total = 2 := by
  simp [twoUnitShapes, DirichletParameters.total]

example : ∑ i, twoUnitShapes.mean i = 1 :=
  twoUnitShapes.sum_mean

example : twoUnitShapes.covariance 0 0 = twoUnitShapes.variance 0 :=
  twoUnitShapes.covariance_self 0

example : twoUnitShapes.covariance 0 1 = twoUnitShapes.covariance 1 0 :=
  twoUnitShapes.covariance_comm 0 1

example :
    twoUnitShapes.covariance 0 1 =
      -(twoUnitShapes.shape 0 * twoUnitShapes.shape 1) /
        (twoUnitShapes.total ^ 2 * (twoUnitShapes.total + 1)) :=
  twoUnitShapes.covariance_of_ne (by decide)

example :
    (twoUnitShapes.concentrate 7 (by norm_num)).mean 0 =
      twoUnitShapes.mean 0 :=
  twoUnitShapes.concentrate_mean 7 (by norm_num) 0

example :
    (twoUnitShapes.concentrate 7 (by norm_num)).variance 0 =
      twoUnitShapes.mean 0 * (1 - twoUnitShapes.mean 0) /
        (7 * twoUnitShapes.total + 1) :=
  twoUnitShapes.concentrate_variance 7 (by norm_num) 0

example : 0 < normalizedGammaDensity twoUnitScales midpoint :=
  normalizedGammaDensity_pos twoUnitScales midpoint

example :
    normalizedGammaDensity twoUnitScales midpoint =
      dirichletDensity twoUnitShapes midpoint :=
  normalizedGammaDensity_equalScale twoUnitShapes 1 (by norm_num) midpoint

example :
    normalizedGammaDensity (twoUnitScales.scaleAll 11 (by norm_num)) midpoint =
      normalizedGammaDensity twoUnitScales midpoint :=
  normalizedGammaDensity_scaleAll twoUnitScales 11 (by norm_num) midpoint

example : transportKernel twoUnitScales twoUnitScales midpoint = 1 :=
  transportKernel_self twoUnitScales midpoint

example (target : Parameters (Fin 2)) :
    transportKernel twoUnitScales target midpoint *
        transportKernel target twoUnitScales midpoint = 1 :=
  transportKernel_inverse twoUnitScales target midpoint

example :
    (positivePair.scale 5 (by norm_num)).normalize = positivePair.normalize :=
  positivePair.normalize_scale 5 (by norm_num)

example : IsProbabilityMeasure (gammaProductMeasure twoUnitScales) :=
  gammaProductMeasure_probability twoUnitScales

example (value : ℝ) :
    (singletonPacket value).atomicMeasure Set.univ = 1 :=
  FinitePacket.atomicMeasure_univ (singletonPacket value)

example (value : ℝ) :
    IsProbabilityMeasure (singletonPacket value).atomicMeasure :=
  inferInstance

example :
    ∑ outcome,
        (FinitePacket.mix midpoint.toSimplexPoint
          (fun i : Fin 2 => singletonPacket (i : ℝ))).probability outcome = 1 :=
  (FinitePacket.mix midpoint.toSimplexPoint
    (fun i : Fin 2 => singletonPacket (i : ℝ))).probability.normalized

example :
    (GammaTransport.dirichletMeanMixture twoUnitShapes
      (fun i : Fin 2 => singletonPacket (i : ℝ))).spectralExpectation id =
      ∑ i : Fin 2, (twoUnitShapes.shape i / twoUnitShapes.total) *
        (singletonPacket (i : ℝ)).spectralExpectation id :=
  GammaTransport.dirichletMeanMixture_spectralExpectation
    twoUnitShapes (fun i : Fin 2 => singletonPacket (i : ℝ)) id

example (value : ℝ) (nonzero : value ≠ 0) :
    exactGamma (value + 1) = value * exactGamma value :=
  exactGamma_recurrence nonzero

end

end BitMatrix.Tests.GammaDirichletSpectral
```
