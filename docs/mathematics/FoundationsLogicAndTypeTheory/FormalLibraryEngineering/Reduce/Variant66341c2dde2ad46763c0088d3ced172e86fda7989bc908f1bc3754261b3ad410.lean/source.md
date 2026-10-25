# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reduce.Variant66341c2dde2ad46763c0088d3ced172e86fda7989bc908f1bc3754261b3ad410

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e6b905cb03d35b0fd257d085eace49bb5f85fdb` · SHA-256 `b019d9ab72cc291e4b30c1de0b5fb217efc4ce5bb0685f622340fcf923e27f73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReduceProjAndUnfold.Variant053beaa0f1b20305a8591cc3efdae472156eb2fabacd9c601f748d25977c158e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"053beaa0f1b20305a8591cc3efdae472156eb2fabacd9c601f748d25977c158e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReduceProjAndUnfold.Variant053beaa0f1b20305a8591cc3efdae472156eb2fabacd9c601f748d25977c158e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"053beaa0f1b20305a8591cc3efdae472156eb2fabacd9c601f748d25977c158e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/Internal/VCGen/Reduce.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Meta.Sym.SymM
import Lean.Meta.WHNF
import Lean.Meta.Sym.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReduceProjAndUnfold.Variant053beaa0f1b20305a8591cc3efdae472156eb2fabacd9c601f748d25977c158e

open Lean Meta Sym

namespace Lean.Elab.Tactic.Do.Internal

namespace VCGen

/-!
SymM-level head-redex reducer used throughout VCGen.
-/

/--
Like `Meta.reduceProj?` but also `Sym.unfoldReducible`s the projected field when whnf
reduced the structure. Transparency is the caller's choice.
-/
private def reduceProjAndUnfold? (e : Expr) : MetaM (Option Expr) := do
  let .proj _ idx s := e | return none
  let s' ← Lean.Meta.whnf s
  let some f ← Lean.Meta.projectCore? s' idx | return none
  if isSameExpr s s' then return some f else return some (← Sym.unfoldReducible f)

/--
Repeatedly reduces head redexes in `e`, cycling through the following reductions until
no further progress is made:

1. **Beta**: `(fun x₁ ... xₘ => b) a₁ ... aₙ` → `b[a₁/x₁, aₘ/xₘ] aₘ₊₁ ... aₙ`
2. **Iota**: `MyType.casesOn (MyType.ctor args) alts` → `altᵢ args`
   (matcher/recursor applied to a constructor, at reducible transparency)
3. **Proj-reduction**: `⟨a, b, c⟩.1` → `a` (kernel `.proj` nodes)
4. **Projection delta**: `Struct.field x` → `x.5` (unfolds projection *functions*,
   progress only if followed by proj-reduction)

Returns `none` when no reduction was possible. Maintains maximal sharing via `shareCommonInc`
and the SymM no-exposed-reducibles invariant.
-/
public partial def reduceHead? (e : Expr) : SymM (Option Expr) :=
  withReducible <| go none e.getAppFn e.getAppRevArgs
  where
    go lastReduction f rargs := do
      match f with
      | .mdata _ f => go lastReduction f rargs
      | .app f a => go lastReduction f (rargs.push a)
      | .lam .. =>
        if rargs.size = 0 then return lastReduction
        let e' := f.betaRev rargs
        let e' ← Sym.shareCommonInc e'
        go (some e') e'.getAppFn e'.getAppRevArgs
      | .const name .. =>
        -- projections
        if ← isProjectionFn name then
          let some e' ← Meta.unfoldDefinition? (mkAppRev f rargs) | return lastReduction
          let e' ← Sym.shareCommonInc e'
          go lastReduction e'.getAppFn e'.getAppRevArgs  -- intentional lastReduction! see docstring
        -- iota reduction: match/recursor with concrete discriminant
        else if let some e' ← liftMetaM <| reduceRecMatcher? (mkAppRev f rargs) then
          let e' ← Sym.shareCommonInc e'
          go (some e') e'.getAppFn e'.getAppRevArgs
        else
          pure lastReduction
      | .proj .. =>
        match ← withReducibleAndInstances <| reduceProjAndUnfold? f with
        | some f' =>
          let f' ← Sym.shareCommonInc f'
          let e' := mkAppRev f' rargs
          go (some e') e'.getAppFn e'.getAppRevArgs
        | none    => pure lastReduction
      | _ => pure lastReduction

public def reduceHead (e : Expr) : SymM Expr :=
  return (← reduceHead? e).getD e

end VCGen
end Lean.Elab.Tactic.Do.Internal
```
