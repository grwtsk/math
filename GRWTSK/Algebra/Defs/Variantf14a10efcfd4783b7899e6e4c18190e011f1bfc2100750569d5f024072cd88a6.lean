-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AlgebraIsIntegralDef.Variant66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AlgebraIsIntegralDef.Variant66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/IntegralClosure/Algebra/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs

/-!
# Integral algebras

## Main definitions

Let `R` be a `CommRing` and let `A` be an R-algebra.

* `Algebra.IsIntegral R A` : An algebra is integral if every element of the extension is integral
  over the base ring.
-/


namespace GRWTSK.Algebra.AlgebraIsIntegralDef.Variant66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e

public section

section Ring

variable {R A : Type*}
variable [CommRing R] [Ring A]

variable [Algebra R A] (R)

variable (A)

/-- An algebra is integral if every element of the extension is integral over the base ring. -/
@[mk_iff] protected class Algebra.IsIntegral : Prop where
  isIntegral : ∀ x : A, IsIntegral R x

variable {R A}

lemma Algebra.isIntegral_def : Algebra.IsIntegral R A ↔ ∀ x : A, IsIntegral R x :=
  ⟨fun ⟨h⟩ ↦ h, fun h ↦ ⟨h⟩⟩

lemma algebraMap_isIntegral_iff : (algebraMap R A).IsIntegral ↔ Algebra.IsIntegral R A :=
  (Algebra.isIntegral_iff ..).symm

end Ring
