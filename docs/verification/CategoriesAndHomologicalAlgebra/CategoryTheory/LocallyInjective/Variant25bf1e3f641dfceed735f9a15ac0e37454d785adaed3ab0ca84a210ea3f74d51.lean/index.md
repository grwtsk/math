# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyInjective.Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e33120e0ab9ecd7f9fe21a4b69a1ff430a8cea13",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e33120e0ab9ecd7f9fe21a4b69a1ff430a8cea13`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean.json)

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
| 1 | `def` | [equalizerSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/equalizersieve--0b5ec1b503ee832793f2612b.md) | 54 | `declaration-track:0b5ec1b503ee832793f2612b0bdf9d78241216e88b1c654d2f4cda2e05993453` |
| 2 | `lemma` | [equalizerSieve_self_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/equalizersieve-self-eq-top--fe3536ca6bc2e0c83f6ac2a8.md) | 61 | `result-track:fe3536ca6bc2e0c83f6ac2a897af943cdd264473f67f74db8a8c26be3e34b805` |
| 3 | `lemma` | [equalizerSieve_eq_top_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/equalizersieve-eq-top-iff--6b283afa29baa1c7bba01152.md) | 65 | `result-track:6b283afa29baa1c7bba0115230c07873c88528eb1f1e9e2d3dbdeffc26a6b84f` |
| 4 | `class` | [IsLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective--fa10051bc7a9b9a2bd519595.md) | 79 | `declaration-track:fa10051bc7a9b9a2bd51959521659934824d112d93e1348f6d547c4cf805c320` |
| 5 | `lemma` | [equalizerSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/equalizersieve-mem--e0001ae561f5a82b703229a2.md) | 83 | `result-track:e0001ae561f5a82b703229a20beee5297431a1b22d3df141c8b0feefea6f2e1b` |
| 6 | `lemma` | [isLocallyInjective_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-of-injective--1d243ad81c7d63f0e8fdc192.md) | 88 | `result-track:1d243ad81c7d63f0e8fdc1927af221c50871b2fe473b27cb6c3a545749937921` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/instance--72ceb3bc6d88d22c7daa7055.md) | 97 | `declaration-track:72ceb3bc6d88d22c7daa70558a5740dfab7af9801040ced1a755d9ee763682dd` |
| 8 | `instance` | [isLocallyInjective_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-forget--24f587f121a6c4701056c8b4.md) | 102 | `declaration-track:24f587f121a6c4701056c8b48cdb31ca5edd980a00a0536929eec905889e4a38` |
| 9 | `lemma` | [isLocallyInjective_forget_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-forget-iff--ab87e83e0ebbd23845a6a418.md) | 106 | `result-track:ab87e83e0ebbd23845a6a418ff884ecea9902cd69f894c3260c2ce2d6513b16f` |
| 10 | `lemma` | [isLocallyInjective_iff_equalizerSieve_mem_imp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-iff-equalizersieve-mem-imp--b9f29d2a364ab5fdc4d2a62d.md) | 114 | `result-track:b9f29d2a364ab5fdc4d2a62dcc7878a0128fb7aae17b1b83be076f495d0cf874` |
| 11 | `lemma` | [equalizerSieve_mem_of_equalizerSieve_app_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/equalizersieve-mem-of-equalizersieve-app-mem--3114c88efa3717b5c5625d51.md) | 133 | `result-track:3114c88efa3717b5c5625d51c47b2524f4f3df303c89ad5be3cd61fa70e76587` |
| 12 | `instance` | [isLocallyInjective_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-comp--39466c9c2d56df3fdf7e4d2e.md) | 139 | `declaration-track:39466c9c2d56df3fdf7e4d2e687bededd1eff565a982e6e2eff77774a75c5274` |
| 13 | `lemma` | [isLocallyInjective_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-of-islocallyinjective--176ede6f174af39b8db8d95d.md) | 145 | `result-track:176ede6f174af39b8db8d95dafd5fdfee4751e0578200510544b4918c2a842e3` |
| 14 | `lemma` | [isLocallyInjective_of_isLocallyInjective_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-of-islocallyinjective-fac--277cbb1d77a9b3f6dcd31026.md) | 151 | `result-track:277cbb1d77a9b3f6dcd31026e1cc79725d6e71817ae8471ce891f3c80366fb3d` |
| 15 | `lemma` | [isLocallyInjective_iff_of_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-iff-of-fac--f0f5ecd1db1dbd1d860f1126.md) | 156 | `result-track:f0f5ecd1db1dbd1d860f1126a87c5d8de909dc1caf54a59ecde441354d16574f` |
| 16 | `lemma` | [isLocallyInjective_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-comp-iff--1075e9cb90fb10ea8d0f6387.md) | 167 | `result-track:1075e9cb90fb10ea8d0f6387217b05a0c1560c0e50be0c67fbdf8229f58ca455` |
| 17 | `lemma` | [isLocallyInjective_iff_injective_of_separated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-iff-injective-of-separated--af0c1ff0faee344679ba332a.md) | 171 | `result-track:af0c1ff0faee344679ba332a09f980ebe668fad85ce62e1437759ac8bfa2c844` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/instance--0e7ba1bb09dbc14af8cb0284.md) | 179 | `declaration-track:0e7ba1bb09dbc14af8cb0284a88bbd860dfea3b9781bab07d2fe483806b9193d` |
| 19 | `instance` | [isLocallyInjective_toPlus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-toplus--db570052b1d12ffa0809714f.md) | 189 | `declaration-track:db570052b1d12ffa0809714f7b692c4519f734e54d24ba6085e70fe9020eaffb` |
| 20 | `instance` | [isLocallyInjective_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-tosheafify--09040795b0f5012b18b675ea.md) | 197 | `declaration-track:09040795b0f5012b18b675eaa2b12965c33ea529c030655acf73e21cf67f5bcc` |
| 21 | `instance` | [isLocallyInjective_toSheafify'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-tosheafify--d07816ebf48763e8ee1ae992.md) | 203 | `declaration-track:d07816ebf48763e8ee1ae9928d878654e72b506c134cd17a41f17d47116fd26d` |
| 22 | `abbrev` | [IsLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective--e577a50d491372a36dc4b072.md) | 225 | `declaration-track:e577a50d491372a36dc4b0720db84ac871426766b55b277c8d3db111d3a0c412` |
| 23 | `lemma` | [isLocallyInjective_sheafToPresheaf_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-sheaftopresheaf-map-iff--187ea75bbd0280cbea813c5a.md) | 227 | `result-track:187ea75bbd0280cbea813c5ab4cc7ace5b71fde2219e2d0d0de85c55e92aac4e` |
| 24 | `instance` | [isLocallyInjective_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-of-iso--a22bac4b9ef5747a9baef2d6.md) | 230 | `declaration-track:a22bac4b9ef5747a9baef2d661424d0d8042f7bcdedf9890d2dcee8ef924fba6` |
| 25 | `lemma` | [mono_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/mono-of-injective--5cf5ac790791b6e46eed28f2.md) | 234 | `result-track:5cf5ac790791b6e46eed28f2dd30a746f8a402be6ee308e3c1a3d9fe8fc60c95` |
| 26 | `instance` | [isLocallyInjective_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-forget--b9acce7c9cb84512f987cb47.md) | 241 | `declaration-track:b9acce7c9cb84512f987cb472f1ac7f82a9bc07624c641aeb7c1985d8d0de95e` |
| 27 | `lemma` | [isLocallyInjective_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/islocallyinjective-iff-injective--013dbe94689e48bae1c77989.md) | 245 | `result-track:013dbe94689e48bae1c7798990b94e8f75f8b33ca5acefcbd2c54401e4fb5dcc` |
| 28 | `lemma` | [mono_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/mono-of-islocallyinjective--caf3a09b5e8f7e5ca1d9ab7b.md) | 252 | `result-track:caf3a09b5e8f7e5ca1d9ab7b4c5bf6d3f2984f82dfd92a7eab84ae26728edfea` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant25bf1e3f641dfceed735f9a15ac0e37454d785adaed3ab0ca84a210ea3f74d51.lean/declarations/instance--8e5f5e0b508a9a258babeba8.md) | 258 | `declaration-track:8e5f5e0b508a9a258babeba892f4477a1fd8c91b5d1331c87708691384eafd94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
