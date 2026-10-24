# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SymmetricStream.Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f09f8e2b04276711a4282428fff9bef09dac7c62` · SHA-256 `174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.RuleEngine
import Folder.Carrier.BinaryMatrixStream

/-!
# Folder.Archive.SymmetricStream

Radiation role: archive-stream
BinaryMatrix spine: This module materializes symbolic archive recipes into derived BinaryMatrixStream presentations.
Ontology: archive.symmetric_matrix_stream
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace Folder
namespace Archive

structure SymmetricMatrixStream
    (A : MatrixAction)
    (E : RuleEngine) where
  dictionary : MatrixAtomDictionary
  length : Nat
  recipe : Fin length → LayerRecipe A E
  realized : ∀ i, ∃ M, realizeLayerRecipe? A E dictionary (recipe i) = some M

noncomputable def materialize?
    {A : MatrixAction}
    {E : RuleEngine}
    (S : SymmetricMatrixStream A E) :
    Option Carrier.BinaryMatrixStream :=
  some {
    k := S.length
    layer := fun i =>
      (realizeLayerRecipe? A E S.dictionary (S.recipe i)).getD
        (Carrier.BinaryMatrix.zero 0 0)
  }

def binaryMatrixStreamOfList
    (xs : List Carrier.BinaryMatrix) :
    Carrier.BinaryMatrixStream where
  k := xs.length
  layer := fun i => xs.get i

def copyAtomStream
    (xs : List Carrier.BinaryMatrix) :
    SymmetricMatrixStream copyAction copyRuleEngine where
  dictionary := { atoms := xs, unique_atoms := True }
  length := xs.length
  recipe := fun i =>
    { ref := { index := i.val, spin := () },
      rule := copyRuleEngine.copyId }
  realized := by
    intro i
    refine ⟨xs.get i, ?_⟩
    simp [realizeLayerRecipe?, realizeIndexSpin?, copyAction,
      MatrixAtomDictionary.get?, copyRuleEngine, copyRule]

theorem materialize_copy_atom_stream
    (xs : List Carrier.BinaryMatrix) :
    materialize? (copyAtomStream xs) =
      some (binaryMatrixStreamOfList xs) := by
  apply congrArg some
  refine Carrier.BinaryMatrixStream.ext
    (S := {
      k := (copyAtomStream xs).length
      layer := fun i =>
        (realizeLayerRecipe? copyAction copyRuleEngine
            (copyAtomStream xs).dictionary
            ((copyAtomStream xs).recipe i)).getD
          (Carrier.BinaryMatrix.zero 0 0)
    })
    (T := binaryMatrixStreamOfList xs) ?_ ?_
  · simp [copyAtomStream, binaryMatrixStreamOfList]
  · intro i
    simp [copyAtomStream, binaryMatrixStreamOfList,
      realizeLayerRecipe?, realizeIndexSpin?, MatrixAtomDictionary.get?,
      copyAction, copyRuleEngine, copyRule]

end Archive
end Folder
```
