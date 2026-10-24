# Complete source: GRWTSK.Algebra.LinearAlgebra.EncodingProofs.Variant869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `326606182a7776b4b0164b77e99454f5848f9af3` · SHA-256 `869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.EMLCircuit
import Surface.Legacy.BinaryLogicMatrix.ElementaryCatalogue

namespace Surface.Legacy

structure EncodingData (s : ElementarySymbol) where
  arity : Nat
  tree : EMLTree arity
  n : Nat
  matrix : EMLCircuitMatrix arity n
  size : Nat
  depth : Nat

structure CertifiedEncoding (s : ElementarySymbol) extends EncodingData s where
  arity_eq : arity = elementaryArity s
  size_eq : size = tree.size
  depth_eq : depth = tree.depth
  wellFormed : EMLCircuitMatrix.WellFormed matrix
  roundTrip : matrixToTree? matrix = some tree

def semanticStatus : String := "structural_encoding_only"
def proofStatus : String := "checked_by_lean"

def certifiedOne : CertifiedEncoding ElementarySymbol.one :=
  let packed := treeToMatrix emlOneTree
  {
    arity := 0
    tree := emlOneTree
    n := packed.1
    matrix := packed.2
    size := emlOneTree.size
    depth := emlOneTree.depth
    arity_eq := rfl
    size_eq := rfl
    depth_eq := rfl
    wellFormed := treeToMatrix_wellFormed emlOneTree
    roundTrip := matrixToTree_treeToMatrix emlOneTree
  }

def certifiedVar : CertifiedEncoding ElementarySymbol.var :=
  let packed := treeToMatrix emlVarTree
  {
    arity := 1
    tree := emlVarTree
    n := packed.1
    matrix := packed.2
    size := emlVarTree.size
    depth := emlVarTree.depth
    arity_eq := rfl
    size_eq := rfl
    depth_eq := rfl
    wellFormed := treeToMatrix_wellFormed emlVarTree
    roundTrip := matrixToTree_treeToMatrix emlVarTree
  }

def certifiedExp : CertifiedEncoding ElementarySymbol.exp :=
  let packed := treeToMatrix emlExpTree
  {
    arity := 1
    tree := emlExpTree
    n := packed.1
    matrix := packed.2
    size := emlExpTree.size
    depth := emlExpTree.depth
    arity_eq := rfl
    size_eq := rfl
    depth_eq := rfl
    wellFormed := treeToMatrix_wellFormed emlExpTree
    roundTrip := matrixToTree_treeToMatrix emlExpTree
  }

def certifiedLog : CertifiedEncoding ElementarySymbol.log :=
  let packed := treeToMatrix emlLogTree
  {
    arity := 1
    tree := emlLogTree
    n := packed.1
    matrix := packed.2
    size := emlLogTree.size
    depth := emlLogTree.depth
    arity_eq := rfl
    size_eq := rfl
    depth_eq := rfl
    wellFormed := treeToMatrix_wellFormed emlLogTree
    roundTrip := matrixToTree_treeToMatrix emlLogTree
  }

theorem selectedCatalogue_complete :
    ∀ s, s ∈ selectedElementaryBasis ->
      ∃ enc : CertifiedEncoding s,
        enc.arity = elementaryArity s ∧
        EMLCircuitMatrix.WellFormed enc.matrix ∧
        matrixToTree? enc.matrix = some enc.tree := by
  intro s h
  simp [selectedElementaryBasis] at h
  rcases h with h | h | h | h
  · cases h
    exact ⟨certifiedOne, certifiedOne.arity_eq, certifiedOne.wellFormed, certifiedOne.roundTrip⟩
  · cases h
    exact ⟨certifiedVar, certifiedVar.arity_eq, certifiedVar.wellFormed, certifiedVar.roundTrip⟩
  · cases h
    exact ⟨certifiedExp, certifiedExp.arity_eq, certifiedExp.wellFormed, certifiedExp.roundTrip⟩
  · cases h
    exact ⟨certifiedLog, certifiedLog.arity_eq, certifiedLog.wellFormed, certifiedLog.roundTrip⟩

end Surface.Legacy
```
