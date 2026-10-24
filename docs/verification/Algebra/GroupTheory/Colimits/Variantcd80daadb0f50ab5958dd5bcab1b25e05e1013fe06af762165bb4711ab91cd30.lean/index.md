# Verification target: GRWTSK.Algebra.GroupTheory.Colimits.Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c4f1a087b79bdecdb789b84d26a5f115978668",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c4f1a087b79bdecdb789b84d26a5f115978668`.

Source path: `GRWTSK/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean.json)

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
| 1 | `inductive` | [Prequotient](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/prequotient--b2895192d73bf19c1952218d.md) | 73 | `declaration-track:b2895192d73bf19c1952218d306e0658f18e8cb95f13692056d626963f8bf991` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/instance--a7687055bf1265f142338232.md) | 80 | `declaration-track:a7687055bf1265f1423382325b24c22718e1b575ca54220010310b0e5e75507f` |
| 3 | `inductive` | [Relation](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/relation--af82fbcdfeaf8010f89e6b0d.md) | 89 | `declaration-track:af82fbcdfeaf8010f89e6b0d772cf69bb26aadd699b45c2a64a7c6b78ddefb0d` |
| 4 | `instance` | [colimitSetoid](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/colimitsetoid--a51d758ef06b49868dd0e611.md) | 110 | `declaration-track:a51d758ef06b49868dd0e6117e2eb60a8f4d2e83970b1cc654dd6512560a219c` |
| 5 | `def` | [ColimitType](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/colimittype--1bfb435beb9a5c4a02b879fa.md) | 116 | `declaration-track:1bfb435beb9a5c4a02b879faea0cca7d231b6f06a390da448207f6871080b24b` |
| 6 | `instance` | [monoidColimitType](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/monoidcolimittype--dd891a8ad9d0f1e60404bb16.md) | 120 | `declaration-track:dd891a8ad9d0f1e60404bb16deda8ebb8fffea27d9a19ac26d255a984bcb64da` |
| 7 | `theorem` | [quot_one](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/quot-one--3ddb3743dea141449d8bdad5.md) | 130 | `result-track:3ddb3743dea141449d8bdad55c93306e7f3eec974f883bba7e836f488726f4c3` |
| 8 | `theorem` | [quot_mul](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/quot-mul--9e07b2d0cfce1a97821e6501.md) | 134 | `result-track:9e07b2d0cfce1a97821e650156411a91e7e8cda2c4050e178c90a36ef1479d9a` |
| 9 | `def` | [colimit](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/colimit--f89cff5864d91a2d692a704b.md) | 140 | `declaration-track:f89cff5864d91a2d692a704b2188269e81cc6406ac57bc36308e079dbe5ecb48` |
| 10 | `def` | [coconeFun](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/coconefun--57606ea1e0b08691e9a876e8.md) | 144 | `declaration-track:57606ea1e0b08691e9a876e8ba56c25376353f8be715c0b6c7ce64f8bfd15929` |
| 11 | `def` | [coconeMorphism](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/coconemorphism--3cfd28d71066192234b504aa.md) | 148 | `declaration-track:3cfd28d71066192234b504aa68a26d572f74aafc5e3ef9a669f67d86c6c72e06` |
| 12 | `theorem` | [cocone_naturality](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/cocone-naturality--fb26dba7bfc99e9c1c98256a.md) | 155 | `result-track:fb26dba7bfc99e9c1c98256ad2c196397058c168d456c7968e09a189609b2296` |
| 13 | `theorem` | [cocone_naturality_components](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/cocone-naturality-components--cbf535b176a9783563965e36.md) | 162 | `result-track:cbf535b176a9783563965e363ea2c643fbc56d38a6bc8a930db965e5e492e754` |
| 14 | `def` | [colimitCocone](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/colimitcocone--64f7591e8df38d827c61173a.md) | 169 | `declaration-track:64f7591e8df38d827c61173a3630c05e7366da542c63bb0ba0d94cb7accdb140` |
| 15 | `def` | [descFunLift](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/descfunlift--ff0ccf7c8c382fa5372e33e1.md) | 175 | `declaration-track:ff0ccf7c8c382fa5372e33e115d6de04bdefdb0dbe1caa354469fc0bf57e5902` |
| 16 | `def` | [descFun](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/descfun--1a521b427574396993254df6.md) | 181 | `declaration-track:1a521b427574396993254df6c7d3e95d779f7f73b8252fcf855900e7c21ee1a1` |
| 17 | `def` | [descMorphism](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/descmorphism--85d791d108fbbce29424cd88.md) | 199 | `declaration-track:85d791d108fbbce29424cd8874ead39cc16c7550f2619fb08c677c6af42d511b` |
| 18 | `def` | [colimitIsColimit](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/colimitiscolimit--fa2f15443205f0b0d4d2da71.md) | 210 | `declaration-track:fa2f15443205f0b0d4d2da716a896cc6315c8de9500f8039b6dd32ee986f8cb1` |
| 19 | `instance` | [hasColimits_monCat](../../../../../mathematics/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/declarations/hascolimits-moncat--8bf1efafc26605e7c9dd4d98.md) | 227 | `declaration-track:8bf1efafc26605e7c9dd4d98182ec05480c59f73c7543d5eef60498e0d098fde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
