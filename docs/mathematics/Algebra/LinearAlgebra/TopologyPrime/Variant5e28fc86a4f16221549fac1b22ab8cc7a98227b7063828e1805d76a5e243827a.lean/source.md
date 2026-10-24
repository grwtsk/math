# Complete source: GRWTSK.Algebra.LinearAlgebra.TopologyPrime.Variant5e28fc86a4f16221549fac1b22ab8cc7a98227b7063828e1805d76a5e243827a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3178605460e14e330bbbf0cf1abb36d4ff67cea4` · SHA-256 `a6931d98c305e104df3941bce0cbce04475e835cb22b73e7535d622fe0b4adad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TopologyPrimeIdentity.Variant0aae4fc22e103f388a61bdb527155803f5538f670ae3ed815755f3841a9dba5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0aae4fc22e103f388a61bdb527155803f5538f670ae3ed815755f3841a9dba5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TopologyPrimeIdentity.Variant0aae4fc22e103f388a61bdb527155803f5538f670ae3ed815755f3841a9dba5c","mathematical_subject":"Foundations.Unclassified","original_sha256":"0aae4fc22e103f388a61bdb527155803f5538f670ae3ed815755f3841a9dba5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/TopologyPrime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.OrderedPrimeNormalForm


namespace GRWTSK.Algebra.LinearAlgebra.TopologyPrimeIdentity.Variant0aae4fc22e103f388a61bdb527155803f5538f670ae3ed815755f3841a9dba5c

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def topologyPrimeIdentity
    (R : NormalizationRules)
    (T : BinaryLogicTree) : PrimeLabel :=
  (normalize R T).rootTopologyPrime

theorem topologyPrimeIdentity_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    topologyPrimeIdentity R T =
      topologyPrime R.pairing R.primeEnumerator (normalizeCore R T) := rfl

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```
