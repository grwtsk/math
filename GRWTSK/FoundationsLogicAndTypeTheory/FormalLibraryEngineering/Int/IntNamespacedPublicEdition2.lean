-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variantae655d6df91afa87a51d6be899e49c63fc60c573e2547aaee2a7ff86f3ee7c15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae655d6df91afa87a51d6be899e49c63fc60c573e2547aaee2a7ff86f3ee7c15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ring.Variantae655d6df91afa87a51d6be899e49c63fc60c573e2547aaee2a7ff86f3ee7c15","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ae655d6df91afa87a51d6be899e49c63fc60c573e2547aaee2a7ff86f3ee7c15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Ordered/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Ordered.Ring
public import Init.GrindInstances.Ring.Int
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variantae655d6df91afa87a51d6be899e49c63fc60c573e2547aaee2a7ff86f3ee7c15

public section

/-!
# `grind` instances for `Int` as an ordered module.
-/

open Std

namespace Lean.Grind

instance : IsLinearOrder Int where
  le_refl := Int.le_refl
  le_trans _ _ _ := Int.le_trans
  le_antisymm _ _ := Int.le_antisymm
  le_total := Int.le_total

instance : LawfulOrderLT Int where
  lt_iff := by omega

instance : OrderedAdd Int where
  add_le_left_iff := by omega

instance : OrderedRing Int where
  zero_lt_one := by omega
  mul_lt_mul_of_pos_left := Int.mul_lt_mul_of_pos_left
  mul_lt_mul_of_pos_right := Int.mul_lt_mul_of_pos_right

end Lean.Grind
