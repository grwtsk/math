# Verification target: GRWTSK.Algebra.LinearAlgebra.IsometryEquiv.Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "535a529f12a4aea1c0d0da22f0fecd966e7cdd1e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `535a529f12a4aea1c0d0da22f0fecd966e7cdd1e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Isometry` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/isometryequiv--3ea3b3e13a208455a22edbf7.md) | 37 | `declaration-track:3ea3b3e13a208455a22edbf7b2c2cf1fa53575d38a06dff101047b0095a715fe` |
| 2 | `def` | [Equivalent](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/equivalent--2ca16e6d479b7268e07e8aa9.md) | 44 | `declaration-track:2ca16e6d479b7268e07e8aa9c6f86e15dc81bcda3eaabf6e5ba85fb04806dfe8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/instance--9ae7e20a238a53d6b46b69dd.md) | 51 | `declaration-track:9ae7e20a238a53d6b46b69ddaa3bffe699bd5d715c23b4165f62a4880464e601` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/instance--c1f69c7ca6547114a3b823cf.md) | 58 | `declaration-track:c1f69c7ca6547114a3b823cf5528eef2a731983677eb1d0fd147b2ce37270745` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/instance--e740e995ba396d4ab13db47e.md) | 63 | `declaration-track:e740e995ba396d4ab13db47e354b145247303fdcafd7156a5950c7ab6a6c3a2b` |
| 6 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/coe-tolinearequiv--5e410ab182f660f8ebb2ceff.md) | 67 | `result-track:5e410ab182f660f8ebb2ceff9509f477f7172b1d2a6d65b7ef2783176a78e4c9` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/map-app--3772b3a1aa946a4b82ae837b.md) | 71 | `result-track:3772b3a1aa946a4b82ae837bd12731fb01d0fbe8b7dbb0beb2246e15a9edb6dc` |
| 8 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/refl--8e6e4ce8390417c511fdb386.md) | 76 | `declaration-track:8e6e4ce8390417c511fdb386d3e63971b24cc1ac49a7828fc485d22a1601d032` |
| 9 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/symm--1a1b67bcd810eba37c4f9df6.md) | 81 | `declaration-track:1a1b67bcd810eba37c4f9df6681c471a79484ff59de258a24222a62687e2d906` |
| 10 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/trans--dea0030ccac2a1430b0c55d8.md) | 87 | `declaration-track:dea0030ccac2a1430b0c55d88cd75ade494a797a1dffbe832d3e25843f089408` |
| 11 | `def` | [toIsometry](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/toisometry--00183871bf835096b5e8aef9.md) | 93 | `declaration-track:00183871bf835096b5e8aef9bcdf97b381786407cc22a535a07501761a957095` |
| 12 | `theorem` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/refl--465794c8cd162de3440b8734.md) | 104 | `result-track:465794c8cd162de3440b8734ef115a816527306732aed90c5de19ff7569baab2` |
| 13 | `theorem` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/symm--ec9449e6b059897a7a1b1f68.md) | 108 | `result-track:ec9449e6b059897a7a1b1f68c511fac4c557d61f2b85e0054a2109884a8e061f` |
| 14 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/trans--0f099600e5542190e352939e.md) | 112 | `result-track:0f099600e5542190e352939e44efc364edd38bd2417a9355ce66a5b48989eb32` |
| 15 | `def` | [isometryEquivOfCompLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/isometryequivofcomplinearequiv--d6b4f10221b74cd4e7905e08.md) | 118 | `declaration-track:d6b4f10221b74cd4e7905e08aef783cce00642d4ce96f324a0db20223ad505f5` |
| 16 | `def` | [isometryEquivBasisRepr](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/isometryequivbasisrepr--3343b4c00a59c58f2e58aa6e.md) | 129 | `declaration-track:3343b4c00a59c58f2e58aa6e44d9c4fdf06383f67e17859a3f894548260076c9` |
| 17 | `def` | [isometryEquivWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/isometryequivweightedsumsquares--741e051975a03b960fb39f7c.md) | 140 | `declaration-track:741e051975a03b960fb39f7c8d8d84b5f47d9c94caa50c7d86b07450fd30365c` |
| 18 | `theorem` | [equivalent_weightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/equivalent-weightedsumsquares--47a5372ee5c39bb2bdc6b1c6.md) | 153 | `result-track:47a5372ee5c39bb2bdc6b1c6e1243f6131960c3650150477790bf3b324399068` |
| 19 | `theorem` | [equivalent_weightedSumSquares_units_of_nondegenerate'](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant90ce67ebc0478916b7f83a4ba5319fec56ec6ac8d8242dd8bcc2e85b88dca22e.lean/declarations/equivalent-weightedsumsquares-units-of-nondegenerate--b1ae335236cb32f55d0feabd.md) | 158 | `result-track:b1ae335236cb32f55d0feabd770f16631f23a6d2133b8aaaf76b889b48e4db07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
