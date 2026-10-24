# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.GammaTransport.Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae6c0426d29c6a76894196ea02aa6d092498230a` · SHA-256 `a59a94c0b58d9754227e6e5622157b85076c64991aea1881bc975247b6c67b28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.DirichletMeanPoint.Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.DirichletMeanPoint.Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2","mathematical_subject":"Analysis.Integration","original_sha256":"26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Spectral/GammaTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.RealAnalysis.Integration.DirichletMeanPoint.Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2

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
```
