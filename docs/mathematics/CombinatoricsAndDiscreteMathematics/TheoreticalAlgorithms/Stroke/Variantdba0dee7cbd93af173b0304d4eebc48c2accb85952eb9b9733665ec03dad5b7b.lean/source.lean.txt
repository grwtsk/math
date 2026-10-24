-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cap.Varianta44f5fbac409ae34d1bfbf693a2fb91c43f53c433c2d01884ccafcf1063734ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a44f5fbac409ae34d1bfbf693a2fb91c43f53c433c2d01884ccafcf1063734ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Cap.Varianta44f5fbac409ae34d1bfbf693a2fb91c43f53c433c2d01884ccafcf1063734ee","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a44f5fbac409ae34d1bfbf693a2fb91c43f53c433c2d01884ccafcf1063734ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Geometry/Stroke.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Set.Basic

/-!
# Stroke and continuous-region semantics

The client renders these choices numerically. This module fixes their exact
vocabulary and the point-set meaning of region combination without making a
raster-accuracy claim.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cap.Varianta44f5fbac409ae34d1bfbf693a2fb91c43f53c433c2d01884ccafcf1063734ee

namespace BitMatrix.Geometry.Stroke

/-- Endpoint treatment for a rendered stroke. -/
inductive Cap where
  | butt
  | square
  | round
  deriving DecidableEq, Repr

/-- Internal join treatment for a rendered stroke. -/
inductive Join where
  | miter
  | round
  | bevel
  | square
  | configuredSquare
  deriving DecidableEq, Repr

/-- Placement of stroke width relative to its source path. -/
inductive Alignment where
  | inside
  | center
  | outside
  deriving DecidableEq, Repr

/-- A positive-width stroke style. -/
structure Style where
  width : ℝ
  widthPositive : 0 < width
  alignment : Alignment
  cap : Cap
  join : Join
  miterLimit : ℝ
  miterLimitAtLeastOne : 1 ≤ miterLimit

/-- A continuous region is represented extensionally by point membership. -/
abbrev Region (Point : Type) := Set Point

/-- The four supported continuous set operations. -/
inductive SetOperation where
  | union
  | subtract
  | intersect
  | exclude
  deriving DecidableEq, Repr

/-- Exact point-set semantics applied before raster sampling. -/
def combine {Point : Type}
    (operation : SetOperation)
    (left right : Region Point) : Region Point :=
  match operation with
  | .union => left ∪ right
  | .subtract => left \ right
  | .intersect => left ∩ right
  | .exclude => (left \ right) ∪ (right \ left)

end BitMatrix.Geometry.Stroke
