# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Path.Variant909c88bea4f17c4f24951517e148ae06b56c16a790efbb8160f53383b002f413

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdbcf6db8472793a0c988bbdda71476aca38221f` · SHA-256 `7de6c8e6c914c5896fe6c30b7501c4d48281d9ff1f3f22f7e4dff9e120378a90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectRelativePath.Variantb8b93509741ba53825c53a29a6239f03d6c1df84588426a17a358e27132fb68b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8b93509741ba53825c53a29a6239f03d6c1df84588426a17a358e27132fb68b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProjectRelativePath.Variantb8b93509741ba53825c53a29a6239f03d6c1df84588426a17a358e27132fb68b","mathematical_subject":"Computation.DataStructures","original_sha256":"b8b93509741ba53825c53a29a6239f03d6c1df84588426a17a358e27132fb68b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Path.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Authority

/-!
# Nominal source paths and byte ranges

These predicates validate protocol spelling.  Filesystem canonicalization and
symlink resolution remain OS observations supplied by Rust receipts.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectRelativePath.Variantb8b93509741ba53825c53a29a6239f03d6c1df84588426a17a358e27132fb68b

public section

namespace Surface.Refactor

open Surface.Core

@[surface_novel]
structure ProjectRelativePath where
  raw : String
deriving DecidableEq, Repr

@[surface_novel]
structure LeanModulePath where
  components : List String
deriving DecidableEq, Repr

@[surface_novel]
structure Utf8ByteOffset where
  value : Nat
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure SourceByteRange where
  startByte : Utf8ByteOffset
  endByte : Utf8ByteOffset
deriving DecidableEq, Repr

@[surface_novel]
structure AllowedRoot where
  path : ProjectRelativePath
deriving DecidableEq, Repr

@[expose] def ProjectRelativePath.components (path : ProjectRelativePath) : List String :=
  path.raw.splitOn "/"

@[expose] def ProjectRelativePath.Valid (path : ProjectRelativePath) : Prop :=
  path.raw ≠ "" ∧
    path.raw.startsWith "/" = false ∧
    Char.ofNat 0 ∉ path.raw.toList ∧
    ".." ∉ path.components ∧
    "." ∉ path.components ∧
    path.raw.endsWith ".lean" = true

instance (path : ProjectRelativePath) : Decidable path.Valid := by
  unfold ProjectRelativePath.Valid
  infer_instance

@[expose] def verifyProjectRelativePath (path : ProjectRelativePath) : Bool :=
  decide path.Valid

@[surface_novel, surface_published]
theorem verifyProjectRelativePath_sound (path : ProjectRelativePath)
    (h : verifyProjectRelativePath path = true) : path.Valid := by
  exact of_decide_eq_true h

@[surface_novel, surface_published]
theorem valid_relative_path_has_no_parent_escape (path : ProjectRelativePath)
    (h : path.Valid) : ".." ∉ path.components :=
  h.2.2.2.1

@[surface_novel, surface_published]
theorem valid_lean_source_path_has_lean_extension (path : ProjectRelativePath)
    (h : path.Valid) : path.raw.endsWith ".lean" = true :=
  h.2.2.2.2.2

@[expose] def SourceByteRange.Valid (range : SourceByteRange) : Prop :=
  range.startByte.value ≤ range.endByte.value

instance (range : SourceByteRange) : Decidable range.Valid := by
  unfold SourceByteRange.Valid
  infer_instance

@[expose] def verifySourceByteRange (range : SourceByteRange) : Bool :=
  decide range.Valid

@[surface_novel, surface_published]
theorem verifySourceByteRange_sound (range : SourceByteRange)
    (h : verifySourceByteRange range = true) : range.Valid := by
  exact of_decide_eq_true h

@[surface_novel, surface_published]
theorem valid_source_range_start_le_end (range : SourceByteRange)
    (h : range.Valid) : range.startByte.value ≤ range.endByte.value :=
  h

@[expose] def LeanModulePath.Valid (modulePath : LeanModulePath) : Prop :=
  modulePath.components ≠ [] ∧
    modulePath.components.all (fun component =>
      component != "" && component != "." && component != ".." &&
        !component.contains '/') = true

instance (modulePath : LeanModulePath) : Decidable modulePath.Valid := by
  unfold LeanModulePath.Valid
  infer_instance

@[expose] def modulePathAsSource (modulePath : LeanModulePath) : ProjectRelativePath :=
  ⟨"lib/" ++ String.intercalate "/" modulePath.components ++ ".lean"⟩

@[surface_novel]
structure LeanSourceIdentity where
  modulePath : LeanModulePath
  sourcePath : ProjectRelativePath
deriving DecidableEq, Repr

@[expose] def LeanSourceIdentity.Valid (identity : LeanSourceIdentity) : Prop :=
  identity.modulePath.Valid ∧
    identity.sourcePath.Valid ∧
    identity.sourcePath = modulePathAsSource identity.modulePath

instance (identity : LeanSourceIdentity) : Decidable identity.Valid := by
  unfold LeanSourceIdentity.Valid
  infer_instance

@[expose] def verifyLeanSourceIdentity (identity : LeanSourceIdentity) : Bool :=
  decide identity.Valid

@[surface_novel, surface_published]
theorem verifyLeanSourceIdentity_sound (identity : LeanSourceIdentity)
    (h : verifyLeanSourceIdentity identity = true) : identity.Valid := by
  exact of_decide_eq_true h

/-- The nominal round trip retains exactly the validated component packet. -/
@[expose] def modulePathRoundTrip (modulePath : LeanModulePath) : LeanModulePath :=
  ⟨modulePath.components⟩

@[surface_novel, surface_published]
theorem module_path_round_trip_for_valid_components (modulePath : LeanModulePath)
    (_h : modulePath.Valid) : modulePathRoundTrip modulePath = modulePath := by
  cases modulePath
  rfl

@[expose] def ProjectRelativePath.Within
    (path : ProjectRelativePath) (root : AllowedRoot) : Prop :=
  path.raw = root.path.raw ∨
    path.raw.startsWith (root.path.raw ++ "/") = true

@[surface_novel]
structure CandidatePath where
  path : ProjectRelativePath
  generated : path.raw.startsWith "Generated/" = true

@[surface_novel]
structure CanonicalPath where
  path : ProjectRelativePath
  notGenerated : path.raw.startsWith "Generated/" = false
  notLegacy : path.raw.startsWith "SurfaceLegacy/" = false

@[surface_novel, surface_published]
theorem candidate_path_is_generated (path : CandidatePath) :
    path.path.raw.startsWith "Generated/" = true :=
  path.generated

@[surface_novel, surface_published]
theorem canonical_path_is_not_generated_or_legacy (path : CanonicalPath) :
    path.path.raw.startsWith "Generated/" = false ∧
      path.path.raw.startsWith "SurfaceLegacy/" = false :=
  ⟨path.notGenerated, path.notLegacy⟩

/-- Runtime evidence for canonicalization; it does not prove an OS fact. -/
@[surface_certificate]
structure PathResolutionReceipt where
  requested : ProjectRelativePath
  resolved : String
  projectRoot : String
  observationHash : ContentHash256
  authority : RefactorAuthority := .environmentObserved
deriving Repr

end Surface.Refactor
```
