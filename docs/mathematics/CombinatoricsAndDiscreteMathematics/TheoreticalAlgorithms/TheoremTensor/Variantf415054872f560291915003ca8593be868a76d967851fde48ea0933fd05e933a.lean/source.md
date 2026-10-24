# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremTensor.Variantf415054872f560291915003ca8593be868a76d967851fde48ea0933fd05e933a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afd0900d0ffd845eca119425db6c3e71e3089b15` · SHA-256 `edc26fe46cd094a9c1d24d17d7b60e98581c2c03ec342a0a286b4bbce9884490`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HalfTurn.Variant4b23a7c4a8444e5455ed51c328183298bc004142182123965b23cb3e99c064ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b23a7c4a8444e5455ed51c328183298bc004142182123965b23cb3e99c064ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HalfTurn.Variant4b23a7c4a8444e5455ed51c328183298bc004142182123965b23cb3e99c064ad","mathematical_subject":"Computation.DataStructures","original_sha256":"4b23a7c4a8444e5455ed51c328183298bc004142182123965b23cb3e99c064ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Modular/TheoremTensor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.List.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HalfTurn.Variant4b23a7c4a8444e5455ed51c328183298bc004142182123965b23cb3e99c064ad

namespace Noeoueue.Modular.TheoremTensor

/-- Row-major tensor half-turn, represented after shape validation by list reversal. -/
def halfTurn {alpha : Type} (slots : List alpha) : List alpha := slots.reverse

theorem halfTurn_involution {alpha : Type} (slots : List alpha) :
    halfTurn (halfTurn slots) = slots := by
  simp [halfTurn]

theorem halfTurn_preserves_length {alpha : Type} (slots : List alpha) :
    (halfTurn slots).length = slots.length := by
  simp [halfTurn]

end Noeoueue.Modular.TheoremTensor
```
