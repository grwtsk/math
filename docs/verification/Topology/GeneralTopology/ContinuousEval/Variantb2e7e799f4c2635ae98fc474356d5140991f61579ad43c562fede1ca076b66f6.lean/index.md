# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousEval.Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cd5e19fa0b439ace90574aa6e00910e434a81b2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cd5e19fa0b439ace90574aa6e00910e434a81b2`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Hom.ContinuousEvalConst` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousEval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/declarations/continuouseval--d3ea2e3e5e0540e76b80d3f0.md) | 22 | `declaration-track:d3ea2e3e5e0540e76b80d3f0a8768c1cf7dc502d7de95abd1021273204a18e03` |
| 2 | `theorem` | [Continuous.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/declarations/continuous-eval--e45db2a25f290955287de6ff.md) | 34 | `result-track:e45db2a25f290955287de6ff607eaf596ac08b8829c4cc648c099bc8580e3577` |
| 3 | `theorem` | [ContinuousEval.of_continuous_forget](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/declarations/continuouseval-of-continuous-forget--930dea492b6f191f8fb8f938.md) | 43 | `result-track:930dea492b6f191f8fb8f938907246a27cafe4f684a4d00d70be63586d662c52` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/declarations/instance--1931b955b2db9b6388060c53.md) | 48 | `declaration-track:1931b955b2db9b6388060c53b47dbddc30fe9f59431c12194b15ac5496450839` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/declarations/instance--e7f6da6efe47cf75b8897483.md) | 51 | `declaration-track:e7f6da6efe47cf75b88974839d8b328ecfd9a36b92223d36fdfc5c41357826c1` |
| 6 | `theorem` | [Filter.Tendsto.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/declarations/filter-tendsto-eval--6b9662053b6c96529f8ae617.md) | 54 | `result-track:6b9662053b6c96529f8ae61766442a76b59ce6196cbf5b462a002e5efb0e74db` |
| 7 | `theorem` | [ContinuousAt.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/declarations/continuousat-eval--00173cac47b663021bf14bee.md) | 59 | `result-track:00173cac47b663021bf14beebed2d54fc91382434814adf47c0f7232f53fbf2e` |
| 8 | `theorem` | [ContinuousWithinAt.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/declarations/continuouswithinat-eval--ec1562a7656238d7e88057c6.md) | 63 | `result-track:ec1562a7656238d7e88057c6e77856a09d7acaf7760c2e246798dc639c18ace3` |
| 9 | `theorem` | [ContinuousOn.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/declarations/continuouson-eval--0f4ef8092273c9d6ab8f2efa.md) | 67 | `result-track:0f4ef8092273c9d6ab8f2efaeb9ff8446ea9a7ed855c686f30041fe244bd2558` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
