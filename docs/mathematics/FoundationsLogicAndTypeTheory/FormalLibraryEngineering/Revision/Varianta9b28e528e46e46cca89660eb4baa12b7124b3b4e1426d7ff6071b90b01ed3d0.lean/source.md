# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Varianta9b28e528e46e46cca89660eb4baa12b7124b3b4e1426d7ff6071b90b01ed3d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad3e5c87434ccb657b1d3d453c6ab8d226950fc4` · SHA-256 `1983cb4277c54bc0add0aaa2169c2fc5a0b8960989d6f464a7c7e942aa833535`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variant20455442ecdd1904ae974ca3504525712d61d6a527b7b1faf5bfb5caaf12cf29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20455442ecdd1904ae974ca3504525712d61d6a527b7b1faf5bfb5caaf12cf29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Revision.Variant20455442ecdd1904ae974ca3504525712d61d6a527b7b1faf5bfb5caaf12cf29","mathematical_subject":"Foundations.Unclassified","original_sha256":"20455442ecdd1904ae974ca3504525712d61d6a527b7b1faf5bfb5caaf12cf29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:69a544ad6ba679f01405a52e/workspace/lib/Surface/Core/XYZ/Revision.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Revision
public import Surface.Core.XYZ.Fixed

/-!
# XYZ revision compatibility surface

The bounded revision and strict LWW implementation lives once in
`Surface.Core.Transport.Revision`. XYZ specializes its payload to `FixedXYZ`
without changing public names or merge semantics.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variant20455442ecdd1904ae974ca3504525712d61d6a527b7b1faf5bfb5caaf12cf29

public section

namespace Surface.Core.XYZ

@[expose] def revisionModulus : Nat := Surface.Core.Transport.revisionModulus
abbrev Revision := Fin revisionModulus

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

@[expose, simp] def merge {format : FixedFormat} :=
  Surface.Core.Transport.merge (Payload := FixedXYZ format)

namespace MergeDecision

@[expose, simp] def result {format : FixedFormat} :=
  Surface.Core.Transport.MergeDecision.result (Payload := FixedXYZ format)

end MergeDecision

namespace LwwRegister

@[expose, simp] def apply {format : FixedFormat} :=
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
```
