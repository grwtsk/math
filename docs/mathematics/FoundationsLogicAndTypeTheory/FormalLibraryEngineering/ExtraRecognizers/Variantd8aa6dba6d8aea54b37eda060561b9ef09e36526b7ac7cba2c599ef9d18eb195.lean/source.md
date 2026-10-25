# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtraRecognizers.Variantd8aa6dba6d8aea54b37eda060561b9ef09e36526b7ac7cba2c599ef9d18eb195

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5e50fd39f8270cb973c6d557db003255491a697` · SHA-256 `787f536574b3e431968b9506680a24b5e814a9276628e9334f32556bd442a1d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoeTypeSet.Varianta697e865dd3dcbde87a7eb19885b51685588fca1984e23273018b5c2978a28fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a697e865dd3dcbde87a7eb19885b51685588fca1984e23273018b5c2978a28fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CoeTypeSet.Varianta697e865dd3dcbde87a7eb19885b51685588fca1984e23273018b5c2978a28fd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a697e865dd3dcbde87a7eb19885b51685588fca1984e23273018b5c2978a28fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Expr/ExtraRecognizers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Set.Operations

/-!
# Additional Expr recognizers needing theory imports

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoeTypeSet.Varianta697e865dd3dcbde87a7eb19885b51685588fca1984e23273018b5c2978a28fd

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
