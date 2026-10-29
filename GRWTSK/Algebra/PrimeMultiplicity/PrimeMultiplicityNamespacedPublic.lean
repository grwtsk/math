-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MultiplicityAddValuation.Variant9ece884a85660a33305573abe683f3beb85b3dd83942796af8308d15f6cbb0de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ece884a85660a33305573abe683f3beb85b3dd83942796af8308d15f6cbb0de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MultiplicityAddValuation.Variant9ece884a85660a33305573abe683f3beb85b3dd83942796af8308d15f6cbb0de","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"9ece884a85660a33305573abe683f3beb85b3dd83942796af8308d15f6cbb0de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Valuation/PrimeMultiplicity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Chris Hughes
-/
module

public import Mathlib.RingTheory.Multiplicity
public import Mathlib.RingTheory.Valuation.Basic

/-!
# `multiplicity` of a prime in an integral domain as an additive valuation
-/


namespace GRWTSK.Algebra.MultiplicityAddValuation.Variant9ece884a85660a33305573abe683f3beb85b3dd83942796af8308d15f6cbb0de

@[expose] public section

variable {R : Type*} [CommRing R] [IsDomain R] {p : R}

/-- `multiplicity` of a prime in an integral domain as an additive valuation to `ℕ∞`. -/
noncomputable def multiplicity_addValuation (hp : Prime p) : AddValuation R ℕ∞ :=
  AddValuation.of (emultiplicity p) (emultiplicity_zero_right _)
    (emultiplicity_of_one_right hp.not_isUnit)
      (fun _ _ => min_le_emultiplicity_add) fun _ _ => emultiplicity_mul hp

@[simp]
theorem multiplicity_addValuation_apply {hp : Prime p} {r : R} :
    multiplicity_addValuation hp r = emultiplicity p r :=
  rfl
