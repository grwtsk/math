# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Productive.Variant978d4b8d52ccbcebe1418a41b13f195d326f42d96691937b2dc0a940921009bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `995e6ffb189b7c275aeb38e6bb90622cbe86d5f6` · SHA-256 `978d4b8d52ccbcebe1418a41b13f195d326f42d96691937b2dc0a940921009bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.WSeq.Relation

/-!
# Productive weak sequences

This file defines the property of a weak sequence being productive as never stalling – the next
output always comes after a finite time. Given a productive weak sequence, a regular sequence
(`Seq`) can be derived from it using `toSeq`.
-/

@[expose] public section

universe u

namespace Stream'.WSeq

variable {α : Type u}

/-- A weak sequence is *productive* if it never stalls forever - there are
always a finite number of `think`s between `cons` constructors.
The sequence itself is allowed to be infinite though. -/
class Productive (s : WSeq α) : Prop where
  get?_terminates : ∀ n, (get? s n).Terminates

theorem productive_iff (s : WSeq α) : Productive s ↔ ∀ n, (get? s n).Terminates :=
  ⟨fun h => h.1, fun h => ⟨h⟩⟩

instance get?_terminates (s : WSeq α) [h : Productive s] : ∀ n, (get? s n).Terminates :=
  h.get?_terminates

instance head_terminates (s : WSeq α) [Productive s] : (head s).Terminates :=
  s.get?_terminates 0

instance productive_tail (s : WSeq α) [Productive s] : Productive (tail s) :=
  ⟨fun n => by rw [get?_tail]; infer_instance⟩

instance productive_dropn (s : WSeq α) [Productive s] (n) : Productive (drop s n) :=
  ⟨fun m => by rw [← get?_add]; infer_instance⟩

open Computation

instance productive_ofSeq (s : Seq α) : Productive (ofSeq s) :=
  ⟨fun n => by rw [get?_ofSeq]; infer_instance⟩

theorem productive_congr {s t : WSeq α} (h : s ~ʷ t) : Productive s ↔ Productive t := by
  simp only [productive_iff]; exact forall_congr' fun n => terminates_congr <| get?_congr h _

/-- Given a productive weak sequence, we can collapse all the `think`s to
  produce a sequence. -/
def toSeq (s : WSeq α) [Productive s] : Seq α :=
  ⟨fun n => (get? s n).get,
   fun {n} h => by
    cases e : Computation.get (get? s (n + 1))
    · assumption
    have := Computation.mem_of_get_eq _ e
    simp only [get?] at this h
    obtain ⟨a', h'⟩ := head_some_of_head_tail_some this
    have := mem_unique h' (@Computation.mem_of_get_eq _ _ _ _ h)
    contradiction⟩

theorem toSeq_ofSeq (s : Seq α) : toSeq (ofSeq s) = s := by
  apply Subtype.ext; funext n
  dsimp [toSeq]; apply get_eq_of_mem
  rw [get?_ofSeq]; apply ret_mem

end Stream'.WSeq
```
