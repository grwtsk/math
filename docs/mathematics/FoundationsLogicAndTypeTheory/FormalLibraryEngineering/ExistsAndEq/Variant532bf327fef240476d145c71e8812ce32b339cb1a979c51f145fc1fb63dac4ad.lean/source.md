# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsAndEq.Variant532bf327fef240476d145c71e8812ce32b339cb1a979c51f145fc1fb63dac4ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58d249ed1d2d117b6eac3db84c155ce4b48714e0` · SHA-256 `7c8618eba38bfcc52c8e8e90e1ae1a6c09878f810084fbdbfb4865397b0b5faf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsOfImpEq.Variant513b150697c976f51e16a3dc1fcd9cee4d0666d9a3bfeb426b6f659f13605f3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"513b150697c976f51e16a3dc1fcd9cee4d0666d9a3bfeb426b6f659f13605f3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExistsOfImpEq.Variant513b150697c976f51e16a3dc1fcd9cee4d0666d9a3bfeb426b6f659f13605f3e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"513b150697c976f51e16a3dc1fcd9cee4d0666d9a3bfeb426b6f659f13605f3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Simproc/ExistsAndEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Vasilii Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vasilii Nesterov
-/
import Mathlib.Init

/-!
# simproc for `∃ a', ... ∧ a' = a ∧ ...`

This module implements the `existsAndEq` simproc that triggers on goals of the form `∃ a, body` and
checks whether `body` has the form `... ∧ a = a' ∧ ...` or `... ∧ a' = a ∧ ...` for some `a'` that
is independent of `a`. If so, it replaces all occurancies of `a` with `a'` and removes the
quantifier.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsOfImpEq.Variant513b150697c976f51e16a3dc1fcd9cee4d0666d9a3bfeb426b6f659f13605f3e

open Lean Meta

namespace existsAndEq

universe u in
private theorem exists_of_imp_eq {α : Sort u} {p : α → Prop} (a : α) (h : ∀ b, p b → a = b) :
    (∃ b, p b) = p a := by
  apply propext
  constructor
  · intro h'
    obtain ⟨b, hb⟩ := h'
    rwa [h b hb]
  · intro h'
    exact ⟨a, h'⟩

/-- For an expression `p` of the form `fun (x : α) ↦ (body : Prop)`, checks whether
`body` implies `x = a` for some `a`, and constructs a proof of `(∃ x, p x) = p a` using
`exists_of_imp_eq`. -/
partial def findImpEqProof (p : Expr) :
    MetaM <| Option (Expr × Expr) := do
  lambdaTelescope p fun xs body => do
    let #[x] := xs | return none
    withLocalDecl .anonymous .default body fun h => withNewMCtxDepth do
      let .some ⟨res, proof⟩ ← go x h | return none
      let pf1 ← mkLambdaFVars #[x, h] proof
      return .some ⟨res, ← mkAppM ``exists_of_imp_eq #[res, pf1]⟩
where
  /-- Traverses the expression `h`, branching at each `And`, to find a proof of `x = a`
  for some `a`. -/
  go (x h : Expr) : MetaM <| Option (Expr × Expr) := do
    match (← inferType h).getAppFnArgs with
    | (``Eq, #[β, a, b]) =>
      if !(← isDefEq (← inferType x) β) then
        return none
      if (← isDefEq x a) && !(b.containsFVar x.fvarId!) then
        return .some ⟨b, ← mkAppM ``Eq.symm #[h]⟩
      if (← isDefEq x b) && !(a.containsFVar x.fvarId!) then
        return .some ⟨a, h⟩
      else
        return .none
    | (``And, #[_, _]) =>
      if let .some res ← go x (← mkAppM ``And.left #[h]) then
        return res
      if let .some res ← go x (← mkAppM ``And.right #[h]) then
        return res
      return none
    | _ => return none

end existsAndEq

/-- Triggers on goals of the form `∃ a, body` and checks whether `body` has the
form `... ∧ a = a' ∧ ...` or `... ∧ a' = a ∧ ...` for some `a'` that is independent of `a`.
If so, it replaces all occurancies of `a` with `a'` and removes the quantifier. -/
simproc existsAndEq (Exists (fun _ => And _ _)) := fun e => do
  match e.getAppFnArgs with
  | (``Exists, #[_, p]) =>
    let .some ⟨res, pf⟩ ← existsAndEq.findImpEqProof p | return .continue
    return .visit {expr := mkApp p res, proof? := pf}
  | _ => return .continue
```
