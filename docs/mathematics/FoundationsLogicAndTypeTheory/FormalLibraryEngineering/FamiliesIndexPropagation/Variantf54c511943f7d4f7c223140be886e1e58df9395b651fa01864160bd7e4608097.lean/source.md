# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FamiliesIndexPropagation.Variantf54c511943f7d4f7c223140be886e1e58df9395b651fa01864160bd7e4608097

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fc430ddf435d6b311ef3356aee38fd3524caffd` · SHA-256 `f54c511943f7d4f7c223140be886e1e58df9395b651fa01864160bd7e4608097`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.FamiliesIndexPropagation

/-!
# Folder.Theorem.CanonicalPath.FamiliesIndexPropagation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports families-index propagation facts.
Ontology: proof.canonical_path.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem families_k_index_nontrivial_if_supplied
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.CanonicalPath.FamiliesKIndexPropagation F M) :
    I.nontrivialOnComponent :=
  Folder.CanonicalPath.families_k_index_nontrivial_if_supplied I

theorem families_k_index_specializes_if_supplied
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.CanonicalPath.FamiliesKIndexPropagation F M) :
    I.specializesToFiberIndex :=
  Folder.CanonicalPath.families_k_index_specializes_if_supplied I

end CanonicalPath
end Theorem
end Folder
```
