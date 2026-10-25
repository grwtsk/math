# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `801e86f222ef44f4c339de0f1df8b3ef1f446289` · SHA-256 `2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Basic

public section

open Lean
open Lean.Meta

namespace Aesop

def runRuleTac (tac : RuleTac) (ruleName : RuleName)
    (preState : Meta.SavedState) (input : RuleTacInput) :
    BaseM (Except Exception RuleTacOutput) := do
  let result ←
    try
      Except.ok <$> runInMetaState preState do tac input
    catch e =>
      return .error e
  if ← Check.rules.isEnabled then
    if let .ok ruleOutput := result then
      ruleOutput.applications.forM λ rapp => do
        if let (some err) ← rapp.check input then
          throwError "{Check.rules.name}: while applying rule {ruleName}: {err}"
  return result

end Aesop
```
