-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedBoundaries.Variant958672d16e3b818234de57606648a723f84ddc9beafbf0e0763daec03b88cbb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"958672d16e3b818234de57606648a723f84ddc9beafbf0e0763daec03b88cbb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.CheckedBoundaries.Variant958672d16e3b818234de57606648a723f84ddc9beafbf0e0763daec03b88cbb7","mathematical_subject":"Computation.Algorithms","original_sha256":"958672d16e3b818234de57606648a723f84ddc9beafbf0e0763daec03b88cbb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/src/formal/Formal/Conceptual/finite_bit_boundary/allbands_count_25afe01d49fd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedBoundaries.Variant958672d16e3b818234de57606648a723f84ddc9beafbf0e0763daec03b88cbb7

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
