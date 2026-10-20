/-
SuppliedAnalyticMomentAndTransportLaws — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9
Organized SHA-256: a22dadc07a53208d57358ba4287d33f2a3ee3a3fc50815345c14a991752db401
PMD: 510.5.020.030.060 radon nikodym theorem (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full measurable-space instance and all five supplied AnalyticLaw/MeanLaw/EqualScaleMeanLaw/DirichletMomentLaw/ChangeOfMeasure records remain together. They have genuine typed density/probability/integral/moment/RN/integrability equations, not independent named Props. Every field and inheritance parameter is retained. No inhabited law, normalization integral, moment identity or transport bridge is constructed without the supplied package. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import BitMatrix.Probability.Simplex
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.MeasureTheory.Constructions.Pi
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym
import Mathlib.Probability.Distributions.Gamma
import Mathlib.Tactic

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.NormalizedDensityAndRatioKernels

/-!
# Exact Gamma--Dirichlet parameter and transport semantics

`Real.Gamma` is Mathlib's exact analytic Gamma function.  This module builds
the finite positive-parameter algebra used by the Prime-Fiber carrier system:
Dirichlet moments, anisotropic normalized-Gamma densities, pointwise
change-of-measure kernels, concentration, relabeling, and split/merge data.

Mathlib does not currently provide a general finite Dirichlet probability
measure.  Consequently `AnalyticLaw` below is an explicit capability boundary:
the exact parameter/density algebra is constructed here, while a measure-level
normalization or Radon--Nikodym theorem must be supplied with its proof.
Nothing in this module identifies the exact Gamma function with the runtime's
finite Lanczos approximation.
-/

namespace BitMatrix.Probability.GammaDirichlet

noncomputable section

open scoped BigOperators ENNReal NNReal
open MeasureTheory
open BitMatrix.Probability

variable {I J K : Type*}

/-! ## Measure-level authority boundary -/

/-- Measurability is inherited from the finite coordinate family. -/
instance interiorSimplexMeasurableSpace [Fintype I] :
    MeasurableSpace (InteriorSimplexPoint I) :=
  MeasurableSpace.comap (fun point => point.weight) inferInstance

/-- A supplied exact analytic law for one parameter profile, tied to an
explicit reference measure by the normalized-Gamma density.  Its existence is
evidence, not something inferred from the positive density expression. -/
structure AnalyticLaw [Fintype I] [Nonempty I] (parameters : Parameters I) where
  referenceMeasure : Measure (InteriorSimplexPoint I)
  measure : Measure (InteriorSimplexPoint I)
  density_identity :
    measure = referenceMeasure.withDensity
      (fun point => ENNReal.ofReal (normalizedGammaDensity parameters point))
  probability : IsProbabilityMeasure measure

/-- A law with an explicitly supplied simplex-valued mean.  For anisotropic
normalized-Gamma parameters this mean is generally not `αᵢ / α₀`. -/
structure MeanLaw [Fintype I] [Nonempty I] (parameters : Parameters I)
    extends AnalyticLaw parameters where
  expectedWeight : SimplexPoint I
  mean_identity : ∀ i,
    ∫ point, point i ∂measure = expectedWeight i

/-- Equal-scale mean capability.  This record does not independently assert a
full Dirichlet distribution; it only ties the supplied analytic mean to
`αᵢ / α₀`. -/
structure EqualScaleMeanLaw [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I)
    (scale : ℝ) (scalePositive : 0 < scale)
    extends MeanLaw (Parameters.equalScale parameters scale scalePositive) where
  expectedWeight_eq : ∀ i, expectedWeight i = parameters.mean i

/-- Optional proof package connecting the closed-form variance, covariance,
and monomial expressions to an inhabited equal-scale Dirichlet law. -/
structure DirichletMomentLaw [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I)
    (scale : ℝ) (scalePositive : 0 < scale)
    extends EqualScaleMeanLaw parameters scale scalePositive where
  variance_identity : ∀ i,
    (∫ point, (point i - parameters.mean i) ^ 2 ∂measure) =
      parameters.variance i
  covariance_identity : ∀ i j,
    (∫ point,
      (point i - parameters.mean i) * (point j - parameters.mean j)
        ∂measure) = parameters.covariance i j
  monomial_identity : ∀ powers : I → ℕ,
    (∫ point, ∏ i, (point i) ^ powers i ∂measure) =
      parameters.monomialMoment powers

/-- A proof-carrying Radon--Nikodym bridge between two supplied analytic laws. -/
structure ChangeOfMeasure [Fintype I] [Nonempty I]
    {source target : Parameters I}
    (sourceLaw : AnalyticLaw source) (targetLaw : AnalyticLaw target) where
  absolutelyContinuous : targetLaw.measure ≪ sourceLaw.measure
  kernel_eq_rnDeriv :
    (fun point => ENNReal.ofReal (transportKernel source target point))
      =ᵐ[sourceLaw.measure]
        targetLaw.measure.rnDeriv sourceLaw.measure
  integrableTransport : ∀ observable : InteriorSimplexPoint I → ℝ,
    Integrable observable targetLaw.measure →
      Integrable
        (fun point => transportKernel source target point * observable point)
        sourceLaw.measure
  integral_transport : ∀ observable : InteriorSimplexPoint I → ℝ,
    Integrable observable targetLaw.measure →
      (∫ point, observable point ∂targetLaw.measure) =
        ∫ point, transportKernel source target point * observable point
          ∂sourceLaw.measure

end

end BitMatrix.Probability.GammaDirichlet
