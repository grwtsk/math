# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizer.Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8168c607b8729ace68e76e8d28ad793eac7cca53",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8168c607b8729ace68e76e8d28ad793eac7cca53`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.SplitEqualizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CofreeEqualizer.topMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/cofreeequalizer-topmap--1235f56d895e7bf9753f87ad.md) | 45 | `declaration-track:1235f56d895e7bf9753f87ad6fb6a67f8fdf3c3ebce0e4f57e9781b149783eee` |
| 2 | `def` | [CofreeEqualizer.bottomMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/cofreeequalizer-bottommap--3b1d99450f5ea5a87d8722f3.md) | 50 | `declaration-track:3b1d99450f5ea5a87d8722f3c431c60e0eb8f48a213a157034e3c084729d2d1b` |
| 3 | `def` | [CofreeEqualizer.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/cofreeequalizer--b8518071fa8c68095cfcae5f.md) | 57 | `declaration-track:b8518071fa8c68095cfcae5fec0210188ad7f4c5a807b6f805db9280cd6a87de` |
| 4 | `theorem` | [CofreeEqualizer.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/cofreeequalizer-condition--83fd6f6a5d17e95d7436291b.md) | 61 | `result-track:83fd6f6a5d17e95d7436291b64f506b0031c7c198a07533ab545630bf85a35e3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/instance--db52746c7b8a9f2af6f3593f.md) | 66 | `declaration-track:db52746c7b8a9f2af6f3593fd7b712f1d0b2f03d5b572281ee07e6cc22878c6b` |
| 6 | `def` | [beckCoalgebraFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/beckcoalgebrafork--acc59666e07ba788870c75fb.md) | 79 | `declaration-track:acc59666e07ba788870c75fbcd8a4db0b454e6894482ec5805927a46f5c2d014` |
| 7 | `def` | [beckCoalgebraEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/beckcoalgebraequalizer--6b75b72d43d40c36170fd274.md) | 85 | `declaration-track:6b75b72d43d40c36170fd2746b8b3944c89a2000e4b3929c230517128031cb63` |
| 8 | `def` | [beckSplitEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/becksplitequalizer--f92941e71c6b06d69b55dc72.md) | 106 | `declaration-track:f92941e71c6b06d69b55dc7244218e8b8496e3816e8ede20a411aeeb3b90230c` |
| 9 | `def` | [beckFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/beckfork--25db78da4a2773edfd4a3e17.md) | 111 | `declaration-track:25db78da4a2773edfd4a3e17d8accbbe2bd51e3ab71abdd79791cdac696ef34b` |
| 10 | `theorem` | [beckFork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/beckfork--8463f00d55c6f1b43fc15290.md) | 115 | `result-track:8463f00d55c6f1b43fc15290b8cb23b1c9d69df6c91bad4c441f31df3afc8285` |
| 11 | `def` | [beckEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/beckequalizer--8559c40b148ca47d5d8fc410.md) | 119 | `declaration-track:8559c40b148ca47d5d8fc41015dd4035b2678922a412e3bea22bb4f1476f40aa` |
| 12 | `theorem` | [beckEqualizer_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant5ecc3a7cf7d60f02a78acb7331698156ba58d1bd6d8755b711afbad26d1f0694.lean/declarations/beckequalizer-lift--52dc235406e1c82bea79fe00.md) | 123 | `result-track:52dc235406e1c82bea79fe00ff51d5e036c87745a17ff24a0deec2d480a5536d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
