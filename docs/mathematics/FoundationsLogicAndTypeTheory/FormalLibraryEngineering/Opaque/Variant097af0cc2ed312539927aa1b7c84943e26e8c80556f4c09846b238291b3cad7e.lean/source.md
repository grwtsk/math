# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Opaque.Variant097af0cc2ed312539927aa1b7c84943e26e8c80556f4c09846b238291b3cad7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `227c9572e0e20bc53dcbaf5b0383c4f5fe449bb1` · SHA-256 `097af0cc2ed312539927aa1b7c84943e26e8c80556f4c09846b238291b3cad7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude
meta import all Lake.Util.OpaqueType
import Lake.Util.OpaqueType

namespace Lake

/-- Opaque reference to a `Workspace` used for forward declaration. -/
public nonempty_type OpaqueWorkspace

/-- Opaque reference to a `TargetConfig` used for forward declaration. -/
public nonempty_type OpaqueTargetConfig (pkgName name : Lean.Name)
```
