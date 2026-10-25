# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.RealizedFiniteRecipeData.Variant174ec649de2e84b4.CopyListSpecialization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27307f7887b89fa71cd1653f394b619c606c646d` · SHA-256 `8dbe2bd1db9eca1eefd47d019af9eb9b4a55b4bdb39a94cef91d8c149352b969`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CopyListSpecialization — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7
Organized SHA-256: 0e1c0089ee77705caeeb9443caa1da681b392a28eafd9356b4bb2877c069435a
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact original copy-action/copy-rule recipe for each supplied list entry, full realized proof and exact materialize_copy_atom_stream extensionality proof. Dictionary unique_atoms is set to the proposition True, not an actual uniqueness proof; duplicate matrices and empty lists are allowed. Old RuleEngine/BinaryMatrixStream providers remain unchanged. -/

import Folder.Archive.RuleEngine
import Folder.Carrier.BinaryMatrixStream

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.RealizedFiniteRecipeData.Variant174ec649de2e84b4.RealizedRecipeStreamAndListValues

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

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.RealizedFiniteRecipeData.Variant174ec649de2e84b4

open Folder
open Folder.Archive

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


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.RealizedFiniteRecipeData.Variant174ec649de2e84b4
```
