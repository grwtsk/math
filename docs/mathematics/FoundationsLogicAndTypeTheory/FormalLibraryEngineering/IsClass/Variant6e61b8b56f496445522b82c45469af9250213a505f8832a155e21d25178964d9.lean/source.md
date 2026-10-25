# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsClass.Variant6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab290469b8a9bbf1a4dec5f28d48b10eb353fdb9` · SHA-256 `6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM
namespace Lean.Meta.Sym

/--
Efficient version of `Meta.isClass?` for symbolic simulation. It does not use
reduction nor instantiates metavariables.
-/
public def isClass? (env : Environment) (type : Expr) : Option Name :=
  go type
where
  go : Expr → Option Name
  | .bvar ..         => none
  | .lit ..          => none
  | .fvar ..         => none
  | .sort ..         => none
  | .lam ..          => none
  | .proj ..         => none
  | .mvar ..         => none
  | .letE _ _ _ b _  => go b
  | .forallE _ _ b _ => go b
  | .mdata _ b       => go b
  | .const n _       => if isClass env n then some n else none
  | .app f _         => go f

end Lean.Meta.Sym
```
