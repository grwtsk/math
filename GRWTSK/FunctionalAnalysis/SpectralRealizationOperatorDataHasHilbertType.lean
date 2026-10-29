import Folder.RH.SpectralRealization

/-!
# Folder.Theorem.RH.SpectralRealization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-realization facts.
Ontology: proof.rh.spectral_realization
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace SpectralRealization

theorem operator_data_has_hilbert_type
    (O : Folder.RH.RHOperatorData) :
    ∃ H : Type _, H = O.H :=
  Folder.RH.operator_data_has_hilbert_type O

theorem operator_data_domain_dense
    (O : Folder.RH.RHOperatorData) :
    Dense O.D.domain :=
  Folder.RH.operator_data_domain_dense O

theorem D_selfAdjoint
    (O : Folder.RH.RHOperatorData)
    (hD : Folder.RH.IsSelfAdjoint O.D) :
    Folder.RH.IsSelfAdjoint O.D :=
  Folder.RH.D_selfAdjoint O hD

theorem D_compactResolvent
    (O : Folder.RH.RHOperatorData)
    (hD : Folder.RH.HasCompactResolvent O.D) :
    Folder.RH.HasCompactResolvent O.D :=
  Folder.RH.D_compactResolvent O hD

theorem spectrum_real_of_selfAdjoint
    (O : Folder.RH.RHOperatorData)
    (hD : Folder.RH.IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0 :=
  Folder.RH.spectrum_real_of_selfAdjoint O hD hReal

theorem zero_spectrum_realization_has_parameter_map
    {O : Folder.RH.RHOperatorData}
    (R : Folder.RH.ZeroSpectrumRealization O) :
    ∃ parameter : ℂ → ℂ, parameter = Folder.RH.spectralParameter :=
  Folder.RH.zero_spectrum_realization_has_parameter_map R

theorem h0_zero_iff_spectral_point
    (O : Folder.RH.RHOperatorData)
    (h :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (z : ℂ) :
    Folder.RH.H0Zero z ↔
      ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z :=
  Folder.RH.h0_zero_iff_spectral_point O h z

end SpectralRealization
end RH
end Theorem
end Folder
