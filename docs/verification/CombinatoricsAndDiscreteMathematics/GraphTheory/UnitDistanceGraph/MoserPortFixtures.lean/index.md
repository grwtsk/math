# Verification target: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPortFixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dbb185a237194ef639696a6bede0ce2b164940a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dbb185a237194ef639696a6bede0ce2b164940a`.

Source path: `GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPorts`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diamondEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/diamondedges--588aca45446ac4e440ca3fc3.md) | 8 | `declaration-track:588aca45446ac4e440ca3fc3e2d4c3dddd103b7f99c596093f604f2efa45fff1` |
| 2 | `def` | [diamondAdj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/diamondadj--d8a65824ad3810c062ffd29f.md) | 12 | `declaration-track:d8a65824ad3810c062ffd29f4ea6082bc3b45c7aa576e13bca8e2424917b9b51` |
| 3 | `def` | [diamondPort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/diamondport--3f1bbf84e19a762b531774b3.md) | 16 | `declaration-track:3f1bbf84e19a762b531774b30454c3e9a455df9f1971e6859cb9d1326df30919` |
| 4 | `def` | [diamondGadget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/diamondgadget--9a5ef0fc9cb912145048781e.md) | 19 | `declaration-track:9a5ef0fc9cb912145048781ecbe4569e9f7911db5d298f1f542b94cdce45b171` |
| 5 | `theorem` | [diamond_extends_iff_boundary_equal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/diamond-extends-iff-boundary-equal--1ed959587cbe34cc579a1e33.md) | 24 | `result-track:1ed959587cbe34cc579a1e33bf86a0e3d82cb4c84ac71233510c0d02a384b97f` |
| 6 | `def` | [diamondRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/diamondrelation--11f085856090198eb483fca7.md) | 30 | `declaration-track:11f085856090198eb483fca77259b5ba24868d640191c77939b928c101dc8d49` |
| 7 | `theorem` | [diamondRelation_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/diamondrelation-iff--2666d7043670d201e8162e08.md) | 34 | `result-track:2666d7043670d201e8162e0881a14abd9635a4bf388dc552f288df32b11404b7` |
| 8 | `theorem` | [diamondRelation_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/diamondrelation-comp--ec9384d6880f870ed3a34a3d.md) | 40 | `result-track:ec9384d6880f870ed3a34a3d880054594f2d8ae16fbad4e9d6eff0c5ae4b1c43` |
| 9 | `def` | [brokenDiamondEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/brokendiamondedges--c8fa006d0ec0a7c123b5afff.md) | 56 | `declaration-track:c8fa006d0ec0a7c123b5afffbc37b7804edb8292228882fac19e1b2f177930f0` |
| 10 | `def` | [brokenDiamondAdj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/brokendiamondadj--96cd590452b7fb0a2921f784.md) | 60 | `declaration-track:96cd590452b7fb0a2921f7847f0a06a8b7d7c0944c3c747481471603d9a461fb` |
| 11 | `def` | [brokenDiamondGadget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/brokendiamondgadget--681fc58537d4c0787778e38b.md) | 64 | `declaration-track:681fc58537d4c0787778e38b38345e46f8f08a685eb812c703ce0f4a40f983b8` |
| 12 | `theorem` | [brokenDiamond_allows_unequal_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/declarations/brokendiamond-allows-unequal-boundary--80a7a496d65024cdd343351c.md) | 69 | `result-track:80a7a496d65024cdd343351c1aa34cf62b962ca18e6728212cac418d1222b6c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
