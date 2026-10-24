# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMCoordinateHodge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "320dc84dd983c31aa3d51c85160e7bea2605d4b2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `320dc84dd983c31aa3d51c85160e7bea2605d4b2`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMGaloisIndex`](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [holomorphicPart](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/holomorphicpart--96b811b71e553dad13804045.md) | 40 | `declaration-track:96b811b71e553dad13804045d5b124ef6fbfe656085eac6338e0420b446a847b` |
| 2 | `def` | [antiholomorphicPart](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/antiholomorphicpart--39f3ae3dd24d7d6de439f087.md) | 51 | `declaration-track:39f3ae3dd24d7d6de439f0878fa1ea0b2392dcb08e9e922a02cfbabf234c39a8` |
| 3 | `def` | [holomorphicProjector](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/holomorphicprojector--7ebbe0b752b272f8e67b7658.md) | 62 | `declaration-track:7ebbe0b752b272f8e67b76587e343a146677cdd52b7a78a0e6a0bb42360eba94` |
| 4 | `def` | [antiholomorphicProjector](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/antiholomorphicprojector--ca3a6b7088c93cc76630cf47.md) | 72 | `declaration-track:ca3a6b7088c93cc76630cf472453746c521be14598222e111c192f253c7d0b8a` |
| 5 | `theorem` | [holomorphicProjector_mem](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/holomorphicprojector-mem--8b1322352bb8b234e22a906a.md) | 81 | `result-track:8b1322352bb8b234e22a906a810cd1beeaf37a0da9321053d40cbbafe53176c9` |
| 6 | `theorem` | [antiholomorphicProjector_mem](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/antiholomorphicprojector-mem--f8197621bcebc87d98c0bc2c.md) | 86 | `result-track:f8197621bcebc87d98c0bc2ca8e7dafdc1a8eba889799254eb3de96d9a09a5f2` |
| 7 | `theorem` | [holomorphicProjector_same](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/holomorphicprojector-same--ab770fc7690300a3d0e502f5.md) | 91 | `result-track:ab770fc7690300a3d0e502f5b67eb1795530e921c2f26dee4c9a48d44e6ce8df` |
| 8 | `theorem` | [antiholomorphicProjector_same](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/antiholomorphicprojector-same--4e4bbf4c205bc5c11c9a61ee.md) | 100 | `result-track:4e4bbf4c205bc5c11c9a61ee5497cf23de369342d0347da97efa2e9646cbdb45` |
| 9 | `theorem` | [projector_sum](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/projector-sum--43562fe065bd96e1a564a474.md) | 109 | `result-track:43562fe065bd96e1a564a47496e2c2ed659864f681f107de97819e0fe27cb8d8` |
| 10 | `theorem` | [hodgePieces_isCompl](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/hodgepieces-iscompl--1b979cc8c690d9cc71a00f53.md) | 116 | `result-track:1b979cc8c690d9cc71a00f534bf4a33e2d616dc25d7efcf62aa8621eb1539ce5` |
| 11 | `def` | [realConj](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/realconj--0d5e360c32e6521ddd1ea554.md) | 133 | `declaration-track:0d5e360c32e6521ddd1ea55449097ddde7689a8c0134a85a9e8e84cd8d0a6872` |
| 12 | `theorem` | [realConj_involutive](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/realconj-involutive--a8efda95fa4ffc5aa5abadac.md) | 137 | `result-track:a8efda95fa4ffc5aa5abadac52453940f763f5fa339e20f5c063c9ae1afd1b9c` |
| 13 | `theorem` | [realConj_holomorphic_mem](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/realconj-holomorphic-mem--16fe97a5c99ea8b2292da462.md) | 143 | `result-track:16fe97a5c99ea8b2292da4626e8eabacbdeb359b2b4bf64787882fab7c255d0d` |
| 14 | `theorem` | [realConj_antiholomorphic_mem](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/realconj-antiholomorphic-mem--e2a669a88769f9a8586efad4.md) | 153 | `result-track:e2a669a88769f9a8586efad4622b4543a0af44a213e5064b3da21204330f164a` |
| 15 | `def` | [weilOperator](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/weiloperator--e454dd462f53cc2a9ecc404d.md) | 163 | `declaration-track:e454dd462f53cc2a9ecc404d725c99009a72504e7740dabfac62abc749047dd3` |
| 16 | `theorem` | [weilOperator_sq](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/weiloperator-sq--45145dbf777bb2e69fe03107.md) | 173 | `result-track:45145dbf777bb2e69fe03107063030bc24344d3a32a07722b5ea407cf91b88cf` |
| 17 | `theorem` | [weilOperator_holomorphic](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/weiloperator-holomorphic--bcd8100213261713a6064a4f.md) | 180 | `result-track:bcd8100213261713a6064a4f10b9097e764711db6148e6a2e3f27678d87f8cd8` |
| 18 | `theorem` | [weilOperator_antiholomorphic](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/weiloperator-antiholomorphic--a027447e6450e46b3ce90db9.md) | 190 | `result-track:a027447e6450e46b3ce90db9165ad437f7adcf6afbe001151e1931f422ab2e28` |
| 19 | `theorem` | [realConj_weilOperator](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/realconj-weiloperator--ecec38c1cde7ba01b071871d.md) | 200 | `result-track:ecec38c1cde7ba01b071871d92f41ec688ac061f7ab79ccedfa6478304bc5bfa` |
| 20 | `structure` | [CoordinateWeightOneHodgeProfile](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/coordinateweightonehodgeprofile--7045f38a11051e1f77c9b492.md) | 216 | `declaration-track:7045f38a11051e1f77c9b492fbe328374f74d16ea8a72b35f1f9e3c12648b271` |
| 21 | `def` | [coordinateHodgeProfile](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/declarations/coordinatehodgeprofile--b50eb1b77cc127f340491904.md) | 230 | `declaration-track:b50eb1b77cc127f340491904332ff0d83e054683baefa0a34a270a9f847fbf6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
