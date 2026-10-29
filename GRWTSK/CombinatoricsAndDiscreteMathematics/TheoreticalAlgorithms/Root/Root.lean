import Formal.Algorithm
import Formal.Kernel
import Formal.Surface

/-!
Controlled root for the Formal program.

All banded source regrowth is routed through this module. It imports the layout
algorithm, the checked kernel, and the unified surface. It does not import
unresolved blueprint, patch, or archive corpus files.
-/

namespace Formal.Root

def controlledRoot : String := "Formal.Root"

def importsCorpus : Bool := false

def bandedRoots : List Formal.ConceptualBoundary :=
  [ Formal.ConceptualBoundary.marker .surface "Formal.Algorithm"
  , Formal.ConceptualBoundary.marker .checked "Formal.Checked"
  , Formal.ConceptualBoundary.marker .checked "Formal.Kernel"
  , Formal.ConceptualBoundary.marker .surface "Formal.Surface"
  , Formal.ConceptualBoundary.marker .surface "Formal.Conceptual"
  , Formal.ConceptualBoundary.marker .surface "Formal.Band"
  , Formal.ConceptualBoundary.marker .blueprint "Formal.Blueprint"
  , Formal.ConceptualBoundary.marker .patch "Formal.Patches.Mathlib"
  , Formal.ConceptualBoundary.marker .external "Formal.External"
  , Formal.ConceptualBoundary.marker .archive "Formal.Archive"
  ]

theorem importsCorpus_false : importsCorpus = false := by
  rfl

theorem bandedRoots_count : bandedRoots.length = 10 := by
  rfl

end Formal.Root
