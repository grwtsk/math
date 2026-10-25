# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShapeChangingBundle.Variante7de949bac797e160ffa30f5e3609b2bcb6fc86362f3a46cc9b56d746c214107

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `914bb2db53647b8ec4b4e127646019a0651a0542` · SHA-256 `e7de949bac797e160ffa30f5e3609b2bcb6fc86362f3a46cc9b56d746c214107`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.ShapeChangingBundle

/-!
# Folder.Theorem.Research.ShapeChangingBundle

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.shape_changing_bundle
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Research
namespace ShapeChangingBundle

open Carrier

theorem shape_changes_of_step
    (base : GridShape)
    (n : Nat) :
    (Folder.Research.ShapeChangingBundle.levelShape base (n + 1)).rows =
        (Folder.Research.ShapeChangingBundle.levelShape base n).rows + 2 ∧
    (Folder.Research.ShapeChangingBundle.levelShape base (n + 1)).cols =
        (Folder.Research.ShapeChangingBundle.levelShape base n).cols + 2 :=
  Folder.Research.ShapeChangingBundle.shape_changes_of_step base n

theorem contract_expandWithShell_center
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : Folder.Research.ShapeChangingBundle.ShapeStepPayload base k n)
    (X : Folder.Research.ShapeChangingBundle.ShapeChangingState base k n) :
    (Folder.Research.ShapeChangingBundle.contractOneStep base k
      (Folder.Research.ShapeChangingBundle.expandWithShell base k P X)).1 = X :=
  Folder.Research.ShapeChangingBundle.contract_expandWithShell_center base k P X

theorem contract_expandWithShell_shell
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : Folder.Research.ShapeChangingBundle.ShapeStepPayload base k n)
    (X : Folder.Research.ShapeChangingBundle.ShapeChangingState base k n) :
    (Folder.Research.ShapeChangingBundle.contractOneStep base k
      (Folder.Research.ShapeChangingBundle.expandWithShell base k P X)).2 =
      P.shell :=
  Folder.Research.ShapeChangingBundle.contract_expandWithShell_shell base k P X

theorem expand_contractOneStep
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (Y : Folder.Research.ShapeChangingBundle.ShapeChangingState base k (n + 1)) :
    Folder.Research.ShapeChangingBundle.expandWithShell base k
      ({ shell :=
          (Folder.Research.ShapeChangingBundle.contractOneStep base k Y).2 } :
        Folder.Research.ShapeChangingBundle.ShapeStepPayload base k n)
      (Folder.Research.ShapeChangingBundle.contractOneStep base k Y).1
    = Y :=
  Folder.Research.ShapeChangingBundle.expand_contractOneStep base k Y

end ShapeChangingBundle
end Research
end Theorem
end Folder
```
