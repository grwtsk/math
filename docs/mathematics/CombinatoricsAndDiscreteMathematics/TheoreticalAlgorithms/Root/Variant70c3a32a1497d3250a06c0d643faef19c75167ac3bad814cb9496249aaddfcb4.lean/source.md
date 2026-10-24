# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Root.Variant70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `379ece2ddc4b603b8a409b22d87129e0dfbb310d` · SHA-256 `70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
