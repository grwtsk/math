# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variant935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28d9397a49f73e5d2c49861d8dae6e50056e9293` · SHA-256 `935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021-2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module


public section

open Lean

namespace Aesop

abbrev RuleSetName := Name -- Not really an abbreviation is it?

def defaultRuleSetName : RuleSetName := `default

def builtinRuleSetName : RuleSetName := `builtin

def localRuleSetName : RuleSetName := `local

def builtinRuleSetNames : Array RuleSetName :=
  #[defaultRuleSetName, builtinRuleSetName]

def RuleSetName.isReserved (n : RuleSetName) : Bool :=
  n == localRuleSetName || builtinRuleSetNames.contains n

end Aesop
```
