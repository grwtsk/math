# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllbandsCount25afe01d49fd.Variant958672d16e3b818234de57606648a723f84ddc9beafbf0e0763daec03b88cbb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65a9d478772e21a03a2cdee61f501f6822e314d1` · SHA-256 `958672d16e3b818234de57606648a723f84ddc9beafbf0e0763daec03b88cbb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.finite_bit_boundary.optimalbands_count_30ba01676d3a
import Formal.Ast.Surface.finite_bit_boundary.checkedmodules_count_f3acdd737477
import Formal.Ast.Surface.proof_authority.blueprint_cannot_close_authority_7adeba310a88
import Formal.Ast.Surface.projection_operators.defaultstatus_is_localonly_9fabe884afb2
import Formal.Ast.Surface.proof_authority.not_declared_dependency_86c76017d0e8
import Formal.Ast.Surface.proof_authority.not_imported_into_kernel_abffe1466148
import Formal.Ast.Surface.proof_authority.archive_not_imported_by_kernel_56391c38229b

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
