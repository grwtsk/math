# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Client.Variant0bde9dab3c4201e3ebd68cb4a9fd4a23eb8d03fc22620865c21068d050fb4826

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8ffaf722b463436f0ffac14169b89aea7aa11b1` · SHA-256 `0bde9dab3c4201e3ebd68cb4a9fd4a23eb8d03fc22620865c21068d050fb4826`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Joscha Mennicken. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Joscha Mennicken
-/
module

prelude
public import Lean.Data.Lsp.Basic

public section

namespace Lean
namespace Lsp

open Json

structure Registration where
  id : String
  method : String
  registerOptions : Option Json
  deriving ToJson, FromJson

structure RegistrationParams where
  registrations : Array Registration
  deriving ToJson, FromJson

end Lsp
end Lean
```
