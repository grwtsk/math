# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageFrame

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e55a8b760ba59372b97bf820104905d63ab7dbf",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e55a8b760ba59372b97bf820104905d63ab7dbf`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassIntegralImage`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [branch](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/branch--cf5c17dbf767b980fa9b9881.md) | 23 | `declaration-track:cf5c17dbf767b980fa9b98812608898ce31c2e35cf9447dda87d05a10834a50c` |
| 2 | `theorem` | [branch_square_dvd](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/branch-square-dvd--3794aa68066f7257385f768b.md) | 25 | `result-track:3794aa68066f7257385f768b9b8ad3e57a26e1d4502df29e4d140a56fe596c6d` |
| 3 | `theorem` | [branch_second](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/branch-second--e84244edca8b8e5535b0aef4.md) | 31 | `result-track:e84244edca8b8e5535b0aef40deff9d76839714d0b4bb7e5ab9b8c37f7ba3f49` |
| 4 | `def` | [framePolynomial](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/framepolynomial--f02fec890a9d091d983d50ea.md) | 38 | `declaration-track:f02fec890a9d091d983d50eaa9f7950e344bc9dfd633cd6bcbb4ee47ddeb6c59` |
| 5 | `theorem` | [column_factor](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/column-factor--62f7d7cd47f7cb80b5d64909.md) | 42 | `result-track:62f7d7cd47f7cb80b5d649093a64686ae674682af428752a0de0fdbf2a01de78` |
| 6 | `theorem` | [column_low](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/column-low--c5149f3e62b2b3c93bf750d4.md) | 61 | `result-track:c5149f3e62b2b3c93bf750d4a6c980c96c6a07b26d142627105d63b6a58f28ba` |
| 7 | `theorem` | [column_diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/column-diagonal--e28631601a55621e863d68dc.md) | 67 | `result-track:e28631601a55621e863d68dc450fd5497133fd72322a085926ff0fc1201f0463` |
| 8 | `def` | [frameMatrix](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/framematrix--572d385d059f38762a33cbd3.md) | 74 | `declaration-track:572d385d059f38762a33cbd3f938b44ec6e93c33a2f99f6f9c9cf628a4219ca9` |
| 9 | `def` | [weightSum](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/weightsum--aa9a07cb26b51550d5804494.md) | 77 | `declaration-track:aa9a07cb26b51550d58044942c668c44add55b7296046fdddb2901be95551a82` |
| 10 | `theorem` | [weightSum_succ](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/weightsum-succ--4bf460374cbf660ec40c3a22.md) | 79 | `result-track:4bf460374cbf660ec40c3a2212a7cb7ef68ec6944274ebef3b72f277b434fc65` |
| 11 | `theorem` | [weightSum_even](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/weightsum-even--913aca757ae324eb6a352bbe.md) | 82 | `result-track:913aca757ae324eb6a352bbe45452748d2ef64d19ba50b1c5cf11b46f5eb22d1` |
| 12 | `theorem` | [weightSum_odd](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/weightsum-odd--4266c7c87d1c3cd67f30e673.md) | 90 | `result-track:4266c7c87d1c3cd67f30e6730e8becf39559094e9d21c44a23f1e037c2c57783` |
| 13 | `theorem` | [weightSum_formula](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/weightsum-formula--b637f649efb1a4974360391a.md) | 96 | `result-track:b637f649efb1a4974360391a788e0f10bc1933e07e653c506616e390c80b246e` |
| 14 | `theorem` | [frame_lower](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/frame-lower--a7a19865c5ccef7808f23965.md) | 110 | `result-track:a7a19865c5ccef7808f23965f92e6443ea2f7df9bc76a42cc1309c20d72e39c7` |
| 15 | `theorem` | [frame_determinant](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/frame-determinant--bb12c04a0a2c6ea3c78ee351.md) | 116 | `result-track:bb12c04a0a2c6ea3c78ee351eb36db6b9e14a376635c77c171ac6f72b1305db2` |
| 16 | `theorem` | [frame_determinant_ne_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/frame-determinant-ne-zero--50589ca26e56492f5f41c412.md) | 122 | `result-track:50589ca26e56492f5f41c412d038df07d39f2b631ab0fda2b25381e04ac27414` |
| 17 | `theorem` | [frame_represents](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/declarations/frame-represents--1eff4c0ed7ca42799c615563.md) | 129 | `result-track:1eff4c0ed7ca42799c615563f789366400ff0b16df86b4e4442fd356341c45b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
