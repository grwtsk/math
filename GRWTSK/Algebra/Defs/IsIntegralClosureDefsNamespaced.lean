-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsIntegralClosure.Variante70d2ea236e50939cd2708ecbb1eaf85f6e7ed826bdfbd1b3edc6786d4453ff4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e70d2ea236e50939cd2708ecbb1eaf85f6e7ed826bdfbd1b3edc6786d4453ff4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsIntegralClosure.Variante70d2ea236e50939cd2708ecbb1eaf85f6e7ed826bdfbd1b3edc6786d4453ff4","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"e70d2ea236e50939cd2708ecbb1eaf85f6e7ed826bdfbd1b3edc6786d4453ff4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/IntegralClosure/IsIntegralClosure/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs

/-!
# Integral closure as a characteristic predicate

## Main definitions

Let `R` be a `CommRing` and let `A` be an R-algebra.

* `IsIntegralClosure R A` : the characteristic predicate stating `A` is the integral closure of `R`
  in `B`, i.e. that an element of `B` is integral over `R` iff it is an element of
  (the image of) `A`.
-/


namespace GRWTSK.Algebra.IsIntegralClosure.Variante70d2ea236e50939cd2708ecbb1eaf85f6e7ed826bdfbd1b3edc6786d4453ff4

open Polynomial
section IsIntegralClosure

/-- `IsIntegralClosure A R B` is the characteristic predicate stating `A` is
the integral closure of `R` in `B`,
i.e. that an element of `B` is integral over `R` iff it is an element of (the image of) `A`.
-/
class IsIntegralClosure (A R B : Type*) [CommRing R] [CommSemiring A] [CommRing B] [Algebra R B]
  [Algebra A B] : Prop where
  algebraMap_injective' : Function.Injective (algebraMap A B)
  isIntegral_iff : ∀ {x : B}, IsIntegral R x ↔ ∃ y, algebraMap A B y = x

end IsIntegralClosure
