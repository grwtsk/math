# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variante435d5ac994922c1ccaea304a5ba4db76d37fceb1bd176817b15e641863faee8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `025199b3e85dbd8a4bbd5d757597d7d554884acc` · SHA-256 `e435d5ac994922c1ccaea304a5ba4db76d37fceb1bd176817b15e641863faee8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Key

/-!
# Lake Targets

This module contains the declarative definition of a `Target`.
-/

open Std

namespace Lake

/-- A Lake target that is expected to produce an output of a specific type. -/
public structure Target (α : Type) where
  key : PartialBuildKey

/--
Shorthand for `Array (Target α)` that supports
dot notation for Lake-specific operations (e.g., `fetch`).
-/
public abbrev TargetArray α := Array (Target α)

namespace Target

public protected def repr (x : Target α) (prec : Nat) : Format :=
  let indent := if prec >= max_prec then 1 else 2
  let ctor := "Lake.Target.mk" ++ Format.line ++ reprArg x.key
  Repr.addAppParen (.group (.nest indent ctor)) prec

public instance : Repr (Target α) := ⟨Target.repr⟩
public instance : ToString (Target α) := ⟨(·.key.toString)⟩
public instance : Coe PartialBuildKey (Target α) := ⟨Target.mk⟩
```
