-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash256.Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.Hash256.Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b","mathematical_subject":"Computation.Algorithms","original_sha256":"7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:629d44e3f3a5c883f5ffef23/workspace/lib/Surface/Core/XYZ/Hash.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification

/-!
# Framing for XYZ protocol hashes

`Hash256` is an opaque, content-addressed wire identity.  This module checks
only the spelling and lowercase hexadecimal framing of a SHA-256 value, plus
ordinary structural equality.  It does not compute SHA-256 and does not turn a
hash, a matching implementation, or a finite test result into theorem
authority.  The protocol's Rust implementation computes the digest bytes.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash256.Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b

public section

namespace Surface.Core.XYZ

/-- An XYZ-local wire hash, kept independent of presentation and refactor
protocol types. -/
@[surface_novel]
structure Hash256 where
  algorithm : String
  hex : String
deriving DecidableEq, Repr

/-- The exact lowercase hexadecimal alphabet accepted on the wire. -/
@[expose] def lowerHexAlphabet : List Char :=
  "0123456789abcdef".toList

/-- Character-level lowercase hexadecimal framing. -/
@[expose] def IsLowerHexDigit (character : Char) : Prop :=
  character ∈ lowerHexAlphabet

instance (character : Char) : Decidable (IsLowerHexDigit character) := by
  unfold IsLowerHexDigit
  infer_instance

/-- Exact SHA-256 wire framing: the literal algorithm name and exactly sixty-four
lowercase hexadecimal characters.  In particular, prefixes such as `0x` and
`sha256:` cannot inhabit the hexadecimal field. -/
@[expose] def Hash256.Valid (hash : Hash256) : Prop :=
  hash.algorithm = "sha256" ∧
    hash.hex.length = 64 ∧
    ∀ character ∈ hash.hex.toList, IsLowerHexDigit character

instance (hash : Hash256) : Decidable hash.Valid := by
  unfold Hash256.Valid
  infer_instance

/-- Executable finite framing check.  This does not compute a digest. -/
@[expose] def verifyHash256 (hash : Hash256) : Bool :=
  decide hash.Valid

/-- A successful executable framing check proves exactly `Hash256.Valid`. -/
@[surface_novel, surface_published, surface_certificate]
theorem verifyHash256_sound (hash : Hash256)
    (accepted : verifyHash256 hash = true) : hash.Valid := by
  exact of_decide_eq_true accepted

end Surface.Core.XYZ
