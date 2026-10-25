-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetPPBinderPredicates.Variant59dc352ecb49bb7de24e53eedef24bad45ecac8767c348f499faa094f360589c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59dc352ecb49bb7de24e53eedef24bad45ecac8767c348f499faa094f360589c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GetPPBinderPredicates.Variant59dc352ecb49bb7de24e53eedef24bad45ecac8767c348f499faa094f360589c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"59dc352ecb49bb7de24e53eedef24bad45ecac8767c348f499faa094f360589c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Util/PPOptions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

public import Mathlib.Init

/-!
# Mathlib-specific pretty printer options
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetPPBinderPredicates.Variant59dc352ecb49bb7de24e53eedef24bad45ecac8767c348f499faa094f360589c

public meta section

namespace Mathlib

open Lean

/--
The `pp.mathlib.binderPredicates` option is used to control whether mathlib pretty printers
should use binder predicate notation (such as `∀ x < 2, p x`).
-/
register_option pp.mathlib.binderPredicates : Bool := {
  defValue := true
  descr    := "(pretty printer) pretty prints binders such as \
    `∀ (x : α) (x < 2), p x` as `∀ x < 2, p x`"
}

/-- Gets whether `pp.mathlib.binderPredicates` is enabled. -/
def getPPBinderPredicates (o : Options) : Bool :=
  o.get pp.mathlib.binderPredicates.name (!getPPAll o)

end Mathlib
