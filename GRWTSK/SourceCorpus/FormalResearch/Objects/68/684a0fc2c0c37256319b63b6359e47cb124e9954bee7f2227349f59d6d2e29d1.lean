import Folder.DerivedSheaf.PerfectComplex

/-!
# Folder.Theorem.DerivedSheaf.PerfectComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports perfect-complex facts, not BinaryMatrix data.
Ontology: derived.perfect_complex
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem perfect_complex_dualizable
    (P : Folder.DerivedSheaf.PerfectComplex) :
    P.dualizable :=
  Folder.DerivedSheaf.perfect_complex_dualizable P

theorem perfect_complex_locally_finite
    (P : Folder.DerivedSheaf.PerfectComplex) :
    P.locallyFinitePresentation :=
  Folder.DerivedSheaf.perfect_complex_locally_finite P

theorem perfect_complex_bounded_tor
    (P : Folder.DerivedSheaf.PerfectComplex) :
    P.boundedTorAmplitude :=
  Folder.DerivedSheaf.perfect_complex_bounded_tor P

end DerivedSheaf
end Theorem
end Folder
