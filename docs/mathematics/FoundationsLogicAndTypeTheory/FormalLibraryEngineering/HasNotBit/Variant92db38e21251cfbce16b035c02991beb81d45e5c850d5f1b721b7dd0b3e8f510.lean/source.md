# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasNotBit.Variant92db38e21251cfbce16b035c02991beb81d45e5c850d5f1b721b7dd0b3e8f510

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7e4bf9a69bbd700091c7cde0a9a1ef05e78445d` · SHA-256 `4002e7ae06a5373c12966d4a1aec0d151f392e4ec293addc3ece9d9ff97adf58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkHasNotBit.Variant098e404cdcff208cb391f7b9d93af50511e46aec2590b576aa0bb1eeb41f77a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"098e404cdcff208cb391f7b9d93af50511e46aec2590b576aa0bb1eeb41f77a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkHasNotBit.Variant098e404cdcff208cb391f7b9d93af50511e46aec2590b576aa0bb1eeb41f77a1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"098e404cdcff208cb391f7b9d93af50511e46aec2590b576aa0bb1eeb41f77a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/HasNotBit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module
prelude
public import Lean.Meta.Basic
import Lean.Meta.MatchUtil

/-!
Utility functions around `Nat.hasNotBit`, used by sparse cases.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkHasNotBit.Variant098e404cdcff208cb391f7b9d93af50511e46aec2590b576aa0bb1eeb41f77a1

open Lean Meta

namespace Lean

public def mkHasNotBit (e : Expr) (ns : Array Nat) : Expr := Id.run do
  let mut mask := 0
  for n in ns do
    mask := mask ||| (1 <<< n)
  return mkApp2 (mkConst `Nat.hasNotBit) (mkRawNatLit mask) e

public def mkHasNotBitProof (e : Expr) (ns : Array Nat) : MetaM Expr := do
  /-
  In theory, it should suffice to write
     mkApp2 (mkConst ``Eq.refl [1]) (mkConst ``Nat) (mkNatLit 0)
  (which would be nice and simple and would not need arguments)
  but somehow that does not trigger the kernel's `reduce_nat` code path, even with `eagerReduce`.

  It works to use `Nat.ne_of_beq_eq_false`, though:
  -/
  let some (_, lhs, rhs) ← matchNe? (mkHasNotBit e ns) | unreachable!
  return mkApp3 (mkConst ``Nat.ne_of_beq_eq_false)
    lhs rhs (mkApp2 (mkConst ``Eq.refl [1]) (mkConst ``Bool) (mkConst ``Bool.false))

public def isHasNotBit? (e : Expr) : Option Expr :=
  match_expr e with
  | Nat.hasNotBit _mask e' => some e'
  | _                      => none

/--
Is `e` a `hasNotBit` type that can be refuted?
Then return an expression that's the negation of it.
(This is used by `contradiction`)
-/
public def refutableHasNotBit? (e : Expr) : MetaM (Option Expr) := do
  match_expr e with
  | Nat.hasNotBit mask bit =>
    let bit' ← whnf bit -- reduce ctorIdxApp, to get closed terms
    if bit'.hasFVar then return none
    -- Reduce to get equalities
    let some (_, lhs, rhs) ← matchNe? (mkApp2 (mkConst `Nat.hasNotBit) mask bit') | unreachable!
    if (← isDefEq lhs rhs) then
      return some <| mkApp3 (mkConst ``Nat.eq_of_beq_eq_true) lhs rhs reflBoolTrue
    else
      return none
  | _ => return none

end Lean
```
