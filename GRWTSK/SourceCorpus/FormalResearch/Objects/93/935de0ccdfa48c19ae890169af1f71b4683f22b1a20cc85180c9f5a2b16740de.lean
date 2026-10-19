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
