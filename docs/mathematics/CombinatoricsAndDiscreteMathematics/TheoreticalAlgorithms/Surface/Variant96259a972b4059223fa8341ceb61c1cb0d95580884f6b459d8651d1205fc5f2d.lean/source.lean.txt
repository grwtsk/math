import Formal.Surface.Checked
import Formal.Surface.Blueprint
import Formal.Surface.Patches
import Formal.Surface.External
import Formal.Surface.Archive
import Formal.Algorithm
import Formal.Conceptual

/-!
Unified Formal program surface.

This module exposes the authority-band entry points without importing the
large blueprint, patch, external, or archive corpora. It also imports the
conceptual map for navigation. The checked kernel imports only
`Formal.Surface.Checked`.
-/

namespace Formal.Surface

def authorityBands : List String :=
  [ "checked"
  , "blueprint"
  , "patches"
  , "external"
  , "archive"
  ]

theorem authorityBands_count : authorityBands.length = 5 := by
  rfl

def conceptualMapModule : String := "Formal.Conceptual"

def bandVocabularyModule : String := "Formal.Band"

def layoutAlgorithmModule : String := "Formal.Algorithm"

end Formal.Surface
