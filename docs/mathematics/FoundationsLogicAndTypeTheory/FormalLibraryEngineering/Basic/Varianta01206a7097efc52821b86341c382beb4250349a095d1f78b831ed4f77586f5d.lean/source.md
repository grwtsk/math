# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Varianta01206a7097efc52821b86341c382beb4250349a095d1f78b831ed4f77586f5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35e5596cbc8bd4a386d338cc0e56076aa97797ed` · SHA-256 `a01206a7097efc52821b86341c382beb4250349a095d1f78b831ed4f77586f5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Descr

public section

open Lean

namespace Aesop

structure Rule (α : Type) where
  name : RuleName
  indexingMode : IndexingMode
  pattern? : Option RulePattern
  extra : α
  tac : RuleTacDescr
  deriving Inhabited

namespace Rule

instance : BEq (Rule α) where
  beq r s := r.name == s.name

instance : Ord (Rule α) where
  compare r s := compare r.name s.name

instance : Hashable (Rule α) where
  hash r := hash r.name

def compareByPriority [Ord α] (r s : Rule α) : Ordering :=
  compare r.extra s.extra

def compareByName (r s : Rule α) : Ordering :=
  r.name.compare s.name

def compareByPriorityThenName [Ord α] (r s : Rule α) : Ordering :=
  compareByPriority r s |>.then $ compareByName r s

@[inline]
protected def map (f : α → β) (r : Rule α) : Rule β :=
  { r with extra := f r.extra }

@[inline]
protected def mapM [Monad m] (f : α → m β) (r : Rule α) : m (Rule β) :=
  return { r with extra := ← f r.extra }

end Aesop.Rule
```
