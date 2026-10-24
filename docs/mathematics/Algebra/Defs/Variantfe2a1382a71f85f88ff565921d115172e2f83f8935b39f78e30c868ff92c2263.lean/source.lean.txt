-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearOrderedSemifield.Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.LinearOrderedSemifield.Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Field/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Leonardo de Moura, Mario Carneiro, Floris van Doorn
-/
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Field.Defs

/-!
# Linear ordered (semi)fields

A linear ordered (semi)field is a (semi)field equipped with a linear order such that
* addition respects the order: `a ≤ b → c + a ≤ c + b`;
* multiplication of positives is positive: `0 < a → 0 < b → 0 < a * b`;
* `0 < 1`.

## Main Definitions

* `LinearOrderedSemifield`: Typeclass for linear order semifields.
* `LinearOrderedField`: Typeclass for linear ordered fields.
-/

-- Guard against import creep.

namespace GRWTSK.Algebra.LinearOrderedSemifield.Variant8af25639e0ca0a462258eec35ea35ce97f629cc9e17b1dfc70790f78d443a3f3

assert_not_exists MonoidHom

set_option linter.deprecated false in
/-- A linear ordered semifield is a field with a linear order respecting the operations. -/
@[deprecated "Use `[Semifield K] [LinearOrder K] [IsStrictOrderedRing K]` instead."
  (since := "2025-04-10")]
structure LinearOrderedSemifield (K : Type*) extends LinearOrderedCommSemiring K, Semifield K

set_option linter.deprecated false in
/-- A linear ordered field is a field with a linear order respecting the operations. -/
@[deprecated "Use `[Field K] [LinearOrder K] [IsStrictOrderedRing K]` instead."
  (since := "2025-04-10")]
structure LinearOrderedField (K : Type*) extends LinearOrderedCommRing K, Field K

attribute [nolint docBlame] LinearOrderedSemifield.toSemifield LinearOrderedField.toField
