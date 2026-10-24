# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Conceptual.Variantb60cadb752c3fba1e4a83a6239ed3c14210985bfb5c30dcdf241a9395ce20480

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ebe8d619bceddba4e7f50c873b663c99a04968d` · SHA-256 `5a9d3685fe6127fb07f73b45b343cc36abce1db464a39fd9bb17bb1f141380bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedBoundaries.Variant71392c15f6f5a02cc1b52c8324f1a9863a4385309b2b261f491a149483bf7c87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71392c15f6f5a02cc1b52c8324f1a9863a4385309b2b261f491a149483bf7c87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.CheckedBoundaries.Variant71392c15f6f5a02cc1b52c8324f1a9863a4385309b2b261f491a149483bf7c87","mathematical_subject":"Computation.Algorithms","original_sha256":"71392c15f6f5a02cc1b52c8324f1a9863a4385309b2b261f491a149483bf7c87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/Conceptual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedBoundaries.Variant71392c15f6f5a02cc1b52c8324f1a9863a4385309b2b261f491a149483bf7c87

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
