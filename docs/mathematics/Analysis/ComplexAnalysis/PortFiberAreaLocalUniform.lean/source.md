# Complete source: GRWTSK.Interfaces.PortFiberAreaLocalUniform

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96fd6f7d2c6670492fe9006722bc7994f606f4a7` · SHA-256 `b1ccf9cd91a4dbe553ae0754cd0457983e7ab6ac7b7b5a97e97f891db0aa9a17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberMultiplierArea
import GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform

/-!
# Isolated area-Cauchy local-limit leaf

Exact area classes determine holomorphic functions. Their energy-norm Cauchy sequences
have unique holomorphic locally uniform limits. Finite-energy membership and convergence
of those limits, section-space completeness and completion realization are not asserted.
-/

namespace GRWTSK.Interfaces.PortFiberAreaLocalUniform

open Filter Topology MeasureTheory Metric Set
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle (CircleWindow identitySymbol)
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea
open GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform

noncomputable section

def schemaVersion : String := "PortFiberAreaLocalUniform/1"

inductive AddedIndex
  | exactRealization
  | evaluationBinding
  | compactEstimate
  | uniformCauchy
  | holomorphicLimit
  | derivativeLimit
  | constantRecovery
  | emptyCompact
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .exactRealization => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      Function.Injective (realization hOpen) ∧
      ∀ s : FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen,
        realization hOpen (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s) =
          identitySymbol hOpen s.1
  | .evaluationBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (W : CircleWindow D.X) (q : AreaQuotient hOpen),
      functional W hOpen q = (realization hOpen q : Section D.X) W.centerPoint
  | .compactEstimate => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (K : Set ℂ), IsCompact K → K ⊆ D.X.carrier →
      ∃ δ > 0, cthickening δ K ⊆ D.X.carrier ∧
        ∀ (q r : AreaQuotient hOpen) (z : ℂ), z ∈ K →
          dist (ambient hOpen q z) (ambient hOpen r z) ≤
            (Real.sqrt (Real.pi * δ ^ 2))⁻¹ * dist q r
  | .uniformCauchy => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen), CauchySeq F →
      ∀ K : Set ℂ, IsCompact K → K ⊆ D.X.carrier →
        UniformCauchySeqOn (fun n => ambient hOpen (F n)) atTop K
  | .holomorphicLimit => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen), CauchySeq F →
      ∃! f : HolomorphicSection D.X,
        TendstoLocallyUniformlyOn (fun n => ambient hOpen (F n))
          (ambientRepresentative D.X (f : Section D.X)) atTop D.X.carrier
  | .derivativeLimit => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F),
      TendstoLocallyUniformlyOn (fun n => deriv (ambient hOpen (F n)))
        (deriv (ambientRepresentative D.X (holomorphicLimit hOpen F hF : Section D.X)))
        atTop D.X.carrier
  | .constantRecovery => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (q : AreaQuotient hOpen),
      holomorphicLimit hOpen (fun _ : ℕ => q)
        (GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform.Fixtures.constant_cauchy hOpen q) =
          realization hOpen q
  | .emptyCompact => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen), CauchySeq F →
      UniformCauchySeqOn (fun n => ambient hOpen (F n)) atTop ∅

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | exactRealization =>
      intro ι D hOpen
      exact ⟨realization_injective hOpen, realization_classOf hOpen⟩
  | evaluationBinding => intro ι D hOpen W q; exact functional_eq_realization W hOpen q
  | compactEstimate => intro ι D hOpen K hK hKX; exact compact_control hOpen hK hKX
  | uniformCauchy => intro ι D hOpen F hF K hK hKX; exact uniformCauchy_on_compact hOpen F hF hK hKX
  | holomorphicLimit => intro ι D hOpen F hF; exact existsUnique_holomorphic_limit hOpen F hF
  | derivativeLimit => intro ι D hOpen F hF; exact derivative_limit hOpen F hF
  | constantRecovery =>
      intro ι D hOpen q
      exact GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform.Fixtures.constant_limit hOpen q
  | emptyCompact =>
      intro ι D hOpen F hF
      exact GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform.Fixtures.empty_compact_control hOpen F hF

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberMultiplierArea.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberMultiplierArea.PreviousIndex
  GRWTSK.Interfaces.PortFiberMultiplierArea.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberMultiplierArea.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberMultiplierArea.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberAreaLocalUniform
```
