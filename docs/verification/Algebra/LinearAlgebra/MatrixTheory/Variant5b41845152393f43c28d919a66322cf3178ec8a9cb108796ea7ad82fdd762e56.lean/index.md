# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1320ca151c05a668dda0f4813c8415ef9e5c16ca",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1320ca151c05a668dda0f4813c8415ef9e5c16ca`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean.json)

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
| 1 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/tomatrix--cc578b6dfd2983bd193315e5.md) | 42 | `declaration-track:cc578b6dfd2983bd193315e548b6bf46aed0886983af978080e2970c87cbfb75` |
| 2 | `theorem` | [toMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/tomatrix-apply--416d79d9f8c5371bc16257c5.md) | 46 | `result-track:416d79d9f8c5371bc16257c530e71d669001bb87791a11c190edd5020a7a5ae4` |
| 3 | `theorem` | [toMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/tomatrix-self--e42acb9ed12658d863a0cbde.md) | 50 | `result-track:e42acb9ed12658d863a0cbdead3a7f4c8eb2ba7b7f0d64958ec2123452244f55` |
| 4 | `theorem` | [toMatrix_row_sum_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/tomatrix-row-sum-one--7d57fe0d685a8d632b22b951.md) | 56 | `result-track:7d57fe0d685a8d632b22b951db65a4155a6d809863d5199e6876c9fd4f41e427` |
| 5 | `theorem` | [affineIndependent_of_toMatrix_right_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/affineindependent-of-tomatrix-right-inv--bd788a6ede6cd67a65838c72.md) | 61 | `result-track:bd788a6ede6cd67a65838c72e1a080393bd9340cf97c1702df7b58f080b240df` |
| 6 | `theorem` | [affineSpan_eq_top_of_toMatrix_left_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/affinespan-eq-top-of-tomatrix-left-inv--8c475f63a9517481832867de.md) | 78 | `result-track:8c475f63a9517481832867dea1ddbe204cbe61dd78429a5d721e76e16913ea87` |
| 7 | `theorem` | [toMatrix_vecMul_coords](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/tomatrix-vecmul-coords--4825ae3ca641b2300f76a59d.md) | 110 | `result-track:4825ae3ca641b2300f76a59dcd955b009b600ee070bc3eba3dd2ac93b3034ea0` |
| 8 | `theorem` | [toMatrix_mul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/tomatrix-mul-tomatrix--72cc4e9ea16b0cbd7fc4dac9.md) | 119 | `result-track:72cc4e9ea16b0cbd7fc4dac9f3177dcd4449ae0c73f157e9ba8da3ad77a1af97` |
| 9 | `theorem` | [isUnit_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/isunit-tomatrix--33084a05eab96fb34372ef2e.md) | 124 | `result-track:33084a05eab96fb34372ef2e0612d0b8decc87cfc2495bedb4768f283b2bec9b` |
| 10 | `theorem` | [isUnit_toMatrix_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/isunit-tomatrix-iff--cc2d67d107803fc84952c407.md) | 130 | `result-track:cc2d67d107803fc84952c40763ad1bc4597cba2454cf28d4bda95b1a1df6af9e` |
| 11 | `theorem` | [toMatrix_inv_vecMul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/tomatrix-inv-vecmul-tomatrix--8b1d439a956dfc872560eade.md) | 152 | `result-track:8b1d439a956dfc872560eade0460e145a8bc74009e4e7d6ab6c332e0ebcc5a39` |
| 12 | `theorem` | [det_smul_coords_eq_cramer_coords](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/declarations/det-smul-coords-eq-cramer-coords--988c59c08271d430e60c80c6.md) | 161 | `result-track:988c59c08271d430e60c80c6f514a4173bbced421c366cb2fb0e4155ddcbb9f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
