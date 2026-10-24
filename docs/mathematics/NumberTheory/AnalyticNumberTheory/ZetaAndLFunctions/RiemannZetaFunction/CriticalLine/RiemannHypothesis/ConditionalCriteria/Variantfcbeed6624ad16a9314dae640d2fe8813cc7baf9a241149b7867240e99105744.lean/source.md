# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ConditionalCriteria.Variantfcbeed6624ad16a9314dae640d2fe8813cc7baf9a241149b7867240e99105744

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49c84ac56c705dd292d0c286f6b00f13279ea6a1` · SHA-256 `fcbeed6624ad16a9314dae640d2fe8813cc7baf9a241149b7867240e99105744`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.ConditionalCriteria

/-!
# Folder.Theorem.RH.ConditionalCriteria

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports checked conditional RH criteria.
Ontology: proof.rh.conditional_criteria
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace ConditionalCriteria

theorem h0_real_zeros_from_spectral_realization
    (O : Folder.RH.RHOperatorData)
    (hzero :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ Folder.RH.RHSpectrum O.D,
        Folder.RH.H0ZeroIsReal (Folder.RH.spectralParameter mu)) :
    Folder.RH.H0RealZeros :=
  Folder.RH.h0_real_zeros_from_spectral_realization O hzero hreal

theorem rh_of_h0_selfadjoint_realization
    (O : Folder.RH.RHOperatorData)
    (hsa : Folder.RH.IsSelfAdjoint O.D)
    (hcompact : Folder.RH.HasCompactResolvent O.D)
    (hzero :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ Folder.RH.RHSpectrum O.D,
        Folder.RH.H0ZeroIsReal (Folder.RH.spectralParameter mu))
    (htranslate : Folder.RH.RiemannHypothesis ↔ Folder.RH.H0RealZeros) :
    Folder.RH.RiemannHypothesis :=
  Folder.RH.rh_of_h0_selfadjoint_realization
    O hsa hcompact hzero hreal htranslate

theorem rh_of_trace_positivity_and_zero_correspondence
    (O : Folder.RH.RHOperatorData)
    (pairing : Folder.RH.TracePairing)
    (htrace :
      ∀ φ : Folder.RH.RHTestFunction,
        pairing.spectral.eval φ = pairing.index.eval φ)
    (hpos : Folder.RH.ProvenPositivity O)
    (hzero :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ Folder.RH.RHSpectrum O.D,
        Folder.RH.H0ZeroIsReal (Folder.RH.spectralParameter mu))
    (htranslate : Folder.RH.RiemannHypothesis ↔ Folder.RH.H0RealZeros) :
    Folder.RH.RiemannHypothesis :=
  Folder.RH.rh_of_trace_positivity_and_zero_correspondence
    O pairing htrace hpos hzero hreal htranslate

end ConditionalCriteria
end RH
end Theorem
end Folder
```
