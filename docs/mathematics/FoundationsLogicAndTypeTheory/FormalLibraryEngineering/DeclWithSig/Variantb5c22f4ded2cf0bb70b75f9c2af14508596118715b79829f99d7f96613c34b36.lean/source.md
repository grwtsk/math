# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclWithSig.Variantb5c22f4ded2cf0bb70b75f9c2af14508596118715b79829f99d7f96613c34b36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cbb42667581e56d886e95ce1935008f22619ce9` · SHA-256 `b5c22f4ded2cf0bb70b75f9c2af14508596118715b79829f99d7f96613c34b36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Leonardo de Moura, Gabriel Ebner, Mario Carneiro
-/
module

prelude
public import Lean.Parser.Types
import Lean.Parser.Command

namespace Lean.PrettyPrinter.Delaborator

open Parser Command Term

@[run_builtin_parser_attribute_hooks]
-- use `termParser` instead of `declId` so we can reuse `delabConst`
public def declSigWithId : Parser := leading_parser termParser maxPrec >> declSig
```
