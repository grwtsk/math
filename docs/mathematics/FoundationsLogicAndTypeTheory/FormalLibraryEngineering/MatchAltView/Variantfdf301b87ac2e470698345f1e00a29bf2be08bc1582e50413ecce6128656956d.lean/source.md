# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchAltView.Variantfdf301b87ac2e470698345f1e00a29bf2be08bc1582e50413ecce6128656956d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0430bbb20682ee927e656fc0bddba6e96602f53e` · SHA-256 `fdf301b87ac2e470698345f1e00a29bf2be08bc1582e50413ecce6128656956d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Term

public section

namespace Lean.Elab.Term

/-! This module assumes `match`-expressions use the following syntax.

```lean
def matchDiscr := leading_parser optional (try (ident >> checkNoWsBefore "no space before ':'" >> ":")) >> termParser

def «match» := leading_parser:leadPrec "match " >> sepBy1 matchDiscr ", " >> optType >> " with " >> matchAlts
```
-/

structure MatchAltView (k : SyntaxNodeKinds) where
  ref      : Syntax
  patterns : Array Syntax
  lhs      : Syntax
  rhs      : TSyntax k
  deriving Inhabited

end Lean.Elab.Term
````
