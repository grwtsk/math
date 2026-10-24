# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceExactOverlapSamplingConsumer.Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45f7d5366821707d728b095f65135565b8e3deb5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45f7d5366821707d728b095f65135565b8e3deb5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceExactOverlapConsumer` — import line 1; external provider; requires a separately pinned dependency.
- `SourceExactSamplingTail` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactSamplingLedgerCost](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/declarations/exactsamplingledgercost--a1a7403d0a00510faa3934e4.md) | 23 | `declaration-track:a1a7403d0a00510faa3934e431e94906a0ea7a904c7e5b6c789c7f2172a583a3` |
| 2 | `def` | [exactOverlapSamplingResidualBudget](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/declarations/exactoverlapsamplingresidualbudget--4864334c6ce982534d458802.md) | 28 | `declaration-track:4864334c6ce982534d45880225b3bcf8ec497c85cff9831870047ce9f6482083` |
| 3 | `theorem` | [exactSamplingLedgerCost_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/declarations/exactsamplingledgercost-nonneg--2ee6c2fbbe6d92c1b72eb756.md) | 31 | `result-track:2ee6c2fbbe6d92c1b72eb75695e14e3b5de76bec0d6df5e8fbcebdee7f447ca2` |
| 4 | `theorem` | [exactOverlapSamplingResidualBudget_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/declarations/exactoverlapsamplingresidualbudget-nonneg--d0213bf7da2f77ef292019dd.md) | 39 | `result-track:d0213bf7da2f77ef292019ddf9ad987879ceab2605ba91d896d3fac52d836844` |
| 5 | `theorem` | [residual_tail_of_overlap_with_exact_sampling](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/declarations/residual-tail-of-overlap-with-exact-sampling--65140296064b063d62f2b2c0.md) | 43 | `result-track:65140296064b063d62f2b2c0c631f1d3d9b692689aa1d3ed1f1a8310c81be2d7` |
| 6 | `theorem` | [all_real_lower_of_overlap_with_exact_sampling](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/declarations/all-real-lower-of-overlap-with-exact-sampling--254c66994980524a6db1f558.md) | 65 | `result-track:254c66994980524a6db1f5587af12b4880b4aaaa3d2077a7b0a934dbe5787898` |
| 7 | `theorem` | [estimate_of_overlap_with_exact_sampling](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/declarations/estimate-of-overlap-with-exact-sampling--744a835e92afbbfdc6e1a4e9.md) | 86 | `result-track:744a835e92afbbfdc6e1a4e91b876b9f181aa9487b234bf8aaddd5e28f77390e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
