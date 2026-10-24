# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Path.Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f77266cd7a33364f1c357611790a7fcb8355ce1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f77266cd7a33364f1c357611790a7fcb8355ce1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Phase` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Arc` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DeflectionPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean/declarations/deflectionpath--2474c31e8d5dee35bd3d0dd5.md) | 24 | `declaration-track:2474c31e8d5dee35bd3d0dd571e1a1e51706fef1b5047da341134783815efb83` |
| 2 | `def` | [DeflectionPath.length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean/declarations/deflectionpath-length--7c8f0da41eaffbcf449cab03.md) | 36 | `declaration-track:7c8f0da41eaffbcf449cab03925d48a1300dd50e1c6f50c10e430e986dd3ef04` |
| 3 | `def` | [DeflectionPath.arcs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean/declarations/deflectionpath-arcs--8fbb6b0b7974f50efc237d65.md) | 43 | `declaration-track:8fbb6b0b7974f50efc237d65652c28cfca45b4a80b14839f2e4c8d2a11f6fdc0` |
| 4 | `def` | [DeflectionPath.AllArcs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean/declarations/deflectionpath-allarcs--2e6e64c659a74d298e8813df.md) | 51 | `declaration-track:2e6e64c659a74d298e8813df1faaae1936935823b93ce3e4fa9f61c1ad6c1f6a` |
| 5 | `def` | [DeflectionPath.phaseProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant55d3badf1b747d622898571a499de1edd67c9f91d67876963755b055ce32ea3e.lean/declarations/deflectionpath-phaseproduct--90de0ad197de06187e0de7d4.md) | 60 | `declaration-track:90de0ad197de06187e0de7d499ec74c44a3b2e36ca394dda7034cbca0474a4f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
