# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Random.Varianta2af01d41f8fb82dc42b6768071c2c05d335a9d305fe7421ac84e5fbc44d29b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27a6f33bd1a0980bda1f1acb21cc9d15603733e1` · SHA-256 `a2af01d41f8fb82dc42b6768071c2c05d335a9d305fe7421ac84e5fbc44d29b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Control.Random
import Mathlib.Tactic.NormNum
import Batteries.Lean.LawfulMonad

open Random

-- TODO(kmill): remove once the mathlib ToExpr Int instance is removed
set_option eval.pp false

section Rand

/--
info: 33
-/
#guard_msgs in
#eval do
  IO.runRandWith 257 (show Rand _ from do
    let i ← randBound Int 3 30 (by norm_num)
    let j ← randBound Int 4 40 (by norm_num)
    return i.1 + j.1)

-- using higher universes
/--
info: ULift.up 19
-/
#guard_msgs in
#eval do
  IO.runRandWith 257 (show Rand _ from do
    let i ← rand (ULift.{3} (Fin 20))
    return i)

end Rand

-- using the monad transformer
section RandT

/--
info: Got 6
Got 27
---
info: 33
-/
#guard_msgs in
#eval show IO _ from do
  IO.runRandWith 257 (do
    let i ← randBound Int 3 30 (by norm_num)
    IO.println s!"Got {i}"
    let j ← randBound Int 4 40 (by norm_num)
    IO.println s!"Got {j}"
    return i.1 + j.1)

/--
info: Got 6
Got 27
---
info: 33
-/
#guard_msgs in
#eval show Lean.Meta.MetaM _ from do
  IO.runRandWith 257 (do
    let i ← randBound Int 3 30 (by norm_num)
    IO.println s!"Got {i}"
    let j ← randBound Int 4 40 (by norm_num)
    IO.println s!"Got {j}"
    return i.1 + j.1)

-- test that `MetaM` can access the global random number generator
/--
info: Got 4
Got 4
---
info: 8
-/
#guard_msgs in
#eval show Lean.Meta.MetaM _ from do
  IO.runRand (do
    -- since we don't know the seed, we use a trivial range here for determinism
    let i ← randBound Int 4 4 (by norm_num)
    IO.println s!"Got {i}"
    let j ← randBound Int 4 4 (by norm_num)
    IO.println s!"Got {i}"
    return i.1 + j.1)

/--
info: GOOD
-/
#guard_msgs in
#eval show IO _ from do
  IO.runRandWith 257 <| do
    let mut count := 0
    for _ in [:10000] do
      if (← randFin : Fin 3) == 1 then count := count + 1
    if Float.abs (0.333 - (count / Nat.toFloat 10000)) < 0.01 then
      IO.println "GOOD"
    else
      IO.println "BAD"

/--
info: GOOD
-/
#guard_msgs in
#eval show IO _ from do
  IO.runRandWith 257 <| do
    let mut count := 0
    for _ in [:10000] do
      if (← randFin : Fin 2) == 0 then count := count + 1
    if Float.abs (0.5 - (count / Nat.toFloat 10000)) < 0.01 then
      IO.println "GOOD"
    else
      IO.println "BAD"

/--
info: GOOD
-/
#guard_msgs in
#eval show IO _ from do
  IO.runRandWith 257 <| do
    let mut count := 0
    for _ in [:10000] do
      if (← randFin : Fin 10) == 5 then count := count + 1
    if Float.abs (0.1 - (count / Nat.toFloat 10000)) < 0.01 then
      IO.println "GOOD"
    else
      IO.println "BAD"

end RandT
```
