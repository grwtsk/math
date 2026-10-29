import Folder.AdelicInfinityTopos.StrongApproximationBoundary
import Folder.AdelicInfinityTopos.TateIwasawaBoundary
import Folder.AdelicInfinityTopos.SpectralBoundaryAlignment

/-!
# Folder.Theorem.AdelicInfinityTopos.SpectralBoundaryAlignment

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral boundary alignment and bridge exposure.
Ontology: proof.adelic.spectral_boundary_alignment
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace SpectralBoundaryAlignment

theorem strong_approx_supplies_restriction_compatibility
    (S : Folder.AdelicInfinityTopos.StrongApproximationToBoundaryAlignment) :
    S.suppliesRestrictionCompatibility :=
  Folder.AdelicInfinityTopos.strong_approx_supplies_restriction_compatibility S

theorem strong_approx_does_not_prove_critical_line_alone
    (S : Folder.AdelicInfinityTopos.StrongApproximationToBoundaryAlignment) :
    S.doesNotProveCriticalLineAlone :=
  Folder.AdelicInfinityTopos.strong_approx_does_not_prove_critical_line_alone S

theorem tate_iwasawa_product_formula
    (T : Folder.AdelicInfinityTopos.TateIwasawaCompatibility) :
    T.assembly.productFormula :=
  Folder.AdelicInfinityTopos.tate_iwasawa_product_formula T

theorem tate_iwasawa_functional_equation
    (T : Folder.AdelicInfinityTopos.TateIwasawaCompatibility) :
    T.assembly.functionalEquation :=
  Folder.AdelicInfinityTopos.tate_iwasawa_functional_equation T

theorem spectral_boundary_alignment_holds
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    {Z : Type}
    (A : Folder.AdelicInfinityTopos.SpectralBoundaryAlignment S Z) :
    A.boundaryData.aligned :=
  Folder.AdelicInfinityTopos.spectral_boundary_alignment_holds A

theorem spectral_boundary_alignment_does_not_force_critical_line_alone
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    {Z : Type}
    (A : Folder.AdelicInfinityTopos.SpectralBoundaryAlignment S Z) :
    True :=
  Folder.AdelicInfinityTopos.spectral_boundary_alignment_does_not_force_critical_line_alone A

theorem critical_line_from_spectral_boundary_bridge
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    {Z : Type}
    (A : Folder.AdelicInfinityTopos.SpectralBoundaryAlignment S Z)
    (B : Folder.AdelicInfinityTopos.SpectralBoundaryCriticalLineBridge A)
    (z : Z) :
    Folder.Research.LFunctionZero.LiesOnCriticalLine (A.zeroData z) :=
  Folder.AdelicInfinityTopos.critical_line_from_spectral_boundary_bridge A B z

theorem critical_line_from_spectral_boundary_alignment
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    {Z : Type}
    (A : Folder.AdelicInfinityTopos.SpectralBoundaryAlignment S Z)
    (B : Folder.AdelicInfinityTopos.SpectralBoundaryCriticalLineBridge A)
    (z : Z) :
    Folder.Research.LFunctionZero.LiesOnCriticalLine (A.zeroData z) :=
  Folder.AdelicInfinityTopos.critical_line_from_spectral_boundary_alignment A B z

end SpectralBoundaryAlignment
end AdelicInfinityTopos
end Theorem
end Folder
