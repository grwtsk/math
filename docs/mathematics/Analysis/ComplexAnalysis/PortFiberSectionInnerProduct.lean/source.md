# Complete source: GRWTSK.Interfaces.PortFiberSectionInnerProduct

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00a1bcfe7c94a7c286da4899eb8b5d4207157634` · SHA-256 `b15768755bbe57b8f7b9527dafa79592aabb4dd0ed17e7389285c974d3325c8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberSectionPairing
import GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct

/-!
# Isolated inner-product and normed-quotient leaf

Scoped Mathlib structures are bound to the old quotient, operations, pairing and gauge maps.
These local claims neither supply completeness nor promote the historical terminal target.
A stored proof disposition is not an elaboration or runtime receipt.
-/

namespace GRWTSK.Interfaces.PortFiberSectionInnerProduct

open MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear
open GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing
open GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct

noncomputable section

def schemaVersion : String := "PortFiberSectionInnerProduct/1"

inductive AddedIndex
  | algebraBinding
  | innerBinding
  | normEnergy
  | normGeometry
  | gaugeForward
  | gaugeInverse
  | failureBoundaries
  | complexOrder
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .algebraBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q r : SectionQuotient M μ hOpen) (c : ℂ),
        (0 : SectionQuotient M μ hOpen) = quotientZero M μ hOpen ∧
        q + r = quotientAdd M μ hOpen q r ∧
        -q = quotientSMul M μ hOpen (-1) q ∧
        c • q = quotientSMul M μ hOpen c q ∧
        q - r = quotientAdd M μ hOpen q (quotientSMul M μ hOpen (-1) r)
  | .innerBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q r : SectionQuotient M μ hOpen) (s t : FiniteEnergySection M μ hOpen),
        inner ℂ q r = quotientPairing M μ hOpen q r ∧
        inner ℂ (classOf M μ hOpen s) (classOf M μ hOpen t) = sectionPairing M μ hOpen s t
  | .normEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen),
        ‖q‖ = Real.sqrt ((quotientEnergy M μ hOpen q).toReal) ∧
        ‖q‖ ^ 2 = (quotientEnergy M μ hOpen q).toReal ∧
        ENNReal.ofReal (‖q‖ ^ 2) = quotientEnergy M μ hOpen q ∧
        (‖q‖ = 0 ↔ q = quotientZero M μ hOpen)
  | .normGeometry =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q r : SectionQuotient M μ hOpen) (c : ℂ),
        ‖quotientPairing M μ hOpen q r‖ ≤ ‖q‖ * ‖r‖ ∧
        ‖quotientAdd M μ hOpen q r‖ ≤ ‖q‖ + ‖r‖ ∧
        ‖quotientSMul M μ hOpen c q‖ = ‖c‖ * ‖q‖ ∧
        dist q r = Real.sqrt ((quotientEnergy M μ hOpen (q - r)).toReal)
  | .gaugeForward =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q : SectionQuotient M μ hOpen),
        gaugeLinearIsometryEquiv G M μ hOpen q = gaugeEquiv G M μ hOpen q ∧
        Isometry (gaugeLinearIsometryEquiv G M μ hOpen)
  | .gaugeInverse =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q r : SectionQuotient M μ hOpen) (v : SectionQuotient (transportMetric G M) μ hOpen),
        (gaugeLinearIsometryEquiv G M μ hOpen).symm v = (gaugeEquiv G M μ hOpen).symm v ∧
        inner ℂ (gaugeLinearIsometryEquiv G M μ hOpen q)
          (gaugeLinearIsometryEquiv G M μ hOpen r) = inner ℂ q r
  | .failureBoundaries =>
      (∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (q : SectionQuotient M 0 hOpen), q = 0) ∧
      ∃ (D : IndexedDomainCover Bool) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen),
        ‖q‖ = ‖r‖ ∧ q ≠ r
  | .complexOrder =>
      ∃ (D : IndexedDomainCover Bool) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen),
        inner ℂ q r = Complex.I ∧ inner ℂ r q = -Complex.I

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | algebraBinding =>
      intro ι D C M μ hOpen q r c
      exact ⟨zero_eq_operation M μ hOpen, add_eq_operation M μ hOpen q r,
        neg_eq_operation M μ hOpen q, smul_eq_operation M μ hOpen c q,
        sub_eq_operations M μ hOpen q r⟩
  | innerBinding =>
      intro ι D C M μ hOpen q r s t
      exact ⟨inner_eq_pairing M μ hOpen q r, inner_classOf M μ hOpen s t⟩
  | normEnergy =>
      intro ι D C M μ hOpen q
      exact ⟨norm_eq_sqrt_energy M μ hOpen q, norm_sq_eq_energy M μ hOpen q,
        ofReal_norm_sq_eq_energy M μ hOpen q, norm_eq_zero_iff_class M μ hOpen q⟩
  | normGeometry =>
      intro ι D C M μ hOpen q r c
      exact ⟨pairing_norm_le M μ hOpen q r, norm_add_le_sections M μ hOpen q r,
        norm_smul_sections M μ hOpen c q, dist_eq_sqrt_energy_sub M μ hOpen q r⟩
  | gaugeForward =>
      intro ι D C E G M μ hOpen q
      exact ⟨gaugeLinearIsometryEquiv_apply G M μ hOpen q,
        gaugeLinearIsometryEquiv_isometry G M μ hOpen⟩
  | gaugeInverse =>
      intro ι D C E G M μ hOpen q r v
      exact ⟨gaugeLinearIsometryEquiv_symm_apply G M μ hOpen v,
        gaugeLinearIsometryEquiv_inner G M μ hOpen q r⟩
  | failureBoundaries =>
      constructor
      · intro ι D C M hOpen q
        exact zeroMeasure_eq_zero M hOpen q
      · let D := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts
        let h := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts_isOpen
        let x := GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.zeroPoint
        exact ⟨D, Cocycle.identity D, MetricWeights.identity D, Measure.dirac x, h,
          classOf (MetricWeights.identity D) (Measure.dirac x) h
            (GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures.constantAt 1 x),
          classOf (MetricWeights.identity D) (Measure.dirac x) h
            (GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures.constantAt (-1) x),
          Fixtures.equal_norm_distinct_classes⟩
  | complexOrder =>
      let D := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts
      let h := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts_isOpen
      let x := GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.zeroPoint
      exact ⟨D, Cocycle.identity D, MetricWeights.identity D, Measure.dirac x, h,
        classOf (MetricWeights.identity D) (Measure.dirac x) h
          (GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures.constantAt 1 x),
        classOf (MetricWeights.identity D) (Measure.dirac x) h
          (GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures.constantAt Complex.I x),
        Fixtures.bundled_imaginary_pairing, Fixtures.bundled_reversed_imaginary_pairing⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberSectionPairing.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberSectionPairing.PreviousIndex
  GRWTSK.Interfaces.PortFiberSectionPairing.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberSectionPairing.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberSectionPairing.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberSectionInnerProduct
```
