# Verification target: GRWTSK.Geometry.DifferentialGeometry.Defs.Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4a5653f1c80fac7aa9fa904409bcada1d6759d4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4a5653f1c80fac7aa9fa904409bcada1d6759d4`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IsManifold.ExtChartAt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.LocalInvariantProperties` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DifferentiableWithinAtProp](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/differentiablewithinatprop--cf6c21c53e0ba1dcbff77a7a.md) | 128 | `declaration-track:cf6c21c53e0ba1dcbff77a7a6e6ef0baf01bbcc80629719dfebad8872ac96bb8` |
| 2 | `theorem` | [differentiableWithinAtProp_self_source](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/differentiablewithinatprop-self-source--1dc80df3fa57c7e5dda2463d.md) | 133 | `result-track:1dc80df3fa57c7e5dda2463da05a73ad96eb7301f4ff437b22112a17d22d415a` |
| 3 | `theorem` | [DifferentiableWithinAtProp_self](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/differentiablewithinatprop-self--ef755d11beea69b2d9cb86f7.md) | 138 | `result-track:ef755d11beea69b2d9cb86f7b979ac01de9d3c653c3c788bd90979f25f73fab3` |
| 4 | `theorem` | [differentiableWithinAtProp_self_target](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/differentiablewithinatprop-self-target--a63385bbc41c1505963d8218.md) | 142 | `result-track:a63385bbc41c1505963d8218d880f1bc7a431d9909d01b22bc4ee9ecec2cd75a` |
| 5 | `theorem` | [differentiableWithinAt_localInvariantProp](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/differentiablewithinat-localinvariantprop--7db852e4465bf01516a1e1f2.md) | 149 | `result-track:7db852e4465bf01516a1e1f2456ff59675061a239e546cb7b98dc2d2a915379e` |
| 6 | `def` | [UniqueMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/uniquemdiffwithinat--664cdbdc5815849e099636ff.md) | 198 | `declaration-track:664cdbdc5815849e099636ff382e696f6bee611ca4cb7f43c52e09c92387162b` |
| 7 | `def` | [UniqueMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/uniquemdiffon--bc58937836f30cc99860bc63.md) | 203 | `declaration-track:bc58937836f30cc99860bc63264910c8c3827013e9b8141f53031dfdc6f9c163` |
| 8 | `def` | [MDifferentiableWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiablewithinat--24c33d2c277c6784a0baaa43.md) | 215 | `declaration-track:24c33d2c277c6784a0baaa432a9497a491e47c904b3bff9224aefa7be262fdb2` |
| 9 | `theorem` | [mdifferentiableWithinAt_iff'](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiablewithinat-iff--95c63c81fa1883f567e5ca8e.md) | 218 | `result-track:95c63c81fa1883f567e5ca8e39cd43e9f4a112de72a0fa3c652347de7d6c05b3` |
| 10 | `theorem` | [MDifferentiableWithinAt.continuousWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiablewithinat-continuouswithinat--a22620b58dcdd9b3fc193b47.md) | 224 | `result-track:a22620b58dcdd9b3fc193b47544af946a07452f6c9e37ecc3c3d5d0687ddcc39` |
| 11 | `theorem` | [MDifferentiableWithinAt.differentiableWithinAt_writtenInExtChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiablewithinat-differentiablewithinat-writteninextchartat--4ba2713c00f7047897079dbf.md) | 229 | `result-track:4ba2713c00f7047897079dbf2c230a6466df6d2c49fdb52109836db00578c007` |
| 12 | `def` | [MDifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiableat--28c2008165cc1ca327a6b91e.md) | 244 | `declaration-track:28c2008165cc1ca327a6b91e396dc063b87547e2116bec15c79861d322cccf46` |
| 13 | `theorem` | [mdifferentiableAt_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiableat-iff--9a3eb263c9ae0d99f3f9c93c.md) | 247 | `result-track:9a3eb263c9ae0d99f3f9c93cbcb1c30f160a48acd6bd3d9e8f6fe660a5d7729f` |
| 14 | `theorem` | [MDifferentiableAt.continuousAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiableat-continuousat--c633db8718094dd1dca9660b.md) | 254 | `result-track:c633db8718094dd1dca9660ba5c235fb5d5638dc238c145a2e989f3c18d5781f` |
| 15 | `theorem` | [MDifferentiableAt.differentiableWithinAt_writtenInExtChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiableat-differentiablewithinat-writteninextchartat--4ae28f64e431da1868b67a0c.md) | 258 | `result-track:4ae28f64e431da1868b67a0cb2cccf0570b81dc00ad4090ade8023a286d73188` |
| 16 | `def` | [MDifferentiableOn](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiableon--8b89530a3f58a2b71fa2cc38.md) | 267 | `declaration-track:8b89530a3f58a2b71fa2cc389950e7b55be77bec9c537dd1d2690786f61e821d` |
| 17 | `def` | [MDifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mdifferentiable--fb6bf3c385291fbd02f38e36.md) | 274 | `declaration-track:fb6bf3c385291fbd02f38e3658983ffb1aaea225d238a1351965161531cf5a24` |
| 18 | `def` | [PartialHomeomorph.MDifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/partialhomeomorph-mdifferentiable--a991194055b3c031eb2eb534.md) | 279 | `declaration-track:a991194055b3c031eb2eb5340a49469aaac2cc68c60f96b6eb8f114a70d6c48f` |
| 19 | `def` | [HasMFDerivWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/hasmfderivwithinat--c43ac8905faf3712b34fcf22.md) | 294 | `declaration-track:c43ac8905faf3712b34fcf22320850472514faf81ecd38aa8a69e3a95a6cfbd8` |
| 20 | `def` | [HasMFDerivAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/hasmfderivat--d4b8622ff7e6f935979d4258.md) | 309 | `declaration-track:d4b8622ff7e6f935979d42586ae826ef443836b7f756cc195b5dc8a2d46dc7be` |
| 21 | `def` | [mfderivWithin](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mfderivwithin--8759ea41e32ea766db9f2b11.md) | 318 | `declaration-track:8759ea41e32ea766db9f2b110a061beb633c519ecf3bed5b2f9cc479ec8e6750` |
| 22 | `def` | [mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/mfderiv--3b719818f00871c532498d32.md) | 330 | `declaration-track:3b719818f00871c532498d327d34f79706fe4d684c4fe900ce81b1207245db49` |
| 23 | `def` | [tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/tangentmapwithin--6c8d81f38a72dc27c9ff2e9d.md) | 337 | `declaration-track:6c8d81f38a72dc27c9ff2e9d0ccd0089ca425cdf9f00cacb8fcfa5cc05f73560` |
| 24 | `def` | [tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/declarations/tangentmap--6e318f7b14ee759496d0b3eb.md) | 342 | `declaration-track:6e318f7b14ee759496d0b3eb3f71f760dc2127c0fa3676847d2ff1748918b94e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
