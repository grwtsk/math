# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26a391aec4ac576e74fdad8818bc457279ab007a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26a391aec4ac576e74fdad8818bc457279ab007a`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/instance--09b41d531d25af0253bfd9d9.md) | 32 | `declaration-track:09b41d531d25af0253bfd9d94d5626339c32b599572d70e4399f0476109593a2` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/smul-def--c5f8f68863fff8999c0be002.md) | 35 | `result-track:c5f8f68863fff8999c0be00250adcb486d115122276c8deeacba2c3dbe859d6b` |
| 3 | `theorem` | [smul_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/smul-isunit--c6e6f0365d15e972bea8a2f6.md) | 41 | `result-track:c6e6f0365d15e972bea8a2f6a10f6a742982bde8c4ca19dbd33df6fdc4993a9c` |
| 4 | `theorem` | [_root_.IsUnit.inv_smul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/root-isunit-inv-smul--fad43a0b31dc3ef907ead3cd.md) | 46 | `result-track:fad43a0b31dc3ef907ead3cde73ae8bfd650ec5d2867153ed659493cbda02317` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/instance--852da09d55d00dffa2e96258.md) | 51 | `declaration-track:852da09d55d00dffa2e96258f284ecfe20fc21dcc35917649aa1db99e80f1699` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/instance--3b248088cdd39a89d65dc72a.md) | 55 | `declaration-track:3b248088cdd39a89d65dc72a5c1c718b00692b96c7a24928d19d5d39d9042336` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/instance--e104dca6e4ff204be4a4c8ac.md) | 60 | `declaration-track:e104dca6e4ff204be4a4c8ac798716494204c1d396bdeaabe85acf0b5b7dd001` |
| 8 | `instance` | [instDistribSMulUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/instdistribsmulunits--077b7e10d3381a32efc0d259.md) | 65 | `declaration-track:077b7e10d3381a32efc0d259e79ce25e83c0477e6dcedae0cc211bc7a3514f9c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/instance--633b1a8848b60c0235feb1d3.md) | 68 | `declaration-track:633b1a8848b60c0235feb1d381b96aca973539c1ee1a960ad11f520517a0ee36` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/instance--8d79252539ff1d00c1921c64.md) | 73 | `declaration-track:8d79252539ff1d00c1921c640b8751257a7400036df9dc28d4b4c8912c026035` |
| 11 | `instance` | [smulCommClass_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/smulcommclass-left--7ae1383f025d5703cd523bbc.md) | 78 | `declaration-track:7ae1383f025d5703cd523bbce79edd37567190bc9f9c22c046ef0ac6d91d56ea` |
| 12 | `instance` | [smulCommClass_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/smulcommclass-right--186c761e0f10ea08a80fbd1c.md) | 82 | `declaration-track:186c761e0f10ea08a80fbd1c688bbd953efcc875818b42baf0dc1a1efa660fa4` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/instance--9dd3b02aee9b388023a24e1f.md) | 86 | `declaration-track:9dd3b02aee9b388023a24e1fd8c373165b245789510e63f490d1b85716c476df` |
| 14 | `instance` | [mulAction'](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/mulaction--61d8639b63b7295ff5da2ca8.md) | 96 | `declaration-track:61d8639b63b7295ff5da2ca804d56e612e2ba90e1e4edf3faeb9217f3d651899` |
| 15 | `theorem` | [val_smul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/val-smul--a44b6311c9bcb2c807877860.md) | 108 | `result-track:a44b6311c9bcb2c80787786090385757d58b8628e841995d3b1297a0cda457ee` |
| 16 | `theorem` | [smul_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/smul-inv--b1b62692e10c11177c1aea09.md) | 115 | `result-track:b1b62692e10c11177c1aea0968955deaf37396dccf842dab6a6bff3bc973dbde` |
| 17 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/smulcommclass--62c021616cc554925f0586ec.md) | 121 | `declaration-track:62c021616cc554925f0586ec796001bd70783c87816c622815fb848902261d91` |
| 18 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/isscalartower--bdfe1be3560d71bec028d467.md) | 128 | `declaration-track:bdfe1be3560d71bec028d467cdd1a3a199ca42ed1b6b9c2c70499251fdd344dd` |
| 19 | `instance` | [isScalarTower'_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/isscalartower-left--9d9a341b56de3b29c98e59ca.md) | 135 | `declaration-track:9d9a341b56de3b29c98e59ca750ae4b56ffe053d7f75aa8562ce1339c2af4ed7` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/example--6bc3628022fc3b6f62d84028.md) | 141 | `declaration-track:6bc3628022fc3b6f62d84028ca19d87755f63253dd6b4794f5b991446cfb839c` |
| 21 | `instance` | [mulDistribMulAction'](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/muldistribmulaction--bd7990f752b70fa85a58d89a.md) | 146 | `declaration-track:bd7990f752b70fa85a58d89aa4cd7547e672d45f989f516ff26015401c26e0da` |
| 22 | `theorem` | [IsUnit.smul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/declarations/isunit-smul--4f8574a5d04a301f8801cadc.md) | 156 | `result-track:4f8574a5d04a301f8801cadc94f8c2f82846541fc9b6942ba90d8f0b1dc483b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
