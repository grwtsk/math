# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopedNS.Variant066fcc108b491018eac20b24176b0acbf0d559a5b42bfda0561c66d9774979ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd751fc5170b16375a101f3825aab94e247bd318` · SHA-256 `066fcc108b491018eac20b24176b0acbf0d559a5b42bfda0561c66d9774979ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Mario Carneiro
-/
import Mathlib.Util.WithWeakNamespace

/-! # `scoped[NS]` syntax

This is a replacement for the `localized` command in mathlib. It is similar to `scoped`,
but it scopes the syntax in the specified namespace instead of the current namespace.
-/

namespace Mathlib.Tactic
open Lean

/--
`scoped[NS]` is similar to the `scoped` modifier on attributes and notations,
but it scopes the syntax in the specified namespace instead of the current namespace.
```
scoped[Matrix] postfix:1024 "ᵀ" => Matrix.transpose
-- declares `ᵀ` as a notation for matrix transposition
-- which is only accessible if you `open Matrix` or `open scoped Matrix`.

namespace Nat

scoped[Nat.Count] attribute [instance] CountSet.fintype
-- make the definition Nat.CountSet.fintype an instance,
-- but only if `Nat.Count` is open
```
-/
syntax (name := scopedNS) (docComment)? (Parser.Term.attributes)?
  "scoped" "[" ident "] " command : command
macro_rules
  | `($[$doc]? $(attr)? scoped[$ns] notation $(prec)? $(n)? $(prio)? $sym* => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped notation $(prec)? $(n)? $(prio)? $sym* => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:prefix $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:prefix $prec $(n)? $(prio)? $sym => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:infix $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:infix $prec $(n)? $(prio)? $sym => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:infixl $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:infixl $prec $(n)? $(prio)? $sym => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:infixr $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:infixr $prec $(n)? $(prio)? $sym => $t)
  | `($[$doc]? $(attr)? scoped[$ns] $mk:postfix $prec $(n)? $(prio)? $sym => $t) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      $[$doc]? $(attr)? scoped $mk:postfix $prec $(n)? $(prio)? $sym => $t)
  | `(scoped[$ns] attribute [$[$attr:attr],*] $ids*) =>
    `(with_weak_namespace $(mkIdentFrom ns <| rootNamespace ++ ns.getId)
      attribute [$[scoped $attr:attr],*] $ids*)

end Mathlib.Tactic
````
