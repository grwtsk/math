# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Constructors.Variantb2851bc173f7f3696edc89592b8b59b4e4b78a271a0c78eb2b46d2ff7fa701fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7a525987d99c445c7a521c4e1ee40875161ae10` · SHA-256 `b2851bc173f7f3696edc89592b8b59b4e4b78a271a0c78eb2b46d2ff7fa701fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Builder.Basic

public section

open Lean
open Lean.Meta

namespace Aesop.RuleBuilderOptions

def constructorsTransparency (opts : RuleBuilderOptions) : TransparencyMode :=
  opts.transparency?.getD .default

def constructorsIndexTransparency (opts : RuleBuilderOptions) : TransparencyMode :=
  opts.indexTransparency?.getD .reducible

end RuleBuilderOptions

namespace RuleBuilder

def getConstructorsIndexingMode (indexMd : TransparencyMode)
    (info : InductiveVal) : MetaM IndexingMode := do
  if indexMd != .reducible then
    return .unindexed
  else
    let mut imodes := Array.mkEmpty info.numCtors
    for ctor in info.ctors do
      let ctorInfo ← getConstInfo ctor
      let imode ← IndexingMode.targetMatchingConclusion ctorInfo.type
      imodes := imodes.push imode
    return .or imodes

def constructorsCore (info : InductiveVal) (imode? : Option IndexingMode)
    (md indexMd : TransparencyMode) (phase : PhaseSpec) :
    MetaM LocalRuleSetMember := do
  let tac := .constructors info.ctors.toArray md
  let imode ← imode?.getDM $ getConstructorsIndexingMode indexMd info
  return .global $ .base $
    phase.toRule info.name .constructors .global tac imode none

def constructors : RuleBuilder := λ input => do
  let (_, info) ← elabInductiveRuleIdent .constructors input.term .default
  let opts := input.options
  constructorsCore info opts.indexingMode? opts.constructorsTransparency
    opts.constructorsIndexTransparency input.phase

end Aesop.RuleBuilder
```
