# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81c7982bd3ae62722bb131e2b1dac89ea298c8e0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81c7982bd3ae62722bb131e2b1dac89ea298c8e0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean.json)

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
| 1 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/tomatrix--500591968e4f91153ccae5ea.md) | 50 | `declaration-track:500591968e4f91153ccae5eaefc2f63725d09bb5e16e6410b1b9dc6f023c1283` |
| 2 | `theorem` | [toMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/tomatrix-apply--a18334a6da145bebf71c5a75.md) | 54 | `result-track:a18334a6da145bebf71c5a753115be64b2eff80811d633fe286e4041479af46d` |
| 3 | `theorem` | [toMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/tomatrix-self--741f03b407ac70b687b0c566.md) | 58 | `result-track:741f03b407ac70b687b0c566ae643a8cba03db13bf5ddf2233de48f10fd07e07` |
| 4 | `theorem` | [toMatrix_row_sum_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/tomatrix-row-sum-one--b071812cd54020269d82bb21.md) | 64 | `result-track:b071812cd54020269d82bb214bef44e98413b0f12763970068f94b059b0b827e` |
| 5 | `theorem` | [affineIndependent_of_toMatrix_right_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/affineindependent-of-tomatrix-right-inv--925a7845c12d133824794216.md) | 69 | `result-track:925a7845c12d13382479421622318c365ad1afdbfa45b8ef6f97c1d5fd8757c3` |
| 6 | `theorem` | [affineSpan_eq_top_of_toMatrix_left_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/affinespan-eq-top-of-tomatrix-left-inv--fa764fcbdd0627c98aa5721a.md) | 86 | `result-track:fa764fcbdd0627c98aa5721a2890f8ee955ad8dae4745ba6a153a38e97118ff2` |
| 7 | `theorem` | [toMatrix_vecMul_coords](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/tomatrix-vecmul-coords--3b13d1c6bc987cb197148e39.md) | 118 | `result-track:3b13d1c6bc987cb197148e39ee40f06362bbbc34560439d90376e1d3e2b94ec1` |
| 8 | `theorem` | [toMatrix_mul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/tomatrix-mul-tomatrix--104638dafd01d21a9f2b7e38.md) | 127 | `result-track:104638dafd01d21a9f2b7e386b63f6c257d530a10e347620b237ef988d5e27cd` |
| 9 | `theorem` | [isUnit_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/isunit-tomatrix--7bc8a8c0d78a7bc31bf135de.md) | 132 | `result-track:7bc8a8c0d78a7bc31bf135deb2997395c4de21bc158055c66039a49fb08a9122` |
| 10 | `theorem` | [isUnit_toMatrix_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/isunit-tomatrix-iff--fcd9943603668909e021e811.md) | 138 | `result-track:fcd9943603668909e021e811eee4c992d036ec550ec7a23a03748eff904eb850` |
| 11 | `theorem` | [toMatrix_inv_vecMul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/tomatrix-inv-vecmul-tomatrix--8364eee9cdd89f1d5917a117.md) | 160 | `result-track:8364eee9cdd89f1d5917a11765c339a7f72b706185549d094fc3972f37349ad3` |
| 12 | `theorem` | [det_smul_coords_eq_cramer_coords](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant3c63de257a498bc842f198482e2d338e260eb317fd87b72c90f03f1570f92e47.lean/declarations/det-smul-coords-eq-cramer-coords--bd60c91a4afd285561d3adeb.md) | 169 | `result-track:bd60c91a4afd285561d3adeb4bc4c911fd21d271f30e4286525f49b1df27a280` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
