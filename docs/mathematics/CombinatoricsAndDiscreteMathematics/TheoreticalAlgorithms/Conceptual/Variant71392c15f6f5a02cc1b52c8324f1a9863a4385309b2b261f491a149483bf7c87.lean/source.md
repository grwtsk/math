# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Conceptual.Variant71392c15f6f5a02cc1b52c8324f1a9863a4385309b2b261f491a149483bf7c87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `933a550dcdda490e22401cad7dce6b271a949e2f` · SHA-256 `71392c15f6f5a02cc1b52c8324f1a9863a4385309b2b261f491a149483bf7c87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Algorithm
import Formal.Surface.Checked
import Formal.Blueprint
import Formal.Patches.Mathlib
import Formal.External.PrimeNumberTheoremAnd
import Formal.External.LeanCert
import Formal.Archive

/-!
Conceptual map for the Formal program.

This module recomposes the physical tree into program boundaries. It imports
only checked roots and marker modules; it does not import blueprint, patch, or
archive corpora.
-/

namespace Formal.Conceptual

def checkedBoundaries : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection"
  ]

def blueprintBoundaries : List String :=
  [ "Formal.Blueprint.Analytic"
  , "Formal.Blueprint.PrimeNumberTheoremAnd"
  , "Formal.Blueprint.Tactic"
  ]

def patchBoundaries : List String :=
  [ "Formal.Patches.Mathlib.Algebra"
  , "Formal.Patches.Mathlib.Analysis"
  , "Formal.Patches.Mathlib.MeasureTheory"
  , "Formal.Patches.Mathlib.NumberTheory"
  , "Formal.Patches.Mathlib.Topology"
  ]

def externalBoundaries : List String :=
  [ "Formal.External.PrimeNumberTheoremAnd"
  , "Formal.External.LeanCert"
  ]

def archiveBoundaries : List String :=
  [ "Formal.Archive"
  ]

def allBands : List String :=
  [ "checked"
  , "blueprint"
  , "patch"
  , "external"
  , "archive"
  ]

theorem allBands_count : allBands.length = 5 := by
  rfl

theorem checkedBoundaries_count : checkedBoundaries.length = 3 := by
  rfl

theorem blueprintBoundaries_count : blueprintBoundaries.length = 3 := by
  rfl

theorem patchBoundaries_count : patchBoundaries.length = 5 := by
  rfl

theorem externalBoundaries_count : externalBoundaries.length = 2 := by
  rfl

theorem archiveBoundaries_count : archiveBoundaries.length = 1 := by
  rfl

def bandedBoundaries : List Formal.ConceptualBoundary :=
  Formal.Algorithm.optimalConceptualRoots

theorem bandedBoundaries_count : bandedBoundaries.length = 17 := by
  rfl

end Formal.Conceptual
```
