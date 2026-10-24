# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithMult.Variant5e4e14d4c0ed0de1f8d5ad89657b43410203dcd852d983d33deda02ed7fd179c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4752c20b073e04606df4e8f245845db29e8210e6` · SHA-256 `5e4e14d4c0ed0de1f8d5ad89657b43410203dcd852d983d33deda02ed7fd179c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Arend Mellendijk. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arend Mellendijk
-/

import Mathlib.NumberTheory.ArithmeticFunction


open ArithmeticFunction

variable {R : Type*} [Field R]

set_option linter.unusedVariables false

example : IsMultiplicative μ := by arith_mult

example : IsMultiplicative (ζ * ζ) := by arith_mult

example {R : Type*} [Field R] (f : ArithmeticFunction R) (hf : IsMultiplicative f) :
    IsMultiplicative ((ζ : ArithmeticFunction R).pdiv f) := by arith_mult

example (f g : ArithmeticFunction R) (hf : IsMultiplicative f) :
    IsMultiplicative (prodPrimeFactors g |>.pmul f) := by arith_mult

example (n : ℕ) : IsMultiplicative <| (σ n * pow (n + 3)).ppow 2 := by arith_mult
```
