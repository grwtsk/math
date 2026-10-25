# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplex.Variant935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38247ba1205328b82e3c8d56174fe7cd3245cdb1` · SHA-256 `935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.CrystallineIndex.WittComplex

Radiation role: research-boundary
BinaryMatrix spine: This module records Witt-complex targets, not BinaryMatrix arithmetic.
Ontology: crystalline_index.witt_complex
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
A contract-level Witt complex.

This is not a construction of the de Rham-Witt complex. It is the typed target
in which crystalline index classes live.
-/
structure WittComplex where
  Base : Type _
  Degree : Type _
  Element : Degree → Type _
  zero : ∀ d : Degree, Element d
  differential? : Option Type
  frobenius? : Option Type
  verschiebung? : Option Type
  isComplex : Prop
  isComplex_certified : isComplex
  sourceLabel : String

structure WittElement
    (W : WittComplex) where
  degree : W.Degree
  value : W.Element degree
  label : String

def WittElement.IsZero
    {W : WittComplex}
    (x : WittElement W) : Prop :=
  x.value = W.zero x.degree

def WittElement.Nonzero
    {W : WittComplex}
    (x : WittElement W) : Prop :=
  ¬ x.IsZero

theorem witt_complex_is_complex
    (W : WittComplex) :
    W.isComplex :=
  W.isComplex_certified

theorem witt_element_has_degree
    {W : WittComplex}
    (x : WittElement W) :
    ∃ d : W.Degree, x.degree = d :=
  ⟨x.degree, rfl⟩

end CrystallineIndex
end Folder
```
