# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtraRecognizers.Variant4f94096f17f4188966ccd355f051e9b51a552f494f3d1d25e9ff8225bfaea672

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7afe3cf36b371cc7e0b8020abce5e1eb657bee06` · SHA-256 `6dc4f829154d312c1591d5c2d2288ecef16289f7360fcc5ce709aba9e76080a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
