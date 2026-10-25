# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPairwiseEquality.Variant8f748ee7b85b617a552ddd2138c1f7b0aee6d77cc0ae05f4be9a12d43428443e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cf964ab414e8bf73548fb9a79e0079084760525` · SHA-256 `24392205c39225954ec9c703a1bd814c2679bad32edb4d4c778fd096127cdbea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPairwiseEquality.Variantbbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkPairwiseEquality.Variantbbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/mkPairwiseEquality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPairwiseEquality.Variantbbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a

open Qq

def mkPairwiseEquality {α : Q(Sort u)} : List Q($α) → Q(Prop)
  | [a, b] => q($a = $b)
  | a :: b :: cs => q($a = $b ∧ $(mkPairwiseEquality (b :: cs)))
  | _ => q(True)
```
