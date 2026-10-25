# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransitiveClosure.Variantc6f046a83125a4680bc1343c3dd69cfcf48085cd398cef1e2117ad977e182be3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2dac54f2eb12588e0da77d9aff9deb8508538a3` · SHA-256 `c6f046a83125a4680bc1343c3dd69cfcf48085cd398cef1e2117ad977e182be3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public import Lean.Data.NameMap.Basic

/-!
# Transitive closure of a graph

A "graph" in this context is a `NameMap (Array Name)`.
-/

namespace Lean.NameMap

/--
Compute the transitive closure of an import graph.
-/
public partial def transitiveClosure (m : NameMap (Array Name)) : NameMap NameSet :=
  m.foldl (fun r n i => process r n i) {}
where
  process (r : NameMap NameSet) (n : Name) (i : Array Name) : NameMap NameSet :=
    if r.contains n then
      r
    else
      let r' := i.foldr (fun i r => process r i ((m.find? i).getD #[])) r
      let t := i.foldr
        (fun j s => ((r'.find? j).getD {}).foldl NameSet.insert s)
        (.ofList i.toList)
      r'.insert n t
```
