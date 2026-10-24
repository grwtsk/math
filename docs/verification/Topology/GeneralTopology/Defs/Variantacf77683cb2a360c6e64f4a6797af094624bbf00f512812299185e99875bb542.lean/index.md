# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b56f834f87109c1d1f4277bfb18ef5176e96383",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b56f834f87109c1d1f4277bfb18ef5176e96383`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Continuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Defs.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/continuousmap--79fd2d55ef326adc818c1504.md) | 36 | `declaration-track:79fd2d55ef326adc818c1504e4d661ac1564bc2c17aac31a2ad0b65fa533ed45` |
| 2 | `class` | [ContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/continuousmapclass--5afafb4cf7df1f8bef24513c.md) | 50 | `declaration-track:5afafb4cf7df1f8bef24513ce74bebfd5d238b9c2d6a12acc730b4ee6e712e97` |
| 3 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/tocontinuousmap--4956db5afe91e55b6dee94f4.md) | 67 | `declaration-track:4956db5afe91e55b6dee94f48de2d5cc3e230db41d8a434b6bb36a8ce633d9db` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/instance--d72df7509c00c70a91d558e3.md) | 69 | `declaration-track:d72df7509c00c70a91d558e3d0992e28aa374d67991e83c6597abc0b41f0316a` |
| 5 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/instfunlike--3cf11ec318e3bd646f598840.md) | 80 | `declaration-track:3cf11ec318e3bd646f598840ade0aaba0dfce2c7ef805b64392de9a43c330b33` |
| 6 | `instance` | [instContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/instcontinuousmapclass--2928a9b890df9fb8203f27dd.md) | 84 | `declaration-track:2928a9b890df9fb8203f27dd0fe23661a6fc3b07e2b4dd86da656da3e196583f` |
| 7 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/tofun-eq-coe--2b392443d3958a934581b8aa.md) | 88 | `result-track:2b392443d3958a934581b8aa36465257210d10e9f2cc73b3a3d4c9c0eb59129c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/instance--9ce158e699476200c193d62d.md) | 91 | `declaration-track:9ce158e699476200c193d62db57e82ca11bb9f2ad7024ae6464a1b6c27f58688` |
| 9 | `def` | [Simps.apply](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/simps-apply--450e9aaea4fc1181d16a874d.md) | 94 | `declaration-track:450e9aaea4fc1181d16a874d162e484b1df9c5c8c52c542104e7dce1964513ea` |
| 10 | `theorem` | [coe_coe](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/coe-coe--a03869220b33c0ffa4ef2a2b.md) | 100 | `result-track:a03869220b33c0ffa4ef2a2b0aa316ddf56288008f910103cfa2c40c48b6aa68` |
| 11 | `theorem` | [coe_apply](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/coe-apply--11c854bbf4bcc74b0811c4ca.md) | 104 | `result-track:11c854bbf4bcc74b0811c4caa68d67124c6f1a52c12cd9e3adae4c72ed730256` |
| 12 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/ext--80083a93cb4cd56e637d67ef.md) | 109 | `result-track:80083a93cb4cd56e637d67ef1fbac9fd31a75258c0d0501a51810e1f726fc380` |
| 13 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/copy--ea0f68d8f72e1f774e54f0a8.md) | 114 | `declaration-track:ea0f68d8f72e1f774e54f0a8618f2413ad71cb79794b3c4bba8c99d37551251d` |
| 14 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/coe-copy--0cbf73c047b606d2ba3a0b15.md) | 119 | `result-track:0cbf73c047b606d2ba3a0b15b5ace306a78c166ebd2fb2025fdf3ff3d4b64d5d` |
| 15 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/copy-eq--daebd03b333f3b296d5e00f6.md) | 122 | `result-track:daebd03b333f3b296d5e00f6435d8fb17ea1979e9a9491d30d3697338215f5b5` |
| 16 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/continuous--58b2fb452d86446f5d2b17d3.md) | 126 | `result-track:58b2fb452d86446f5d2b17d37e5b73d30a54bf080893cdb7f85426cb8e522543` |
| 17 | `theorem` | [congr_fun](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/congr-fun--ea34bce8e2482837fc609b02.md) | 130 | `result-track:ea34bce8e2482837fc609b027b532be6f4934366641b253cf5697d9d8fd2a551` |
| 18 | `theorem` | [congr_arg](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/congr-arg--895882c2610feefc1071fb2e.md) | 134 | `result-track:895882c2610feefc1071fb2e89acd57fb90be270acc8c72c0fe1279b089b8dad` |
| 19 | `theorem` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/coe-injective--036ffd874f5cf3d1954b6d3c.md) | 137 | `result-track:036ffd874f5cf3d1954b6d3c46b7ccd2df744925f97fcfb87528fe8a3d78cf1c` |
| 20 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantacf77683cb2a360c6e64f4a6797af094624bbf00f512812299185e99875bb542.lean/declarations/coe-mk--19bbfab5c324294295df9ebd.md) | 141 | `result-track:19bbfab5c324294295df9ebd10989f5dff954fdc18777d9aebd88c8f57c7a432` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
