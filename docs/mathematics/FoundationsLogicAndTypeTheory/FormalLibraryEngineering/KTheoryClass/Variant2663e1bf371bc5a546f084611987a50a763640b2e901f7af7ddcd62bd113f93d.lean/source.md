# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheoryClass.Variant2663e1bf371bc5a546f084611987a50a763640b2e901f7af7ddcd62bd113f93d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e36dccd7b2c81e6fdb815cc4b91320e7aa607883` · SHA-256 `2663e1bf371bc5a546f084611987a50a763640b2e901f7af7ddcd62bd113f93d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.ModuliStackKTheory

/-!
# Folder.Theorem.DerivedSheaf.KTheoryClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports K-theory class facts, not BinaryMatrix data.
Ontology: derived.k_theory_class
Pivot role: none
Zero typology: k_zero
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem ktheory_class_has_value
    {K : Folder.DerivedSheaf.KTheorySpace}
    (x : Folder.DerivedSheaf.KTheoryClass K) :
    ∃ v : K.Class, v = x.value :=
  Folder.DerivedSheaf.ktheory_class_has_value x

theorem mell_k_theory_targets_mell
    (M : Folder.DerivedSheaf.MellKTheory) :
    M.K_of_Mell :=
  Folder.DerivedSheaf.mell_k_theory_targets_mell M

theorem mell_contract_is_mell
    (M : Folder.DerivedSheaf.ModuliStackContract) :
    M.isMell :=
  Folder.DerivedSheaf.mell_contract_is_mell M

end DerivedSheaf
end Theorem
end Folder
```
