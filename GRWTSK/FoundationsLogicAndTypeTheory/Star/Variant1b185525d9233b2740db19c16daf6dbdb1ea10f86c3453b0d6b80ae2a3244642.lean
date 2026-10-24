-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.NNReal.Variant7816b94084a02da2c814e75ef7b2bd50326095132e02cf848724e7631cb32886","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7816b94084a02da2c814e75ef7b2bd50326095132e02cf848724e7631cb32886","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NNReal.Variant7816b94084a02da2c814e75ef7b2bd50326095132e02cf848724e7631cb32886","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7816b94084a02da2c814e75ef7b2bd50326095132e02cf848724e7631cb32886","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/NNReal/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Data.NNReal.Defs
import Mathlib.Data.Real.Star

/-!
# The non-negative real numbers are a `*`-ring, with the trivial `*`-structure
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.NNReal.Variant7816b94084a02da2c814e75ef7b2bd50326095132e02cf848724e7631cb32886

assert_not_exists Finset

open scoped NNReal

instance : StarRing ℝ≥0 := starRingOfComm

instance : TrivialStar ℝ≥0 where
  star_trivial _ := rfl

instance : StarModule ℝ≥0 ℝ where
  star_smul := by simp only [star_trivial, eq_self_iff_true, forall_const]

instance {E : Type*} [AddCommMonoid E] [Star E] [Module ℝ E] [StarModule ℝ E] :
    StarModule ℝ≥0 E where
  star_smul _ := star_smul (_ : ℝ)
