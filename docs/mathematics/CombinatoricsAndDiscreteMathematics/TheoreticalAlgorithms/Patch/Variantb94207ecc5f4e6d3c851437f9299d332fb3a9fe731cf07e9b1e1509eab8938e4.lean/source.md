# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Patch.Variantb94207ecc5f4e6d3c851437f9299d332fb3a9fe731cf07e9b1e1509eab8938e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e39886c677631c2169528896db4acad8b5134592` · SHA-256 `d151c73b4f00d729d8e553cfa52fbf1509e8e4bb26bf54b72b76cc9e0cd67e08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PatchFileChangeKind.Variant84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PatchFileChangeKind.Variant84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d","mathematical_subject":"Computation.DataStructures","original_sha256":"84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/lib/Surface/Refactor/Surgery/Patch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Surgery.Inverse

/-!
# Deterministic source-patch artifact model

The patch is a content-addressed human/Git interoperability view of one exact
surgery bundle.  Exact guarded byte edits remain the mutation authority.  This
module models the renderer inputs and binding hashes; it does not parse or
apply arbitrary external patches.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PatchFileChangeKind.Variant84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d

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
