-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MultiplicityAddValuation.Variant7929a7ba3333c6c45bb43af7c358a4726c387d4f7df64557b72e74a98d413792","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7929a7ba3333c6c45bb43af7c358a4726c387d4f7df64557b72e74a98d413792","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MultiplicityAddValuation.Variant7929a7ba3333c6c45bb43af7c358a4726c387d4f7df64557b72e74a98d413792","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"7929a7ba3333c6c45bb43af7c358a4726c387d4f7df64557b72e74a98d413792","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Valuation/PrimeMultiplicity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Chris Hughes
-/
import Mathlib.RingTheory.Multiplicity
import Mathlib.RingTheory.Valuation.Basic

/-!
# `multiplicity` of a prime in an integral domain as an additive valuation
-/


namespace GRWTSK.Algebra.MultiplicityAddValuation.Variant7929a7ba3333c6c45bb43af7c358a4726c387d4f7df64557b72e74a98d413792

variable {R : Type*} [CommRing R] [IsDomain R] {p : R}

/-- `multiplicity` of a prime in an integral domain as an additive valuation to `ℕ∞`. -/
noncomputable def multiplicity_addValuation (hp : Prime p) : AddValuation R ℕ∞ :=
  AddValuation.of (emultiplicity p) (emultiplicity_zero _) (emultiplicity_of_one_right hp.not_unit)
    (fun _ _ => min_le_emultiplicity_add) fun _ _ => emultiplicity_mul hp

@[simp]
theorem multiplicity_addValuation_apply {hp : Prime p} {r : R} :
    multiplicity_addValuation hp r = emultiplicity p r :=
  rfl
