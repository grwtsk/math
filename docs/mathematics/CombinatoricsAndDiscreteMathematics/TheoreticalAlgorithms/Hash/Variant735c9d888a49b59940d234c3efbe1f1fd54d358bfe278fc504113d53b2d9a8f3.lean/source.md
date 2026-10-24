# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Variant735c9d888a49b59940d234c3efbe1f1fd54d358bfe278fc504113d53b2d9a8f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0938dd7655a0f8fa4126557aacece9ddf230f6ee` · SHA-256 `762213a20b0b59212feab6df4cfce0a8f724ecc9ad854da1397662763c27d706`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash256.Variantf6b10e6e7319b6f7a449235774aa97c9750e77c11860f2f1084be65f5499c247","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6b10e6e7319b6f7a449235774aa97c9750e77c11860f2f1084be65f5499c247","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.Hash256.Variantf6b10e6e7319b6f7a449235774aa97c9750e77c11860f2f1084be65f5499c247","mathematical_subject":"Computation.Algorithms","original_sha256":"f6b10e6e7319b6f7a449235774aa97c9750e77c11860f2f1084be65f5499c247","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:69a544ad6ba679f01405a52e/workspace/lib/Surface/Core/XYZ/Hash.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Hash

/-!
# XYZ hash compatibility surface

The implementation is payload-neutral in `Surface.Core.Transport`. These
abbreviations and thin theorem wrapper preserve the published XYZ API exactly;
Lean still validates framing only and does not compute SHA-256.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash256.Variantf6b10e6e7319b6f7a449235774aa97c9750e77c11860f2f1084be65f5499c247

public section

namespace Surface.Core.XYZ

abbrev Hash256 := Surface.Core.Transport.Hash256
abbrev Hash256.algorithm := Surface.Core.Transport.Hash256.algorithm
abbrev Hash256.hex := Surface.Core.Transport.Hash256.hex
abbrev lowerHexAlphabet := Surface.Core.Transport.lowerHexAlphabet
abbrev IsLowerHexDigit := Surface.Core.Transport.IsLowerHexDigit
abbrev Hash256.Valid (hash : Hash256) :=
  Surface.Core.Transport.Hash256.Valid hash
abbrev verifyHash256 := Surface.Core.Transport.verifyHash256

@[surface_novel, surface_published, surface_certificate]
theorem verifyHash256_sound (hash : Hash256)
    (accepted : verifyHash256 hash = true) : hash.Valid :=
  Surface.Core.Transport.verifyHash256_sound hash accepted

end Surface.Core.XYZ
```
