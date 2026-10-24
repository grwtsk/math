# Complete source: GRWTSK.Algebra.LinearAlgebra.Codec.Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `224e9f18aa951a2f32ff70df08ba172b707bb4de` · SHA-256 `6e5461ee60f783b98869ebdacc2fa6c070048fa26c3a7e016deb7e0d780f4cd6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BinaryLogicMatrixCodec.Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BinaryLogicMatrixCodec.Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1","mathematical_subject":"Foundations.Unclassified","original_sha256":"3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Codec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Core


namespace GRWTSK.Algebra.LinearAlgebra.BinaryLogicMatrixCodec.Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1

namespace Surface.Legacy

class BinaryLogicMatrixCodec (α : Type) where
  rows : α -> Nat
  cols : α -> Nat
  encode : (x : α) -> BinaryLogicMatrix (rows x) (cols x)
  decode? : {rows cols : Nat} -> BinaryLogicMatrix rows cols -> Option α
  roundTrip : ∀ x : α, decode? (encode x) = some x

namespace BinaryLogicMatrixCodec

def encodeSigma {α : Type} [C : BinaryLogicMatrixCodec α] (x : α) :
    Sigma fun rows => Sigma fun cols => BinaryLogicMatrix rows cols :=
  ⟨C.rows x, ⟨C.cols x, C.encode x⟩⟩

theorem roundTrip_checked {α : Type} [C : BinaryLogicMatrixCodec α] (x : α) :
    C.decode? (C.encode x) = some x :=
  C.roundTrip x

end BinaryLogicMatrixCodec

end Surface.Legacy
```
