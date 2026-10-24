# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceExactOverlapSamplingConsumer.Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d45ab72e4b2bb542252f00584ee8bd297e273e8f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d45ab72e4b2bb542252f00584ee8bd297e273e8f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceExactOverlapConsumer` — import line 6; external provider; requires a separately pinned dependency.
- `SourceExactSamplingTail` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactSamplingLedgerCost](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/declarations/exactsamplingledgercost--0c40c599cf8c973b9c2ac386.md) | 31 | `declaration-track:0c40c599cf8c973b9c2ac386718714393f3d35e613f89e4eff85b11c1d5b538d` |
| 2 | `def` | [exactOverlapSamplingResidualBudget](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/declarations/exactoverlapsamplingresidualbudget--edd992860a64c003fd171538.md) | 36 | `declaration-track:edd992860a64c003fd171538646c204499d1f86e9c58141888d92fa0780e40d1` |
| 3 | `theorem` | [exactSamplingLedgerCost_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/declarations/exactsamplingledgercost-nonneg--98640e318f921f373b451e05.md) | 39 | `result-track:98640e318f921f373b451e055ae29da7e43c2b09aecf82f3f81f255b3a178458` |
| 4 | `theorem` | [exactOverlapSamplingResidualBudget_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/declarations/exactoverlapsamplingresidualbudget-nonneg--aa9618bccde300915e11e002.md) | 47 | `result-track:aa9618bccde300915e11e0027c456f7f7e9b0ec87fb117d9f669e558183365f8` |
| 5 | `theorem` | [residual_tail_of_overlap_with_exact_sampling](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/declarations/residual-tail-of-overlap-with-exact-sampling--c9b8ce9f82e54ce373124633.md) | 51 | `result-track:c9b8ce9f82e54ce373124633e60b49b5d7aa366df13e6ba5be2d0ca071cac14d` |
| 6 | `theorem` | [all_real_lower_of_overlap_with_exact_sampling](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/declarations/all-real-lower-of-overlap-with-exact-sampling--9fe003b99c935805dfe5b8ed.md) | 73 | `result-track:9fe003b99c935805dfe5b8edca8390cc43f601b9cd3b26bbf5c0722f4c11aa80` |
| 7 | `theorem` | [estimate_of_overlap_with_exact_sampling](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/declarations/estimate-of-overlap-with-exact-sampling--ee6a185a34f6a3c26f8e62fb.md) | 94 | `result-track:ee6a185a34f6a3c26f8e62fb0469b2eeee9d5290d021900af311888ac0c19320` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
