# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BoundaryCriterion.Variante1abb2eb4a5dcbc13c310185121a6fe7da3d74df70b1f6c007747326951e8324

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7839783997d6c42b8c59e8b2add57c333dc616b9` · SHA-256 `e1abb2eb4a5dcbc13c310185121a6fe7da3d74df70b1f6c007747326951e8324`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.BoundaryCriterion

/-!
# Folder.Theorem.RH.BoundaryCriterion

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports conditional boundary-criterion facts.
Ontology: proof.rh.boundary_criterion
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace BoundaryCriterion

theorem h0_real_zeros_from_spectral_reality_and_zero_correspondence
    {O : Folder.RH.RHOperatorData}
    (zeroCorrespondence :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (spectralParametersReal :
      ∀ mu ∈ Folder.RH.RHSpectrum O.D,
        Folder.RH.H0ZeroIsReal (Folder.RH.spectralParameter mu)) :
    Folder.RH.H0RealZeros :=
  Folder.RH.h0_real_zeros_from_spectral_reality_and_zero_correspondence
    zeroCorrespondence spectralParametersReal

theorem critical_line_from_boundary_alignment
    (B : Folder.RH.BoundaryAlignment)
    (O : Folder.RH.RHOperatorData)
    (Z : Folder.RH.ExactZeroData O)
    (zeroCorrespondence :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (spectralParametersReal :
      ∀ mu ∈ Folder.RH.RHSpectrum O.D,
        Folder.RH.H0ZeroIsReal (Folder.RH.spectralParameter mu)) :
    Folder.RH.H0RealZeros :=
  Folder.RH.critical_line_from_boundary_alignment
    B O Z zeroCorrespondence spectralParametersReal

theorem critical_line_statement_from_h0_real_zeros
    (hEquiv : Folder.RH.RH_Iff_H0RealZerosStatement)
    (hZeros : Folder.RH.H0RealZeros) :
    ∀ ρ : ℂ, Folder.RH.ZetaNontrivialZero ρ → ρ.re = (1 / 2 : ℝ) :=
  Folder.RH.critical_line_statement_from_h0_real_zeros hEquiv hZeros

theorem riemann_hypothesis_of_h0_equivalence_and_h0_real_zeros
    (hEquiv : Folder.RH.RH_Iff_H0RealZerosStatement)
    (hZeros : Folder.RH.H0RealZeros) :
    Folder.RH.RiemannHypothesis :=
  Folder.RH.riemann_hypothesis_of_h0_equivalence_and_h0_real_zeros
    hEquiv hZeros

end BoundaryCriterion
end RH
end Theorem
end Folder
```
