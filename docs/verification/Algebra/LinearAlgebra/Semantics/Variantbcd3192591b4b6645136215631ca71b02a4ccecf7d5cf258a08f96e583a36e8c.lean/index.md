# Verification target: GRWTSK.Algebra.LinearAlgebra.Semantics.Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96a1958e3fd91d98ca665ff27ed48cd2fd9c6d23",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96a1958e3fd91d98ca665ff27ed48cd2fd9c6d23`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 8; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitField](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/bitfield--f8fb03a900f7dd4a062ad024.md) | 27 | `declaration-track:f8fb03a900f7dd4a062ad024f979f3b5c6eb738ec1c1cb93ac861710ba00d533` |
| 2 | `def` | [BitField.bitAt](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/bitfield-bitat--05018fd89d995d91d9f12880.md) | 32 | `declaration-track:05018fd89d995d91d9f128800b02ae37a7039be3a80fc152eed7a0b5be18a2be` |
| 3 | `structure` | [CarrierGrid](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/carriergrid--5bfd29185b3ae99aaa6bf503.md) | 36 | `declaration-track:5bfd29185b3ae99aaa6bf5030df6c50b9ee9db6e0ed2263a2c815da4c1c5b0d1` |
| 4 | `abbrev` | [OwnershipMask](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/ownershipmask--11a289c4b8bd105204e01671.md) | 41 | `declaration-track:11a289c4b8bd105204e01671e84c30cc4486dbdaddfdbc496682049f08b6e857` |
| 5 | `structure` | [FiniteRasterState](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/finiterasterstate--069e2e65bafeb086316aec06.md) | 44 | `declaration-track:069e2e65bafeb086316aec06022815b3b8418e57e614739444c1c8f1b42a3d36` |
| 6 | `inductive` | [TriangleVertex](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/trianglevertex--cc1d8d0e3e22fa66a8434477.md) | 50 | `declaration-track:cc1d8d0e3e22fa66a8434477f067d16f2e93d2de17f633b00967d2e0cbcbb375` |
| 7 | `def` | [triangleSuccessor](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/trianglesuccessor--80f22e6f6a0a0a02067f999d.md) | 57 | `declaration-track:80f22e6f6a0a0a02067f999d1803ec79b3dfd3e4018397b3b8d1ac59dbf3ca48` |
| 8 | `theorem` | [triangleSuccessor_third_power](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/trianglesuccessor-third-power--508796fab44ee982352c484b.md) | 70 | `result-track:508796fab44ee982352c484be663bd665da8db4ec84d64619d1e412b3173c60c` |
| 9 | `structure` | [BraidEndpointPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/braidendpointpresentation--aafd2d0594a29eb8dd4be57c.md) | 75 | `declaration-track:aafd2d0594a29eb8dd4be57c4a3d86cea1202106d5237439c05c90a28dd36e55` |
| 10 | `inductive` | [PipelineStage](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/pipelinestage--535533ade6bcd8ccfe3c6ed3.md) | 79 | `declaration-track:535533ade6bcd8ccfe3c6ed37ebaae46bcb195ecb14566f673cb7edc917d4e0c` |
| 11 | `def` | [canonicalPipelineStages](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/canonicalpipelinestages--2078652085229c676d5f96c7.md) | 90 | `declaration-track:2078652085229c676d5f96c7d36fccb30f79bd9d7533801249fcbd1fc3e4f230` |
| 12 | `structure` | [PipelineTrace](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/pipelinetrace--52b8508698c614ca5fba1900.md) | 95 | `declaration-track:52b8508698c614ca5fba19009fd24235dcaa1280a8d85b24f6b8213d94084af9` |
| 13 | `structure` | [ConfigurationInput](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/configurationinput--147c3bcb909a43eb8095e26e.md) | 100 | `declaration-track:147c3bcb909a43eb8095e26e2879792af5c0818532c443f3109d01e3c5093baf` |
| 14 | `structure` | [DerivedConfiguration](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/derivedconfiguration--028779ede056a01607c67a6b.md) | 107 | `declaration-track:028779ede056a01607c67a6b6f7bd5ecd8f032001ec399344da35bd13e76dc1f` |
| 15 | `def` | [deriveConfiguration](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/deriveconfiguration--dae8bc6f19d1f125c0e9c973.md) | 113 | `declaration-track:dae8bc6f19d1f125c0e9c97317406994b402db37492b5a0effdcca2da66870e4` |
| 16 | `theorem` | [derive_cells_per_axis](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/derive-cells-per-axis--b501ee825a3ae50573cea1dd.md) | 119 | `result-track:b501ee825a3ae50573cea1ddf10a60161d36f75455d2e2d6e8789df533641f89` |
| 17 | `theorem` | [derive_raster_extent](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/derive-raster-extent--210abe090ffe35f7c558a6d7.md) | 124 | `result-track:210abe090ffe35f7c558a6d7eb5e879a92e8f945dba6819b1880b756d6128696` |
| 18 | `abbrev` | [CarrierProduct](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/carrierproduct--ab2e56cafc667d5549754382.md) | 132 | `declaration-track:ab2e56cafc667d5549754382c58dc66b39441d3330aee167c524e619283d1e99` |
| 19 | `def` | [firstProjection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/firstprojection--12a5631af325ef3eda176219.md) | 135 | `declaration-track:12a5631af325ef3eda1762192f093e8ad7a29e9f35d4be1c390d616bce8c4be6` |
| 20 | `def` | [diagonalSection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/diagonalsection--d8191a93446b368433344ea1.md) | 145 | `declaration-track:d8191a93446b368433344ea14b3ec0e68120a07654aa01cdc9dc9a6716f473d3` |
| 21 | `def` | [graphPoint](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/graphpoint--bfbd1e6234158eb58b9dfca0.md) | 149 | `declaration-track:bfbd1e6234158eb58b9dfca049b49491737079f6ec4f52c69152ace9c07551d1` |
| 22 | `def` | [LiesOnDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/liesondiagonal--c1fcacbd5da25ad01dfb4f81.md) | 154 | `declaration-track:c1fcacbd5da25ad01dfb4f81d4543e3c1460a8f0644fd0008d255f2dd7ec2ab2` |
| 23 | `def` | [LiesOnGraph](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/liesongraph--59d7db1b486df636dee47f6d.md) | 158 | `declaration-track:59d7db1b486df636dee47f6d614e8df84ae53b878894c4d3d8eb33313406c31d` |
| 24 | `def` | [FixedSet](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/fixedset--85429d5c06094a60a6594f55.md) | 163 | `declaration-track:85429d5c06094a60a6594f555fe6c4b462a45298d6c891c029d8afcd91dea01c` |
| 25 | `abbrev` | [FixedPoint](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/fixedpoint--8a4c280f12b78ed39222a0ae.md) | 167 | `declaration-track:8a4c280f12b78ed39222a0aed8f5319496ade8fca32b6ff0e5e24f81276215a5` |
| 26 | `abbrev` | [GraphDiagonalIntersection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/graphdiagonalintersection--7e2a2ed4b3ede94a87fb04c3.md) | 171 | `declaration-track:7e2a2ed4b3ede94a87fb04c39d09c5be654d394aa301c461f6d2574ce80792bb` |
| 27 | `theorem` | [firstProjection_diagonalSection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/firstprojection-diagonalsection--f25d107b6ab7b6649a422d68.md) | 176 | `result-track:f25d107b6ab7b6649a422d68a3702c20d44c4c4cf800e4f10d21bd30055c5898` |
| 28 | `theorem` | [firstProjection_comp_diagonalSection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/firstprojection-comp-diagonalsection--298126feef04e3bef2014f85.md) | 181 | `result-track:298126feef04e3bef2014f85e537ac48afead58256feaa56dbcd39c7d734e375` |
| 29 | `theorem` | [graphPoint_liesOnGraph](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/graphpoint-liesongraph--b7895eca08123e1e70dae678.md) | 187 | `result-track:b7895eca08123e1e70dae6782642dec185ca9d193e9c5ea961f6d55d722b70a1` |
| 30 | `theorem` | [mem_fixedSet_iff_graphPoint_liesOnDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/mem-fixedset-iff-graphpoint-liesondiagonal--34f9332f5a11a614913d844a.md) | 193 | `result-track:34f9332f5a11a614913d844aa9418ae6dfdea782486df574c712907f2113cfab` |
| 31 | `def` | [fixedPointEquivGraphDiagonalIntersection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/fixedpointequivgraphdiagonalintersection--ba0e0510f29864b706ec060f.md) | 205 | `declaration-track:ba0e0510f29864b706ec060f71973774d620ec88e0358a06b467f60b925f2eb4` |
| 32 | `theorem` | [fixedSet_identity](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/fixedset-identity--08f66544645f70c5503efa22.md) | 223 | `result-track:08f66544645f70c5503efa22a821ebb605bd6cd3827e0872b3690b8519fc058f` |
| 33 | `theorem` | [fixedPoint_eq_of_fixedSet_eq_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/fixedpoint-eq-of-fixedset-eq-singleton--ecf94197eccab911eb016f64.md) | 231 | `result-track:ecf94197eccab911eb016f646d7346636a940d0c1b4ee8f07c7475d893756435` |
| 34 | `theorem` | [mem_fixedSet_linear_iff_mem_ker_id_sub](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/mem-fixedset-linear-iff-mem-ker-id-sub--91d464bf1c37c76f93b35b1b.md) | 246 | `result-track:91d464bf1c37c76f93b35b1b47ca893f691f86f83d753604fe53e9d6cb5bcd4d` |
| 35 | `structure` | [RepresentationRelation](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/representationrelation--5a71c88522abea4c921c71d1.md) | 256 | `declaration-track:5a71c88522abea4c921c71d144aa21cfa067389b796716d298eb3aad22e233c1` |
| 36 | `inductive` | [CorrespondenceStatus](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/declarations/correspondencestatus--676584ad8cdbbb4e69584805.md) | 263 | `declaration-track:676584ad8cdbbb4e69584805f6d9b94b3521b53b71a48dcd0a8e6843abb41a12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
