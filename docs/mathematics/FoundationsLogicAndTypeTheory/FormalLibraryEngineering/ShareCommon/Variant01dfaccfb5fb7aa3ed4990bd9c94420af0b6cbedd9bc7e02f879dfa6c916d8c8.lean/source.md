# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShareCommon.Variant01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d64141f8e6e026170f0fa4089e0cd2e43f9d47bb` · SHA-256 `01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.ShareCommon
public import Std.Data.HashSet.Basic
public import Lean.Data.PersistentHashSet

public section

open ShareCommon
namespace Lean.ShareCommon

def objectFactory :=
  StateFactory.mk {
    Map := Std.HashMap, mkMap := (Std.HashMap.emptyWithCapacity ·), mapFind? := (·.get?), mapInsert := (·.insert)
    Set := Std.HashSet, mkSet := (Std.HashSet.emptyWithCapacity ·), setFind? := (·.get?), setInsert := (·.insert)
  }

def persistentObjectFactory :=
  StateFactory.mk {
    Map := PersistentHashMap, mkMap := fun _ => .empty, mapFind? := (·.find?), mapInsert := (·.insert)
    Set := PersistentHashSet, mkSet := fun _ => .empty, setFind? := (·.find?), setInsert := (·.insert)
  }

abbrev ShareCommonT := _root_.ShareCommonT objectFactory
abbrev PShareCommonT := _root_.ShareCommonT persistentObjectFactory
abbrev ShareCommonM := ShareCommonT Id
abbrev PShareCommonM := PShareCommonT Id

@[specialize] def ShareCommonT.withShareCommon [Monad m] (a : α) : ShareCommonT m α :=
  modifyGet fun s => s.shareCommon a

@[specialize] def PShareCommonT.withShareCommon [Monad m] (a : α) : PShareCommonT m α :=
  modifyGet fun s => s.shareCommon a

instance ShareCommonT.monadShareCommon [Monad m] : MonadShareCommon (ShareCommonT m) where
  withShareCommon := ShareCommonT.withShareCommon

instance PShareCommonT.monadShareCommon [Monad m] : MonadShareCommon (PShareCommonT m) where
  withShareCommon := PShareCommonT.withShareCommon

@[inline] def ShareCommonT.run [Monad m] : ShareCommonT m α → m α := _root_.ShareCommonT.run
@[inline] def PShareCommonT.run [Monad m] : PShareCommonT m α → m α := _root_.ShareCommonT.run
@[inline] def ShareCommonM.run : ShareCommonM α → α := ShareCommonT.run
@[inline] def PShareCommonM.run : PShareCommonM α → α := PShareCommonT.run

def shareCommon (a : α) : α := (withShareCommon a : ShareCommonM α).run
```
