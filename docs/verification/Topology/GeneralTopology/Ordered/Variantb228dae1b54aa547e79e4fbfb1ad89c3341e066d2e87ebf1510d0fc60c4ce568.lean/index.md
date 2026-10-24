# Verification target: GRWTSK.Topology.GeneralTopology.Ordered.Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ebfbaba7efbd651097d5fa9ad25700c7bdcf66b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ebfbaba7efbd651097d5fa9ad25700c7bdcf66b`.

Source path: `GRWTSK/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Order.ProjIcc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [abs](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/abs--77d1194cb9784c1eb1c7017a.md) | 29 | `declaration-track:77d1194cb9784c1eb1c7017a73c70d128a35f5ad9a191bb7f362c38feb1d34ea` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/instance--710eb6701c5cc205c6a11fdb.md) | 33 | `declaration-track:710eb6701c5cc205c6a11fdb9baf600b7687ebe8edf9fbf8ad968be0f1204701` |
| 3 | `theorem` | [abs_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/abs-apply--0f1ec30cf2a4fde3941172cc.md) | 37 | `result-track:0f1ec30cf2a4fde3941172cc319a747dd2823d1ab5490529d922165deda75cb7` |
| 4 | `instance` | [partialOrder](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/partialorder--4b731fb0b448948ee9e2b2ac.md) | 51 | `declaration-track:4b731fb0b448948ee9e2b2ac9b8feaaf8d6e21878038bccf45a59b6a194d9f40` |
| 5 | `theorem` | [le_def](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/le-def--acce96d36918733400e7c6ec.md) | 56 | `result-track:acce96d36918733400e7c6ec23cb6da264a7b1c67cc3668600d9a6712cef130b` |
| 6 | `theorem` | [lt_def](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/lt-def--587875b275b44d910ef5bd7b.md) | 60 | `result-track:587875b275b44d910ef5bd7b465f2414297ac95d5b77c5ed4827118cea136397` |
| 7 | `instance` | [sup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/sup--5886928c2d78cead464b1e1f.md) | 64 | `declaration-track:5886928c2d78cead464b1e1f3351d1e2ebcc462c65abc31cdad3146fb8046a15` |
| 8 | `theorem` | [sup_coe](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/sup-coe--12a4131705e7e62b5da3b120.md) | 69 | `result-track:12a4131705e7e62b5da3b120bf2a57f82581a3c2b7043f5eb3156a1b6e8cb3a1` |
| 9 | `theorem` | [sup_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/sup-apply--65f178b63033cecfaf21b0c6.md) | 75 | `result-track:65f178b63033cecfaf21b0c6c35a528384c2a0bf9e37f1db772dbf0a65e1d6b7` |
| 10 | `instance` | [semilatticeSup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/semilatticesup--c031df8cf16618220072adfe.md) | 80 | `declaration-track:c031df8cf16618220072adfe2f55a7f89a4d7c5e1bb1e6237204d241128d1945` |
| 11 | `instance` | [inf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/inf--dedf8c2e6e1317f4d3df3339.md) | 87 | `declaration-track:dedf8c2e6e1317f4d3df333916de47e8425778a7ea7378d52267b489ddc66c7a` |
| 12 | `theorem` | [inf_coe](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/inf-coe--8c13e33915fe5d1b43da004a.md) | 92 | `result-track:8c13e33915fe5d1b43da004a4123312fe8a50037e40fb5bdca9344e2e13bdd51` |
| 13 | `theorem` | [inf_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/inf-apply--92b4f5e0f2d213cb4c29d349.md) | 98 | `result-track:92b4f5e0f2d213cb4c29d3492d7b1a6f53b13de16c19f13a2e22590d7e1951a0` |
| 14 | `instance` | [semilatticeInf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/semilatticeinf--303317882ff26ad0c713f44a.md) | 103 | `declaration-track:303317882ff26ad0c713f44a710a49ee8a3eee637f6d80b55ca21ee747db0450` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/instance--6404470e0bbf5798abce7c2f.md) | 110 | `declaration-track:6404470e0bbf5798abce7c2fc1ffc62049a6901206d3a2e6074ddbd584645f77` |
| 16 | `theorem` | [sup'_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/sup-apply--e35baf99ca8db20cc22f8cea.md) | 118 | `result-track:e35baf99ca8db20cc22f8ceaca26bab93ff33cad553ccdf73943942a3e867c11` |
| 17 | `theorem` | [sup'_coe](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/sup-coe--2e48f43662edc01f65e32553.md) | 124 | `result-track:2e48f43662edc01f65e325538a38d9cc102cb20dde0a3a8f9326ea8d413bf238` |
| 18 | `theorem` | [inf'_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/inf-apply--08231d2c9dfd86c23065c9af.md) | 136 | `result-track:08231d2c9dfd86c23065c9af53e5370acabb3395bacff30d613981a60e13112d` |
| 19 | `theorem` | [inf'_coe](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/inf-coe--0eb29b1871cf0e58eb83b075.md) | 142 | `result-track:0eb29b1871cf0e58eb83b0758169d9fcb707c1049aeee8f9fc1a6f8e429647d0` |
| 20 | `def` | [IccExtend](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/iccextend--989397d8085c63db4f30d45b.md) | 156 | `declaration-track:989397d8085c63db4f30d45bb8113c23efc55e9c68f872315c09d932d76dce2a` |
| 21 | `theorem` | [coe_IccExtend](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb228dae1b54aa547e79e4fbfb1ad89c3341e066d2e87ebf1510d0fc60c4ce568.lean/declarations/coe-iccextend--4fba0777ffd2ce71ace1a863.md) | 161 | `result-track:4fba0777ffd2ce71ace1a8636e2863b0c151a5d509130409c057189ed9708d56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
