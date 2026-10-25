# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrTree.Variant2c69c039e7848394e20696459f8234d50a78281e8e128299f09599280dcedd99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7e65ae6935ca2a4acfa16050ba6774174c250c3` · SHA-256 `076c8cc05d0b0741e9d7ed714dbffd2fb55d1f80c20350a0db57fd5889c48b5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetSubexpressionMatches.Variant1c984314656f5204c66456930b46d46a0b21b6be36a3b80f41e91f0343eadf10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c984314656f5204c66456930b46d46a0b21b6be36a3b80f41e91f0343eadf10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetSubexpressionMatches.Variant1c984314656f5204c66456930b46d46a0b21b6be36a3b80f41e91f0343eadf10","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1c984314656f5204c66456930b46d46a0b21b6be36a3b80f41e91f0343eadf10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Meta/DiscrTree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.Meta.DiscrTree

/-!
# Additions to `Lean.Meta.DiscrTree`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetSubexpressionMatches.Variant1c984314656f5204c66456930b46d46a0b21b6be36a3b80f41e91f0343eadf10

namespace Lean.Meta.DiscrTree

/--
Find keys which match the expression, or some subexpression.

Note that repeated subexpressions will be visited each time they appear,
making this operation potentially very expensive.
It would be good to solve this problem!

Implementation: we reverse the results from `getMatch`,
so that we return lemmas matching larger subexpressions first,
and amongst those we return more specific lemmas first.
-/
partial def getSubexpressionMatches {α : Type}
    (d : DiscrTree α) (e : Expr) : MetaM (Array α) := do
  match e with
  | .bvar _ => return #[]
  | .forallE _ _ _ _ => forallTelescope e (fun args body => do
      args.foldlM (fun acc arg => do
          pure <| acc ++ (← d.getSubexpressionMatches (← inferType arg)))
        (← d.getSubexpressionMatches body).reverse)
  | .lam _ _ _ _
  | .letE _ _ _ _ _ => lambdaLetTelescope e (fun args body => do
      args.foldlM (fun acc arg => do
          pure <| acc ++ (← d.getSubexpressionMatches (← inferType arg)))
        (← d.getSubexpressionMatches body).reverse)
  | _ =>
    e.foldlM (fun a f => do
      pure <| a ++ (← d.getSubexpressionMatches f)) (← d.getMatch e).reverse

/--
Check if a `keys : Array DiscTree.Key` is "specific",
i.e. something other than `[*]` or `[=, *, *, *]`.
-/
def keysSpecific (keys : Array DiscrTree.Key) : Bool :=
  keys != #[Key.star] && keys != #[Key.const ``Eq 3, Key.star, Key.star, Key.star]

end Lean.Meta.DiscrTree
```
