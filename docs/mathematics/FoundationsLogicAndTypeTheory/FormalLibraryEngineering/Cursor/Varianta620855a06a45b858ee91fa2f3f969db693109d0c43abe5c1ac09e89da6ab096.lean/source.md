# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cursor.Varianta620855a06a45b858ee91fa2f3f969db693109d0c43abe5c1ac09e89da6ab096

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a4ff4b65ccbad625e3d9b702bdf0323e5f77067` · SHA-256 `a620855a06a45b858ee91fa2f3f969db693109d0c43abe5c1ac09e89da6ab096`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-! # Monotone outcome and replaceable-view cursors -/

namespace URSM.Network

structure OutcomeCursor where
  value : Nat
  deriving DecidableEq, Repr

structure ViewRevision where
  value : Nat
  deriving DecidableEq, Repr

structure ResumePoint where
  outcome : OutcomeCursor
  view : ViewRevision
  deriving DecidableEq, Repr

def OutcomeCursor.Advances
    (previous next : OutcomeCursor) : Prop :=
  previous.value < next.value

def ViewRevision.Reaches
    (previous next : ViewRevision) : Prop :=
  previous.value ≤ next.value

theorem outcome_advance_irreflexive
    (cursor : OutcomeCursor) :
    ¬ cursor.Advances cursor := by
  simp [OutcomeCursor.Advances]

theorem view_reaches_reflexive
    (revision : ViewRevision) :
    revision.Reaches revision := by
  simp [ViewRevision.Reaches]

end URSM.Network
```
