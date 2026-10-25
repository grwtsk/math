# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrTreeConfig.Variantd816388c2f73d1e51b6c84e41a79521fff82f606140ec4004a2ccf52f5bd91b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `023ea6c85b0abeca44a54dfb74f84e963d41a38e` · SHA-256 `d816388c2f73d1e51b6c84e41a79521fff82f606140ec4004a2ccf52f5bd91b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021-2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Basic
public import Lean.Meta.DiscrTree.Types
import Lean.Meta.DiscrTree.Main

public section

namespace Aesop

open Lean Lean.Meta

/-- The configuration used by all Aesop indices. -/
-- I don't really know what I'm doing here. I'm just copying the config used
-- by `simp`; see `Meta/Simp/Types.lean:mkIndexConfig`.
def indexConfig : ConfigWithKey :=
  ({ proj := .no, transparency := .reducible : Config }).toConfigWithKey

def mkDiscrTreePath (e : Expr) : MetaM (Array DiscrTree.Key) :=
  withConfigWithKey indexConfig $ DiscrTree.mkPath e

def getUnify (t : DiscrTree α) (e : Expr) : MetaM (Array α) :=
  withConfigWithKey indexConfig $ t.getUnify e

def getMatch (t : DiscrTree α) (e : Expr) : MetaM (Array α) :=
  withConfigWithKey indexConfig $ t.getMatch e

end Aesop
```
