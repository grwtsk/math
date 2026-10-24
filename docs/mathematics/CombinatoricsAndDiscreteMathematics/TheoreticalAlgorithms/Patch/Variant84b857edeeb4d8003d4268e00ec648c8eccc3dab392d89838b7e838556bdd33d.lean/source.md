# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Patch.Variant84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3323ffda2f435a0c89aea050d4418dba0a11bb5c` · SHA-256 `84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Surgery.Inverse

/-!
# Deterministic source-patch artifact model

The patch is a content-addressed human/Git interoperability view of one exact
surgery bundle.  Exact guarded byte edits remain the mutation authority.  This
module models the renderer inputs and binding hashes; it does not parse or
apply arbitrary external patches.
-/

public section

namespace Surface.Refactor.Surgery

open Surface.Core.Transport Surface.Refactor.Syntax

@[expose] def sourcePatchSchemaV1 : String := "surface.source-patch.v1"
@[expose] def sourcePatchRendererV1 : String :=
  "surface.source-patch.unified-diff.v1-context-3"

@[surface_novel]
inductive PatchFileChangeKind where
  | modify
  | create
  | delete
deriving DecidableEq, Repr, BEq

/-- One normalized project-relative file entry in deterministic path order. -/
@[surface_novel]
structure PatchFileChangeV1 where
  normalizedPathUtf8 : CanonicalBytes
  kind : PatchFileChangeKind
  beforeFileHash : Hash256
  afterFileHash : Hash256
  orderedEditSequenceNumbers : List Nat
deriving DecidableEq, Repr

@[expose] def PatchFileChangeV1.Valid (change : PatchFileChangeV1) : Prop :=
  change.normalizedPathUtf8 ≠ [] ∧
    change.beforeFileHash.Valid ∧ change.afterFileHash.Valid ∧
    change.orderedEditSequenceNumbers =
      List.range change.orderedEditSequenceNumbers.length

/-- Canonical patch metadata. `unifiedDiffBytesHash` binds the exact rendered
bytes; those bytes are not source-mutation authority. -/
@[surface_novel]
structure CanonicalSourcePatchV1 where
  schema : String
  rendererVersion : String
  contextLineCount : Nat
  baseRepositorySnapshotHash : Hash256
  afterRepositorySnapshotHash : Hash256
  orderedFileChanges : List PatchFileChangeV1
  operationBundleHash : Hash256
  inverseBundleHash : Hash256
  unifiedDiffBytesHash : Hash256
deriving DecidableEq, Repr

@[expose] def pathCode (path : CanonicalBytes) : Nat :=
  path.foldl
    (fun (accumulator : Nat) byte => accumulator * 257 + byte.toNat) 0

@[expose] def CanonicalSourcePatchV1.Valid
    (patch : CanonicalSourcePatchV1) : Prop :=
  patch.schema = sourcePatchSchemaV1 ∧
    patch.rendererVersion = sourcePatchRendererV1 ∧
    patch.contextLineCount = 3 ∧
    patch.baseRepositorySnapshotHash.Valid ∧
    patch.afterRepositorySnapshotHash.Valid ∧
    patch.operationBundleHash.Valid ∧ patch.inverseBundleHash.Valid ∧
    patch.unifiedDiffBytesHash.Valid ∧
    (∀ change ∈ patch.orderedFileChanges, change.Valid) ∧
    (patch.orderedFileChanges.map
      (fun change => pathCode change.normalizedPathUtf8)).Pairwise (· < ·)

/-- Evidence that one deterministic renderer invocation was bound to the exact
admitted bundle.  Hash observations are inputs, not Lean SHA-256 computations. -/
@[surface_novel]
structure PatchCompilationRecordV1 where
  bundle : SurgeryBundle
  patch : CanonicalSourcePatchV1
  patchValid : patch.Valid
  baseSnapshotMatches :
    patch.baseRepositorySnapshotHash = bundle.baseSnapshot.snapshotHash
  afterSnapshotMatches :
    patch.afterRepositorySnapshotHash = bundle.afterSnapshot.snapshotHash
  forwardEditSequenceMatches :
    patch.orderedFileChanges.flatMap
      PatchFileChangeV1.orderedEditSequenceNumbers =
      bundle.forwardEdits.map ExactGuardedByteEdit.sequenceNumber

@[surface_novel, surface_published]
theorem canonicalSourcePatch_binds_exact_snapshots
    (record : PatchCompilationRecordV1) :
    record.patch.baseRepositorySnapshotHash =
        record.bundle.baseSnapshot.snapshotHash ∧
      record.patch.afterRepositorySnapshotHash =
        record.bundle.afterSnapshot.snapshotHash :=
  ⟨record.baseSnapshotMatches, record.afterSnapshotMatches⟩

@[expose] def CanonicalSourcePatchV1.CreatesSourceMutationAuthority
    (_patch : CanonicalSourcePatchV1) : Prop := False

@[surface_novel, surface_published]
theorem canonicalSourcePatch_has_no_source_mutation_authority
    (patch : CanonicalSourcePatchV1) :
    ¬ patch.CreatesSourceMutationAuthority := by
  simp [CanonicalSourcePatchV1.CreatesSourceMutationAuthority]

end Surface.Refactor.Surgery
```
