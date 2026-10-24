# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5MoserExact.Variant2379c82209da6b262ce153ce6233441dd655c4799181df389de507ed03c51f68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `024fd8d02eeeed20f28ed1fa168e51a1407dcedb` · SHA-256 `f7774007b5956d7e0bc319208a0042250dae1e5e50ac7a638cb936813718a537`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinitePointColorable.Variant77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FinitePointColorable.Variant77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/77/77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5--MoserExact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.HadwigerNelson.Moser
import Mathlib.Data.Fin.SuccPred


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinitePointColorable.Variant77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5

namespace FormalResearch.HadwigerNelson

def FinitePointColorable (n : ℕ) : Prop :=
  ∃ f : Fin 7 → Fin n, ∀ i j, ‖moserPoint i - moserPoint j‖ = 1 → f i ≠ f j

lemma finitePointColorable_mono {m n : ℕ} (hmn : m ≤ n)
    (hm : FinitePointColorable m) : FinitePointColorable n := by
  obtain ⟨f, hf⟩ := hm
  refine ⟨fun i ↦ Fin.castLE hmn (f i), ?_⟩
  intro i j hij heq
  exact hf i j hij (Fin.castLE_injective hmn heq)

end FormalResearch.HadwigerNelson
```
