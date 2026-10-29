/-
DeterministicDirichletMeanMixtures — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2
Organized SHA-256: 9016ccdca0f680303491295c63fefd0aed5a8560985f50c493257a574a0afc86
PMD: 510.8.010.020 expectation (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Deterministic normalized finite mixtures use positive Dirichlet shapes on nonempty finite I and preserve all dependent outcome types and supplied FamilyTurnCovariance premises. This does not construct an analytic Dirichlet law or identify finite packets with operators. -/

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
open BitMatrix.Spectral

variable {I : Type*} [Fintype I] [Nonempty I]
variable {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]

/-- The simplex point formed from the exact equal-scale Dirichlet mean
coefficients.  Its construction does not assert existence of the analytic
Dirichlet probability measure. -/
def dirichletMeanPoint (parameters : DirichletParameters I) : SimplexPoint I where
  weight i := parameters.mean i
  nonnegative i := (parameters.mean_pos i).le
  normalized := parameters.sum_mean

@[simp]
theorem dirichletMeanPoint_apply (parameters : DirichletParameters I) (i : I) :
    dirichletMeanPoint parameters i = parameters.shape i / parameters.total :=
  rfl

/-- Relabeling Dirichlet parameters relabels their mean simplex point. -/
theorem dirichletMeanPoint_reindex (turn : I ≃ I)
    (parameters : DirichletParameters I) :
    dirichletMeanPoint (parameters.reindex turn) =
      (dirichletMeanPoint parameters).reindex turn := by
  apply SimplexPoint.ext
  intro i
  change parameters.shape (turn.symm i) /
      (parameters.reindex turn).total =
    parameters.shape (turn.symm i) / parameters.total
  rw [parameters.reindex_total]

/-- Deterministic packet mixture at the equal-scale Dirichlet mean. -/
def dirichletMeanMixture (parameters : DirichletParameters I)
    (packets : ∀ i, FinitePacket (Outcomes i)) :
    FinitePacket (Σ i, Outcomes i) :=
  FinitePacket.mix (dirichletMeanPoint parameters) packets

theorem dirichletMeanMixture_normalized
    (parameters : DirichletParameters I)
    (packets : ∀ i, FinitePacket (Outcomes i)) :
    ∑ outcome, (dirichletMeanMixture parameters packets).probability outcome = 1 :=
  (dirichletMeanMixture parameters packets).probability.normalized

/-- The exact finite observable formula at the Dirichlet mean. -/
theorem dirichletMeanMixture_spectralExpectation
    (parameters : DirichletParameters I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) :
    (dirichletMeanMixture parameters packets).spectralExpectation observable =
      ∑ i, (parameters.shape i / parameters.total) *
        (packets i).spectralExpectation observable := by
  exact FinitePacket.spectralExpectation_mix
    (dirichletMeanPoint parameters) packets observable

/-- Packet turn covariance and Dirichlet-parameter permutation commute at the
level of every finite spectral observable. -/
theorem dirichletMeanMixture_turnCovariant
    (turn : I ≃ I)
    (parameters : DirichletParameters I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (covariance : FamilyTurnCovariance turn packets)
    (observable : ℝ → ℝ) :
    (dirichletMeanMixture (parameters.reindex turn) packets).spectralExpectation
        observable =
      (dirichletMeanMixture parameters packets).spectralExpectation observable := by
  unfold dirichletMeanMixture
  rw [dirichletMeanPoint_reindex]
  exact covariance.spectralExpectation_reindex
    (dirichletMeanPoint parameters) observable


end

end BitMatrix.Spectral.GammaTransport

end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GammaDirichletPacketTransport.Variant26c780c4c6e69c9f
