# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Factorisation.Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae4eb7720d611691572b2e7b9d1a0897e0d86d9a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae4eb7720d611691572b2e7b9d1a0897e0d86d9a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Arrow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Factorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/factorisation--c468de2a581d1c9a75a467a0.md) | 38 | `declaration-track:c468de2a581d1c9a75a467a0d84094a7a5c749713883a8c4f9ed11869f5c11fe` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/hom--a35fe82554941c2863e42a63.md) | 57 | `declaration-track:a35fe82554941c2863e42a6368127b6df9e620faf9df14f9a93d05b0c6e330c3` |
| 3 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/hom-id--7f65145b0e0cca0cd0b02ad3.md) | 69 | `declaration-track:7f65145b0e0cca0cd0b02ad3d0108d36285ae8dc3996e0a21a8f40349f6bc311` |
| 4 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/hom-comp--ae7350930f04c3ce2b4fbbfc.md) | 74 | `declaration-track:ae7350930f04c3ce2b4fbbfcdb4453b437b63b8496445b81369d5d09f21ac4d9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/instance--01b65e369140b93b6522c5e3.md) | 80 | `declaration-track:01b65e369140b93b6522c5e3951c2224df13467df91db6d2b3bbc7cb4dafa510` |
| 6 | `def` | [initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/initial--e94bb6d36f72d5c1b5f61b26.md) | 89 | `declaration-track:e94bb6d36f72d5c1b5f61b26a53f255ff77f3133940e21007b7f351f10be4ade` |
| 7 | `def` | [initialHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/initialhom--f6ce174fcfc54c15f307752f.md) | 96 | `declaration-track:f6ce174fcfc54c15f307752f8c05f1bc0e2728102886caebf676df5684d47ca5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/instance--21031e52224924f093352f50.md) | 100 | `declaration-track:21031e52224924f093352f50ed0582174a510b24eff621065a509b5c8f15680c` |
| 9 | `def` | [terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/terminal--b2966b5ec6c6d9ed283b4155.md) | 106 | `declaration-track:b2966b5ec6c6d9ed283b415576eba889c6bdcd608d6f077d03b5b7a8c045c6cf` |
| 10 | `def` | [terminalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/terminalhom--f799d8fa31177f9fec34f2e0.md) | 113 | `declaration-track:f799d8fa31177f9fec34f2e0db706a569f6d1f51f9e92dda062fa0f03affef6f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/instance--fea748124117cbeeac908879.md) | 117 | `declaration-track:fea748124117cbeeac908879bc1b5cee133bb3e2b5cb5b414ffdcb0d7aa05291` |
| 12 | `def` | [IsInitial_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/isinitial-initial--3957f93c90281d2d3e929aa9.md) | 124 | `declaration-track:3957f93c90281d2d3e929aa91aa4975dd0e381158ba34e7459bb3fc16276710e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/instance--08e8775b8e2b430c2213c0d5.md) | 126 | `declaration-track:08e8775b8e2b430c2213c0d52e3908c605548ea1794c8e7a63694b36ca18e322` |
| 14 | `def` | [IsTerminal_terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/isterminal-terminal--e84981d0ca0d4e34b7b685d6.md) | 129 | `declaration-track:e84981d0ca0d4e34b7b685d67aea83f0d5abd3030caa741e318491e291dd3dd0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/instance--9b6c193ebeeee9785e0c2b69.md) | 132 | `declaration-track:9b6c193ebeeee9785e0c2b69cf2eae9943e00049b3679fdfab090af05b452046` |
| 16 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/declarations/forget--c8ee8b941cca04e5d9f923c3.md) | 136 | `declaration-track:c8ee8b941cca04e5d9f923c37818d9230605fa680c7a8c718227b4fe689dc3ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
