import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Archive.FactorTreeIndex

Radiation role: archive-indexing
BinaryMatrix spine: This module labels logical payload BinaryMatrixStream layers by prime-factor arithmetic indices.
Ontology: archive.factor_tree_index
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace Archive

structure FactorTreeLayerIndex where
  logicalLayer : Nat
  positive : 0 < logicalLayer

def FactorTreeLayerIndex.asPositiveNat
    (i : FactorTreeLayerIndex) :
    NumberTheory.PositiveNat :=
  ⟨i.logicalLayer, i.positive⟩

def FactorTreeLayerIndex.factorMap
    (i : FactorTreeLayerIndex) : Nat →₀ Nat :=
  NumberTheory.FactorizationMap i.asPositiveNat

def FactorTreeLayerIndex.factorLabel
    (_i : FactorTreeLayerIndex) : String :=
  "Nat.factorization label"

theorem factorTreeLayerIndex_decodes
    (i : FactorTreeLayerIndex) :
    NumberTheory.factorProduct i.factorMap = i.logicalLayer :=
  NumberTheory.factorProduct_factorization i.asPositiveNat

end Archive
end Folder
