# Complete source: GRWTSK.Interfaces.PortFiberSectionPairing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ddac384f805f5f4461e4e5adcd5a360a728b0e7` · SHA-256 `85838d0fabd4240d9c6b902e7d625ddd51cac64b8407aba240b62f7ea559dcb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberSectionLinear
import GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing

/-!
# Isolated integrable-pairing leaf

The source claims below extend the existing portfolio by a disjoint sum. They do not install
normed/Hilbert-space instances, alter earlier claims or residuals, or self-certify a replay.
-/

namespace GRWTSK.Interfaces.PortFiberSectionPairing

open MeasureTheory
open scoped ENNReal
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

noncomputable section

def schemaVersion : String := "PortFiberSectionPairing/1"

inductive AddedIndex
  | integrability
  | representativeIndependence
  | sesquilinearity
  | selfEnergy
  | definiteness
  | gaugePairing
  | infiniteExclusion
  | complexOrder
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .integrability =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen),
        Continuous (pairDensity M hOpen s.1 t.1) ∧ Integrable (pairDensity M hOpen s.1 t.1) μ
  | .representativeIndependence =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s t s' t' : FiniteEnergySection M μ hOpen),
        AEEqual μ hOpen s.1 s'.1 → AEEqual μ hOpen t.1 t'.1 →
        sectionPairing M μ hOpen s t = sectionPairing M μ hOpen s' t' ∧
          quotientPairing M μ hOpen (classOf M μ hOpen s) (classOf M μ hOpen t) =
            sectionPairing M μ hOpen s t
  | .sesquilinearity =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q r v : SectionQuotient M μ hOpen) (c : ℂ),
        (starRingEnd ℂ) (quotientPairing M μ hOpen q r) = quotientPairing M μ hOpen r q ∧
        quotientPairing M μ hOpen q (quotientAdd M μ hOpen r v) =
          quotientPairing M μ hOpen q r + quotientPairing M μ hOpen q v ∧
        quotientPairing M μ hOpen q (quotientSMul M μ hOpen c r) =
          c * quotientPairing M μ hOpen q r ∧
        quotientPairing M μ hOpen (quotientAdd M μ hOpen q r) v =
          quotientPairing M μ hOpen q v + quotientPairing M μ hOpen r v ∧
        quotientPairing M μ hOpen (quotientSMul M μ hOpen c q) r =
          (starRingEnd ℂ) c * quotientPairing M μ hOpen q r
  | .selfEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen),
        quotientPairing M μ hOpen q q = ((quotientEnergy M μ hOpen q).toReal : ℂ)
  | .definiteness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen),
        0 ≤ (quotientPairing M μ hOpen q q).re ∧
        (quotientPairing M μ hOpen q q).im = 0 ∧
        (quotientPairing M μ hOpen q q = 0 ↔ q = quotientZero M μ hOpen)
  | .gaugePairing =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q r : SectionQuotient M μ hOpen),
        quotientPairing (transportMetric G M) μ hOpen
            (gaugeEquiv G M μ hOpen q) (gaugeEquiv G M μ hOpen r) =
          quotientPairing M μ hOpen q r
  | .infiniteExclusion =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : BundleSection C hOpen),
        energy M μ hOpen s = ∞ → ¬ Integrable (pairDensity M hOpen s s) μ
  | .complexOrder =>
      ∃ (D : IndexedDomainCover Bool) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen),
        sectionPairing M μ hOpen s t = Complex.I ∧
        sectionPairing M μ hOpen t s = -Complex.I

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | integrability =>
      intro ι D C M μ hOpen s t
      exact ⟨pairDensity_continuous M hOpen s.1 t.1, pairDensity_integrable M μ hOpen s t⟩
  | representativeIndependence =>
      intro ι D C M μ hOpen s t s' t' hs ht
      exact ⟨sectionPairing_congr_ae M μ hOpen s t s' t' hs ht,
        quotientPairing_classOf M μ hOpen s t⟩
  | sesquilinearity =>
      intro ι D C M μ hOpen q r v c
      exact ⟨quotientPairing_conj M μ hOpen q r, quotientPairing_add_right M μ hOpen q r v,
        quotientPairing_smul_right M μ hOpen c q r, quotientPairing_add_left M μ hOpen q r v,
        quotientPairing_smul_left M μ hOpen c q r⟩
  | selfEnergy =>
      intro ι D C M μ hOpen q
      exact quotientPairing_self M μ hOpen q
  | definiteness =>
      intro ι D C M μ hOpen q
      exact ⟨quotientPairing_self_nonneg M μ hOpen q, quotientPairing_self_im M μ hOpen q,
        quotientPairing_self_eq_zero_iff M μ hOpen q⟩
  | gaugePairing =>
      intro ι D C E G M μ hOpen q r
      exact quotientPairing_gauge G M μ hOpen q r
  | infiniteExclusion =>
      intro ι D C M μ hOpen s hs
      exact infiniteEnergy_self_not_integrable M μ hOpen s hs
  | complexOrder =>
      let D := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts
      let x := GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.zeroPoint
      exact ⟨D, Cocycle.identity D, MetricWeights.identity D, Measure.dirac x,
        GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts_isOpen,
        GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures.constantAt 1 x,
        GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures.constantAt Complex.I x,
        Fixtures.imaginary_pairing, Fixtures.reversed_imaginary_pairing⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberSectionLinear.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberSectionLinear.PreviousIndex
  GRWTSK.Interfaces.PortFiberSectionLinear.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberSectionLinear.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberSectionLinear.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberSectionPairing
```
