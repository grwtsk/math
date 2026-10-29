-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplaceRec.Variant6c9346d6ef1273dce155d237043b5defa332ec376032dc9a5ee25e21c50b0a2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c9346d6ef1273dce155d237043b5defa332ec376032dc9a5ee25e21c50b0a2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReplaceRec.Variant6c9346d6ef1273dce155d237043b5defa332ec376032dc9a5ee25e21c50b0a2b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6c9346d6ef1273dce155d237043b5defa332ec376032dc9a5ee25e21c50b0a2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Expr/ReplaceRec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Simon Hudon, Kim Morrison, Keeley Hoek, Robert Y. Lewis,
Floris van Doorn, Edward Ayers
-/
import Lean.Expr
import Mathlib.Util.MemoFix

/-!
# ReplaceRec

We define a more flexible version of `Expr.replace` where we can use recursive calls even when
replacing a subexpression. We completely mimic the implementation of `Expr.replace`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplaceRec.Variant6c9346d6ef1273dce155d237043b5defa332ec376032dc9a5ee25e21c50b0a2b

namespace Lean.Expr

/-- A version of `Expr.replace` where the replacement function is available to the function `f?`.

`replaceRec f? e` will call `f? r e` where `r = replaceRec f?`.
If `f? r e = none` then `r` will be called on each immediate subexpression of `e` and reassembled.
If it is `some x`, traversal terminates and `x` is returned.
If you wish to recursively replace things in the implementation of `f?`, you can apply `r`.

The function is also memoised, which means that if the
same expression (by reference) is encountered the cached replacement is used. -/
def replaceRec (f? : (Expr → Expr) → Expr → Option Expr) : Expr → Expr :=
  memoFix fun r e ↦
    match f? r e with
    | some x => x
    | none   => Id.run <| traverseChildren (pure <| r ·) e

end Lean.Expr
