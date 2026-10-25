# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Positivity.Variantfe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b36e54d7683d949cd1e54e43f2b2f711b67c612a` · SHA-256 `fe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
