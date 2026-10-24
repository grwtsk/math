# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43444d5b5e13290c1aa1e50b3c7e1b1de749da75` · SHA-256 `53d6cba8099a863896f0e655e80f7a9a1eca1e0cd57286babb92973affdff8c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash256.Variant4a71f8092283db56db616dd9abc9af7efba28a4edb0d8ee72f992b4fcb8a303e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a71f8092283db56db616dd9abc9af7efba28a4edb0d8ee72f992b4fcb8a303e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.Hash256.Variant4a71f8092283db56db616dd9abc9af7efba28a4edb0d8ee72f992b4fcb8a303e","mathematical_subject":"Computation.Algorithms","original_sha256":"4a71f8092283db56db616dd9abc9af7efba28a4edb0d8ee72f992b4fcb8a303e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Core/Transport/Hash.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification

/-!
# Payload-neutral transport hashes

`Hash256` is an opaque wire identity. Lean validates only the exact SHA-256
spelling and structural equality; digest computation and cryptographic claims
remain outside this module.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash256.Variant4a71f8092283db56db616dd9abc9af7efba28a4edb0d8ee72f992b4fcb8a303e

public section

namespace Surface.Core.Transport

@[surface_novel]
structure Hash256 where
  algorithm : String
  hex : String
deriving DecidableEq, Repr

@[expose] def lowerHexAlphabet : List Char :=
  "0123456789abcdef".toList

@[expose] def IsLowerHexDigit (character : Char) : Prop :=
  character ∈ lowerHexAlphabet

instance (character : Char) : Decidable (IsLowerHexDigit character) := by
  unfold IsLowerHexDigit
  infer_instance

@[expose] def Hash256.Valid (hash : Hash256) : Prop :=
  hash.algorithm = "sha256" ∧
    hash.hex.length = 64 ∧
    ∀ character ∈ hash.hex.toList, IsLowerHexDigit character

instance instDecidableHash256Valid (hash : Hash256) : Decidable hash.Valid := by
  unfold Hash256.Valid
  infer_instance

@[expose] def verifyHash256 (hash : Hash256) : Bool :=
  decide hash.Valid

@[surface_novel, surface_published, surface_certificate]
theorem verifyHash256_sound (hash : Hash256)
    (accepted : verifyHash256 hash = true) : hash.Valid := by
  exact of_decide_eq_true accepted

end Surface.Core.Transport
```
