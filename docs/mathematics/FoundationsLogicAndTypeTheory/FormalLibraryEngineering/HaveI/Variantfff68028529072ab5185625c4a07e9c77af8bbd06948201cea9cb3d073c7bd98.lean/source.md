# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HaveI.Variantfff68028529072ab5185625c4a07e9c77af8bbd06948201cea9cb3d073c7bd98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10fc3a00e1f2950a26fc87ec1e85adbbd3637a03` · SHA-256 `fff68028529072ab5185625c4a07e9c77af8bbd06948201cea9cb3d073c7bd98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Std.Tactic.HaveI

/-!
# Variants of `haveI`/`letI` for use in do-notation.

This files implements the `haveI'` and `letI'` macros which have the same semantics as
`haveI` and `letI`, but are `doElem`s and can be used inside do-notation.

They need a backtick after their name for disambiguation with the term variants.
This is necessary because the do-notation has a hardcoded list of keywords which can appear both
as term-mode and do-elem syntax (like for example `let` or `have`).
-/

namespace Mathlib.Tactic.HaveI

local syntax "haveIDummy" haveDecl : term
macro_rules
  | `(assert! haveIDummy $hd:haveDecl; $body) => `(haveI $hd:haveDecl; $body)

/--
`haveI'` behaves like `have`, but inlines the value instead of producing a `let_fun` term.

(This is the do-notation version of the term-mode `haveI`.)
-/
macro "haveI' " hd:haveDecl : doElem =>
  `(doElem| assert! haveIDummy $hd:haveDecl)

local syntax "letIDummy" haveDecl : term
macro_rules
  | `(assert! letIDummy $hd:haveDecl; $body) => `(letI $hd:haveDecl; $body)

/--
`letI` behaves like `let`, but inlines the value instead of producing a `let_fun` term.

(This is the do-notation version of the term-mode `haveI`.)
-/
macro "letI' " hd:haveDecl : doElem =>
  `(doElem| assert! letIDummy $hd:haveDecl)
```
