# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AbstractNestedProofs.Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16cf57a7efe3e9ed45fe4659358e945a34227b24` · SHA-256 `29bb07f27529aa1776d45ddd5663db22db39055f0f515756914b4d36403c8732`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Context.Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/AbstractNestedProofs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Grind.Util
public import Lean.Meta.Closure
public import Lean.Meta.Transform


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df

public section

namespace Lean.Meta

/-- Abstracts the given proof into an auxiliary theorem, suitably pre-processing its type. -/
def abstractProof [Monad m] [MonadLiftT MetaM m] [MonadEnv m] [MonadOptions m] [MonadFinally m]
    (proof : Expr) (cache := true) (postprocessType : Expr → m Expr := pure) : m Expr := do
  let type ← withoutExporting do inferType proof
  let type ← (Core.betaReduce type : MetaM _)
  let type ← zetaReduce type
  let type ← postprocessType type
  /- https://github.com/leanprover/lean4/issues/10196
     If we use the cache when the proof contains `sorry`,
     then we may fail to get a "declaration contains 'sorry'" warning for the current declaration. -/
  let cache := cache && !proof.hasSorry
  /- We turn on zetaDelta-expansion to make sure we don't need to perform an expensive `check` step to
    identify which let-decls can be abstracted. If we design a more efficient test, we can avoid the eager zetaDelta expansion step.
    In a benchmark created by @selsam, The extra `check` step was a bottleneck. -/
  mkAuxTheorem (cache := cache) type proof (zetaDelta := true)

namespace AbstractNestedProofs

def getLambdaBody (e : Expr) : Expr :=
  match e with
  | .lam _ _ b _ => getLambdaBody b
  | _ => e

def isNonTrivialProof (e : Expr) : MetaM Bool := do
  let origEnv ← getEnv
  -- NOTE: this `withoutExporting` is not strictly necessary when considering the Lean elaborator
  -- per se because there `e` is an elaboration result that should have been produced under the same
  -- `Environment.isExporting` setting as the current one, so all referenced constants should be
  -- accessible as is. However, Mathlib's `[to_additive]`, for example, uses `abstractNestedProofs`
  -- on terms that contain the unfolding of non-exposed definitions and so may reference private
  -- declarations but the code might still be run under `isExporting = true` in order to create the
  -- new aux decls in the public scope. Thus we always shift to the private scope here.
  withoutExporting do
  if !(← isProof e) then
    return false
  else if e.isAppOf ``Grind.nestedProof then
    -- Grind.nestedProof is a gadget created by the `grind` tactic.
    -- We want to avoid the situation where `grind` keeps creating them,
    -- and this module, which is used by `grind`, keeps abstracting them.
    return false
  else
    -- We consider proofs such as `fun x => f x a` as trivial.
    -- For example, we don't want to abstract the body of `def rfl`
    (getLambdaBody e).withApp fun f args =>
      pure $ !f.isAtomic ||
        -- Again we may need to re-do an abstraction here for `to_additive` even if in base
        -- elaborator, this condition should never be fulfilled
        f.const?.any (!origEnv.contains ·.1) ||
        args.any fun arg => !arg.isAtomic

structure Context where
  cache    : Bool

abbrev M := ReaderT Context $ MonadCacheT ExprStructEq Expr MetaM

partial def visit (e : Expr) : M Expr := do
  checkSystem "abstract nested proofs"
  if e.isAtomic then
    pure e
  else
    let visitBinders (xs : Array Expr) (k : M Expr) : M Expr := do
      let localInstances ← getLocalInstances
      let mut lctx ← getLCtx
      for x in xs do
        let xFVarId := x.fvarId!
        let localDecl ← xFVarId.getDecl
        let type      ← visit localDecl.type
        let localDecl := localDecl.setType type
        let localDecl ← match localDecl.value? (allowNondep := true) with
           | some value => let value ← visit value; pure <| localDecl.setValue value
           | none       => pure localDecl
        lctx := lctx.modifyLocalDecl xFVarId fun _ => localDecl
      withLCtx lctx localInstances k
    checkCache { val := e : ExprStructEq } fun _ => do
      if (← isNonTrivialProof e) && !e.hasSorry then
        /- Ensure proofs nested in type are also abstracted.
           We skip abstraction for proofs containing `sorry` to avoid generating extra
           "declaration uses sorry" warnings for auxiliary theorems: one per abstracted proof
           instead of a single warning for the main declaration. Additionally, the `zetaDelta`
           expansion in `mkAuxTheorem` can inline let-bound sorry values, causing warnings
           even for proofs that only transitively reference sorry-containing definitions. -/
        abstractProof e (← read).cache visit
      else match e with
        | .lam ..
        | .letE ..     => lambdaLetTelescope e fun xs b => visitBinders xs do mkLambdaFVars xs (← visit b) (usedLetOnly := false) (generalizeNondepLet := false)
        | .forallE ..  => forallTelescope e fun xs b => visitBinders xs do mkForallFVars xs (← visit b)
        | .mdata _ b   => return e.updateMData! (← visit b)
        | .proj _ _ b  => return e.updateProj! (← visit b)
        | .app ..      => e.withApp fun f args => return mkAppN (← visit f) (← args.mapM visit)
        | _            => pure e

end AbstractNestedProofs

/-- Replace proofs nested in `e` with new lemmas. The new lemmas are named using `getDeclNGen`. -/
def abstractNestedProofs (e : Expr) (cache := true) : MetaM Expr := do
  if (← isProof e) then
    -- `e` is a proof itself. So, we don't abstract nested proofs
    return e
  else
    AbstractNestedProofs.visit e |>.run { cache } |>.run

end Lean.Meta
```
