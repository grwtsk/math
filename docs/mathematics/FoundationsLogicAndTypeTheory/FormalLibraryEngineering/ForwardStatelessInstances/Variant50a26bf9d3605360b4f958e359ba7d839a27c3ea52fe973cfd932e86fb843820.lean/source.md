# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardStatelessInstances.Variant50a26bf9d3605360b4f958e359ba7d839a27c3ea52fe973cfd932e86fb843820

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5e4d75b3c21594927c65b3b3308b28840b39ac9` · SHA-256 `50a26bf9d3605360b4f958e359ba7d839a27c3ea52fe973cfd932e86fb843820`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Xavier Généreux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Généreux, Jannis Limperg
-/

import Aesop

-- Regression test for an issue where each rule would only try to synthInstance
-- once per goal.

set_option aesop.dev.statefulForward false
set_option aesop.check.all true

namespace test₁

axiom myProp {A : Type} {B : Type} (a : A) (b : B) : Prop

class myClass (A : Type) (B : Type) where
  data (a : A) (b : B) : Type

axiom myThm {A : Type} {B : Type} (a : A) (b : B)  [myClass A B] : myProp a b

example {A : Type} {B : Type} (a : A) (b : B) [myClass A B] : myProp a b := by
  saturate [myThm]
  assumption

end test₁

namespace test₃

universe u₁ u₂ u₃ u₄

axiom myProp {A : Type u₁} {B : Type u₂} (a : A) (b : B) : Prop

class myClass (A : Type u₁) (B : Type u₂) where
  data (a : A) (b : B) : Type u₄

axiom myThm {A : Type u₁} {B : Type u₂} [myClass A B] (a : A) (b : B) : myProp a b

example {A : Type u₁} {B : Type u₂} {C : Type u₃} [myClass A B]
    (a₁ a₂ a₃ a₄ a₅ a₆ a₇ : A) (b₁ b₂ b₃ b₄ b₅ b₇ b₈ : B) (c₁ c₂ c₃ : C) :
    myProp a₁ b₁ := by
  set_option aesop.check.script false in -- TODO
  saturate [myThm]
  assumption

end test₃
```
