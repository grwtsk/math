# Verification target: GRWTSK.Topology.GeneralTopology.MulAction.Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44b42db8a2cfc12b521fbbff55615d9c0a2dc503",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44b42db8a2cfc12b521fbbff55615d9c0a2dc503`.

Source path: `GRWTSK/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.AddTorsor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ConstMulAction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuoussmul--5143dfa4044810908400b8cf.md) | 55 | `declaration-track:5143dfa4044810908400b8cf2befbe34b96366b7fce4e075a8cbddc69f0ece88` |
| 2 | `class` | [ContinuousVAdd](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuousvadd--c61439d8a03b826d6ef8a363.md) | 66 | `declaration-track:c61439d8a03b826d6ef8a363ecafafd9a1429077be4b164bd2fa411fae5a17de` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/instance--7abbef3ac3bb32c516ea7332.md) | 85 | `declaration-track:7abbef3ac3bb32c516ea7332adc06b951407299b8d45cb39ced4dbf1696b8951` |
| 4 | `theorem` | [Filter.Tendsto.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/filter-tendsto-smul--24cf7ca9dd8ea4cb8e8d013c.md) | 91 | `result-track:24cf7ca9dd8ea4cb8e8d013c840550e28fe90050e61bd97deeee91cf9e093e7c` |
| 5 | `theorem` | [Filter.Tendsto.smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/filter-tendsto-smul-const--adaa8e20b607f4b9c9578d8e.md) | 99 | `result-track:adaa8e20b607f4b9c9578d8e467124f8ad1913a4bf8e5897d97108eb49796dfb` |
| 6 | `theorem` | [ContinuousWithinAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuouswithinat-smul--2043f1d780734fd8d37a0578.md) | 108 | `result-track:2043f1d780734fd8d37a0578b496bc0e10a859fb5afcabf14b44f38c1f6b8065` |
| 7 | `theorem` | [ContinuousAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuousat-smul--90e4ba2f6ae42a9ce5a61d75.md) | 115 | `result-track:90e4ba2f6ae42a9ce5a61d7556af8b6a1ea6e28fdd49ee25fc2952ca486a723f` |
| 8 | `theorem` | [ContinuousOn.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuouson-smul--b59d57fbf53237de44c0cab5.md) | 122 | `result-track:b59d57fbf53237de44c0cab5df93ff3eb5137fff61e8f4db65925e8e6bf5d7d7` |
| 9 | `theorem` | [Continuous.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuous-smul--6da1dafa80d211cafe1163cb.md) | 128 | `result-track:6da1dafa80d211cafe1163cbc03eda6eb67998c6932786059fe6e7303bae5dfd` |
| 10 | `instance` | [ContinuousSMul.op](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuoussmul-op--7a891b9a0e87d7ad0a46ef94.md) | 136 | `declaration-track:7a891b9a0e87d7ad0a46ef94cb4ade38bd0a0f6297d8b0e264b7205a328b154d` |
| 11 | `instance` | [MulOpposite.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/mulopposite-continuoussmul--8b25b7c0e7a846fcb856667f.md) | 145 | `declaration-track:8b25b7c0e7a846fcb856667f9f0105349b9107269b5a4db18e49eb505686c0cb` |
| 12 | `instance` | [Units.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/units-continuoussmul--8201da839c5b9c741aeb9a57.md) | 158 | `declaration-track:8201da839c5b9c741aeb9a57756e846f5dad0977925e02153bbcded08b806228` |
| 13 | `instance` | [Submonoid.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/submonoid-continuoussmul--b1ebd5bdff85386d097a4a63.md) | 172 | `declaration-track:b1ebd5bdff85386d097a4a630e48e075f9edf9d35754b602a690d8827ab75d76` |
| 14 | `instance` | [Subgroup.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/subgroup-continuoussmul--4c3eef933a5a0f0348d66434.md) | 176 | `declaration-track:4c3eef933a5a0f0348d66434d5146cff718e7dc6ab780f665620edeae8d9e9ac` |
| 15 | `instance` | [Prod.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/prod-continuoussmul--d57ee4566d8dd439e1fd32fa.md) | 182 | `declaration-track:d57ee4566d8dd439e1fd32fadf9e1047265132719552de84977dd9e47aa39c6d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/instance--cf1ec278a3eec0651809fe9c.md) | 188 | `declaration-track:cf1ec278a3eec0651809fe9c934b620eae31410dde13ee9299894c7be95c127f` |
| 17 | `theorem` | [continuousSMul_sInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuoussmul-sinf--ed83c198333f348e3c4440d5.md) | 201 | `result-track:ed83c198333f348e3c4440d5d582f3fd011484d4683c2722ee0954835593866a` |
| 18 | `theorem` | [continuousSMul_iInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuoussmul-iinf--40b341620bea160b2e1ab7f4.md) | 216 | `result-track:40b341620bea160b2e1ab7f4718bd9a01673b67d2909cf8511dfdf9adfba960a` |
| 19 | `theorem` | [continuousSMul_inf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/continuoussmul-inf--4f53087acfb195b8f118b478.md) | 223 | `result-track:4f53087acfb195b8f118b4786d119ec33f7e383686a6ce0aa0282242ba71134b` |
| 20 | `theorem` | [AddTorsor.connectedSpace](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variantaa5813c06a6c020e65b7722247c2c07d2063543197cab56a38a2f3b73e84afd1.lean/declarations/addtorsor-connectedspace--a1e3b2cab2b04e08373ac8fe.md) | 241 | `result-track:a1e3b2cab2b04e08373ac8febecee45eaa52d55b23e4cfc3b765fefa2d6ed240` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
