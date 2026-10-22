/-
SuppliedMeanAveraging — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: R.A. Jacob Martone.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2
Organized SHA-256: 9016ccdca0f680303491295c63fefd0aed5a8560985f50c493257a574a0afc86
PMD: 510.5.020.030 integration theorems (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- All MeanLaw/EqualScaleMeanLaw parameters, positive scale, expectedWeight identities and explicit coordinateIntegrable hypotheses remain. Anisotropic means are never replaced by alpha_i/alpha_0. No analytic-law existence, measurability or integrability beyond stated premises is manufactured. -/

import BitMatrix.Probability.GammaDirichlet
import BitMatrix.Spectral.Capabilities
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic

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

/-- Mixture at the exact simplex-valued mean supplied by an analytic law.
For anisotropic normalized-Gamma parameters these weights are deliberately not
rewritten to `αᵢ / α₀`. -/
def meanMixture {parameters : Parameters I}
    (law : MeanLaw parameters)
    (packets : ∀ i, FinitePacket (Outcomes i)) :
    FinitePacket (Σ i, Outcomes i) :=
  FinitePacket.mix law.expectedWeight packets

theorem meanMixture_normalized {parameters : Parameters I}
    (law : MeanLaw parameters)
    (packets : ∀ i, FinitePacket (Outcomes i)) :
    ∑ outcome, (meanMixture law packets).probability outcome = 1 :=
  (meanMixture law packets).probability.normalized

/-- The random simplex-weighted evaluation of a finite spectral observable. -/
def randomSpectralExpectation
    (point : InteriorSimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) : ℝ :=
  (FinitePacket.mix point.toSimplexPoint packets).spectralExpectation observable

omit [Nonempty I] in
theorem randomSpectralExpectation_eq_sum
    (point : InteriorSimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) :
    randomSpectralExpectation point packets observable =
      ∑ i, point i * (packets i).spectralExpectation observable := by
  exact FinitePacket.spectralExpectation_mix point.toSimplexPoint packets observable

/-- An analytic mean law transports every finite spectral observable to the
mixture at its exact supplied mean.  Coordinate integrability is explicit
because `MeanLaw` records mean identities but does not silently enlarge its
authority to every measurability fact about a chosen simplex model. -/
theorem integral_randomSpectralExpectation_eq_mean
    {parameters : Parameters I}
    (law : MeanLaw parameters)
    (coordinateIntegrable : ∀ i,
      Integrable (fun point : InteriorSimplexPoint I => point i) law.measure)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) :
    (∫ point, randomSpectralExpectation point packets observable ∂law.measure) =
      (meanMixture law packets).spectralExpectation observable := by
  calc
    (∫ point, randomSpectralExpectation point packets observable ∂law.measure) =
        ∫ point, ∑ i, point i * (packets i).spectralExpectation observable
          ∂law.measure := by
      apply integral_congr_ae
      filter_upwards [] with point
      exact randomSpectralExpectation_eq_sum point packets observable
    _ = ∑ i, ∫ point,
        point i * (packets i).spectralExpectation observable ∂law.measure := by
      apply integral_finsetSum
      intro i _
      exact (coordinateIntegrable i).mul_const _
    _ = ∑ i, (∫ point, point i ∂law.measure) *
        (packets i).spectralExpectation observable := by
      apply Finset.sum_congr rfl
      intro i _
      exact integral_mul_const _ _
    _ = ∑ i, law.expectedWeight i *
        (packets i).spectralExpectation observable := by
      apply Finset.sum_congr rfl
      intro i _
      rw [law.mean_identity]
    _ = (meanMixture law packets).spectralExpectation observable := by
      symm
      exact FinitePacket.spectralExpectation_mix
        law.expectedWeight packets observable

/-- The equal-scale law specializes the exact analytic average to
`αᵢ / α₀`. -/
theorem integral_equalScaleMeanSpectralExpectation
    (parameters : DirichletParameters I)
    (scale : ℝ) (scalePositive : 0 < scale)
    (law : EqualScaleMeanLaw parameters scale scalePositive)
    (coordinateIntegrable : ∀ i,
      Integrable (fun point : InteriorSimplexPoint I => point i) law.measure)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) :
    (∫ point, randomSpectralExpectation point packets observable ∂law.measure) =
      ∑ i, (parameters.shape i / parameters.total) *
        (packets i).spectralExpectation observable := by
  rw [integral_randomSpectralExpectation_eq_mean law.toMeanLaw
    coordinateIntegrable packets observable]
  unfold meanMixture
  rw [FinitePacket.spectralExpectation_mix]
  apply Finset.sum_congr rfl
  intro i _
  rw [law.expectedWeight_eq]
  rfl


end

end BitMatrix.Spectral.GammaTransport

end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GammaDirichletPacketTransport.Variant26c780c4c6e69c9f
