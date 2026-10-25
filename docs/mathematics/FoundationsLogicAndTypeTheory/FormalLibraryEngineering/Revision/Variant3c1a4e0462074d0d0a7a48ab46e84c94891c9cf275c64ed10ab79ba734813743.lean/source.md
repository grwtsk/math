# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ead54238d161b6339b5e8e6772f079def8d26283` · SHA-256 `971433d94207ffb2e2b39fa41ee1e2e4fb90d30a364e5a0167f395bcb21b920b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revisioned.Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Revisioned.Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"da9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Core/Transport/Revision.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
import Mathlib.Tactic

/-!
# Payload-neutral bounded revision registers

The merge is a strict last-write-by-revision register. Revisions are bounded
unsigned 32-bit values and successor is partial, so no operation wraps.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revisioned.Variantda9dc2d2d6b421081e458023f85c002c78e0a212a9a08e6bc1e15075a01cf588

public section

namespace Surface.Core.Transport

@[expose, simp] def revisionModulus : Nat := 2 ^ 32

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
