# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant56709adee6bb856633a5af6475589200c104e0cc8b0727023b3b72aae7d05818

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `423cc67e5621b7a48f3ff4da53cd6ec1f6281042` · SHA-256 `56709adee6bb856633a5af6475589200c104e0cc8b0727023b3b72aae7d05818`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Elab.Exception

public section

open Lean Lean.Elab

namespace Aesop.Frontend.Parser

declare_syntax_cat Aesop.bool_lit (behavior := symbol)

syntax "true" : Aesop.bool_lit
syntax "false" : Aesop.bool_lit

end Parser

def elabBoolLit [Monad m] [MonadRef m] [MonadExceptOf Exception m]
    (stx : TSyntax `Aesop.bool_lit) : m Bool :=
  withRef stx do
    match stx with
    | `(bool_lit| true) => return true
    | `(bool_lit| false) => return false
    | _ => throwUnsupportedSyntax

end Aesop.Frontend
```
