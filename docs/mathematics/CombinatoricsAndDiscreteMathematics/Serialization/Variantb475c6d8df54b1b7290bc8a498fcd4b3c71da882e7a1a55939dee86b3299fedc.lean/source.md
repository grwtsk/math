# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Serialization.Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08ca314ea56afa1e519e0934de8a1bfa66329625` · SHA-256 `6475f5fdf9270a43278ba5a8432c47f46d63eaf75f014ccd4a4bd36d223b7ab6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalIndexSerializer.Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CanonicalIndexSerializer.Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Serialization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.ObjectIndex

/-!
# Deterministic canonical-index serialization boundary

This module specifies what a canonical-index serializer must demonstrate.  It
does not implement or certify SHA-256, a byte codec, or a host filesystem.  A
serializer supplies an explicit left inverse, a normalization law, and the
connection between its encoded root identity and the root stored in the
mathematical index.

Supersession is checked separately through an actual finite ledger.  Its
rank decreases along every stored edge, and the ledger records the obligation
and representation supersession edges present in one exact index snapshot.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalIndexSerializer.Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d

universe u

namespace Surface.ContinuousAssurance.WorldModel

/--
Capability for a deterministic, left-invertible representation of a canonical
index.  `rootIdentity` is an uninterpreted identity function; no cryptographic
property follows from this structure.
-/
structure CanonicalIndexSerializer where
  Encoded : Type u
  encode : CanonicalMathematicalIndex → Encoded
  decode : Encoded → Option CanonicalMathematicalIndex
  decode_encode : ∀ index, decode (encode index) = some index
  normalize : Encoded → Encoded
  encode_normalized : ∀ index, normalize (encode index) = encode index
  rootIdentity : Encoded → ArtifactIdentity
  root_matches : ∀ index, rootIdentity (encode index) = index.rootIdentity

namespace CanonicalIndexSerializer

/-- Serialization round-trips on every canonical-index value. -/
@[simp]
theorem round_trip
    (serializer : CanonicalIndexSerializer)
    (index : CanonicalMathematicalIndex) :
    serializer.decode (serializer.encode index) = some index :=
  serializer.decode_encode index

/-- A left-invertible canonical serializer is injective. -/
theorem encode_injective
    (serializer : CanonicalIndexSerializer) :
    Function.Injective serializer.encode := by
  intro left right equal
  have decoded := congrArg serializer.decode equal
  rw [serializer.decode_encode left, serializer.decode_encode right] at decoded
  exact Option.some.inj decoded

/-- Equal canonical inputs have exactly the same serialized representation. -/
theorem encode_deterministic
    (serializer : CanonicalIndexSerializer)
    {left right : CanonicalMathematicalIndex}
    (equal : left = right) :
    serializer.encode left = serializer.encode right :=
  congrArg serializer.encode equal

/-- Canonical encodings are fixed points of the declared normalizer. -/
@[simp]
theorem normalize_encode
    (serializer : CanonicalIndexSerializer)
    (index : CanonicalMathematicalIndex) :
    serializer.normalize (serializer.encode index) = serializer.encode index :=
  serializer.encode_normalized index

/-- The encoded root is exactly the root identity stored by the input index. -/
theorem encoded_root_identity
    (serializer : CanonicalIndexSerializer)
    (index : CanonicalMathematicalIndex) :
    serializer.rootIdentity (serializer.encode index) = index.rootIdentity :=
  serializer.root_matches index

/-- Root identity is deterministic for equal canonical inputs. -/
theorem root_identity_deterministic
    (serializer : CanonicalIndexSerializer)
    {left right : CanonicalMathematicalIndex}
    (equal : left = right) :
    serializer.rootIdentity (serializer.encode left) =
      serializer.rootIdentity (serializer.encode right) := by
  rw [serializer.root_matches left, serializer.root_matches right, equal]

end CanonicalIndexSerializer

/-- A source digest observed for one stable declaration identifier. -/
structure DeclarationSourceDigestObservation where
  declaration : FormalDeclarationId
  observedDigest : ArtifactIdentity
  deriving DecidableEq, Repr

/--
An observation is accepted only when the declaration exists and its pinned
source digest equals the observation.  This is exact identity comparison, not
a claim that Lean computed or cryptographically validated the digest.
-/
def DeclarationSourceDigestObservation.AcceptedFor
    (observation : DeclarationSourceDigestObservation)
    (index : CanonicalMathematicalIndex) : Prop :=
  match index.lookupDeclaration observation.declaration with
  | some declaration => declaration.sourceDigest = observation.observedDigest
  | none => False

