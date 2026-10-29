-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.IccSubsetSegment.Variant6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ConvexAnalysis.SourceCorpus.IccSubsetSegment.Variant6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b","mathematical_subject":"Analysis.ConvexAnalysis","original_sha256":"6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Convex/NNReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
module

public import Mathlib.Algebra.Order.Module.Field
public import Mathlib.Analysis.Convex.Basic
public import Mathlib.Basic.NNReal.Defs

/-!
# Specific lemmas about convexity over `ℝ≥0`

This file collects some specific results about convexity over the ring `ℝ≥0`.
Expand as needed.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.IccSubsetSegment.Variant6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b

public section

open Set
open scoped NNReal

namespace NNReal

protected lemma Icc_subset_segment {x y : ℝ≥0} :
    Icc x y ⊆ segment ℝ≥0 x y :=
  Nonneg.Icc_subset_segment

protected lemma segment_eq_Icc {x y : ℝ≥0} (hxy : x ≤ y) :
    segment ℝ≥0 x y = Icc x y :=
  Nonneg.segment_eq_Icc hxy

protected lemma segment_eq_uIcc {x y : ℝ≥0} :
    segment ℝ≥0 x y = uIcc x y :=
  Nonneg.segment_eq_uIcc

set_option backward.isDefEq.respectTransparency false in
protected lemma convex_iff {M : Type*} [AddCommMonoid M] [Module ℝ M] {s : Set M} :
    Convex ℝ≥0 s ↔ Convex ℝ s := by
  refine ⟨fun H ↦ ?_, Convex.lift ℝ≥0⟩
  intro _ hx _ hy a b ha hb hab
  exact H hx hy (a := ⟨a, ha⟩) (b := ⟨b, hb⟩) zero_le zero_le (by ext; simpa)

end NNReal
