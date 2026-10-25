# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zero.Variant7a38aca83ffa33660079bec9c1ef03603d2ef9e1eac63572684c3ad116743978

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e33018d06becf2849397a2b98bb8be36990d0d3` · SHA-256 `7a38aca83ffa33660079bec9c1ef03603d2ef9e1eac63572684c3ad116743978`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Mario Carneiro
-/
module

prelude
public import Init.Tactics

public section

/-!
Instances converting between `Zero α` and `OfNat α (nat_lit 0)`.
-/

instance (priority := 300) Zero.toOfNat0 {α} [Zero α] : OfNat α (nat_lit 0) where
  ofNat := ‹Zero α›.1

instance (priority := 200) Zero.ofOfNat0 {α} [OfNat α (nat_lit 0)] : Zero α where
  zero := 0

/-!
Instances converting between `One α` and `OfNat α (nat_lit 1)`.
-/

instance (priority := 300) One.toOfNat1 {α} [One α] : OfNat α (nat_lit 1) where
  ofNat := ‹One α›.1

instance (priority := 200) One.ofOfNat1 {α} [OfNat α (nat_lit 1)] : One α where
  one := 1

/--
The fundamental power operation in a monoid.
`npowRec n a = a*a*...*a` n times.
This function should not be used directly; it is often used to implement a `Pow M Nat` instance,
but end users should use the `a ^ n` notation instead.
-/
@[expose]
def npowRec [One M] [Mul M] : Nat → M → M
  | 0, _ => 1
  | n + 1, a => npowRec n a * a

/--
The fundamental scalar multiplication in an additive monoid.
`nsmulRec n a = a+a+...+a` n times.
This function should not be used directly;
it is often used to implement an instance for scalar multiplication.
-/
@[expose]
def nsmulRec [Zero M] [Add M] : Nat → M → M
  | 0, _ => 0
  | n + 1, a => nsmulRec n a + a
```
