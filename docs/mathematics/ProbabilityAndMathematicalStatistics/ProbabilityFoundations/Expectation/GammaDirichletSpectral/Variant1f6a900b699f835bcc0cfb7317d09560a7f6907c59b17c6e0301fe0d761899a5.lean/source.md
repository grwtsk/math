# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GammaDirichletSpectral.Variant1f6a900b699f835bcc0cfb7317d09560a7f6907c59b17c6e0301fe0d761899a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34eb74d6fd6094478384815a4f33cfd609bc385b` · SHA-256 `cc4ad99b3ce887dc6186b7a1eb151ed8ffba3c7e9a398668b59c22c2352c92f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TwoUnitShapes.Variantf3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.TwoUnitShapes.Variantf3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"f3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/GammaDirichletSpectral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Probability
import BitMatrix.Spectral
import Mathlib.Tactic

/-!
# Gamma--Dirichlet and spectral transport tests

Focused kernel checks for the exact finite formal profile.  The tests do not
identify Mathlib's analytic Gamma with the foreign Lanczos implementation.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TwoUnitShapes.Variantf3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68

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
