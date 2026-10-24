import Folder.CrystallineTensor.Crystal
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.CrystallineIndex.CrystallineDirac

Radiation role: research-boundary
BinaryMatrix spine: This module records a crystalline Dirac-type contract, not a BinaryMatrix operator.
Ontology: crystalline_index.dirac
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Contract-level crystalline Dirac-type operator.

The record says what a future index theorem would need. It does not construct
`D_crys` or prove ellipticity/Fredholmness from analytic hypotheses.
-/
structure CrystallineDiracOperator
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    (nabla : CrystallineTensor.Connection F) where
  Domain : Type _
  Codomain : Type _
  operator : Domain → Codomain
  usesConnection : Prop
  usesConnection_certified : usesConnection
  ellipticAnalogue : Prop
  ellipticAnalogue_certified : ellipticAnalogue
  fredholmAnalogue : Prop
  fredholmAnalogue_certified : fredholmAnalogue
  sourceLabel : String

theorem crystalline_dirac_uses_connection
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) :
    D.usesConnection :=
  D.usesConnection_certified

theorem crystalline_dirac_fredholm_analogue
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) :
    D.fredholmAnalogue :=
  D.fredholmAnalogue_certified

end CrystallineIndex
end Folder
