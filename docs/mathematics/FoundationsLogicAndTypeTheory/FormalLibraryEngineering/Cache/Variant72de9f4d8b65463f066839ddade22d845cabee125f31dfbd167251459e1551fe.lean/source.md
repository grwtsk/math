# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cache.Variant72de9f4d8b65463f066839ddade22d845cabee125f31dfbd167251459e1551fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7e360f0793e44a617097224d18e2b247267ed3c` · SHA-256 `72de9f4d8b65463f066839ddade22d845cabee125f31dfbd167251459e1551fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Forward.Substitution
public import Aesop.Rule.Name

public section

open Lean

set_option linter.missingDocs true

namespace Aesop

/-- Entry of the rule pattern cache. -/
@[expose] def RulePatternCache.Entry := Array (RuleName × Substitution)

set_option linter.missingDocs false in
/-- A cache for the rule pattern index. -/
structure RulePatternCache where
  map : Std.HashMap Expr RulePatternCache.Entry
  deriving Inhabited

instance : EmptyCollection RulePatternCache :=
  ⟨⟨∅⟩⟩

end Aesop
```
