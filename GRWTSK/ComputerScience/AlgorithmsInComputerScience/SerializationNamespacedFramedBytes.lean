-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FramedBytes.Variantd5c802d5af8f0ca6a60779f85c22bc89dd023ccc8550edd11c1d2b611323658e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5c802d5af8f0ca6a60779f85c22bc89dd023ccc8550edd11c1d2b611323658e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FramedBytes.Variantd5c802d5af8f0ca6a60779f85c22bc89dd023ccc8550edd11c1d2b611323658e","mathematical_subject":"Computation.DataStructures","original_sha256":"d5c802d5af8f0ca6a60779f85c22bc89dd023ccc8550edd11c1d2b611323658e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/FilesystemCodec/Serialization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Codec

/-!
# Abstract canonical filesystem serialization

This module isolates the only serialization property needed by the later
matrix pipeline: encoding has a decoder that is a left inverse. A deterministic
serializer is not automatically injective; injectivity follows here from the
explicit `decode_encode` proof.

The exact correspondence is between snapshots and the **image** of a chosen
encoder, not every byte array. Reversibility is therefore relative to the
abstract snapshot model and its serialization policy. A concrete canonical
serializer must fix traversal and child ordering, path and filename encoding,
record tags and length framing, metadata policy, symbolic- and hard-link
handling, sparse data, extended attributes, byte order, and snapshot
consistency. Live filesystem traversal and host materialization are outside
this pure development.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FramedBytes.Variantd5c802d5af8f0ca6a60779f85c22bc89dd023ccc8550edd11c1d2b611323658e

namespace FilesystemCodec

universe u

/-! ## Filesystem-specific serialization interface -/

/-- A framed byte sequence; framing policy belongs to the selected codec. -/
abbrev FramedBytes := Array UInt8

/--
An abstract canonical filesystem serializer. Its model and framing choices are
explicit in the selected `DAF.LeftInverseCodec` value.
-/
abbrev CanonicalSerializer (Snapshot : Type u) :=
  DAF.LeftInverseCodec Snapshot FramedBytes

namespace CanonicalSerializer

/-- A byte array is valid precisely when it is emitted by the serializer. -/
def Valid
    (S : CanonicalSerializer Snapshot)
    (bytes : FramedBytes) :
    Prop :=
  DAF.LeftInverseCodec.ValidOutput S bytes

/-- Canonical serialization is injective by its proved left inverse. -/
theorem encode_injective
    (S : CanonicalSerializer Snapshot) :
    Function.Injective S.encode :=
  DAF.LeftInverseCodec.encode_injective S

end CanonicalSerializer

end FilesystemCodec
