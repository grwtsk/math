-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiagonalOperator.Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DiagonalOperator.Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/OperatorOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Order.Pi
import Mathlib.Data.Rat.Lemmas
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Exact rational diagonal operator order

This is a deliberately finite-coordinate, exact-arithmetic kernel.  It proves
the order algebra needed by the early capacity packages without claiming a
general bounded-operator or infinite-dimensional realization.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiagonalOperator.Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837

namespace Mathematics.SemiLocalDefect

abbrev DiagonalOperator (Coordinate : Type u) :=
  Coordinate → ℚ

def OperatorNonnegative
    {Coordinate : Type u}
    (operator : DiagonalOperator Coordinate) : Prop :=
  ∀ coordinate, 0 ≤ operator coordinate

def OperatorLe
    {Coordinate : Type u}
    (left right : DiagonalOperator Coordinate) : Prop :=
  ∀ coordinate, left coordinate ≤ right coordinate

def identityOperator
    (Coordinate : Type u) :
    DiagonalOperator Coordinate :=
  fun _ => 1

theorem operatorLe_refl
    {Coordinate : Type u}
    (operator : DiagonalOperator Coordinate) :
    OperatorLe operator operator :=
  fun _ => le_rfl

theorem operatorLe_trans
    {Coordinate : Type u}
    {first second third : DiagonalOperator Coordinate}
    (first_second : OperatorLe first second)
    (second_third : OperatorLe second third) :
    OperatorLe first third :=
  fun coordinate =>
    le_trans
      (first_second coordinate)
      (second_third coordinate)

theorem operator_increment_nonnegative
    {Coordinate : Type u}
    {source target : DiagonalOperator Coordinate}
    (ordered : OperatorLe source target) :
    OperatorNonnegative (target - source) :=
  fun coordinate =>
    sub_nonneg.mpr (ordered coordinate)

theorem nonnegative_add
    {Coordinate : Type u}
    {left right : DiagonalOperator Coordinate}
    (left_nonnegative : OperatorNonnegative left)
    (right_nonnegative : OperatorNonnegative right) :
    OperatorNonnegative (left + right) :=
  fun coordinate =>
    add_nonneg
      (left_nonnegative coordinate)
      (right_nonnegative coordinate)

end Mathematics.SemiLocalDefect
