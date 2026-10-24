# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RegenerationPlan.Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2b7f6f001eb6580d51b2c693877971b7e042368",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2b7f6f001eb6580d51b2c693877971b7e042368`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Incremental.Artifact` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IncrementalRegenerationPlan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/declarations/incrementalregenerationplan--57de33fb08e5230245855518.md) | 14 | `declaration-track:57de33fb08e5230245855518a901cbecbfc5af63f455cddff2768d1a68df332b` |
| 2 | `theorem` | [incrementalPlan_onlyAffectedRegenerated](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/declarations/incrementalplan-onlyaffectedregenerated--62b87acdc729790587250a09.md) | 38 | `result-track:62b87acdc729790587250a098415955a5487d5376cde394f771c8c38b09bd1f9` |
| 3 | `theorem` | [incrementalPlan_regenerates_only_affected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/declarations/incrementalplan-regenerates-only-affected--6d1f2850960296ac73d25e5e.md) | 46 | `result-track:6d1f2850960296ac73d25e5e6794e9c0f510dd82398673d4feb9bf83539d36de` |
| 4 | `theorem` | [incrementalPlan_everyRegeneratedExplained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/declarations/incrementalplan-everyregeneratedexplained--228f92cefd2e1ed5430686d9.md) | 54 | `result-track:228f92cefd2e1ed5430686d9d550f72d3833718716801703566fc755da9b20c3` |
| 5 | `theorem` | [incrementalPlan_every_regeneration_has_inclusion_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/declarations/incrementalplan-every-regeneration-has-inclusion-path--2b3dbf5c07a371eee9c4665e.md) | 63 | `result-track:2b3dbf5c07a371eee9c4665ee5e7ec5440b74cb95eb7771a5a4cb9fbc06a3aff` |
| 6 | `theorem` | [incrementalPlan_reusesOutsideClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/declarations/incrementalplan-reusesoutsideclosure--d9de84c650949f94d8e6794d.md) | 72 | `result-track:d9de84c650949f94d8e6794dd8f0f530cc6d1789dc6abab5b230fcd5be244ad0` |
| 7 | `theorem` | [incrementalPlan_reuses_unaffected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/declarations/incrementalplan-reuses-unaffected--2b4e7562186ad26cc92782d0.md) | 80 | `result-track:2b4e7562186ad26cc92782d096a6c56b19fd91a59b69a9fd534ec0dd9d109c50` |
| 8 | `theorem` | [incrementalPlan_deterministic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/declarations/incrementalplan-deterministic--bd0b17e1ca8ec1b2483023a7.md) | 88 | `result-track:bd0b17e1ca8ec1b2483023a71879310f81481726b27abee920fd93aa3a29231e` |
| 9 | `theorem` | [incrementalPlan_is_deterministic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean/declarations/incrementalplan-is-deterministic--ae16049a8e8c086fd4e4ce1e.md) | 93 | `result-track:ae16049a8e8c086fd4e4ce1e00a96932f570851ba105d15b982f8ec51be0b4c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
