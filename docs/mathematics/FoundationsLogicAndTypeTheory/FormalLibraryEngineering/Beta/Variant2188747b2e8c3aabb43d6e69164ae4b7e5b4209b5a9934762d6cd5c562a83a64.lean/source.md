# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Beta.Variant2188747b2e8c3aabb43d6e69164ae4b7e5b4209b5a9934762d6cd5c562a83a64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f4bd0abc5043a2beb2553454ea450b5d598908d` · SHA-256 `fa829d9e501abe0751f04cfee6871b5c4a5b3bbb6275c0a90513196985fce382`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetEqcLambdas.Variant2f13ef5a1b004e7fcd63b8aa1d512eed2487e58b6dd39fe994854ce22617054c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f13ef5a1b004e7fcd63b8aa1d512eed2487e58b6dd39fe994854ce22617054c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetEqcLambdas.Variant2f13ef5a1b004e7fcd63b8aa1d512eed2487e58b6dd39fe994854ce22617054c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2f13ef5a1b004e7fcd63b8aa1d512eed2487e58b6dd39fe994854ce22617054c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Beta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetEqcLambdas.Variant2f13ef5a1b004e7fcd63b8aa1d512eed2487e58b6dd39fe994854ce22617054c

public section
namespace Lean.Meta.Grind

/-- Returns all lambda expressions in the equivalence class with root `root`. -/
def getEqcLambdas (root : ENode) : GoalM (Array Expr) := do
  unless root.hasLambdas do return #[]
  foldEqc root.self (init := #[]) fun n lams =>
    if n.self.isLambda then return lams.push n.self else return lams

/--
Returns the root of the functions in the equivalence class containing `e`.
That is, if `f a` is in `root`s equivalence class, results contains the root of `f`.
-/
def getFnRoots (e : Expr) : GoalM (Array Expr) := do
  foldEqc e (init := #[]) fun n fns => do
    let fn := n.self.getAppFn
    let fnRoot := (← getRoot? fn).getD fn
    if Option.isNone <| fns.find? (isSameExpr · fnRoot) then
      return fns.push fnRoot
    else
      return fns

/--
For each `lam` in `lams` s.t. `lam` and `f` are in the same equivalence class,
propagate `f args = lam args`.
-/
def propagateBetaEqs (lams : Array Expr) (f : Expr) (args : Array Expr) : GoalM Unit := do
  if args.isEmpty then return ()
  for lam in lams do
    let rhs := lam.beta args
    unless rhs.isLambda do
      let gen := Nat.max (← getGeneration lam) (← getGeneration f)
      let gen ← args.foldlM (init := gen) fun gen arg => return Nat.max gen (← getGeneration arg)
      let gen := gen + 1
      if gen ≥ (← getMaxGeneration) then
        return ()
      let lhs := mkAppN f args
      if (← hasSameType f lam) then
        let mut h ← mkEqProof f lam
        for arg in args do
          h ← mkCongrFun h arg
        let eq ← mkEq lhs rhs
        trace_goal[grind.beta] "{eq}, using {lam}"
        addNewRawFact h eq gen (.beta lam) .other

private def isPropagateBetaTarget (e : Expr) : GoalM Bool := do
  let .app f _ := e | return false
  go f
where
  go (f : Expr) : GoalM Bool := do
    if let some root ← getRootENode? f then
      if root.hasLambdas then
        return true
    let .app f _ := f | return false
    go f

/--
Applies beta-reduction for lambdas in `f`s equivalence class.
We use this function while internalizing new applications.
-/
def propagateBetaForNewApp (e : Expr) : GoalM Unit := do
  unless (← isPropagateBetaTarget e) do return ()
  let mut e := e
  let mut args := #[]
  repeat
    unless args.isEmpty do
      if let some root ← getRootENode? e then
        if root.hasLambdas then
          propagateBetaEqs (← getEqcLambdas root) e args.reverse
    let .app f arg := e | return ()
    e := f
    args := args.push arg

end Lean.Meta.Grind
```
