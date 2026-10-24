# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9224983f99c1657a7ec7439b90b5e3fe52ee32be",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9224983f99c1657a7ec7439b90b5e3fe52ee32be`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Order` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addZeroClass'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/addzeroclass--c5980c8251e8fb41c46e091a.md) | 24 | `declaration-track:c5980c8251e8fb41c46e091a3e87bd0a546d1ec935eed556a743c14fdef96efb` |
| 2 | `def` | [toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/tomultiset--bab5b4946dfdd3e95774e7a4.md) | 31 | `declaration-track:bab5b4946dfdd3e95774e7a4b8713fb303fd2b7a4bf1c14fe7c8a017126e0c7e` |
| 3 | `theorem` | [toMultiset_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/tomultiset-single--56e253045facc2d35d9b2762.md) | 36 | `result-track:56e253045facc2d35d9b2762b1e7c1e1f361e1b1eee0268554eb480790e256fc` |
| 4 | `def` | [toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp--b743910cb42fb0ed7dc96047.md) | 48 | `declaration-track:b743910cb42fb0ed7dc96047e353bf35e6d59d52f61bfe178e6b96a51571786c` |
| 5 | `theorem` | [toDFinsupp_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-apply--a8df014e07e9886b77102964.md) | 57 | `result-track:a8df014e07e9886b771029646ae6d94e70b8929c1aeb325545bab2ea7e4d1ad5` |
| 6 | `theorem` | [toDFinsupp_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-support--5d826df2e75cfd78adbdaea0.md) | 62 | `result-track:5d826df2e75cfd78adbdaea055d09f00a0359724b6e147d2e78eb06835bcbd88` |
| 7 | `theorem` | [toDFinsupp_replicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-replicate--26bd09700637f3b5c22c021f.md) | 67 | `result-track:26bd09700637f3b5c22c021f9c64a0b5bc72523fa0d9cef6cdda34937c796c10` |
| 8 | `theorem` | [toDFinsupp_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-singleton--0026a16a2ad481d4801556a6.md) | 75 | `result-track:0026a16a2ad481d4801556a6048bd6288aa8bafdc29ef47a45b4efe9b983ba13` |
| 9 | `def` | [equivDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/equivdfinsupp--df680c65e33167655015e758.md) | 81 | `declaration-track:df680c65e33167655015e758794829034b60c2462cf6389d6ef31db524d7fc1b` |
| 10 | `theorem` | [toDFinsupp_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-tomultiset--bab98e5a64c523d04f84c6a4.md) | 86 | `result-track:bab98e5a64c523d04f84c6a492a17aaf0a8ef8be13518c37abf755044c9b0c7c` |
| 11 | `theorem` | [toDFinsupp_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-injective--6fdc4851acd4f94f5b654323.md) | 90 | `result-track:6fdc4851acd4f94f5b654323a04505e0cf7920d70cc8867dc3ce6816382bbabc` |
| 12 | `theorem` | [toDFinsupp_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-inj--726f96b7f2f083336941db0e.md) | 95 | `result-track:726f96b7f2f083336941db0e6cca2ce9ba59a1a712ccbbccc59b6f4523ee2aee` |
| 13 | `theorem` | [toDFinsupp_le_toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-le-todfinsupp--b5e6bfa5b8b98699eb727962.md) | 100 | `result-track:b5e6bfa5b8b98699eb7279624a2515e745e093dfeaabab9cee0602ecce8c0be9` |
| 14 | `theorem` | [toDFinsupp_lt_toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-lt-todfinsupp--a8aa0437af769e28cee25c1b.md) | 105 | `result-track:a8aa0437af769e28cee25c1b05304376dba82823062d9518c0d8571923744e86` |
| 15 | `theorem` | [toDFinsupp_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-inter--8ea65ed921bb6361cf154599.md) | 110 | `result-track:8ea65ed921bb6361cf154599b5e67f77f8658301e698aa4fdece536f14143bd0` |
| 16 | `theorem` | [toDFinsupp_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/todfinsupp-union--444d6be096358cacd6a6ea1b.md) | 115 | `result-track:444d6be096358cacd6a6ea1b626d644abf3b7ab31f212149da512740409a5d9e` |
| 17 | `theorem` | [toMultiset_toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/tomultiset-todfinsupp--8c250830f81f4e2a664443c9.md) | 127 | `result-track:8c250830f81f4e2a664443c95e8453fe1d1924a2b0e26bf26eb9e8baf345fe79` |
| 18 | `theorem` | [toMultiset_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/tomultiset-injective--cb8e0de5bb13d8496cfee411.md) | 132 | `result-track:cb8e0de5bb13d8496cfee4116907e05f10ec74cb73ce4853a2060257ac75a95e` |
| 19 | `theorem` | [toMultiset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/tomultiset-inj--ce008c1b5d88e282d4fae47b.md) | 137 | `result-track:ce008c1b5d88e282d4fae47b15b1e932e671cc3adfe5533ce5393f82edb84804` |
| 20 | `theorem` | [toMultiset_le_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/tomultiset-le-tomultiset--8c3b874d1704ef1de7675746.md) | 142 | `result-track:8c3b874d1704ef1de7675746c28ff3f2f1e9114f5209a74e95bb30bfbe5938b9` |
| 21 | `theorem` | [toMultiset_lt_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/tomultiset-lt-tomultiset--8f989dcba7f3f5bd947d895c.md) | 147 | `result-track:8f989dcba7f3f5bd947d895c33ee42eb696dacffff430045b805492f80ae3ba8` |
| 22 | `theorem` | [toMultiset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/tomultiset-inf--203d3e2dd1cd2fafffcf8fa6.md) | 154 | `result-track:203d3e2dd1cd2fafffcf8fa632df028494af3a1463a14b1df11ef684e3d2e3b4` |
| 23 | `theorem` | [toMultiset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Varianta2a07f3f11e5234c5c6c2ff6e5b03f97831bafc326c22ddbb81470030969c3b7.lean/declarations/tomultiset-sup--2fe25451f7009125cb519737.md) | 159 | `result-track:2fe25451f7009125cb5197379831669719d5e6d0186e740364bb94329bbec4d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
