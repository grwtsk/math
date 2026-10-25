-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoeTypeSet.Variant0e76930370764fa779a771cd1d67299e2f8e580db4c11f8b0bc3e85052014f47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e76930370764fa779a771cd1d67299e2f8e580db4c11f8b0bc3e85052014f47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CoeTypeSet.Variant0e76930370764fa779a771cd1d67299e2f8e580db4c11f8b0bc3e85052014f47","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0e76930370764fa779a771cd1d67299e2f8e580db4c11f8b0bc3e85052014f47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Lean/Expr/ExtraRecognizers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

public import Mathlib.Data.Set.CoeSort

/-!
# Additional Expr recognizers needing theory imports

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoeTypeSet.Variant0e76930370764fa779a771cd1d67299e2f8e580db4c11f8b0bc3e85052014f47

public section

namespace Lean.Expr

/-- If `e` is a coercion of a set to a type, return the set.
Succeeds either for `Set.Elem s` terms or `{x // x ∈ s}` subtype terms. -/
def coeTypeSet? (e : Expr) : Option Expr := do
  if e.isAppOfArity ``Set.Elem 2 then
    return e.appArg!
  else if e.isAppOfArity ``Subtype 2 then
    let .lam _ _ body _ := e.appArg! | failure
    guard <| body.isAppOfArity ``Membership.mem 5
    let #[_, _, inst, .bvar 0, s] := body.getAppArgs | failure
    guard <| inst.isAppOfArity ``Set.instMembership 1
    return s
  else
    failure

end Lean.Expr
