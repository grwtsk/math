# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48c14cec8e5faa4dfbe5fc7e9f46b46c9dfc9611",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48c14cec8e5faa4dfbe5fc7e9f46b46c9dfc9611`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Pullback` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pushforward_sheaf_of_sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/pushforward-sheaf-of-sheaf--8430a58d8c3dd0eddae73b50.md) | 59 | `result-track:8430a58d8c3dd0eddae73b508413aaa6b9ba9cabbb755480611d8189a7822865` |
| 2 | `def` | [pushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/pushforward--f4d7d04b1d8afee1ddb3e74b.md) | 66 | `declaration-track:f4d7d04b1d8afee1ddb3e74bd42067dde09a3286359c3c5682044e9705b4c3c6` |
| 3 | `lemma` | [pushforward_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/pushforward-forget--360cc18d5e83408853cefee9.md) | 69 | `result-track:360cc18d5e83408853cefee9d6499b8446ee13cdca887f7024802e79f4c7f41b` |
| 4 | `def` | [pushforwardForgetIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/pushforwardforgetiso--bd266899983839ddfded6bcb.md) | 75 | `declaration-track:bd266899983839ddfded6bcbab8403cf9e8399bb6437be9122cc6449e9567864` |
| 5 | `lemma` | [pushforward_obj_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/pushforward-obj-val--05240bafd041c3b16de505d6.md) | 80 | `result-track:05240bafd041c3b16de505d675f4c8812ffd0f0b259fa7b34f02b2aae75cc429` |
| 6 | `lemma` | [pushforward_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/pushforward-map--ca918715097fcb8808a44de2.md) | 83 | `result-track:ca918715097fcb8808a44de2f7f797b4089b303c95e296e098112ba03f1caddf` |
| 7 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/pullback--5c11d200f7b52deecd9c857d.md) | 95 | `declaration-track:5c11d200f7b52deecd9c857dcc04536e73440af78f4ea8c993bbea009530bab1` |
| 8 | `def` | [pullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/pullbackiso--7d15ca4c392f78cb5c772070.md) | 102 | `declaration-track:7d15ca4c392f78cb5c772070d5906c9da61b1389c931fedef9a3da076ca4c050` |
| 9 | `def` | [pullbackPushforwardAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/pullbackpushforwardadjunction--eda9550b08e38cf5cb5cf43c.md) | 107 | `declaration-track:eda9550b08e38cf5cb5cf43c04c3e58c5137e200e3cc1226ebbbc589a3efd410` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/instance--1b47630424a1ba4c4335c5d1.md) | 111 | `declaration-track:1b47630424a1ba4c4335c5d151d89574b2e3190333ecf8a197d74912e5c7a7ba` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant9885f7eb66f26f4c766feccd7d37caa3aa9a619bb3037705dece23130196edfe.lean/declarations/instance--4e3938d0528328b340144581.md) | 112 | `declaration-track:4e3938d0528328b340144581d3628ae57d90feba2d17a46f30a7c2c1b51b2ac1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
