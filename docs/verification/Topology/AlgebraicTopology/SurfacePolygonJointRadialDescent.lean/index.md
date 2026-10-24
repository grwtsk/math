# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonJointRadialDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f90474fe5b5c6dc63b6f086873b1d329da48050",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f90474fe5b5c6dc63b6f086873b1d329da48050`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonUnitCircleAttachment`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Constructions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/cornerdiscretetopology--665fe18c9e8bf214b85cedd5.md) | 44 | `declaration-track:665fe18c9e8bf214b85cedd5503ccdaf72d56b6ffdbf05d95ffe13abba003179` |
| 2 | `def` | [perimeterProductProjection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/perimeterproductprojection--cf0e2357aadb2ca5300d3d69.md) | 49 | `declaration-track:cf0e2357aadb2ca5300d3d693b16f55bb43c21f810a9e9dfdd6d3d1311893230` |
| 3 | `def` | [perimeterJointRadialMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/perimeterjointradialmap--b11977b088ba8a549dfd1d9b.md) | 56 | `declaration-track:b11977b088ba8a549dfd1d9bc8fd6de6d2009e736eaeed3667e484409e93d9a7` |
| 4 | `theorem` | [perimeterJointRadialMap_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/perimeterjointradialmap-source--64c24d5cae427a293a69b9b7.md) | 61 | `result-track:64c24d5cae427a293a69b9b77b4d94d7f5433d87e3979687007bc4767ab0fd52` |
| 5 | `theorem` | [perimeterJointRadialMap_comp_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/perimeterjointradialmap-comp-projection--1d5831259b34005172d6a21a.md) | 69 | `result-track:1d5831259b34005172d6a21ad9e9b308dd08d331654db53daf7534b58a8d7266` |
| 6 | `theorem` | [perimeterJointRadialMap_continuous_of_productQuotient](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/perimeterjointradialmap-continuous-of-productquotient--2015ac069cb4f44fd8e144af.md) | 79 | `result-track:2015ac069cb4f44fd8e144af8a58da8421f0c1df5a8f9dfb9ca87650a2f59612` |
| 7 | `theorem` | [perimeterJointRadialMap_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/perimeterjointradialmap-zero--7029d7e9402b7919d5c4302e.md) | 87 | `result-track:7029d7e9402b7919d5c4302ea54bb49a5d69c6223150f99c984b6428f19b50d5` |
| 8 | `theorem` | [perimeterJointRadialMap_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/perimeterjointradialmap-one--b58aecc071ee87b738581428.md) | 94 | `result-track:b58aecc071ee87b738581428f0b7764454f7bea9543d5714d4768f09ef17d95a` |
| 9 | `theorem` | [perimeterJointRadialMap_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/perimeterjointradialmap-radius--d2aef15d8e6fad147bf240c0.md) | 101 | `result-track:d2aef15d8e6fad147bf240c002706aac5316d4efc4ed795e81a99116e281ec41` |
| 10 | `def` | [unitCircleJointRadialMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/unitcirclejointradialmap--0ae502eae981409494f8dd2b.md) | 108 | `declaration-track:0ae502eae981409494f8dd2b7c84ef0f7d672cbcee9e098e1fde71f6bbd8e931` |
| 11 | `theorem` | [unitCircleJointRadialMap_continuous_of_productQuotient](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/unitcirclejointradialmap-continuous-of-productquotient--c4704f708727ef9a2303749b.md) | 115 | `result-track:c4704f708727ef9a2303749bfefc9ed9c6e325e93ee9ccce8a49037d303db523` |
| 12 | `theorem` | [unitCircleJointRadialMap_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/declarations/unitcirclejointradialmap-one--494f4fbea1f532e53895f874.md) | 124 | `result-track:494f4fbea1f532e53895f874a15c03c44abbe5db29d2f4a2db304ac9e252ee83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
