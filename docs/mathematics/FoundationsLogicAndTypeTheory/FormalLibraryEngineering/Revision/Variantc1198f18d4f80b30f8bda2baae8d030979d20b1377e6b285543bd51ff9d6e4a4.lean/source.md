# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc1538d91ed33eb2eb9653ece47a03f19e889f67` · SHA-256 `c1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
import Mathlib.Tactic

/-!
# Payload-neutral bounded revision registers

The merge is a strict last-write-by-revision register. Revisions are bounded
unsigned 32-bit values and successor is partial, so no operation wraps.
-/

public section

namespace Surface.Core.Transport

@[expose] def revisionModulus : Nat := 2 ^ 32

abbrev Revision := Fin revisionModulus

namespace Revision

@[expose] def next? (revision : Revision) : Option Revision :=
  if withinBounds : revision.val + 1 < revisionModulus then
    some ⟨revision.val + 1, withinBounds⟩
  else
    none

@[surface_novel, surface_published]
theorem next?_sound {revision next : Revision}
    (produced : next? revision = some next) :
    next.val = revision.val + 1 := by
  simp only [next?] at produced
  split at produced
  · simpa using congrArg Fin.val (Option.some.inj produced.symm)
  · simp at produced

@[surface_novel, surface_published]
theorem next?_strict {revision next : Revision}
    (produced : next? revision = some next) :
    revision < next := by
  change revision.val < next.val
  rw [next?_sound produced]
  omega

@[surface_novel, surface_published]
theorem next?_eq_none_iff (revision : Revision) :
    next? revision = none ↔ revision.val + 1 ≥ revisionModulus := by
  simp [next?]

end Revision

@[surface_novel]
structure Revisioned (Payload : Type*) where
  revision : Revision
  value : Payload
deriving DecidableEq, Repr

@[surface_novel]
structure LwwRegister (Payload : Type*) where
  current : Option (Revisioned Payload)
deriving DecidableEq, Repr

@[surface_novel]
inductive MergeDecision (Payload : Type*) where
  | accepted (next : Revisioned Payload)
  | replay (current : Revisioned Payload)
  | stale (current incoming : Revisioned Payload)
  | conflict (current incoming : Revisioned Payload)
deriving DecidableEq, Repr

@[expose, simp] def merge {Payload : Type*} [DecidableEq Payload]
    (register : LwwRegister Payload) (incoming : Revisioned Payload) :
    MergeDecision Payload :=
  match register.current with
  | none => .accepted incoming
  | some current =>
      if incoming.revision < current.revision then
        .stale current incoming
      else if incoming.revision = current.revision then
        if incoming.value = current.value then
          .replay current
        else
          .conflict current incoming
      else
        .accepted incoming

@[expose, simp] def MergeDecision.result {Payload : Type*} :
    MergeDecision Payload → Revisioned Payload
  | .accepted next => next
  | .replay current => current
  | .stale current _ => current
  | .conflict current _ => current

@[expose, simp] def LwwRegister.apply {Payload : Type*} [DecidableEq Payload]
    (register : LwwRegister Payload) (incoming : Revisioned Payload) :
    LwwRegister Payload :=
  ⟨some (merge register incoming).result⟩

@[surface_novel, surface_published]
theorem merge_deterministic {Payload : Type*} [DecidableEq Payload]
    (register : LwwRegister Payload) (incoming : Revisioned Payload)
    {left right : MergeDecision Payload}
    (leftResult : merge register incoming = left)
    (rightResult : merge register incoming = right) :
    left = right := by
  exact leftResult.symm.trans rightResult

@[surface_novel, surface_published]
theorem staleRevision_rejected {Payload : Type*} [DecidableEq Payload]
    (current incoming : Revisioned Payload)
    (staleRevision : incoming.revision < current.revision) :
    merge ⟨some current⟩ incoming = .stale current incoming := by
  simp [merge, staleRevision]

@[surface_novel, surface_published]
theorem equalRevision_conflict_rejected
    {Payload : Type*} [DecidableEq Payload]
    (current incoming : Revisioned Payload)
    (sameRevision : incoming.revision = current.revision)
    (differentValue : incoming.value ≠ current.value) :
    merge ⟨some current⟩ incoming = .conflict current incoming := by
  simp [merge, sameRevision, differentValue]

@[surface_novel, surface_published]
theorem equalRevision_identical_replay
    {Payload : Type*} [DecidableEq Payload]
    (current incoming : Revisioned Payload)
    (sameRevision : incoming.revision = current.revision)
    (sameValue : incoming.value = current.value) :
    merge ⟨some current⟩ incoming = .replay current := by
  simp [merge, sameRevision, sameValue]

@[surface_novel, surface_published]
theorem acceptedRevision_not_stale
    {Payload : Type*} [DecidableEq Payload]
    (current incoming next : Revisioned Payload)
    (accepted : merge ⟨some current⟩ incoming = .accepted next) :
    ¬ incoming.revision < current.revision := by
  intro staleRevision
  simp [merge, staleRevision] at accepted

@[surface_novel, surface_published]
theorem merge_revision_monotone
    {Payload : Type*} [DecidableEq Payload]
    (current incoming : Revisioned Payload) :
    current.revision ≤
      (merge ⟨some current⟩ incoming).result.revision := by
  simp only [merge]
  split
  · simp [MergeDecision.result]
  · split
    · split <;> simp [MergeDecision.result]
    · simp only [MergeDecision.result]
      exact le_of_not_gt ‹¬ incoming.revision < current.revision›

@[surface_novel, surface_published]
theorem replay_apply_idempotent
    {Payload : Type*} [DecidableEq Payload]
    (register : LwwRegister Payload)
    (incoming current : Revisioned Payload)
    (classified : merge register incoming = .replay current) :
    LwwRegister.apply register incoming = register := by
  cases register with
  | mk current? =>
      cases current? with
      | none => simp [merge] at classified
      | some existing =>
          by_cases stale : incoming.revision < existing.revision
          · simp [merge, stale] at classified
          · by_cases sameRevision : incoming.revision = existing.revision
            · by_cases sameValue : incoming.value = existing.value
              · have existingEq : existing = current := by
                  simpa [merge, stale, sameRevision, sameValue] using classified
                subst current
                simp [LwwRegister.apply, merge, sameRevision, sameValue,
                  MergeDecision.result]
              · simp [merge, sameRevision, sameValue] at classified
            · simp [merge, stale, sameRevision] at classified

end Surface.Core.Transport
```
