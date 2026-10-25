module

public import Surface.Core.Transport.Revision
public import Surface.Core.XYZ.Fixed

/-!
# XYZ revision compatibility surface

The bounded revision and strict LWW implementation lives once in
`Surface.Core.Transport.Revision`. XYZ specializes its payload to `FixedXYZ`
without changing public names or merge semantics.
-/

public section

namespace Surface.Core.XYZ

abbrev revisionModulus := Surface.Core.Transport.revisionModulus
abbrev Revision := Surface.Core.Transport.Revision

namespace Revision

abbrev next? := Surface.Core.Transport.Revision.next?

@[surface_novel, surface_published]
theorem next?_sound {revision next : Revision}
    (produced : next? revision = some next) :
    next.val = revision.val + 1 :=
  Surface.Core.Transport.Revision.next?_sound produced

@[surface_novel, surface_published]
theorem next?_strict {revision next : Revision}
    (produced : next? revision = some next) :
    revision < next :=
  Surface.Core.Transport.Revision.next?_strict produced

@[surface_novel, surface_published]
theorem next?_eq_none_iff (revision : Revision) :
    next? revision = none ↔ revision.val + 1 ≥ revisionModulus :=
  Surface.Core.Transport.Revision.next?_eq_none_iff revision

end Revision

abbrev RevisionedXYZ (format : FixedFormat) :=
  Surface.Core.Transport.Revisioned (FixedXYZ format)

abbrev LwwRegister (format : FixedFormat) :=
  Surface.Core.Transport.LwwRegister (FixedXYZ format)

abbrev MergeDecision (format : FixedFormat) :=
  Surface.Core.Transport.MergeDecision (FixedXYZ format)

@[expose] def merge {format : FixedFormat} :=
  Surface.Core.Transport.merge (Payload := FixedXYZ format)

namespace MergeDecision

@[expose] def result {format : FixedFormat} :=
  Surface.Core.Transport.MergeDecision.result (Payload := FixedXYZ format)

end MergeDecision

namespace LwwRegister

@[expose] def apply {format : FixedFormat} :=
  Surface.Core.Transport.LwwRegister.apply (Payload := FixedXYZ format)

end LwwRegister

@[surface_novel, surface_published]
theorem merge_deterministic {format : FixedFormat}
    (register : LwwRegister format) (incoming : RevisionedXYZ format)
    {left right : MergeDecision format}
    (leftResult : merge register incoming = left)
    (rightResult : merge register incoming = right) :
    left = right :=
  Surface.Core.Transport.merge_deterministic register incoming
    leftResult rightResult

@[surface_novel, surface_published]
theorem staleRevision_rejected {format : FixedFormat}
    (current incoming : RevisionedXYZ format)
    (staleRevision : incoming.revision < current.revision) :
    merge ⟨some current⟩ incoming = .stale current incoming :=
  Surface.Core.Transport.staleRevision_rejected current incoming staleRevision

@[surface_novel, surface_published]
theorem equalRevision_conflict_rejected {format : FixedFormat}
    (current incoming : RevisionedXYZ format)
    (sameRevision : incoming.revision = current.revision)
    (differentValue : incoming.value ≠ current.value) :
    merge ⟨some current⟩ incoming = .conflict current incoming :=
  Surface.Core.Transport.equalRevision_conflict_rejected current incoming
    sameRevision differentValue

@[surface_novel, surface_published]
theorem equalRevision_identical_replay {format : FixedFormat}
    (current incoming : RevisionedXYZ format)
    (sameRevision : incoming.revision = current.revision)
    (sameValue : incoming.value = current.value) :
    merge ⟨some current⟩ incoming = .replay current :=
  Surface.Core.Transport.equalRevision_identical_replay current incoming
    sameRevision sameValue

@[surface_novel, surface_published]
theorem acceptedRevision_not_stale {format : FixedFormat}
    (current incoming next : RevisionedXYZ format)
    (accepted : merge ⟨some current⟩ incoming = .accepted next) :
    ¬ incoming.revision < current.revision :=
  Surface.Core.Transport.acceptedRevision_not_stale current incoming next accepted

@[surface_novel, surface_published]
theorem merge_revision_monotone {format : FixedFormat}
    (current incoming : RevisionedXYZ format) :
    current.revision ≤
      (merge ⟨some current⟩ incoming).result.revision :=
  Surface.Core.Transport.merge_revision_monotone current incoming

end Surface.Core.XYZ
