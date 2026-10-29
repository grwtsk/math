import Mathematics.RHIsolation.Hardy

/-!
# Independent finite-height completeness

The global catalog is an exact finite enumeration of all zeros owned by one
cut.  Local regions must account for every catalog entry and preserve the same
height convention and total multiplicity.
-/

namespace Mathematics.RHIsolation

open scoped BigOperators

universe uZero uRegion

set_option linter.checkUnivs false in
structure GlobalZeroCountCertificate
    (xi : ℂ → ℂ)
    (cut : CriticalStripCut)
    (count : Nat) where
  Zero : Type uZero
  zeroFintype : Fintype Zero
  zeroDecEq : DecidableEq Zero
  value : Zero → ℂ
  multiplicity : Zero → Nat
  multiplicity_pos :
    ∀ index, 0 < multiplicity index
  sound :
    ∀ index,
      cut.owns (value index) ∧
        xi (value index) = 0
  complete :
    ∀ z,
      cut.owns z →
      xi z = 0 →
      ∃ index, value index = z
  injective : Function.Injective value
  totalMultiplicity :
    (∑ index : Zero, multiplicity index) =
      count

attribute [instance]
  GlobalZeroCountCertificate.zeroFintype
  GlobalZeroCountCertificate.zeroDecEq

structure GlobalFiniteHeightZeroCount
    (xi : ℂ → ℂ)
    (cut : CriticalStripCut) where
  count : Nat
  convention : HeightConvention
  convention_eq : convention = cut.convention
  certificate :
    GlobalZeroCountCertificate xi cut count

structure CertifiedZeroRegion
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime) where
  cell : AnalyticCell
  count :
    ArgumentPrincipleCertificate authority cell
  criticalLine :
    CriticalLineCarrierCertificate xi cell

set_option linter.checkUnivs false in
structure FiniteHeightCompletenessCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (cut : CriticalStripCut) where
  globalCount :
    GlobalFiniteHeightZeroCount xi cut
  Region : Type uRegion
  regionFintype : Fintype Region
  regionDecEq : DecidableEq Region
  region :
    Region → CertifiedZeroRegion authority
  regionsDisjoint :
    PairwiseDisjointInteriors
      (fun index => (region index).cell)
  regionsInsideCut :
    ∀ index z,
      z ∈ (region index).cell.interior →
      cut.owns z
  assignsEveryGlobalZero :
    ∀ index : globalCount.certificate.Zero,
      ∃ regionIndex,
        globalCount.certificate.value index ∈
          (region regionIndex).cell.interior
  multiplicitySum :
    (∑ index : Region,
      (region index).count.count) =
      globalCount.count
  noUnresolvedCells : Prop
  noUnresolvedCellsProof : noUnresolvedCells

attribute [instance]
  FiniteHeightCompletenessCertificate.regionFintype
  FiniteHeightCompletenessCertificate.regionDecEq

theorem finiteHeightCompleteness_accounts_for_allZeros
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    (certificate :
      FiniteHeightCompletenessCertificate
        authority cut)
    {z : ℂ}
    (owned : cut.owns z)
    (zero : xi z = 0) :
    ∃ index : certificate.Region,
      z ∈ (certificate.region index).cell.interior := by
  obtain ⟨globalIndex, globalValue⟩ :=
    certificate.globalCount.certificate.complete
      z owned zero
  obtain ⟨regionIndex, assigned⟩ :=
    certificate.assignsEveryGlobalZero globalIndex
  exact ⟨regionIndex, by simpa [globalValue] using assigned⟩

structure FiniteHeightRHCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (cut : CriticalStripCut) where
  completeness :
    FiniteHeightCompletenessCertificate
      authority cut

theorem finiteHeightRH_sound
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    (certificate :
      FiniteHeightRHCertificate authority cut) :
    ∀ z,
      cut.owns z →
      xi z = 0 →
      z.re = (1 : ℝ) / 2 := by
  intro z owned zero
  obtain ⟨index, zMem⟩ :=
    finiteHeightCompleteness_accounts_for_allZeros
      certificate.completeness owned zero
  exact
    (certificate.completeness.region index)
      |>.criticalLine.allZerosOnLine z zMem zero

end Mathematics.RHIsolation
