/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SevenEighthsMechanismTrace
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Prime-power Gram extraction into the signed quartic witness

This layer strengthens the open extraction supplier by deriving stage
nonnegativity from an explicit finite sum-of-squares identity. Prime-power
source labels, the full residual ledger, positive limiting weight, and the
PNT/circularity dependency audit remain explicit.

No concrete arithmetic supplier is constructed.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_GRAM_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.Polynomial.ConjugateQuartic

structure FinitePrimePowerGramStage where
  index : Finset ℕ
  amplitude : ℕ → ℝ
  IsPrimePowerSource : ℕ → Prop
  source_ok : ∀ k, k ∈ index → IsPrimePowerSource k
  value : ℝ
  value_eq : value = ∑ k ∈ index, (amplitude k) ^ 2

namespace FinitePrimePowerGramStage

theorem nonnegative (stage : FinitePrimePowerGramStage) :
    0 ≤ stage.value := by
  rw [stage.value_eq]
  exact Finset.sum_nonneg fun k _ => Finset.sum_nonneg fun _ _ => sq_nonneg _

end FinitePrimePowerGramStage

structure PrimeGramExtractionAtZero (s : ℂ) where
  stage : ℕ → FinitePrimePowerGramStage
  weight : ℕ → ℝ
  residual : PrimeQuarticResidualLedger
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity :
    ∀ n,
      (stage n).value =
        weight n * witnessTrace (s.re - 1 / 2) s.im + residual.total n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)

def PrimeGramExtractionAtZero.toQuarticExtraction
    {s : ℂ} (data : PrimeGramExtractionAtZero s) :
    QuarticExtractionAtZero s where
  W := fun n => (data.stage n).value
  weight := data.weight
  residual := data.residual
  limitWeight := data.limitWeight
  limitWeight_pos := data.limitWeight_pos
  identity := data.identity
  nonnegative := fun n => (data.stage n).nonnegative
  weight_tendsto := data.weight_tendsto

def PrimeGramQuarticClaim : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s → PrimeGramExtractionAtZero s

structure SourceBoundPrimeGramExtraction where
  sourceIdentity : String
  normalization : String
  pntIndependent : PNTIndependentDependencyAudit PrimeGramQuarticClaim

theorem primeQuarticClaim_of_primeGramQuarticClaim
    (h : PrimeGramQuarticClaim) : PrimeQuarticClaim := by
  intro s hs
  exact (h s hs).toQuarticExtraction

theorem riemannHypothesis_of_sourceBoundPrimeGramExtraction
    (extraction : SourceBoundPrimeGramExtraction) :
    _root_.RiemannHypothesis := by
  apply GRWTSK.NumberTheory.Zeta.Riemann.riemannHypothesis_of_trace_extraction
  intro s hs
  let data := extraction.pntIndependent.theoremTerm s hs
  exact
    ⟨(fun n => (data.stage n).value), data.weight, data.residual.total,
      data.limitWeight, data.limitWeight_pos, data.identity,
      (fun n => (data.stage n).nonnegative),
      data.weight_tendsto, data.residual.total_tendsto⟩

structure LocalPrimeGramExtractor (Local : Type*) where
  extract : Local → SourceBoundPrimeGramExtraction

def SourceBoundMechanismBridgeAccepted.toPrimeGramExtraction
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (accepted : SourceBoundMechanismBridgeAccepted Source Local)
    (extractor : LocalPrimeGramExtractor Local) :
    SourceBoundPrimeGramExtraction :=
  extractor.extract accepted.bridge.localWitness

structure PrimeGramExtractionAccepted where
  extraction : SourceBoundPrimeGramExtraction

theorem PrimeGramExtractionAccepted.toRiemannHypothesis
    (accepted : PrimeGramExtractionAccepted) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_sourceBoundPrimeGramExtraction accepted.extraction

end GRWTSK.RiemannHypothesis
