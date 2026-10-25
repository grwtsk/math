# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvExtension.Variantac12fcfde655ac7e379a7669632a0211646de0c68dfa13077912e68d89f66707

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2aad39cb110769ab12c79c606fb7b8474e60c758` · SHA-256 `ac12fcfde655ac7e379a7669632a0211646de0c68dfa13077912e68d89f66707`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Lean.EnvExtension

/-! # Extra utilities for environment extensions -/

public section

open Lean

namespace Lean.SimplePersistentEnvExtension

/-- Modifies the `List α` of entries of a `SimplePersistentEnvExtension`. -/
def modifyEntries {α σ} (env : Environment)
    (ext : SimplePersistentEnvExtension α σ) (f : List α → List α)
    (asyncMode : EnvExtension.AsyncMode := ext.toEnvExtension.asyncMode)
    (asyncDecl : Name := Name.anonymous) : Environment :=
  PersistentEnvExtension.modifyState ext env (fun (entries, s) => (f entries, s))
    asyncMode asyncDecl

/-- Sets the `List α` of entries of a `SimplePersistentEnvExtension`. -/
def setEntries {α σ} (env : Environment)
    (ext : SimplePersistentEnvExtension α σ) (entries : List α)
    (asyncMode : EnvExtension.AsyncMode := ext.toEnvExtension.asyncMode)
    (asyncDecl : Name := Name.anonymous) : Environment :=
  PersistentEnvExtension.modifyState ext env (fun (_, s) => (entries, s))
    asyncMode asyncDecl

end Lean.SimplePersistentEnvExtension
```
