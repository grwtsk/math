# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CellComplex.Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82864a132345bc67721cb1223e5d92b7a22c96e5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82864a132345bc67721cb1223e5d92b7a22c96e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ListTools` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PrismaticGeometry.AngleRatio` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteCellComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean/declarations/finitecellcomplex--27f7d78fe00ca3096ea3d322.md) | 25 | `declaration-track:27f7d78fe00ca3096ea3d3229184a57456742172f89185abf1a2fe1c8e0d559c` |
| 2 | `structure` | [Chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean/declarations/chain--d363a31a0fbec239c90dbf07.md) | 35 | `declaration-track:d363a31a0fbec239c90dbf074e7d7a0a7ae289a712e283fb3f2b6579dd887e77` |
| 3 | `def` | [Chain.boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean/declarations/chain-boundary--9a4fcd12bca05dbd2cb807ac.md) | 39 | `declaration-track:9a4fcd12bca05dbd2cb807acf96c72e67af7af3db67915c6915b9b165fb6cf32` |
| 4 | `structure` | [ClosedChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean/declarations/closedchain--6289f894d830453a10c12c3e.md) | 52 | `declaration-track:6289f894d830453a10c12c3e8bc01e8c9ef0c4a3b475e1dec5dc2967776d1030` |
| 5 | `structure` | [NonBoundaryChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean/declarations/nonboundarychain--68935e0d88cbdb3679ac90d0.md) | 60 | `declaration-track:68935e0d88cbdb3679ac90d0daa040dca6cb3802d9d43969530a22bfe554a0dd` |
| 6 | `structure` | [HomologyClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean/declarations/homologyclass--159b76e3f7d86a741e6776a3.md) | 69 | `declaration-track:159b76e3f7d86a741e6776a33d26f1a51e28154e29ff40a3782a96d12ad33283` |
| 7 | `theorem` | [homologyClass_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantdd2c21b897652a6b139de84cf28253764fa6763de250875657dc49754e8699ea.lean/declarations/homologyclass-sound--21e289ee06e7a1e3a3dbb303.md) | 78 | `result-track:21e289ee06e7a1e3a3dbb303eeaf531b625b4d5b471903f1c2f4c1118d2579a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
