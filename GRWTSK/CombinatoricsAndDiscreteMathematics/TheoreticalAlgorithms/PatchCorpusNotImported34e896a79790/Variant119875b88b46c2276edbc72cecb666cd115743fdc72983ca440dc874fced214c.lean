import Formal.Ast.Surface.projection_operators.defaultstatus_is_localonly_9fabe884afb2

/-!
Patch surface marker.

This root surfaces local patch metadata and conceptual boundaries only. It does
not import local Mathlib patch files into theorem authority.
-/

namespace Formal.Surface.Patches

def importsPatchCorpus : Bool := false

theorem patch_corpus_not_imported : importsPatchCorpus = false := by
  rfl

def conceptualBoundaries : List String :=
  [ "Formal.Patches.Mathlib.Algebra"
  , "Formal.Patches.Mathlib.Analysis"
  , "Formal.Patches.Mathlib.MeasureTheory"
  , "Formal.Patches.Mathlib.NumberTheory"
  , "Formal.Patches.Mathlib.Topology"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 5 := by
  rfl

end Formal.Surface.Patches
