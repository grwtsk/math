# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheoryIndex.Variantf0dd5af00a10c9020a547dbb6b942cd4132ef1f7ce498ff18ef44fbfe119d548

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7bd9865ce9c68cbfc5171ac3b370c3ad54c7e12` · SHA-256 `f0dd5af00a10c9020a547dbb6b942cd4132ef1f7ce498ff18ef44fbfe119d548`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.DerivedIndex
import Folder.DerivedSheaf.ModuliStackKTheory
import Folder.DerivedSheaf.PerfectComplex

/-!
# Folder.DerivedSheaf.KTheoryIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records the primary K-theory index, not BinaryMatrix data.
Ontology: derived.k_theory_index
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
The primary index object: a K-theory class of a perfect complex over the
contract-level K(M_ell) target.
-/
structure KTheoryIndex
    (M : MellKTheory) where
  perfect : PerfectComplex
  indexClass : KTheoryClass M.K
  euler? : Option DerivedIndex
  classOfPerfectComplex : Prop
  classOfPerfectComplex_certified : classOfPerfectComplex
  sourceLabel : String

theorem ktheory_index_class_of_perfect_complex
    {M : MellKTheory}
    (I : KTheoryIndex M) :
    I.classOfPerfectComplex :=
  I.classOfPerfectComplex_certified

theorem ktheory_index_has_class
    {M : MellKTheory}
    (I : KTheoryIndex M) :
    ∃ c : KTheoryClass M.K, c = I.indexClass :=
  ⟨I.indexClass, rfl⟩

end DerivedSheaf
end Folder
```
