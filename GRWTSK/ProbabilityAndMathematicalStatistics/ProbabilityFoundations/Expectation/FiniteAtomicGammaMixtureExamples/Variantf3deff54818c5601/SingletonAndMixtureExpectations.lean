/-
SingletonAndMixtureExpectations
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68
Organized SHA-256: 403c50b2e6807bac89857ac5c743c45b4b0532cf9b895722e7643d8c28fdbbaa
PMD: 510.8.010.020 expectation (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- The singleton packet remains a full Fin1 outcome with actual simplex mass one and arbitrary real spectral value. Atomic mass/probability, dependent mix normalization and dirichletMeanMixture expectation keep the exact outer shapes, packets, Fintype/DecidableEq and observable parameters. Its whole same-source shape companion is imported; no new finite-packet provider substitutes for the original Spectral umbrella. The original namespace BitMatrix.Tests.GammaDirichletSpectral is retained literally, so containing namespaces are not changed in this component despite the generic shared-header sentence. The physical GRWTSK subject path is its logical module. Original imported providers remain historical and unresolved; no GRWTSK alias or replacement provider is introduced. Distinct duplicate historical declarations cannot be assumed compatible coimports; there is no umbrella admission. Any decide/native_decide proof is retained source text and was NOT_RUN. -/

import BitMatrix.Probability
import BitMatrix.Spectral
import Mathlib.Tactic

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.TwoCoordinateGammaShapeExamples.Variantf3deff54818c5601.PositiveDataAndFiniteLaws

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

def singletonPacket (value : ℝ) : FinitePacket (Fin 1) where
  spectralValue := fun _ => value
  probability :=
    { weight := fun _ => 1
      nonnegative := fun _ => by norm_num
      normalized := by simp }

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

end

end BitMatrix.Tests.GammaDirichletSpectral
