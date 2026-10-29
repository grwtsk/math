import Folder.DerivedSheaf.DerivedObject

/-!
# Folder.DerivedSheaf.PerfectComplex

Radiation role: research-boundary
BinaryMatrix spine: This module stores perfect-complex contracts, not BinaryMatrix data.
Ontology: derived.perfect_complex
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure PerfectComplex where
  derived : DerivedObject
  locallyFinitePresentation : Prop
  locallyFinitePresentation_certified : locallyFinitePresentation
  boundedTorAmplitude : Prop
  boundedTorAmplitude_certified : boundedTorAmplitude
  dualizable : Prop
  dualizable_certified : dualizable
  label : String

theorem perfect_complex_dualizable
    (P : PerfectComplex) :
    P.dualizable :=
  P.dualizable_certified

theorem perfect_complex_locally_finite
    (P : PerfectComplex) :
    P.locallyFinitePresentation :=
  P.locallyFinitePresentation_certified

theorem perfect_complex_bounded_tor
    (P : PerfectComplex) :
    P.boundedTorAmplitude :=
  P.boundedTorAmplitude_certified

end DerivedSheaf
end Folder
