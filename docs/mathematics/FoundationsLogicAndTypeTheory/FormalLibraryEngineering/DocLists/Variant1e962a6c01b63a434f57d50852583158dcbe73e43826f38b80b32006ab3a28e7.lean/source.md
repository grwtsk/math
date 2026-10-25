# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocLists.Variant1e962a6c01b63a434f57d50852583158dcbe73e43826f38b80b32006ab3a28e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8da0cbaf1cfdb2af7af245d897db55cbf4e9f6a` · SHA-256 `1e962a6c01b63a434f57d50852583158dcbe73e43826f38b80b32006ab3a28e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- NOTE: This file contains examples for, and therefore should be kept in sync
-- with, the README.

import Aesop

set_option aesop.check.all true

inductive MyList (α : Type _)
  | nil
  | cons (hd : α) (tl : MyList α)

namespace MyList

protected def append : (_ _ : MyList α) → MyList α
  | nil, ys => ys
  | cons x xs, ys => cons x (MyList.append xs ys)

instance : Append (MyList α) :=
  ⟨MyList.append⟩

@[simp]
theorem nil_append : nil ++ xs = xs := rfl

@[simp]
theorem cons_append : cons x xs ++ ys = cons x (xs ++ ys) := rfl

@[aesop safe [constructors, cases]]
inductive NonEmpty : MyList α → Prop
  | cons : NonEmpty (cons x xs)

@[aesop 50%]
theorem nonEmpty_append₁ {xs : MyList α} ys :
    NonEmpty xs → NonEmpty (xs ++ ys) := by
  aesop

/--
info: Try this:

  [apply]     intro a
    obtain @⟨x, xs_1⟩ := a
    simp_all only [cons_append]
    apply MyList.NonEmpty.cons
-/
#guard_msgs in
theorem nonEmpty_append₁' {xs : MyList α} ys :
    NonEmpty xs → NonEmpty (xs ++ ys) := by
  aesop?

example {α : Type _} {xs : MyList α} ys zs :
    NonEmpty xs → NonEmpty (xs ++ ys ++ zs) := by
  aesop

theorem nil_not_nonEmpty (xs : MyList α) : xs = nil → ¬ NonEmpty xs := by
  aesop (add unsafe 10% cases MyList)

@[simp]
theorem append_nil {xs : MyList α} :
    xs ++ nil = xs := by
  induction xs <;> aesop

theorem append_assoc {xs ys zs : MyList α} :
    (xs ++ ys) ++ zs = xs ++ (ys ++ zs) := by
  induction xs <;> aesop

end MyList
```
