import Folder.CrystallineTensor.HodgeDeRhamFiltration
import Folder.ResearchTopos.TMFFraming
import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.WittenGenusBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module records Witten genus/TMF boundary contracts, not BinaryMatrix invariants.
Ontology: crystalline_index.witten_genus_boundary
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

structure WittenGenusIndexBoundary
    (H : CohomologyTheory) where
  tmfContract : ResearchTopos.TMFContract
  genusWitness : ResearchTopos.WittenGenusWitness
  indexTarget : CohomologyClass H
  refinesAhat : Prop
  refinesAhat_certified : refinesAhat
  stringOrientationRequired : Prop
  stringOrientationRequired_certified : stringOrientationRequired
  sourceLabel : String

theorem witten_genus_refines_ahat_if_supplied
    {H : CohomologyTheory}
    (W : WittenGenusIndexBoundary H) :
    W.refinesAhat :=
  W.refinesAhat_certified

theorem witten_genus_requires_string_orientation
    {H : CohomologyTheory}
    (W : WittenGenusIndexBoundary H) :
    W.stringOrientationRequired :=
  W.stringOrientationRequired_certified

end CrystallineIndex
end Folder
