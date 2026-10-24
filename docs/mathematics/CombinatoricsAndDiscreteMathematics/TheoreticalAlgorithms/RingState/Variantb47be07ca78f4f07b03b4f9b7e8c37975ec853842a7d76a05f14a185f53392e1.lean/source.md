# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RingState.Variantb47be07ca78f4f07b03b4f9b7e8c37975ec853842a7d76a05f14a185f53392e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c266012f62d56462339a2d87bd002ceaef667bac` · SHA-256 `b47be07ca78f4f07b03b4f9b7e8c37975ec853842a7d76a05f14a185f53392e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Fin.Basic

/-!
# Pure sequence-indexed ring state

The generic runtime model stores only fixed-capacity slots and one monotone
sequence number.  Write position, occupancy, latest position, and chronological
indices are derived data.  It has no dependency on matrices, filesystem
packets, platform atomics, or memory-ordering APIs.
-/

namespace DAF.Runtime

universe u

/-- Fixed-capacity slots together with the total number of completed pushes. -/
structure RingState
    (capacity : Nat)
    (Entry : Type u) where
  slots : Fin capacity → Entry
  sequence : Nat

namespace RingState

variable {capacity : Nat} {Entry : Type u}

@[ext]
theorem ext
    {x y : RingState capacity Entry}
    (hslots : x.slots = y.slots)
    (hsequence : x.sequence = y.sequence) :
    x = y := by
  cases x
  cases y
  simp_all

/-- The physical slot overwritten by the next push. -/
def nextWriteIndex
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity) : Fin capacity :=
  ⟨state.sequence % capacity, Nat.mod_lt _ hcapacity⟩

/-- The most recently written physical slot, absent before the first push. -/
def latestIndex
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity) : Option (Fin capacity) :=
  if _hzero : state.sequence = 0 then
    none
  else
    some ⟨(state.sequence - 1) % capacity, Nat.mod_lt _ hcapacity⟩

/-- Number of initialized chronological positions, capped by capacity. -/
def count (state : RingState capacity Entry) : Nat :=
  min state.sequence capacity

/-- Overwrite the sequence-derived slot and increment the shared sequence. -/
def push
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (entry : Entry) : RingState capacity Entry where
  slots := Function.update state.slots (state.nextWriteIndex hcapacity) entry
  sequence := state.sequence + 1

/-- Convert an oldest-first chronological position into a physical slot. -/
def chronologicalIndex
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (position : Fin state.count) : Fin capacity :=
  ⟨(state.sequence - state.count + position.val) % capacity,
    Nat.mod_lt _ hcapacity⟩

@[simp]
theorem push_sequence
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (entry : Entry) :
    (state.push hcapacity entry).sequence = state.sequence + 1 :=
  rfl

@[simp]
theorem push_written_slot
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (entry : Entry) :
    (state.push hcapacity entry).slots (state.nextWriteIndex hcapacity) = entry := by
  simp [push]

theorem push_other_slot
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (entry : Entry)
    (index : Fin capacity)
    (hne : index ≠ state.nextWriteIndex hcapacity) :
    (state.push hcapacity entry).slots index = state.slots index := by
  simp [push, hne]

theorem count_le_capacity
    (state : RingState capacity Entry) :
    state.count ≤ capacity :=
  min_le_right _ _

/-- Read the newest entry, retaining absence before the first push. -/
def latestEntry
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity) : Option Entry :=
  (state.latestIndex hcapacity).map state.slots

@[simp]
theorem latestEntry_push
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (entry : Entry) :
    (state.push hcapacity entry).latestEntry hcapacity = some entry := by
  simp [latestEntry, latestIndex, push, nextWriteIndex]

end RingState

end DAF.Runtime
```
