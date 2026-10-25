# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeExponentiation.Variant8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `476983a5900b990e098a4dd4b1305b1eee65dc54` · SHA-256 `8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.CoreM

public section

namespace Lean

register_builtin_option exponentiation.threshold : Nat := {
  defValue := 256
  descr    := "maximum value for \
  which exponentiation operations are safe to evaluate. When an exponent \
  is a value greater than this threshold, the exponentiation will not be evaluated, \
  and a warning will be logged. This helps to prevent the system from becoming \
  unresponsive due to excessively large computations."
}

/--
Returns `true` if `n` is `≤ exponentiation.threshold`. Otherwise,
reports a warning and returns `false`.
This method ensures there is at most one warning message of this kind in the message log.
-/
def checkExponent (n : Nat) (warning := true) : CoreM Bool := do
  let threshold := exponentiation.threshold.get (← getOptions)
  if n > threshold then
    if (← pure warning <&&> logMessageKind `unsafe.exponentiation) then
      logWarning s!"exponent {n} exceeds the threshold {threshold}, exponentiation operation was not evaluated, use `set_option {exponentiation.threshold.name} <num>` to set a new threshold"
    return false
  else
    return true

end Lean
```
