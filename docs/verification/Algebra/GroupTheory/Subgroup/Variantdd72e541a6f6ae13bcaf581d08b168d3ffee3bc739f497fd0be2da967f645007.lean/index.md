# Verification target: GRWTSK.Algebra.GroupTheory.Subgroup.Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceab93a581fca840ad52cd60c0aa59baf45dcbef",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceab93a581fca840ad52cd60c0aa59baf45dcbef`.

Source path: `GRWTSK/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/instance--72ce10f5b7f6516495951840.md) | 30 | `declaration-track:72ce10f5b7f6516495951840c498a56a4aa3aadd34a3bd408d4783677ed1c891` |
| 2 | `def` | [Subgroup.topologicalClosure](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-topologicalclosure--8e985200995e55cc2d60b3d4.md) | 40 | `declaration-track:8e985200995e55cc2d60b3d49497c739a16d449c48ca081d11801445a7f9e7fe` |
| 3 | `theorem` | [Subgroup.topologicalClosure_coe](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-topologicalclosure-coe--74ae794ae4c8c4d6d60ff03b.md) | 46 | `result-track:74ae794ae4c8c4d6d60ff03b0848ca96382589f6ea5a6dd493a5f32cd8056438` |
| 4 | `theorem` | [Subgroup.le_topologicalClosure](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-le-topologicalclosure--71c34cb852a1bbed898cfced.md) | 51 | `result-track:71c34cb852a1bbed898cfcedd324c84b65c1bf868bd730defb59320a9be62b50` |
| 5 | `theorem` | [Subgroup.isClosed_topologicalClosure](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-isclosed-topologicalclosure--2d879b42e29bdc01b8433f3b.md) | 55 | `result-track:2d879b42e29bdc01b8433f3bce2f9db7096d802e849d8b8f9ee1b576fbb37962` |
| 6 | `theorem` | [Subgroup.topologicalClosure_minimal](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-topologicalclosure-minimal--7bdd4f1c80d7964f12e2f97b.md) | 59 | `result-track:7bdd4f1c80d7964f12e2f97b97109977048bc21d037c2a99d47271cbd82b155c` |
| 7 | `theorem` | [Subgroup.topologicalClosure_mono](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-topologicalclosure-mono--862f8e24af7eb78eb2d67087.md) | 64 | `result-track:862f8e24af7eb78eb2d67087d53ee549ab1376a81f91b49e58a8bff518ae7394` |
| 8 | `theorem` | [DenseRange.topologicalClosure_map_subgroup](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/denserange-topologicalclosure-map-subgroup--beb62d3dd4e8030e04616e96.md) | 69 | `result-track:beb62d3dd4e8030e04616e96290a81edba4b691a99355201468b0c170a8d9613` |
| 9 | `theorem` | [Subgroup.is_normal_topologicalClosure](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-is-normal-topologicalclosure--5183e500f2d227b0dc488a40.md) | 78 | `result-track:5183e500f2d227b0dc488a403fc5e73a9d83e36419201a48574d0caa280d7021` |
| 10 | `theorem` | [mul_mem_connectedComponent_one](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/mul-mem-connectedcomponent-one--3681e44a246ebf56183d0825.md) | 86 | `result-track:3681e44a246ebf56183d0825d703b867d5580aa6400d1a82b054c32b1d028a9c` |
| 11 | `theorem` | [inv_mem_connectedComponent_one](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/inv-mem-connectedcomponent-one--fc35f78de8f16340b16b8b45.md) | 97 | `result-track:fc35f78de8f16340b16b8b45968ed3fa50acb3944a80faf8d06bd37b028b4952` |
| 12 | `def` | [Subgroup.connectedComponentOfOne](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-connectedcomponentofone--93b3d5575be5f0997bf47109.md) | 107 | `declaration-track:93b3d5575be5f0997bf4710948a847d172735f83ccd6aebfc5ff7854fe2785e7` |
| 13 | `instance` | [Subgroup.isMulCommutative_topologicalClosure](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-ismulcommutative-topologicalclosure--99153412975a2a057c59fd98.md) | 118 | `declaration-track:99153412975a2a057c59fd98de2a1cdb4ca93ea17029ad2859fd505eebeb1033` |
| 14 | `abbrev` | [Subgroup.commGroupTopologicalClosure](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-commgrouptopologicalclosure--6a1a24c48beca332dccae1cd.md) | 132 | `declaration-track:6a1a24c48beca332dccae1cde8babdf4aad900a2a5d564bb338734d426b97b17` |
| 15 | `lemma` | [Subgroup.coe_topologicalClosure_bot](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-coe-topologicalclosure-bot--62800ac561a8dd88e0503119.md) | 139 | `result-track:62800ac561a8dd88e0503119eacadabcbc01806441ecf90dc4302d92ee76c8a9` |
| 16 | `theorem` | [Subgroup.properlyDiscontinuousSMul_of_tendsto_cofinite](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-properlydiscontinuoussmul-of-tendsto-cofinite--6d5b3a17bed9bde71d9e044b.md) | 155 | `result-track:6d5b3a17bed9bde71d9e044b0a18cdba85338ddf3cae50ebd252b6b831a34c0c` |
| 17 | `theorem` | [Subgroup.properlyDiscontinuousSMul_opposite_of_tendsto_cofinite](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdd72e541a6f6ae13bcaf581d08b168d3ffee3bc739f497fd0be2da967f645007.lean/declarations/subgroup-properlydiscontinuoussmul-opposite-of-tendsto-cofinite--7571088e5461e7d293b67b10.md) | 179 | `result-track:7571088e5461e7d293b67b1081fe03ee616ce5d5bececef5b3af82a06be0dc4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
