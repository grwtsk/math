import Folder.CrystallineTensor.TensorSection

/-!
# Folder.CrystallineTensor.ChromaticHeight

Radiation role: research-boundary
BinaryMatrix spine: This module records chromatic-height-to-rank rules as contracts, not BinaryMatrix theorems.
Ontology: crystalline.chromatic_height
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure ChromaticHeight where
  height : Nat
  positive? : Option (PLift (0 < height))
  label : String

structure HeightRankRule where
  rankOfHeight : ChromaticHeight → TensorRank
  monotone : Prop
  monotone_certified : monotone
  sourceLabel : String

theorem height_rank_rule_monotone_if_supplied
    (R : HeightRankRule) :
    R.monotone :=
  R.monotone_certified

end CrystallineTensor
end Folder
