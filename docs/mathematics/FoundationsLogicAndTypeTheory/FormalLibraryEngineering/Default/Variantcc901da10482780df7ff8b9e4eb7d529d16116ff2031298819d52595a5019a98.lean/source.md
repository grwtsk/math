# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Default.Variantcc901da10482780df7ff8b9e4eb7d529d16116ff2031298819d52595a5019a98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecc91aee29bf18241b1c46eadcc1747e365af26f` · SHA-256 `cc901da10482780df7ff8b9e4eb7d529d16116ff2031298819d52595a5019a98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Builder.Constructors
public import Aesop.Builder.NormSimp
public import Aesop.Builder.Tactic
public import Aesop.Builder.Apply

public section

open Lean
open Lean.Meta

namespace Aesop

-- TODO In the default builders below, we should distinguish between fatal and
-- nonfatal errors. E.g. if the `tactic` builder finds a declaration that is not
-- of tactic type, this is a nonfatal error and we should continue with the next
-- builder. But if the simp builder finds an equation that cannot be interpreted
-- as a simp lemma for some reason, this is a fatal error. Continuing with the
-- next builder is more confusing than anything because the user probably
-- intended to add a simp lemma.

def RuleBuilder.default : RuleBuilder := λ input =>
  match input.phase.phase with
  | .safe =>
    constructors input <|>
    tactic input <|>
    apply input <|>
    err "a safe" input
  | .unsafe =>
    constructors input <|>
    tactic input <|>
    apply input <|>
    err "an unsafe" input
  | .norm =>
    constructors input <|>
    tactic input <|>
    simp input <|>
    apply input <|>
    err "a norm" input
where
  err (ruleType : String) : RuleBuilder := λ input =>
    throwError m!"aesop: Unable to interpret '{input.term}' as {ruleType} rule. Try specifying a builder."

end Aesop
```
