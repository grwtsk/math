# Complete source: GRWTSK.Analysis.FunctionalAnalysis.HilbertPolyaCriterion.Variantc670b7cefee4b8132734a68916cbb979fdecbcb3bacf4b4cdf6899ac839eeafd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ea4feb3b14477e7d16134793b4d4fbc648dae3b` · SHA-256 `c670b7cefee4b8132734a68916cbb979fdecbcb3bacf4b4cdf6899ac839eeafd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.H0Translation
import Folder.RH.OperatorData

/-!
# Folder.RH.HilbertPolyaCriterion

Radiation role: conditional-criterion
BinaryMatrix spine: This module proves the narrow conditional Hilbert-Polya route.
Ontology: rh.hilbert_polya_criterion
Pivot role: spectral
Zero typology: zeta
Contract boundary: conditional-theorem
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

theorem h0_real_zeros_from_spectral_correspondence
    {O : RHOperatorData}
    (zeroCorrespondence :
      ∀ z : ℂ,
        H0Zero z ↔ ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (spectralParametersReal :
      ∀ mu ∈ RHSpectrum O.D, H0ZeroIsReal (spectralParameter mu)) :
    H0RealZeros := by
  intro z hz
  rcases (zeroCorrespondence z).mp hz with ⟨mu, hmu, hparam⟩
  have hReal : H0ZeroIsReal (spectralParameter mu) :=
    spectralParametersReal mu hmu
  simpa [H0ZeroIsReal, hparam] using hReal

/--
Conditional Hilbert-Polya-style criterion.

This theorem does not prove RH unconditionally. It isolates the analytic bridge:
an H0-zero/spectrum correspondence together with real spectral parameters implies
`H0RealZeros`, and hence RH via the imported H0 translation equivalence.
-/
theorem riemann_hypothesis_from_hilbert_polya_criterion
    {O : RHOperatorData}
    (hEquiv : RH_Iff_H0RealZerosStatement)
    (zeroCorrespondence :
      ∀ z : ℂ,
        H0Zero z ↔ ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (spectralParametersReal :
      ∀ mu ∈ RHSpectrum O.D, H0ZeroIsReal (spectralParameter mu)) :
    RiemannHypothesis :=
  (RH_Iff_H0RealZeros hEquiv).mpr
    (h0_real_zeros_from_spectral_correspondence
      (O := O)
      zeroCorrespondence
      spectralParametersReal)

theorem riemann_hypothesis_from_selfadjoint_spectral_realization
    {O : RHOperatorData}
    (hEquiv : RH_Iff_H0RealZerosStatement)
    (_hSelfAdjoint : IsSelfAdjoint O.D)
    (zeroCorrespondence :
      ∀ z : ℂ,
        H0Zero z ↔ ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (spectralParametersReal :
      ∀ mu ∈ RHSpectrum O.D, H0ZeroIsReal (spectralParameter mu)) :
    RiemannHypothesis :=
  riemann_hypothesis_from_hilbert_polya_criterion
    (O := O)
    hEquiv
    zeroCorrespondence
    spectralParametersReal

end

end RH
end Folder
```
