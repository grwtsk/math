# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Varianteebb1c6f6ed50edda3817e580e456b158d943acc8aa39754d1073fc16c98352c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `831d7718add30fd8113836c6545ecbacb00d43c2` · SHA-256 `eebb1c6f6ed50edda3817e580e456b158d943acc8aa39754d1073fc16c98352c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleSet

public section

open Lean

namespace Aesop

/--
An environment extension containing an Aesop rule set. Each rule set has its
own extension.
-/
abbrev RuleSetExtension :=
  SimpleScopedEnvExtension BaseRuleSetMember BaseRuleSet

/--
Structure containing information about all declared Aesop rule sets.
-/
structure DeclaredRuleSets where
  /--
  The collection of declared rule sets. Each rule set has an extension, the
  name of the associated `SimpExtension` and the name of the associated
  `SimprocExtension`. The two simp extensions are expected to be declared.
  -/
  ruleSets : Std.HashMap RuleSetName (RuleSetExtension × Name × Name)
  /--
  The set of Aesop rule sets that are enabled by default.
  -/
  defaultRuleSets : Std.HashSet RuleSetName
  deriving Inhabited

instance : EmptyCollection DeclaredRuleSets :=
  ⟨∅, ∅⟩

initialize declaredRuleSetsRef : IO.Ref DeclaredRuleSets ←
  IO.mkRef ∅

def getDeclaredRuleSets : IO (Std.HashMap RuleSetName (RuleSetExtension × Name × Name)) :=
  return (← declaredRuleSetsRef.get).ruleSets

def getDefaultRuleSetNames : IO (Std.HashSet Name) :=
  return (← declaredRuleSetsRef.get).defaultRuleSets

end Aesop
```
