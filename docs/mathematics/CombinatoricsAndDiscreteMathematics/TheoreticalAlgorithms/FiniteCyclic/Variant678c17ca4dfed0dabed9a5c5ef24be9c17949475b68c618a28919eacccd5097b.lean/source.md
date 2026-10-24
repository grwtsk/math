# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteCyclic.Variant678c17ca4dfed0dabed9a5c5ef24be9c17949475b68c618a28919eacccd5097b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba4bc82e04288584036d961ed4e3a38e5116e72a` · SHA-256 `5b8dc0cfa7db3af9ae286718ed156790848a06c5cb989f2c77862da9fa663270`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteCyclic.Variantb8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteCyclic.Variantb8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23","mathematical_subject":"Foundations.Unclassified","original_sha256":"b8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Orbit/FiniteCyclic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Orbit.Phase
import Mathlib.Data.ZMod.Basic

/-! # Exact finite cyclic orbits -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteCyclic.Variantb8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23

namespace Mathematics.Orbit

structure FiniteCyclic where
  modulus : Nat
  modulusPositive : 0 < modulus
  start : ZMod modulus
  turn : ZMod modulus

def FiniteCyclic.point (orbit : FiniteCyclic) (step : Nat) :
    ZMod orbit.modulus :=
  orbit.start + step * orbit.turn

end Mathematics.Orbit
```
