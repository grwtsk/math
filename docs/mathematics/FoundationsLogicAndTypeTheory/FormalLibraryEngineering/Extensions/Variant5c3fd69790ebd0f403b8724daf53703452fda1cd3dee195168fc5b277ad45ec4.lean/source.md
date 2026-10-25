# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extensions.Variant5c3fd69790ebd0f403b8724daf53703452fda1cd3dee195168fc5b277ad45ec4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f9a53c0883887889a7c9dc104482b8612c9a73f` · SHA-256 `5c3fd69790ebd0f403b8724daf53703452fda1cd3dee195168fc5b277ad45ec4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Environment

open Lean

namespace Lake

public builtin_initialize nameExt : EnvExtension (Nat × Name) ←
  registerEnvExtension (pure ⟨0, .anonymous⟩)

public builtin_initialize dirExt : EnvExtension (Option System.FilePath) ←
  registerEnvExtension (pure none)

public builtin_initialize optsExt : EnvExtension (Option (NameMap String)) ←
  registerEnvExtension (pure none)
```
