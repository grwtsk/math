# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "def0fab9d3327939bdc0f89f9d8c6c9def556ded",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `def0fab9d3327939bdc0f89f9d8c6c9def556ded`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/centralizer--a70a2907026cbd121036998d.md) | 37 | `declaration-track:a70a2907026cbd121036998d11e67ceb211ee84f8b4e472339561f0930facce6` |
| 2 | `theorem` | [coe_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/coe-centralizer--0cc0e9f43955d7f0733cd149.md) | 43 | `result-track:0cc0e9f43955d7f0733cd14976abd61ffae0bb10c52963f7dafac40059c88cc5` |
| 3 | `theorem` | [centralizer_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/centralizer-tosubsemigroup--79d11c9b28a858533e0e5d5d.md) | 47 | `result-track:79d11c9b28a858533e0e5d5df6eed2d33e7b02014992e268a437873f0a945db9` |
| 4 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/mem-centralizer-iff--eb532526f7f2b812c9460a9b.md) | 53 | `result-track:eb532526f7f2b812c9460a9b8aa81086757a644076012e5702cbbadde0432869` |
| 5 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/center-le-centralizer--566bcad4e47ba1c677cf5a73.md) | 57 | `result-track:566bcad4e47ba1c677cf5a7388acb504b37353c4cc51144c4f9054f85053be8d` |
| 6 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/decidablememcentralizer--264ddcb9faa1aa098088e826.md) | 61 | `declaration-track:264ddcb9faa1aa098088e8262e9e68ea7aa8bec119b9f27b82f1347f11f84839` |
| 7 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/centralizer-le--01869cc23825d1aac8d6e87e.md) | 66 | `result-track:01869cc23825d1aac8d6e87ebf97ce76c99c803f7d9dba6cce437353ca3715ee` |
| 8 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/centralizer-eq-top-iff-subset--3b95a9ccf63111d8ee340917.md) | 70 | `result-track:3b95a9ccf63111d8ee3409171995c4cfe9aeb809b93014e703a87900799e27f4` |
| 9 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/centralizer-univ--f6941a1e944f2e45d5788ebe.md) | 76 | `result-track:f6941a1e944f2e45d5788ebe131fe850514a4c5efa6e2cc072aeecc30a52750f` |
| 10 | `lemma` | [le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/le-centralizer-centralizer--54bec5d93e05cf7b2bc4eb40.md) | 80 | `result-track:54bec5d93e05cf7b2bc4eb40108d6275191e5aee1ee19bac03d0e16b4345848e` |
| 11 | `lemma` | [centralizer_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/centralizer-centralizer-centralizer--2f00a3269611280def9e51ee.md) | 84 | `result-track:2f00a3269611280def9e51ee654fba102143ba846cadaa43ef359a13db2f8995` |
| 12 | `lemma` | [closure_le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/closure-le-centralizer-centralizer--530d5e6c83de4f2505732455.md) | 91 | `result-track:530d5e6c83de4f2505732455b23dbd7b11cf3143f4002c545f7c613307c556fb` |
| 13 | `theorem` | [isMulCommutative_closure](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/ismulcommutative-closure--324e06da24d70d5373f9597b.md) | 99 | `result-track:324e06da24d70d5373f9597b314ab372602da135c30b1a3bcabfaa1d6b5fc741` |
| 14 | `abbrev` | [closureCommMonoidOfComm](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/closurecommmonoidofcomm--73db88984181d64130f02e0e.md) | 110 | `declaration-track:73db88984181d64130f02e0e3cc9258ad025f75c96e6926464c3d6427629b8ca` |
| 15 | `instance` | [instIsMulCommutative_closure](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9.lean/declarations/instismulcommutative-closure--e86754e915808fdfcf462a9e.md) | 116 | `declaration-track:e86754e915808fdfcf462a9eae3a6b90a0ff3e1cc26398860fe7044a9beca39b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
