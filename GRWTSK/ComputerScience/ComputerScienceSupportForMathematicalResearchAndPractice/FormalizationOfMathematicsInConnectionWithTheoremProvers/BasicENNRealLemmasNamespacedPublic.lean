-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CoeIndicator.Variantcb3058cc3505a24dc48c0564ecba34e56aafd8acef66cde2ec394cb941d0aa16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb3058cc3505a24dc48c0564ecba34e56aafd8acef66cde2ec394cb941d0aa16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CoeIndicator.Variantcb3058cc3505a24dc48c0564ecba34e56aafd8acef66cde2ec394cb941d0aa16","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"cb3058cc3505a24dc48c0564ecba34e56aafd8acef66cde2ec394cb941d0aa16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/ENNReal/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
module

public import Mathlib.Algebra.Group.Indicator
public import Mathlib.Basic.ENNReal.Basic
public import Mathlib.Data.Finset.Lattice.Fold

/-!
# Some lemmas on extended non-negative reals

These are some lemmas split off from `ENNReal.Basic` because they need a lot more imports.
They are probably good targets for further cleanup or moves.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CoeIndicator.Variantcb3058cc3505a24dc48c0564ecba34e56aafd8acef66cde2ec394cb941d0aa16

public section


open Set NNReal

variable {α : Type*}

namespace ENNReal

@[simp, norm_cast]
theorem coe_indicator {α} (s : Set α) (f : α → ℝ≥0) (a : α) :
    ((s.indicator f a : ℝ≥0) : ℝ≥0∞) = s.indicator (fun x => ↑(f x)) a :=
  map_indicator ofNNRealHom _ _ _

section Order

@[simp, norm_cast]
theorem coe_finset_sup {s : Finset α} {f : α → ℝ≥0} : ↑(s.sup f) = s.sup fun x => (f x : ℝ≥0∞) :=
  Finset.apply_sup_eq_sup_comp_of_linearOrder _ coe_mono rfl

end Order

end ENNReal
