# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompletionName.Variant6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93b7b18741b81d0c7cc80e45847372c0d91c8446` · SHA-256 `6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Match.MatcherInfo

public section

/-!
This exports a predicate for checking whether a name should be made
visible in auto-completion and other tactics that suggest names to
insert into Lean code.

The `exact?` tactic is an example of a tactic that benefits from this
functionality.  `exact?` finds lemmas in the environment to use to
prove a theorem, but it needs to avoid inserting references to theorems
with unstable names such as auxiliary lemmas that could change with
minor unintentional modifications to definitions.

It uses a blacklist environment extension to enable names in an
environment to be specifically hidden.
-/
namespace Lean.Meta

builtin_initialize completionBlackListExt : TagDeclarationExtension ← mkTagDeclarationExtension

def addToCompletionBlackList (env : Environment) (declName : Name) : Environment :=
  completionBlackListExt.tag env declName

/--
Checks whether a given name is internal due to something other than `_private`.
Correctly deals with names like `_private.<SomeNamespace>.0.<SomeType>._sizeOf_1` in a private type
`SomeType`, which `n.isInternal && !isPrivateName n` does not.
-/
private def isInternalNameModuloPrivate : Name → Bool
  | n@(.str p s) => s.front == '_' && n != privateHeader || isInternalNameModuloPrivate p
  | .num p _ => isInternalNameModuloPrivate p
  | _       => false

/--
Return true if name is blacklisted for completion purposes.
-/
private def isBlacklisted (env : Environment) (declName : Name) : Bool :=
  isInternalNameModuloPrivate declName
  || isAuxRecursor env declName
  || isNoConfusion env declName
  || isRecCore env declName
  || completionBlackListExt.isTagged env declName
  || isMatcherCore env declName

/--
Return true if completion is allowed for name.
-/
def allowCompletion (env : Environment) (declName : Name) : Bool :=
  !(isBlacklisted env declName)

end Lean.Meta
```
