import Folder.RH.Positivity

/-!
# Folder.Theorem.RH.Positivity

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports positivity-interface facts.
Ontology: proof.rh.positivity
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace Positivity

theorem positivity_data_uses_operator
    {O : Folder.RH.RHOperatorData}
    (P : Folder.RH.ProvenPositivityData O) :
    ∃ O' : Folder.RH.RHOperatorData, O' = P.operatorData :=
  Folder.RH.positivity_data_uses_operator P

theorem dense_domain_from_operator_data
    (O : Folder.RH.RHOperatorData) :
    Dense O.D.domain :=
  Folder.RH.dense_domain_from_operator_data O

theorem selfAdjoint_from_operator_theorem
    {O : Folder.RH.RHOperatorData}
    (hD : Folder.RH.IsSelfAdjoint O.D) :
    Folder.RH.IsSelfAdjoint O.D :=
  Folder.RH.selfAdjoint_from_operator_theorem hD

theorem compactResolvent_from_operator_theorem
    {O : Folder.RH.RHOperatorData}
    (hD : Folder.RH.HasCompactResolvent O.D) :
    Folder.RH.HasCompactResolvent O.D :=
  Folder.RH.compactResolvent_from_operator_theorem hD

theorem positivity_from_operator_data
    (O : Folder.RH.RHOperatorData)
    (x : O.D.domain)
    (hx : (x : O.H) ≠ 0) :
    0 < Folder.RH.realQuadraticForm O.D x :=
  Folder.RH.positivity_from_operator_data O x hx

theorem proven_positivity_from_operator_data
    (O : Folder.RH.RHOperatorData) :
    Folder.RH.ProvenPositivity O :=
  Folder.RH.proven_positivity_from_operator_data O

theorem spectral_reality_from_selfAdjoint
    (O : Folder.RH.RHOperatorData)
    (hD : Folder.RH.IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0 :=
  Folder.RH.spectral_reality_from_selfAdjoint O hD hReal

theorem real_spectrum_from_selfAdjoint_theorem
    {O : Folder.RH.RHOperatorData}
    (hD : Folder.RH.IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0 :=
  Folder.RH.real_spectrum_from_selfAdjoint_theorem hD hReal

end Positivity
end RH
end Theorem
end Folder
