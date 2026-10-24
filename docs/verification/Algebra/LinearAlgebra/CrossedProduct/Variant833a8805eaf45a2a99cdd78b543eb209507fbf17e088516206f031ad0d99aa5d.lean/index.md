# Verification target: GRWTSK.Algebra.LinearAlgebra.CrossedProduct.Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9299207e9247677f0feff159ea73f26cd5806f0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9299207e9247677f0feff159ea73f26cd5806f0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.GroupAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ConjTranspose` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MatrixFiber](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/matrixfiber--cdc76a6135dcc627a87f9060.md) | 25 | `declaration-track:cdc76a6135dcc627a87f90609498ff8d99dcd78d07d51e9bc7b8c8da1cc89ccf` |
| 2 | `def` | [normalizedMatrixTrace](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/normalizedmatrixtrace--61f5c4dc9931e287e045a9f2.md) | 28 | `declaration-track:61f5c4dc9931e287e045a9f277f9c01a680357dcba12efd8365c96cb60d71205` |
| 3 | `structure` | [UnitaryMatrixFiberRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/unitarymatrixfiberrepresentation--f3535d6f1acd075cd9d458e1.md) | 33 | `declaration-track:f3535d6f1acd075cd9d458e19c6c0e5ebab47f9c7e017becc3450291816bb3d8` |
| 4 | `structure` | [MatrixFiberCrossedProductElement](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/matrixfibercrossedproductelement--a4463638b9ae4a86201214e6.md) | 55 | `declaration-track:a4463638b9ae4a86201214e6e65da6e9f01cabfd73cc20257e1b8f651dc1d46a` |
| 5 | `structure` | [CrossedProductElement](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/crossedproductelement--f4975a1d25838a4efbc84bf0.md) | 63 | `declaration-track:f4975a1d25838a4efbc84bf0d811def61e07e717b1870e04a441158b34e2a602` |
| 6 | `def` | [CrossedProductElement.zero](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/crossedproductelement-zero--be8b9d9ff81e59cc524844a0.md) | 70 | `declaration-track:be8b9d9ff81e59cc524844a03980eca671f2c6872fa4e9bcb185ed5d4a6d4947` |
| 7 | `def` | [CrossedProductElement.add](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/crossedproductelement-add--2aa1047ac884d44979555691.md) | 78 | `declaration-track:2aa1047ac884d44979555691db0dbba0c495bc78f2504106e9245eb1c2540f5a` |
| 8 | `def` | [CrossedProductElement.scale](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/crossedproductelement-scale--cf4a71579bd0fb3addc39f2f.md) | 91 | `declaration-track:cf4a71579bd0fb3addc39f2fdf9b0d77b9957a3e00e519db033c2c3715c7e753` |
| 9 | `structure` | [CrossedProductRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/crossedproductrepresentation--686222b8f5d6afac2e72192f.md) | 102 | `declaration-track:686222b8f5d6afac2e72192fc85c2618a2f1d3930a684ac5692fd153fce1d8a2` |
| 10 | `def` | [matrixFiberAction](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/matrixfiberaction--15958fca762054d40393d067.md) | 108 | `declaration-track:15958fca762054d40393d067f3104166a50c60e564cd28568a524def20c23e74` |
| 11 | `theorem` | [normalizedMatrixTrace_matrixFiberAction](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/normalizedmatrixtrace-matrixfiberaction--efa54e44b5fa28c4699ad110.md) | 125 | `result-track:efa54e44b5fa28c4699ad1107fa1cd47cac1249f28d42ac521ab80c30ffb84e6` |
| 12 | `def` | [CrossedProductRepresentation.apply](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/crossedproductrepresentation-apply--50cd1ca0daf736edc39e1aa2.md) | 147 | `declaration-track:50cd1ca0daf736edc39e1aa2876d763b3b7d5d7ffdd2bd579b3c65a0c5922121` |
| 13 | `structure` | [CrossedProductOperatorProfile](../../../../../mathematics/Algebra/LinearAlgebra/CrossedProduct/Variant833a8805eaf45a2a99cdd78b543eb209507fbf17e088516206f031ad0d99aa5d.lean/declarations/crossedproductoperatorprofile--390e183193b025592e783fe7.md) | 160 | `declaration-track:390e183193b025592e783fe799098b2ded105eb7d1627b189f865ddbb5a10bfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