/-- A matching pinned declaration digest is accepted. -/
theorem DeclarationSourceDigestObservation.accepted_of_lookup
    {index : CanonicalMathematicalIndex}
    {observation : DeclarationSourceDigestObservation}
    {declaration : FormalDeclarationRecord}
    (lookup : index.lookupDeclaration observation.declaration = some declaration)
    (digestMatches : declaration.sourceDigest = observation.observedDigest) :
    observation.AcceptedFor index := by
  simp [DeclarationSourceDigestObservation.AcceptedFor, lookup, digestMatches]

/-- A stale source digest is rejected. -/
theorem DeclarationSourceDigestObservation.rejected_of_stale
    {index : CanonicalMathematicalIndex}
    {observation : DeclarationSourceDigestObservation}
    {declaration : FormalDeclarationRecord}
    (lookup : index.lookupDeclaration observation.declaration = some declaration)
    (stale : declaration.sourceDigest ≠ observation.observedDigest) :
    ¬ observation.AcceptedFor index := by
  simp [DeclarationSourceDigestObservation.AcceptedFor, lookup, stale]

/-- An observation for a missing declaration is rejected. -/
theorem DeclarationSourceDigestObservation.rejected_of_missing
    {index : CanonicalMathematicalIndex}
    {observation : DeclarationSourceDigestObservation}
    (missing : index.lookupDeclaration observation.declaration = none) :
    ¬ observation.AcceptedFor index := by
  simp [DeclarationSourceDigestObservation.AcceptedFor, missing]

/-- Supersession nodes represented by the Level-0 index. -/
inductive IndexSupersessionItem
  | obligation (identity : ObligationId)
  | representation (identity : RepresentationId)
  deriving DecidableEq, Repr

/--
The actual finite supersession ledger for one index snapshot.  Completeness
fields tie every stored obligation and representation edge to this ledger;
the rank proof applies to the ledger's own `supersedes` relation.
-/
structure CanonicalIndexSupersessionLedger
    (index : CanonicalMathematicalIndex) where
  items : Finset IndexSupersessionItem
  supersedes : IndexSupersessionItem → Option IndexSupersessionItem
  rank : IndexSupersessionItem → Nat
  edge_target_tracked :
    ∀ {newer older}, newer ∈ items → supersedes newer = some older → older ∈ items
  rank_decreases :
    ∀ {newer older}, supersedes newer = some older → rank older < rank newer
  tracks_obligations :
    ∀ record ∈ index.obligations.entries,
      IndexSupersessionItem.obligation record.identity ∈ items ∧
      supersedes (.obligation record.identity) =
        record.supersedes.map IndexSupersessionItem.obligation
  tracks_representations :
    ∀ record ∈ index.representations.entries,
      IndexSupersessionItem.representation record.identity ∈ items ∧
      supersedes (.representation record.identity) =
        record.supersedes.map IndexSupersessionItem.representation

namespace CanonicalIndexSupersessionLedger

/-- The actual stored supersession relation is well founded. -/
theorem wellFounded
    {index : CanonicalMathematicalIndex}
    (ledger : CanonicalIndexSupersessionLedger index) :
    WellFounded (fun older newer ↦ ledger.supersedes newer = some older) := by
  apply (InvImage.wf ledger.rank wellFounded_lt).mono
  intro older newer edge
  exact ledger.rank_decreases edge

/-- No obligation or representation can transitively supersede itself. -/
theorem no_cycle
    {index : CanonicalMathematicalIndex}
    (ledger : CanonicalIndexSupersessionLedger index)
    (item : IndexSupersessionItem) :
    ¬ Relation.TransGen
      (fun older newer ↦ ledger.supersedes newer = some older) item item := by
  intro cycle
  have rank_lt :
      ∀ {older newer},
        Relation.TransGen
          (fun prior later ↦ ledger.supersedes later = some prior)
          older newer →
        ledger.rank older < ledger.rank newer := by
    intro older newer path
    induction path with
    | single edge => exact ledger.rank_decreases edge
    | tail path edge inductionHypothesis =>
        exact Nat.lt_trans inductionHypothesis (ledger.rank_decreases edge)
  exact Nat.lt_irrefl _ (rank_lt cycle)

end CanonicalIndexSupersessionLedger

end Surface.ContinuousAssurance.WorldModel
```
