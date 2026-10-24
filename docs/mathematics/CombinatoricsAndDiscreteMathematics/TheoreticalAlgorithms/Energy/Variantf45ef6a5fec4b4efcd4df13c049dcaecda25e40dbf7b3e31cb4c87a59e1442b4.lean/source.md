# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Energy.Variantf45ef6a5fec4b4efcd4df13c049dcaecda25e40dbf7b3e31cb4c87a59e1442b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba77f73c4e32cbcf4cfb40aad95b320bd317aa78` · SHA-256 `74a72a7afda0c670a65ddd09031e666cb1abdc82567c226ebfcd0a867c0784e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Energy.Variant6b3bb14530c9b9b6475f50773c96f3893b595a659956884bd5bf11b7e9dcc167","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b3bb14530c9b9b6475f50773c96f3893b595a659956884bd5bf11b7e9dcc167","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Energy.Variant6b3bb14530c9b9b6475f50773c96f3893b595a659956884bd5bf11b7e9dcc167","mathematical_subject":"Computation.DataStructures","original_sha256":"6b3bb14530c9b9b6475f50773c96f3893b595a659956884bd5bf11b7e9dcc167","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/Energy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.HardConstraint

/-! # Discrete relaxation energy -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Energy.Variant6b3bb14530c9b9b6475f50773c96f3893b595a659956884bd5bf11b7e9dcc167

namespace Mathematics.Relaxation

/--
Natural-valued energy is an operational termination measure.  It is not
theorem authority and need not represent a physical energy.
-/
structure Energy where
  energyId : StableId
  measure : State → Nat
  componentMeasures : List (State → Nat)
  energyDigest : Digest

end Mathematics.Relaxation
```
