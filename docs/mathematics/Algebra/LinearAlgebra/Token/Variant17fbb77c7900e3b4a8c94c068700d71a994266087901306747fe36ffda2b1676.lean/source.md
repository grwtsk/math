# Complete source: GRWTSK.Algebra.LinearAlgebra.Token.Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fffea752f5b3db4e614c38af74a33df0a914a4a` · SHA-256 `566aab1461a33ff0b40d68d4ea452d42082c70078d66b87f1c9fc5ab29d762f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TokenAlphabet.Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TokenAlphabet.Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b","mathematical_subject":"Foundations.Unclassified","original_sha256":"5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Token.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Core


namespace GRWTSK.Algebra.LinearAlgebra.TokenAlphabet.Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b

namespace Surface.Legacy

structure TokenAlphabet where
  size : Nat
  symbol : Fin size → String

structure TokenSequence (A : TokenAlphabet) where
  length : Nat
  token : Fin length → Fin A.size

structure TokenBinaryMatrixEncoding
    (A : TokenAlphabet)
    (s : TokenSequence A) where
  rows : Nat
  cols : Nat
  matrix : BinaryLogicMatrix rows cols
  sound : Prop
  claimBoundary : String

theorem tokenBinaryMatrixEncoding_boundary
    {A : TokenAlphabet}
    {s : TokenSequence A}
    (E : TokenBinaryMatrixEncoding A s) :
    E.sound → E.sound := by
  intro h
  exact h

theorem tokenSequence_length_nonneg
    {A : TokenAlphabet}
    (s : TokenSequence A) :
    0 ≤ s.length := by
  exact Nat.zero_le s.length

end Surface.Legacy
```
