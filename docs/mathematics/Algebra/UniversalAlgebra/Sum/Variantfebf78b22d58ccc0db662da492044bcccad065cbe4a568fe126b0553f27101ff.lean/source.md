# Complete source: GRWTSK.Algebra.UniversalAlgebra.Sum.Variantfebf78b22d58ccc0db662da492044bcccad065cbe4a568fe126b0553f27101ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b17cb4978f647dff4d7a16987824b96ddf06143` · SHA-256 `be131a102748df3144513bfd4923007d0a9c372204d56ff390f7d44882bd5a94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.PacketIncrementSum.Variant67f81641780adc9bd100e0029a1a6a8f24e276724b23162cab3242cd54a17aad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67f81641780adc9bd100e0029a1a6a8f24e276724b23162cab3242cd54a17aad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.PacketIncrementSum.Variant67f81641780adc9bd100e0029a1a6a8f24e276724b23162cab3242cd54a17aad","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"67f81641780adc9bd100e0029a1a6a8f24e276724b23162cab3242cd54a17aad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP3/Telescope/Sum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathematics.SemiLocalDefect.WP3.Energy

/-!
# Packet-increment sum primitive
-/


namespace GRWTSK.Algebra.UniversalAlgebra.PacketIncrementSum.Variant67f81641780adc9bd100e0029a1a6a8f24e276724b23162cab3242cd54a17aad

namespace Mathematics.SemiLocalDefect.SoninCore

open scoped BigOperators

def packetIncrementSum
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (g : W.Test) :
    ℝ :=
  ∑ i : Fin E.order.length,
    W.projectedNormSq
      (soninIncrement
        P
        (E.prefixCut i.val)
        (E.order.get i))
      g

end Mathematics.SemiLocalDefect.SoninCore
```
