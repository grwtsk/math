# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FactorGenerated.Variant7e73629516b06dcecdf3a65ee0ed887df6a7d09f1e0cf539dce6fb14d400d162

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17bf8dba0063c819164977a3440eaa3a7f0bc349` · SHA-256 `06b62a7db54e5562611614f64e0712e1fb37c87f9c50c1e6d0c437a72bb958a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.State.Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.State.Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/factor-generated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SUCAS.FactorState

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.State.Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70

open FormalResearch.SUCAS.FactorState
set_option maxRecDepth 2048
set_option maxHeartbeats 2000000
namespace FactorReplay
noncomputable def state_0 : State 221 := initial 221 (by norm_num)
theorem event_0 : ExactExtraction 221 13 1 17 := by constructor <;> norm_num
noncomputable def state_1 : State 221 := extract state_0 event_0
theorem event_1 : Nat.Prime 2 ∧ ¬(2:Nat) ∣ 17 := by norm_num
noncomputable def state_2 : State 221 := exclude state_1 event_1.1 event_1.2
theorem event_2 : Nat.Prime 3 ∧ ¬(3:Nat) ∣ 17 := by norm_num
noncomputable def state_3 : State 221 := exclude state_2 event_2.1 event_2.2
noncomputable def split_0 : DivisorSplit 221 := certifyDivisorSplit (d := 13) (by norm_num) (by norm_num) (by norm_num)
theorem split_0_data : split_0.divisor = 13 ∧ split_0.quotient = 17 ∧ (221:Nat) = 13*17 := by norm_num [split_0, certifyDivisorSplit]
theorem final_state : state_3.residual = 17 ∧ state_3.horizon = 4 ∧ state_3.extracted = (Finsupp.single 13 1 : PrimePowers) ∧ state_3.excluded = ({2,3,13} : Finset Nat) := by
  refine ⟨rfl, ?_, ?_, ?_⟩
  · norm_num [state_0, state_1, state_2, state_3, initial, extract, exclude, State.horizon]
  · norm_num [state_0, state_1, state_2, state_3, initial, extract, exclude, State.horizon, add_comm, add_left_comm, add_assoc]
  · decide
theorem terminal : PrimeResidual state_3 := by
  apply primeResidual_of_coverage state_3 (by norm_num [state_0, state_1, state_2, state_3, initial, extract, exclude, State.horizon])
  intro p hp hb
  have hbound : p ≤ 4 := by simpa only [final_state.2.1] using hb
  have hlower := hp.two_le
  interval_cases p <;> norm_num [state_0, state_1, state_2, state_3, initial, extract, exclude, State.horizon, Finset.insert_comm] at *
noncomputable def closed : CompleteFactorization 221 := closePrime state_3 terminal
theorem final_map : closed.factors = (Finsupp.single 13 1 : PrimePowers) + (Finsupp.single 17 1 : PrimePowers) := by norm_num [closed, closePrime, state_0, state_1, state_2, state_3, initial, extract, exclude, State.horizon, add_comm, add_left_comm, add_assoc]
theorem complete : (ExactExtraction 221 13 1 17) ∧ ((221:Nat).factorization 13 = 1) ∧ (Nat.Prime 2 ∧ ¬(2:Nat) ∣ 17) ∧ (Nat.Prime 3 ∧ ¬(3:Nat) ∣ 17) ∧ (split_0.divisor = 13 ∧ split_0.quotient = 17 ∧ (221:Nat) = 13*17) ∧ (¬Nat.Prime 221) ∧ (state_3.residual = 17 ∧ state_3.horizon = 4 ∧ state_3.extracted = (Finsupp.single 13 1 : PrimePowers) ∧ state_3.excluded = ({2,3,13} : Finset Nat)) ∧ (closed.factors = (Finsupp.single 13 1 : PrimePowers) + (Finsupp.single 17 1 : PrimePowers)) ∧ ((221:Nat).factorization = closed.factors) ∧ ((221:Nat) = primeProduct closed.factors) ∧ (closed.factors 17 = 1) := by
  exact ⟨event_0, event_0.valuation, event_1, event_2, split_0_data, split_0.composite, final_state, final_map, closed.exact, closed.reconstruction, closePrime_last_depth state_3 terminal⟩
end FactorReplay
#print axioms FactorReplay.complete
```
