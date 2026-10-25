# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variantc1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8075f69734b6fd0a67d8744f85d5e934bd0ddc2` · SHA-256 `c1213f590aa9e337f154a9e991212177220263198c0988914518990c65f4b743`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.XYZ.Fixed
import Mathlib.Tactic

/-!
# Bounded revisioned XYZ registers

Revisions are ordinary natural numbers bounded by `2^32`.  Increment is
partial and never wraps.  The merge is a deterministic last-write-by-revision
register with an intentionally strict equal-revision rule: identical payloads
are replays, while different payloads are conflicts rather than
last-arrival-wins updates.
-/

public section

namespace Surface.Core.XYZ

/-- Exclusive upper bound for protocol revisions. -/
@[expose] def revisionModulus : Nat := 2 ^ 32

/-- A bounded unsigned 32-bit revision, ordered by its ordinary natural value. -/
abbrev Revision := Fin revisionModulus

namespace Revision

/-- The next bounded revision, or `none` at the maximal revision. -/
@[expose] def next? (revision : Revision) : Option Revision :=
  if withinBounds : revision.val + 1 < revisionModulus then
    some ⟨revision.val + 1, withinBounds⟩
  else
    none

/-- Every produced successor has exactly the next natural value. -/
@[surface_novel, surface_published]
theorem next?_sound {revision next : Revision}
    (produced : next? revision = some next) :
    next.val = revision.val + 1 := by
  simp only [next?] at produced
  split at produced
  · simpa using congrArg Fin.val (Option.some.inj produced.symm)
  · simp at produced

/-- A produced successor is strictly newer than its input. -/
@[surface_novel, surface_published]
theorem next?_strict {revision next : Revision}
    (produced : next? revision = some next) :
    revision < next := by
  change revision.val < next.val
  rw [next?_sound produced]
  omega

/-- Failure to increment is exactly exhaustion of the bounded range. -/
@[surface_novel, surface_published]
theorem next?_eq_none_iff (revision : Revision) :
    next? revision = none ↔ revision.val + 1 ≥ revisionModulus := by
  simp [next?]

end Revision

/-- One XYZ payload paired with its bounded protocol revision. -/
@[surface_novel]
structure RevisionedXYZ (format : FixedFormat) where
  revision : Revision
  value : FixedXYZ format
deriving DecidableEq, Repr

/-- A single deterministic revision register. -/
@[surface_novel]
structure LwwRegister (format : FixedFormat) where
  current : Option (RevisionedXYZ format)
deriving DecidableEq, Repr

/-- Complete, non-mutating classification of an incoming register value. -/
@[surface_novel]
inductive MergeDecision (format : FixedFormat) where
  | accepted (next : RevisionedXYZ format)
  | replay (current : RevisionedXYZ format)
  | stale (current incoming : RevisionedXYZ format)
  | conflict (current incoming : RevisionedXYZ format)
deriving DecidableEq, Repr

/-- Deterministic merge with strict stale/replay/conflict/newer precedence. -/
@[expose] def merge {format : FixedFormat}
    (register : LwwRegister format) (incoming : RevisionedXYZ format) :
    MergeDecision format :=
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

/-- The authoritative value represented after a classified merge. -/
@[expose] def MergeDecision.result {format : FixedFormat} :
    MergeDecision format → RevisionedXYZ format
  | .accepted next => next
  | .replay current => current
  | .stale current _ => current
  | .conflict current _ => current

/-- Apply a merge decision to the register.  Replays, stale values, and
conflicts retain the existing authoritative value. -/
@[expose] def LwwRegister.apply {format : FixedFormat}
    (register : LwwRegister format) (incoming : RevisionedXYZ format) :
    LwwRegister format :=
  ⟨some (merge register incoming).result⟩

/-- A pure function cannot classify one fixed input in two different ways. -/
@[surface_novel, surface_published]
theorem merge_deterministic {format : FixedFormat}
    (register : LwwRegister format) (incoming : RevisionedXYZ format)
    {left right : MergeDecision format}
    (leftResult : merge register incoming = left)
    (rightResult : merge register incoming = right) :
    left = right := by
  exact leftResult.symm.trans rightResult

/-- A lower revision is rejected as stale. -/
@[surface_novel, surface_published]
theorem staleRevision_rejected {format : FixedFormat}
    (current incoming : RevisionedXYZ format)
    (staleRevision : incoming.revision < current.revision) :
    merge ⟨some current⟩ incoming = .stale current incoming := by
  simp [merge, staleRevision]

/-- Equal revisions carrying different XYZ values are conflicts. -/
@[surface_novel, surface_published]
theorem equalRevision_conflict_rejected {format : FixedFormat}
    (current incoming : RevisionedXYZ format)
    (sameRevision : incoming.revision = current.revision)
    (differentValue : incoming.value ≠ current.value) :
    merge ⟨some current⟩ incoming = .conflict current incoming := by
  simp [merge, sameRevision, differentValue]

/-- Equal revisions carrying identical XYZ values are idempotent replays. -/
@[surface_novel, surface_published]
theorem equalRevision_identical_replay {format : FixedFormat}
    (current incoming : RevisionedXYZ format)
    (sameRevision : incoming.revision = current.revision)
    (sameValue : incoming.value = current.value) :
    merge ⟨some current⟩ incoming = .replay current := by
  simp [merge, sameRevision, sameValue]

/-- An accepted update against an occupied register cannot have a stale
revision. -/
@[surface_novel, surface_published]
theorem acceptedRevision_not_stale {format : FixedFormat}
    (current incoming next : RevisionedXYZ format)
    (accepted : merge ⟨some current⟩ incoming = .accepted next) :
    ¬ incoming.revision < current.revision := by
  intro staleRevision
  simp [merge, staleRevision] at accepted

/-- Applying a merge to an occupied register never decreases its revision. -/
@[surface_novel, surface_published]
theorem merge_revision_monotone {format : FixedFormat}
    (current incoming : RevisionedXYZ format) :
    current.revision ≤
      (merge ⟨some current⟩ incoming).result.revision := by
  simp only [merge]
  split
  · simp [MergeDecision.result]
  · split
    · split <;> simp [MergeDecision.result]
    · simp only [MergeDecision.result]
      exact le_of_not_gt ‹¬ incoming.revision < current.revision›

end Surface.Core.XYZ

```
