# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheoryClass.Variant32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54f8e898b69d2f2b71094be54942220b6031619d` · SHA-256 `32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.DerivedSheaf.KTheoryClass

Radiation role: research-boundary
BinaryMatrix spine: This module records K-theory class data, not BinaryMatrix carriers.
Ontology: derived.k_theory_class
Pivot role: none
Zero typology: k_zero
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure KTheorySpace where
  Base : Type _
  Class : Type _
  zero : Class
  add : Class → Class → Class
  neg : Class → Class
  label : String

structure KTheoryClass
    (K : KTheorySpace) where
  value : K.Class
  label : String

def KTheoryClass.IsZero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  x.value = K.zero

def KTheoryClass.Nonzero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  ¬ x.IsZero

theorem ktheory_class_has_value
    {K : KTheorySpace}
    (x : KTheoryClass K) :
    ∃ v : K.Class, v = x.value :=
  ⟨x.value, rfl⟩

end DerivedSheaf
end Folder
```
