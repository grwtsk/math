# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixFiberCrossedProduct.Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "680f8bbf6ebe939e47f2950c26f7690e61a82c7e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `680f8bbf6ebe939e47f2950c26f7690e61a82c7e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.CrossedProduct` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MatrixFiberObservable](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfiberobservable--bcdd99dca3b85db766a47841.md) | 20 | `declaration-track:bcdd99dca3b85db766a47841353145db2d49c52e604a5c31cba200d1beeec9ec` |
| 2 | `abbrev` | [MatrixFiberCrossedProductElement](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfibercrossedproductelement--e7f24d6e84bbfad42d1bf614.md) | 26 | `declaration-track:e7f24d6e84bbfad42d1bf61434b39535c496243efdbf000f64d830ebe157d3c8` |
| 3 | `def` | [normalizedMatrixTrace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/normalizedmatrixtrace--f16aed9066ac90dc3a3eaff3.md) | 33 | `declaration-track:f16aed9066ac90dc3a3eaff33b6428dc9acded6259cbd632210abb8a60e0bee8` |
| 4 | `structure` | [MatrixFiberAction](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfiberaction--7f7c93488f94ff9f315db0c8.md) | 42 | `declaration-track:7f7c93488f94ff9f315db0c8f7273e9376ebb75ecf83dd804ce13b79b79aadd9` |
| 5 | `def` | [matrixFiberAct](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfiberact--ebb4d20d33c8a526c6814d15.md) | 73 | `declaration-track:ebb4d20d33c8a526c6814d15e31f841697629c77e68d76d26e3abfb6850ea048` |
| 6 | `def` | [matrixFiberCrossedProductMultiply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfibercrossedproductmultiply--ab643535a1bd69ac7dab32a0.md) | 87 | `declaration-track:ab643535a1bd69ac7dab32a054881aa9122634012b37557d416dfe95f881dda1` |
| 7 | `def` | [matrixFiberCrossedProductStar](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfibercrossedproductstar--e3cb2252d8f6c0f3f507e6bc.md) | 105 | `declaration-track:e3cb2252d8f6c0f3f507e6bc7966e96e6530fac2002fae55b849421604d07c14` |
| 8 | `def` | [matrixFiberCrossedProductUnit](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfibercrossedproductunit--0a274cf7e948d9e2835a6a7a.md) | 120 | `declaration-track:0a274cf7e948d9e2835a6a7a147151ae27c01367fe2aabede90c38fa754f66ff` |
| 9 | `def` | [matrixFiberGroupElement](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfibergroupelement--7fb59633a0cced1695631f11.md) | 131 | `declaration-track:7fb59633a0cced1695631f114d0ba1b6a9fbfcc365cea3fe6225951ab3d198ca` |
| 10 | `def` | [canonicalMatrixFiberCrossedProductTrace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/canonicalmatrixfibercrossedproducttrace--5d0f745bad75c91985c07a10.md) | 147 | `declaration-track:5d0f745bad75c91985c07a1033e6e37196bfb5c8371e635365098c7a9d3960b9` |
| 11 | `structure` | [MatrixFiberCrossedProductLawCertificate](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfibercrossedproductlawcertificate--482e991fe3f25fdeba622484.md) | 159 | `declaration-track:482e991fe3f25fdeba6224847bbdede65173c50d37064c786f12beef6a23233c` |
| 12 | `structure` | [MatrixFiberCrossedProductModel](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfibercrossedproductmodel--662269daeda92c5975f4ae7e.md) | 284 | `declaration-track:662269daeda92c5975f4ae7e81c9af974e03e97439e997164cc28f2e93e8022e` |
| 13 | `theorem` | [canonicalMatrixFiberTrace_conjugationInvariant](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/canonicalmatrixfibertrace-conjugationinvariant--dba076de4925d547d0c58b72.md) | 295 | `result-track:dba076de4925d547d0c58b72b60647a7bdfa08dd5417426deae75dcc77cae575` |
| 14 | `structure` | [MatrixFiberCrossedProductRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/declarations/matrixfibercrossedproductrepresentation--b87d7ca75cb9953eb1eedb9a.md) | 325 | `declaration-track:b87d7ca75cb9953eb1eedb9a2859e395b741d2c49a8eea151b9288af3646bd3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
