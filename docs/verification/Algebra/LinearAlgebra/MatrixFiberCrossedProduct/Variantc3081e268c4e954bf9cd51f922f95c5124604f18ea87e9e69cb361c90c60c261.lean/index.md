# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixFiberCrossedProduct.Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "468e438cb2994dbbba2f315f43fa2bc0217c3490",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `468e438cb2994dbbba2f315f43fa2bc0217c3490`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.CrossedProduct` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MatrixFiberObservable](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfiberobservable--6733c731714a3bc286c7739c.md) | 28 | `declaration-track:6733c731714a3bc286c7739c67f7506c8739e6fa8cc9fbd6dae7ba591dc3fe86` |
| 2 | `abbrev` | [MatrixFiberCrossedProductElement](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfibercrossedproductelement--e7e8ffe8b5470eaa72a4f070.md) | 34 | `declaration-track:e7e8ffe8b5470eaa72a4f070f0d4b70a98cee4092ea0c7832c260380d9b35f5e` |
| 3 | `def` | [normalizedMatrixTrace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/normalizedmatrixtrace--ddd1dedb3bfa753a5f57f7b0.md) | 41 | `declaration-track:ddd1dedb3bfa753a5f57f7b08de6aeced2507d5f940f0edb455c005014ce7cf6` |
| 4 | `structure` | [MatrixFiberAction](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfiberaction--ff39a3253bcb8f3ca7a07073.md) | 50 | `declaration-track:ff39a3253bcb8f3ca7a07073492d31858da687e58d1ac292d2ec1bad04b196f1` |
| 5 | `def` | [matrixFiberAct](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfiberact--af3e14998678bdb413d69b73.md) | 81 | `declaration-track:af3e14998678bdb413d69b73827a54229224306493e23a4784e73b1ae0bc1ab0` |
| 6 | `def` | [matrixFiberCrossedProductMultiply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfibercrossedproductmultiply--0f29517b4c3a50dd6bfc7c6f.md) | 95 | `declaration-track:0f29517b4c3a50dd6bfc7c6f10a70b2c8931e86dbaae523046a7565ae101a6df` |
| 7 | `def` | [matrixFiberCrossedProductStar](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfibercrossedproductstar--ec6a086996696311ab5cfa23.md) | 113 | `declaration-track:ec6a086996696311ab5cfa23a07192ccd970f8f9f71106968acc1ca947854fb3` |
| 8 | `def` | [matrixFiberCrossedProductUnit](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfibercrossedproductunit--5fdb332b58bbb0d52af819f1.md) | 128 | `declaration-track:5fdb332b58bbb0d52af819f1955fe3f72c85c2cde5600afa1ddeaf9f2bfca88c` |
| 9 | `def` | [matrixFiberGroupElement](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfibergroupelement--eb01d578235c4ce1967649f9.md) | 139 | `declaration-track:eb01d578235c4ce1967649f9a487ae582b1b844bf0e3c6e46020c1b7ebf058f2` |
| 10 | `def` | [canonicalMatrixFiberCrossedProductTrace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/canonicalmatrixfibercrossedproducttrace--7caab740affe87d90be74fd4.md) | 155 | `declaration-track:7caab740affe87d90be74fd44094578e1867d54eb146a676f273e090fd15a391` |
| 11 | `structure` | [MatrixFiberCrossedProductLawCertificate](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfibercrossedproductlawcertificate--a78e2b52f411fe81eaa164e9.md) | 167 | `declaration-track:a78e2b52f411fe81eaa164e9fa41758971582fd9ad4ed01bbd650114f2d4ceb4` |
| 12 | `structure` | [MatrixFiberCrossedProductModel](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfibercrossedproductmodel--ad0794100fb5bbfc9dbe22e9.md) | 292 | `declaration-track:ad0794100fb5bbfc9dbe22e9de351368402e7f14fb768a546740157f67e9b8eb` |
| 13 | `theorem` | [canonicalMatrixFiberTrace_conjugationInvariant](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/canonicalmatrixfibertrace-conjugationinvariant--338e210844fd8e2ed641a0b3.md) | 303 | `result-track:338e210844fd8e2ed641a0b393742a990358781a24d7f8ef6bac113052eb0c00` |
| 14 | `structure` | [MatrixFiberCrossedProductRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variantc3081e268c4e954bf9cd51f922f95c5124604f18ea87e9e69cb361c90c60c261.lean/declarations/matrixfibercrossedproductrepresentation--49e2633f22e9fbc12cec31f7.md) | 333 | `declaration-track:49e2633f22e9fbc12cec31f70803097a2c3e5af6354e78188bf05e958128c121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
