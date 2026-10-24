# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quasicoherent.Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d6454886a8fb59b327172f1207328a0508b0d4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d6454886a8fb59b327172f1207328a0508b0d4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Sheaf.Generators` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Presentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/declarations/presentation--129a8deb2b44fad2e462dd69.md) | 50 | `declaration-track:129a8deb2b44fad2e462dd698507871f13e88920517f399a9c4e25a2b9f1f631` |
| 2 | `structure` | [QuasicoherentData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/declarations/quasicoherentdata--cb3e15e9b6379c9c727c40dd.md) | 65 | `declaration-track:cb3e15e9b6379c9c727c40ddc2d6ebc34ef682f1495732ff735984fbcaec4263` |
| 3 | `def` | [localGeneratorsData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/declarations/localgeneratorsdata--c271a641ca77083bb51db82a.md) | 80 | `declaration-track:c271a641ca77083bb51db82a9f248e144e767c7054ae52b4b1a4c6cd8d4f0ede` |
| 4 | `class` | [IsQuasicoherent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/declarations/isquasicoherent--6ff37ec47d550952601a449c.md) | 90 | `declaration-track:6ff37ec47d550952601a449cb1d864e17655471461c8d6b102d50f8377b45ce3` |
| 5 | `class` | [IsFinitePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/declarations/isfinitepresentation--efe00c585315ea4bf478e58c.md) | 95 | `declaration-track:efe00c585315ea4bf478e58c73b7551308ebb0c15b8b0b576945f04f0c24c3aa` |
| 6 | `def` | [quasicoherentDataOfIsFinitePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/declarations/quasicoherentdataofisfinitepresentation--138000d401c28696b62c1235.md) | 105 | `declaration-track:138000d401c28696b62c12351b4d1d0f64d7bfd5b28e5783ec7f3635510620b7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/declarations/instance--7652e54b156c985a069128aa.md) | 108 | `declaration-track:7652e54b156c985a069128aa1077490efbd2a7d509c39ff702d5f8923f0d2a5e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/declarations/instance--40cc81ebaf9fe08439818c0e.md) | 114 | `declaration-track:40cc81ebaf9fe08439818c0ef7bbd9fc311ab6f2e9bef8785c198ad78ff7bd44` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantf2cd1a022890d9c614194fa30af4ebb1c6fc0d69dcd0f7422919660fd785e1ef.lean/declarations/instance--f4ad5e3f7529902183376fd1.md) | 122 | `declaration-track:f4ad5e3f7529902183376fd1cc7fa2acf60f553c71cce025b94756185026ab1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
