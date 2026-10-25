# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnsetOption.Variantef366d94bc9b8a8d461c85a413ea4799060fc0536aa69193cbf49b75b6d82af0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ed84c401cceac8f4b311c7cecf96dfe89d8ee66` · SHA-256 `ef366d94bc9b8a8d461c85a413ea4799060fc0536aa69193cbf49b75b6d82af0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Lean.Parser.Term
import Lean.Parser.Do
import Lean.Elab.Command
import Mathlib.Data.KVMap

/-!
# The `unset_option` command

This file defines an `unset_option` user command, which unsets user configurable
options.
For example inputing `set_option blah 7` and then `unset_option blah`
returns the user to the default state before any `set_option` command is called.
This is helpful when the user does not know the default value of the option or it
is cleaner not to write it explicitly, or for some options where the default
behaviour is different from any user set value.
-/

set_option autoImplicit true

namespace Lean.Elab

variable [Monad m] [MonadOptions m] [MonadExceptOf Exception m] [MonadRef m]
variable [AddErrorMessageContext m] [MonadLiftT (EIO Exception) m] [MonadInfoTree m]

/-- unset the option specified by id -/
def elabUnsetOption (id : Syntax) : m Options := do
  -- We include the first argument (the keyword) for position information in case `id` is `missing`.
  addCompletionInfo <| CompletionInfo.option (← getRef)
  unsetOption id.getId.eraseMacroScopes
where
  /-- unset the given option name -/
  unsetOption (optionName : Name) : m Options := return (← getOptions).erase optionName

namespace Command

/-- Unset a user option -/
elab (name := unsetOption) "unset_option " opt:ident : command => do
  let options ← Elab.elabUnsetOption opt
  modify fun s ↦ { s with maxRecDepth := maxRecDepth.get options }
  modifyScope fun scope ↦ { scope with opts := options }

end Command
end Lean.Elab
```
