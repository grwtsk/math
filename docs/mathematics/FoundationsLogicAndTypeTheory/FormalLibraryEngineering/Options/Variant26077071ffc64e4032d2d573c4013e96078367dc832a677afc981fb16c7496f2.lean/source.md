# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Options.Variant26077071ffc64e4032d2d573c4013e96078367dc832a677afc981fb16c7496f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `415d943f74341c45597860e38bf2686db9d4e7d2` · SHA-256 `26077071ffc64e4032d2d573c4013e96078367dc832a677afc981fb16c7496f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.Trace

public section

namespace Lean.Compiler

register_builtin_option compiler.check : Bool := {
  defValue := false
  descr    := "type check code after each compiler step (this is useful for debugging purses)"
}

register_builtin_option compiler.traceUnnormalized : Bool := {
  defValue := false
  descr    := "don't normalize declarations before tracing them at each pipeline step (this is \
    useful for debugging purposes)"
}

register_builtin_option compiler.checkMeta : Bool := {
  defValue := true
  descr := "Check that `meta` declarations only refer to other `meta` declarations and ditto for \
    non-`meta` declarations. Disabling this option may lead to delayed compiler errors and is
    intended only for debugging purposes."
}

register_builtin_option compiler.relaxedMetaCheck : Bool := {
  defValue := false
  descr := "Allow mixed `meta`/non-`meta` references in the same module. References to imports are unaffected."
}

register_builtin_option compiler.ignoreBorrowAnnotation : Bool := {
  defValue := false
  descr := "Ignore user defined borrow inference annotations. This is useful for export/extern \
    forward declarations"
}

register_builtin_option compiler.postponeCompile : Bool := {
  defValue := false
  descr := "Internal. Toggle experimental `leanir` separate compilation."
}

register_builtin_option compiler.inLeanIR : Bool := {
  defValue := false
  descr := "Internal. Indicates whether the compiler is currently running in `leanir`."
}

end Lean.Compiler
```
