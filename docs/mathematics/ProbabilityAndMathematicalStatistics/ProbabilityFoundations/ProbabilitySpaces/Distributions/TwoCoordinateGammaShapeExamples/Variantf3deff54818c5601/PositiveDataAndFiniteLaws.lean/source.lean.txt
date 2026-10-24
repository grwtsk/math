/-
PositiveDataAndFiniteLaws
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68
Organized SHA-256: 403c50b2e6807bac89857ac5c743c45b4b0532cf9b895722e7643d8c28fdbbaa
PMD: 510.8.010.010.040 distributions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- The full twoUnitShapes/twoUnitScales/midpoint/positivePair definitions retain shape positivity, exact halves, normalization and positive masses 1 and 3. Total=2, sum means, diagonal/commuting/off-diagonal covariance, concentration mean/variance, density positivity, equal-scale density/scaleAll invariance, kernel self/inverse and scaled-sample normalization retain every original target parameter and proof body. These exact formulas do not establish a new Dirichlet measure or general analytic existence law. The original namespace BitMatrix.Tests.GammaDirichletSpectral is retained literally, so containing namespaces are not changed in this component despite the generic shared-header sentence. The physical GRWTSK subject path is its logical module. Original imported providers remain historical and unresolved; no GRWTSK alias or replacement provider is introduced. Distinct duplicate historical declarations cannot be assumed compatible coimports; there is no umbrella admission. Any decide/native_decide proof is retained source text and was NOT_RUN. -/

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

end

end BitMatrix.Tests.GammaDirichletSpectral
