# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePatternLooseBVar.Variantde0b8004b7624a2247a32063b1a3d50f887af0d0ada0e4ce0194cdb8f806ae13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `927c0404156f92fdabc9e290274418831ede65f9` · SHA-256 `de0b8004b7624a2247a32063b1a3d50f887af0d0ada0e4ce0194cdb8f806ae13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Son Ho. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Son Ho, Jannis Limperg
-/

-- A regression test for a bug in rule pattern matching. Thanks to Son Ho for
-- the bug report.

import Aesop

inductive ScalarTy
| U32

@[simp]
def U32.min   : Int  := 0
def U32.max   : Int  := 4294967295

def Scalar.min (ty : ScalarTy) : Int :=
  match ty with
  | .U32   => U32.min

def Scalar.max (ty : ScalarTy) : Int :=
  match ty with
  | .U32   => U32.max

structure Scalar (ty : ScalarTy) where
  val : Int
  hmin : Scalar.min ty ≤ val
  hmax : val ≤ Scalar.max ty

@[reducible] def U32   := Scalar .U32

def Scalar.ofIntCore {ty : ScalarTy} (x : Int)
  (h : Scalar.min ty ≤ x ∧ x ≤ Scalar.max ty) : Scalar ty :=
  { val := x, hmin := h.left, hmax := h.right }

def U32.ofIntCore   := @Scalar.ofIntCore .U32

@[aesop safe forward (pattern := x)]
theorem Scalar.bounds {ty : ScalarTy} (x : Scalar ty) :
  Scalar.min ty ≤ x.val ∧ x.val ≤ Scalar.max ty :=
  And.intro x.hmin x.hmax

/--
error: unsolved goals
x : Int
h0 : 0 ≤ x
h1 : x ≤ U32.max
fwd : Scalar.min ScalarTy.U32 ≤ (U32.ofIntCore x ⋯).val ∧ (U32.ofIntCore x ⋯).val ≤ Scalar.max ScalarTy.U32
⊢ (U32.ofIntCore x ⋯).val ≤ U32.max
-/
#guard_msgs in
example (x : Int) (h0 : 0 ≤ x) (h1 : x ≤ U32.max) :
  (U32.ofIntCore x
    (⟨Eq.mp (congrArg (fun x_1 => x_1 ≤ x) rfl) h0, h1⟩)).val ≤ U32.max := by
  saturate
```
