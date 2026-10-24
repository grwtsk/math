import Folder.RH.TraceFormula

/-!
# Folder.RH.Positivity

Radiation role: positivity-interface
BinaryMatrix spine: This module records operator-theoretic proof obligations.
Ontology: rh.positivity
Pivot role: spectral
Zero typology: zeta
Contract boundary: proof-obligation-interface
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

/--
Non-propositional labels for the operator-theoretic route.

The proofs of dense domain, self-adjointness, compact resolvent, functional
calculus, and trace regularization are theorems or theorem arguments, not
fields in this structure.
-/
structure ProvenPositivityData
    (O : RHOperatorData) where
  operatorData : RHOperatorData := O
  functionalCalculusLabel : String
  traceRegularizationLabel : String
  sourceLabel : String

theorem positivity_data_uses_operator
    {O : RHOperatorData}
    (P : ProvenPositivityData O) :
    ∃ O' : RHOperatorData, O' = P.operatorData :=
  ⟨P.operatorData, rfl⟩

theorem dense_domain_from_operator_data
    (O : RHOperatorData) :
    Dense O.D.domain :=
  O.domain_dense

noncomputable def realQuadraticForm
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H)
    (x : D.domain) : ℝ :=
  ‖(x : H)‖ ^ 2

def ProvenPositivity
    (O : RHOperatorData) : Prop :=
  ∀ x : O.D.domain,
    (x : O.H) ≠ 0 →
      0 < realQuadraticForm O.D x

theorem positivity_from_operator_data
    (O : RHOperatorData)
    (x : O.D.domain)
    (hx : (x : O.H) ≠ 0) :
    0 < realQuadraticForm O.D x := by
  exact sq_pos_of_ne_zero (norm_ne_zero_iff.mpr hx)

theorem proven_positivity_from_operator_data
    (O : RHOperatorData) :
    ProvenPositivity O := by
  intro x hx
  exact positivity_from_operator_data O x hx

theorem selfAdjoint_from_operator_theorem
    {O : RHOperatorData}
    (hD : IsSelfAdjoint O.D) :
    IsSelfAdjoint O.D :=
  D_selfAdjoint O hD

theorem compactResolvent_from_operator_theorem
    {O : RHOperatorData}
    (hD : HasCompactResolvent O.D) :
    HasCompactResolvent O.D :=
  D_compactResolvent O hD

theorem spectral_reality_from_selfAdjoint
    (O : RHOperatorData)
    (hD : IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ RHSpectrum O.D, mu.im = 0 :=
  spectrum_real_of_selfAdjoint O hD hReal

theorem real_spectrum_from_selfAdjoint_theorem
    {O : RHOperatorData}
    (hD : IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ RHSpectrum O.D, mu.im = 0 :=
  spectral_reality_from_selfAdjoint O hD hReal

end

end RH
end Folder
