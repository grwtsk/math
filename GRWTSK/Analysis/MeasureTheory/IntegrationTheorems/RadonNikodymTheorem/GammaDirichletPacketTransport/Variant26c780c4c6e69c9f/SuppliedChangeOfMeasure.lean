/-
SuppliedChangeOfMeasure — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: R.A. Jacob Martone.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2
Organized SHA-256: 9016ccdca0f680303491295c63fefd0aed5a8560985f50c493257a574a0afc86
PMD: 510.5.020.030.060 radon nikodym theorem (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The original ChangeOfMeasure supplies absolute continuity, RN-kernel equality, transport integrability and the integral identity. This theorem is the exact finite-observable application, not construction of the RN bridge or normalization of the pointwise kernel. -/

import BitMatrix.Probability.GammaDirichlet
import BitMatrix.Spectral.Capabilities
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic

import GRWTSK.Analysis.MeasureTheory.IntegrationTheorems.GammaDirichletPacketTransport.Variant26c780c4c6e69c9f.SuppliedMeanAveraging
/-!
# Gamma--Dirichlet transport of finite spectral packets

The deterministic construction in this module mixes finite spectral packets
with a simplex point.  Measure-level averaging is conditional on an inhabited
`GammaDirichlet.MeanLaw`.  Only the equal-scale Dirichlet specialization uses
the coefficient `αᵢ / α₀`; anisotropic normalized-Gamma laws retain their
separately supplied exact mean.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GammaDirichletPacketTransport.Variant26c780c4c6e69c9f

namespace BitMatrix.Spectral.GammaTransport

noncomputable section

open scoped BigOperators ENNReal NNReal
open MeasureTheory
open BitMatrix.Probability
open BitMatrix.Probability.GammaDirichlet
open _root_.BitMatrix.Spectral

variable {I : Type*} [Fintype I] [Nonempty I]
variable {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]

/-- A supplied Radon--Nikodym bridge transports finite spectral evaluations.
No density normalization or bridge is inferred from the pointwise kernel. -/
theorem spectral_changeOfMeasure
    {source target : Parameters I}
    (sourceLaw : AnalyticLaw source) (targetLaw : AnalyticLaw target)
    (change : ChangeOfMeasure sourceLaw targetLaw)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ)
    (integrable : Integrable
      (fun point => randomSpectralExpectation point packets observable)
      targetLaw.measure) :
    (∫ point, randomSpectralExpectation point packets observable
        ∂targetLaw.measure) =
      ∫ point,
        transportKernel source target point *
          randomSpectralExpectation point packets observable
        ∂sourceLaw.measure :=
  change.integral_transport _ integrable


end

end BitMatrix.Spectral.GammaTransport

end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GammaDirichletPacketTransport.Variant26c780c4c6e69c9f
