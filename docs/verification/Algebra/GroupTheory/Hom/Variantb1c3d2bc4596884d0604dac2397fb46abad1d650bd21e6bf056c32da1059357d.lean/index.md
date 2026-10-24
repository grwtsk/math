# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dae7d79b1dc17832576a6b1f6c5cb7a517a49d48",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dae7d79b1dc17832576a6b1f6c5cb7a517a49d48`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Pi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distribSMul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/distribsmul--6228720773aa49dfaefffda7.md) | 38 | `declaration-track:6228720773aa49dfaefffda79561cf9d04595a303648097649eea19828b3304c` |
| 2 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/distribmulaction--f5e430b7bbb0be00827c90b8.md) | 46 | `declaration-track:f5e430b7bbb0be00827c90b88675d548db07db3264fded248f06f56a42dd5567` |
| 3 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/coe-smul--ea5ef8f3de4f6ee40ab781b1.md) | 53 | `result-track:ea5ef8f3de4f6ee40ab781b1c759550cb8a51eb62bb2d5dbde0f3abbba00e8b5` |
| 4 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/smul-apply--415d5c00d636c45ab5dd29ab.md) | 56 | `result-track:415d5c00d636c45ab5dd29ab2e76a863db257e4e92a272ea4651f4c474ae823d` |
| 5 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/smulcommclass--fa9d24662c6fe808e4394a87.md) | 60 | `declaration-track:fa9d24662c6fe808e4394a872511dc31bf880617fb10482b55be350c07ff987e` |
| 6 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/isscalartower--52db2177b06cb5f4f832c155.md) | 64 | `declaration-track:52db2177b06cb5f4f832c1559143d3e4808ceeb34aa59c13f95e5d505e749242` |
| 7 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/iscentralscalar--46467cdeab4db25995a6aebe.md) | 68 | `declaration-track:46467cdeab4db25995a6aebece1c47757c57e80205c8b5975cb08d9e10d37e92` |
| 8 | `def` | [smulLeft](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/smulleft--6f6c477e08dc25383208c974.md) | 77 | `declaration-track:6f6c477e08dc25383208c974bf4d59970c5dbff53a0c130c97d97b534918cadb` |
| 9 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/smul--0d45cc59fcf3541eda3ef206.md) | 84 | `declaration-track:0d45cc59fcf3541eda3ef20661a1fef68fa0d402f7986dbfea9d014bfcf437ce` |
| 10 | `theorem` | [coe_smul'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/coe-smul--665e9874602f815a3b335635.md) | 89 | `result-track:665e9874602f815a3b3356351a6c4ad6a41ec9451d6d8551b9e152d17a034adb` |
| 11 | `instance` | [module](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb1c3d2bc4596884d0604dac2397fb46abad1d650bd21e6bf056c32da1059357d.lean/declarations/module--167846ab03ab10a9f2fb89d2.md) | 92 | `declaration-track:167846ab03ab10a9f2fb89d244a3f55391e6700f46d767911b1e7d9d2a40c7b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
