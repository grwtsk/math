# Verification target: GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079.FiniteCutAndReplacement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a42d070078fdd25836d3d8c77ba19c55c019cc7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/index.md) · [Full source](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a42d070078fdd25836d3d8c77ba19c55c019cc7`.

Source path: `GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Topology.RasterCubicalComplex` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RasterState](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/rasterstate--6c166a4a1030f8b68a4ed1af.md) | 42 | `declaration-track:6c166a4a1030f8b68a4ed1afbd6b5f1704005d31ef949db4b223d8c5d5fa25e0` |
| 2 | `structure` | [CutDatum](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/cutdatum--c880f429d3cfa9fb7be2e3ea.md) | 46 | `declaration-track:c880f429d3cfa9fb7be2e3ead8daf90871720f5afd1d22a90f8c02e4abda4565` |
| 3 | `def` | [exterior](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/exterior--98bf6d449da6cbad588159e3.md) | 53 | `declaration-track:98bf6d449da6cbad588159e3cd12f9a6a270c9c91696cfcf3a6b52dc25134d91` |
| 4 | `def` | [exposedInterface](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/exposedinterface--c86c6a99b13b7fd27d2e5606.md) | 61 | `declaration-track:c86c6a99b13b7fd27d2e5606db807e5622f579682bd6d96332b1f026aa3b2615` |
| 5 | `theorem` | [exposedInterface_subset_exterior](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/exposedinterface-subset-exterior--6b24e3021852e4c08f27ae57.md) | 66 | `result-track:6b24e3021852e4c08f27ae579e0a8fc2837205c02e33470192354a1ae4ce6a0d` |
| 6 | `theorem` | [exterior_disjoint_selected](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/exterior-disjoint-selected--2b0f78d9a6832779792197a3.md) | 72 | `result-track:2b0f78d9a6832779792197a38a63a24e96795d66a2f30a33a31e4802e2c09478` |
| 7 | `structure` | [Repair](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/repair--3db69506827ac90ba530ac4f.md) | 82 | `declaration-track:3db69506827ac90ba530ac4fe549a93aee4526fcb27055f8b957777fd806ad65` |
| 8 | `def` | [apply](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/apply--f323378db4c09e99c5af6d09.md) | 88 | `declaration-track:f323378db4c09e99c5af6d09e0d5fb2c9afd0c016b18173c0d61e39631778634` |
| 9 | `theorem` | [apply_inside](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/apply-inside--66390df38f110c468684a80d.md) | 95 | `result-track:66390df38f110c468684a80d69c0cf8f862bef46d86db60632654aa3232b6eda` |
| 10 | `theorem` | [apply_outside](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/apply-outside--b72a89fbf310f5d7deb8df61.md) | 102 | `result-track:b72a89fbf310f5d7deb8df6143eebbd78927de16c8a4857ce4f56d5dc92412dd` |
| 11 | `def` | [changeSupport](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/changesupport--1a492c632fd1089f7554696f.md) | 109 | `declaration-track:1a492c632fd1089f7554696f88723a15d18492d02b816b5a740388d9f2c3b158` |
| 12 | `def` | [addedCells](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/addedcells--ad5422835e01c47f12e5b66d.md) | 114 | `declaration-track:ad5422835e01c47f12e5b66dc9096214ae857217deecc1f9fd9596f0317ecc64` |
| 13 | `def` | [deletedCells](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/deletedcells--e803b22c797d2c6887d86f07.md) | 120 | `declaration-track:e803b22c797d2c6887d86f07e8e93fac0f2fb630b60ecb7079cf7c1f426ec426` |
| 14 | `theorem` | [changeSupport_subset_selected](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/changesupport-subset-selected--fec6a395895a43a75aa775e5.md) | 126 | `result-track:fec6a395895a43a75aa775e5936d17f6b48c24698c76518d0145f8572cb3649a` |
| 15 | `theorem` | [addedCells_subset_selected](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/addedcells-subset-selected--2e54a58d197dabd93eb66876.md) | 135 | `result-track:2e54a58d197dabd93eb66876484e531477f954d4912af88badaa1ec7fe40d5e2` |
| 16 | `theorem` | [deletedCells_subset_selected](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/deletedcells-subset-selected--53494207df4313f5e84ce524.md) | 147 | `result-track:53494207df4313f5e84ce52400444470ca5a901c71ab728a61becde2cba958d0` |
| 17 | `def` | [reconstruct](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/reconstruct--de4732e2f1fc70048e8bcc50.md) | 160 | `declaration-track:de4732e2f1fc70048e8bcc506eb10dc285882c9659055e1d3259294c99a205eb` |
| 18 | `theorem` | [reconstruct_apply](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/reconstruct-apply--89a21adaf77b1556e0419950.md) | 164 | `result-track:89a21adaf77b1556e0419950653c3005b667217990ecacd238d702e74a75ca55` |
| 19 | `theorem` | [overwrite](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/declarations/overwrite--b3e6feb3dbc801e3718f2602.md) | 171 | `result-track:b3e6feb3dbc801e3718f2602b039fdd9eaa1cb7e2cb9499ee4147e3bc32977c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
