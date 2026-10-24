import AnalyticNumber.Mobius

/-!
# Analytic number zeta authority

Zeta-facing statements live only in `AnalyticNumber`.

This file intentionally does not assert RH, zero distribution, Connes trace
formulas, analytic continuation, or functional equations unless the corresponding
authority fields are supplied.
-/

namespace AnalyticNumber

/-- Formal zeta symbol. -/
structure ZetaSymbol where
  label : String

/-- Formal completed-zeta symbol. -/
structure CompletedZetaSymbol where
  label : String

/-- Authority for the zeta/Möbius identity on a half-plane. -/
structure ZetaMobiusIdentityAuthority where
  domain : HalfPlane
  zeta : ZetaSymbol
  mobiusSeries : DirichletSeries
  reGreaterThanOne : Prop
  reGreaterThanOneProof : reGreaterThanOne
  absoluteConvergence : Prop
  absoluteConvergenceProof : absoluteConvergence
  cauchyProductSound : Prop
  cauchyProductProof : cauchyProductSound
  zetaMobiusIdentitySound : Prop
  zetaMobiusIdentityProof : zetaMobiusIdentitySound

/-- Authority for meromorphic continuation and functional equation. -/
structure ZetaAnalyticContinuationAuthority where
  zeta : ZetaSymbol
  completedZeta : CompletedZetaSymbol
  meromorphicContinuationSound : Prop
  meromorphicContinuationProof : meromorphicContinuationSound
  functionalEquationSound : Prop
  functionalEquationProof : functionalEquationSound

/-- Authority for a zeta zero-location theorem. -/
structure ZetaZeroLocationAuthority where
  zeta : ZetaSymbol
  zeroLocationSound : Prop
  zeroLocationProof : zeroLocationSound
  riemannHypothesis : Prop
  zeroLocationImpliesRH : zeroLocationSound → riemannHypothesis

theorem zeta_mobius_identity_authorized
    (A : ZetaMobiusIdentityAuthority) :
    A.zetaMobiusIdentitySound :=
  A.zetaMobiusIdentityProof

theorem zeta_continuation_authorized
    (A : ZetaAnalyticContinuationAuthority) :
    A.meromorphicContinuationSound ∧ A.functionalEquationSound :=
  ⟨A.meromorphicContinuationProof, A.functionalEquationProof⟩

theorem zeta_zero_location_authorized
    (A : ZetaZeroLocationAuthority) :
    A.riemannHypothesis :=
  A.zeroLocationImpliesRH A.zeroLocationProof

/-- The zeta symbol alone does not own analytic continuation. -/
def ZetaSymbolOwnsAnalyticContinuation
    (_Z : ZetaSymbol) : Prop :=
  False

/-- The zeta symbol alone does not own zero-location authority. -/
def ZetaSymbolOwnsZeroLocation
    (_Z : ZetaSymbol) : Prop :=
  False

theorem zeta_symbol_not_continuation_authority
    (Z : ZetaSymbol) :
    ¬ ZetaSymbolOwnsAnalyticContinuation Z := by
  intro h
  exact h

theorem zeta_symbol_not_zero_location_authority
    (Z : ZetaSymbol) :
    ¬ ZetaSymbolOwnsZeroLocation Z := by
  intro h
  exact h

end AnalyticNumber
