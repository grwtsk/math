# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Data.Variant63866efb9e243672b97e1c9de4d323bbd320d1bdbdd355b76f904cbfdc890370

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bb3d05f3d276c3c4e175470ce9e4057f291de5c` · SHA-256 `63866efb9e243672b97e1c9de4d323bbd320d1bdbdd355b76f904cbfdc890370`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.DHashMap
public import Std.Data.HashMap
public import Std.Data.HashSet
public import Std.Data.DTreeMap
public import Std.Data.TreeMap
public import Std.Data.TreeSet
public import Std.Data.ExtDHashMap
public import Std.Data.ExtHashMap
public import Std.Data.ExtHashSet
public import Std.Data.ExtDTreeMap
public import Std.Data.ExtTreeMap
public import Std.Data.ExtTreeSet

-- The imports above only import the modules needed to work with the version which bundles
-- the well-formedness invariant, so we need to additionally import the files that deal with the
-- unbundled version
public import Std.Data.DHashMap.RawLemmas
public import Std.Data.DHashMap.RawDecidableEquiv
public import Std.Data.HashMap.RawLemmas
public import Std.Data.HashMap.RawDecidableEquiv
public import Std.Data.HashSet.RawLemmas
public import Std.Data.HashSet.RawDecidableEquiv
public import Std.Data.DTreeMap.Raw
public import Std.Data.TreeMap.Raw
public import Std.Data.TreeSet.Raw

public import Std.Data.Iterators
public import Std.Data.ByteSlice
public import Std.Data.String
```
