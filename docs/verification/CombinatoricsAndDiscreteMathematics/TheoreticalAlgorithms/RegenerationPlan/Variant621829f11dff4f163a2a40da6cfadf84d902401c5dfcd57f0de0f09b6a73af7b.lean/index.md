# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RegenerationPlan.Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78b34aebbc83684cdea565cf138ea0018186995b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78b34aebbc83684cdea565cf138ea0018186995b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Incremental.Artifact` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IncrementalRegenerationPlan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/declarations/incrementalregenerationplan--91aac7a6f112e8c24b0f8b7e.md) | 6 | `declaration-track:91aac7a6f112e8c24b0f8b7ed87d81193e8a9aaefc355b29c9f04d76482b1c1b` |
| 2 | `theorem` | [incrementalPlan_onlyAffectedRegenerated](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/declarations/incrementalplan-onlyaffectedregenerated--8112f7176420a0507d4ca7c5.md) | 30 | `result-track:8112f7176420a0507d4ca7c54429990d9947cc26fa665db50bf3cfe8db01727b` |
| 3 | `theorem` | [incrementalPlan_regenerates_only_affected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/declarations/incrementalplan-regenerates-only-affected--889705261424f7ba452ee4a6.md) | 38 | `result-track:889705261424f7ba452ee4a6aaf046cd633ac099d4eb77b7bcead172eafedaa0` |
| 4 | `theorem` | [incrementalPlan_everyRegeneratedExplained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/declarations/incrementalplan-everyregeneratedexplained--524f6df9de8208e8cde1ce45.md) | 46 | `result-track:524f6df9de8208e8cde1ce45b91a45d6cc171bbf34c4bb77ea9026e8e20fd822` |
| 5 | `theorem` | [incrementalPlan_every_regeneration_has_inclusion_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/declarations/incrementalplan-every-regeneration-has-inclusion-path--711ce2c48ed8c0dffe381b98.md) | 55 | `result-track:711ce2c48ed8c0dffe381b98aec607a21aca0d9cf2d50da19eb95a9186ad9782` |
| 6 | `theorem` | [incrementalPlan_reusesOutsideClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/declarations/incrementalplan-reusesoutsideclosure--9c9f55f578e7eb02d4ce8d9b.md) | 64 | `result-track:9c9f55f578e7eb02d4ce8d9be8db15a55606ec7a47606c42508b3d4599df4e81` |
| 7 | `theorem` | [incrementalPlan_reuses_unaffected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/declarations/incrementalplan-reuses-unaffected--7396b4551fc316e7df39a83d.md) | 72 | `result-track:7396b4551fc316e7df39a83d5f2264b565fde1166c37482769b79277dd06cfe7` |
| 8 | `theorem` | [incrementalPlan_deterministic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/declarations/incrementalplan-deterministic--6187bcbe46abf6450da557fd.md) | 80 | `result-track:6187bcbe46abf6450da557fd9300cde5ea22b7d6268ec618a6be42eae27b2c1c` |
| 9 | `theorem` | [incrementalPlan_is_deterministic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b.lean/declarations/incrementalplan-is-deterministic--129c209b2e43a00b7884b88f.md) | 85 | `result-track:129c209b2e43a00b7884b88ffe16f06c823e4e7ddcdf715701d5bdf9042e4328` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
