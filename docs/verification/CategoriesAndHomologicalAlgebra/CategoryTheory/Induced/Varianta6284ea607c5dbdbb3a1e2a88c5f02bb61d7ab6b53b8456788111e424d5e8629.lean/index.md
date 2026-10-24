# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Induced.Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "217ff235687b73fbb8c411387ca9336fd35345d3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `217ff235687b73fbb8c411387ca9336fd35345d3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasInducedTStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/hasinducedtstructure--7b37d430c9b39864ec25a277.md) | 41 | `declaration-track:7b37d430c9b39864ec25a2773a47b67905008bb4f3ddabe18a6724a0581efa64` |
| 2 | `def` | [tStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/tstructure--ebdfd8b8cf4b26b1199c9358.md) | 51 | `declaration-track:ebdfd8b8cf4b26b1199c9358c1ddcc4f0959398965b8f284b24e66466d819f50` |
| 3 | `lemma` | [tStructure_isLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/tstructure-isle-iff--320579c6c16643fdda681d78.md) | 76 | `result-track:320579c6c16643fdda681d782440a64235b89043d39354247270001e95a644d3` |
| 4 | `lemma` | [tStructure_isGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/tstructure-isge-iff--00023bc5404531ac3f5891a5.md) | 80 | `result-track:00023bc5404531ac3f5891a571a73a045bf22e9a74253629eb8c0447630cc256` |
| 5 | `lemma` | [HasInducedTStructure.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/hasinducedtstructure-mk--2be3bf151d00561eb394e179.md) | 85 | `result-track:2be3bf151d00561eb394e179ffeeafd864c92e8f626440470cb49896a96f3bb4` |
| 6 | `lemma` | [mem_of_hasInductedTStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/mem-of-hasinductedtstructure--732f4576303dc270485600a7.md) | 94 | `result-track:732f4576303dc270485600a7a4dedb6ad8cc68a69acd1359dd0229c55d507417` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/instance--f793a98d83c6424bf41592b4.md) | 109 | `declaration-track:f793a98d83c6424bf41592b4b0285497a83b35a648e496073f33a742763da012` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/instance--c228aa48c477f01bb4b6a51a.md) | 131 | `declaration-track:c228aa48c477f01bb4b6a51ab455c3c45871b7090a683ec1cb7a256f2da995a0` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/instance--ee73e737da7a08aec02a4bc4.md) | 134 | `declaration-track:ee73e737da7a08aec02a4bc4b0924cad583c3d00dac40241ba03718487afd4ab` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/instance--6b3748b86c18c2f3b85c98c5.md) | 137 | `declaration-track:6b3748b86c18c2f3b85c98c5f3251036cf474da4b826240eb17905ebe23eef9e` |
| 11 | `abbrev` | [onPlus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/onplus--6ad3b6ba15b1a9a316567a6c.md) | 142 | `declaration-track:6ad3b6ba15b1a9a316567a6cc2c31f356f7df732a6ce9d6ed85ba4139d666052` |
| 12 | `abbrev` | [onMinus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/onminus--4b5396057962c7d0d4ad9962.md) | 145 | `declaration-track:4b5396057962c7d0d4ad99624e74f28e700477d9bb7c42836002bec1c3dbf3a3` |
| 13 | `abbrev` | [onBounded](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta6284ea607c5dbdbb3a1e2a88c5f02bb61d7ab6b53b8456788111e424d5e8629.lean/declarations/onbounded--74025a4c9dbeb5883e240a5a.md) | 148 | `declaration-track:74025a4c9dbeb5883e240a5a3393b3ab61fa36f87b304a5f702548603e4747fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
