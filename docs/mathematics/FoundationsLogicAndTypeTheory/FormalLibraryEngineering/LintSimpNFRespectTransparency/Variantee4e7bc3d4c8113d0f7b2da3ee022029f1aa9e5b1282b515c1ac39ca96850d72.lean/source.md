# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintSimpNFRespectTransparency.Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a24360a7510d1d50c0e6ff81117679a8fe49269c` · SHA-256 `ee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Batteries.Tactic.Lint

set_option linter.missingDocs false

/-!
Test that `linter.simpNF.respectTransparency true` catches simp lemmas whose LHS involves
bundled carrier types that are only equal up to `backward.isDefEq.respectTransparency false`.

With the default setting (`false`), `Bundle.of_op` is NOT flagged (see `lint_simpNF.lean`).
With the strict setting (`true`), it IS flagged because the LHS is not in simp-normal form:
`dsimp [Bundle.of_carrier]` simplifies the implicit carrier argument.
-/

private class MyClass (α : Type) where
  op : α → α

private structure Bundle where
  carrier : Type
  [inst : MyClass carrier]

attribute [instance] Bundle.inst

private def Bundle.of (X : Type) [MyClass X] : Bundle where
  carrier := X

@[simp]
private theorem Bundle.of_carrier (X : Type) [MyClass X] : (Bundle.of X).carrier = X := rfl

@[simp]
private theorem Bundle.of_op {X : Type} [MyClass X] :
    @MyClass.op (Bundle.of X).carrier (Bundle.of X).inst = @MyClass.op X _ := rfl

/--
error: -- Found 1 error in 12 declarations (plus 19 automatically generated ones) in the current file with 1 linters

/- The `simpNF` linter reports:
SOME SIMP LEMMAS ARE NOT IN SIMP-NORMAL FORM.
Please change the lemma to make sure their left-hand sides are in simp normal form.
To learn about simp normal forms, see
https://leanprover-community.github.io/extras/simp.html#simp-normal-form
and https://lean-lang.org/doc/reference/latest/The-Simplifier/Simp-Normal-Forms/.
This linter can be disabled with `@[nolint simpNF]`. -/
#check @Bundle.of_op /- Left-hand side simplifies from
  @MyClass.op (Bundle.of X).carrier (Bundle.of X).inst
to
  @MyClass.op X (Bundle.of X).inst
using
  dsimp only [*, Bundle.of_carrier]
Try to change the left-hand side to the simplified term! -/
-/
#guard_msgs in
set_option linter.simpNF.respectTransparency true in
#lint only simpNF
```
