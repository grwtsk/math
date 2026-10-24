# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MetricSeparated.Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c08042ed12efcb5267729dd486b03e3b02f34e3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c08042ed12efcb5267729dd486b03e3b02f34e3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/isseparated--70f514780a5d48ec5c6bb8ca.md) | 46 | `declaration-track:70f514780a5d48ec5c6bb8cab1eff338f0798bd98a35c21e6d60769dec218eca` |
| 2 | `lemma` | [IsSeparated.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/isseparated-empty--06055ef14ea5f29747bf79f0.md) | 48 | `result-track:06055ef14ea5f29747bf79f033b282b5960339a7aa457395fb33cfc790fe0b79` |
| 3 | `lemma` | [IsSeparated.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/isseparated-singleton--a9c894260eea1e0f8599f155.md) | 49 | `result-track:a9c894260eea1e0f8599f155b80f5d6d2e03fa410eef23be404828b0127b4f03` |
| 4 | `lemma` | [IsSeparated.of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/isseparated-of-subsingleton--a3eb0ced046f08516d3e4c29.md) | 51 | `result-track:a3eb0ced046f08516d3e4c29c90151f3352e4948a414418ad60816bd67694c7c` |
| 5 | `lemma` | [IsSeparated.anti](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/isseparated-anti--d7aef80d52b0c7668ec79985.md) | 55 | `result-track:d7aef80d52b0c7668ec79985e6ef5c242f98718e4e4395f3ae3a7adafddaf2e6` |
| 6 | `lemma` | [IsSeparated.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/isseparated-subset--49a223547812b52bfd551693.md) | 58 | `result-track:49a223547812b52bfd551693e03c392cc99d31a3dbec09b761e5a65b2f120589` |
| 7 | `lemma` | [isSeparated_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/isseparated-insert--70f024ba3310658af1dd80be.md) | 60 | `result-track:70f024ba3310658af1dd80be68287653e1ce06582d4e9e42f3bac1528870e5b2` |
| 8 | `lemma` | [isSeparated_insert_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/isseparated-insert-of-notmem--776b6faa600927095b6a481a.md) | 64 | `result-track:776b6faa600927095b6a481a6497094be86da84bbdf418a3c842e6d5b59cc2bd` |
| 9 | `lemma` | [IsSeparated.insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/isseparated-insert--4058b4663e867315531e6854.md) | 71 | `result-track:4058b4663e867315531e6854fa0f8388c762951f3dcb552a21e7955b5d8f67c7` |
| 10 | `def` | [AreSeparated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/areseparated--06d9e7db309ac14f7768748c.md) | 86 | `declaration-track:06d9e7db309ac14f7768748c22f3041b3cbe6b87a9044a5cf10df176203cec62` |
| 11 | `theorem` | [symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/symm--bbd8fc8d3292775a7b3f1395.md) | 93 | `result-track:bbd8fc8d3292775a7b3f1395ceefa7b750582584b5f6174034d03bd243448c33` |
| 12 | `theorem` | [comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/comm--28b826d98522bb8e2ecbd3d8.md) | 97 | `result-track:28b826d98522bb8e2ecbd3d8b4ba8871adbfb155f76a0cf9e65d34a49c292c08` |
| 13 | `theorem` | [empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/empty-left--d882ed0d1c616058579a7651.md) | 100 | `result-track:d882ed0d1c616058579a7651af1f78b8d314074687708e66aa621e0f85cec184` |
| 14 | `theorem` | [empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/empty-right--577d7137371af6fc41fc71c7.md) | 104 | `result-track:577d7137371af6fc41fc71c773767286029bc4742996508382f21100cee2d579` |
| 15 | `theorem` | [disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/disjoint--fe6f3d986a457039a4ba14af.md) | 107 | `result-track:fe6f3d986a457039a4ba14af77ddf96b04d3bfca831fe1509f151483beda1892` |
| 16 | `theorem` | [subset_compl_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/subset-compl-right--2a0b8cd06a26c1954ddc176b.md) | 111 | `result-track:2a0b8cd06a26c1954ddc176bce0966098f183aa6fc8c4898e9c7b0f58d714676` |
| 17 | `theorem` | [mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/mono--41057e5d622b58fe27184a46.md) | 115 | `result-track:41057e5d622b58fe27184a466594d213004d3df6707e9ac17d3f97db6d1e910d` |
| 18 | `theorem` | [mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/mono-left--26f2adaab3e57e9c03fb6eca.md) | 119 | `result-track:26f2adaab3e57e9c03fb6eca9477f7662fceaee3111ecd8182fbb3d043510784` |
| 19 | `theorem` | [mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/mono-right--5ef6b3cb2667f8bcfcd976ec.md) | 122 | `result-track:5ef6b3cb2667f8bcfcd976ecd68bf6ff6103120df3bf274b9363fa40ad776331` |
| 20 | `theorem` | [union_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/union-left--219e948339d643b214d5ec20.md) | 125 | `result-track:219e948339d643b214d5ec207b2600c432d7c81d998a885b50ea406af3f7acfc` |
| 21 | `theorem` | [union_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/union-left-iff--8cf02643760fe285a381eec8.md) | 135 | `result-track:8cf02643760fe285a381eec81d84796f27fa04f1fccc1f92348d5a5d2ee3adfb` |
| 22 | `theorem` | [union_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/union-right--3d88262c4f5139157a9837e3.md) | 140 | `result-track:3d88262c4f5139157a9837e3711110b46a205f45be7cf3618b002d5b8af5af47` |
| 23 | `theorem` | [union_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/union-right-iff--d7a24b630a283bc50f5062be.md) | 145 | `result-track:d7a24b630a283bc50f5062be87e6b906390083a7d4e22df4a4897b4ead745412` |
| 24 | `theorem` | [finite_iUnion_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/finite-iunion-left-iff--2a27bf6d4e281c2ade8c0536.md) | 149 | `result-track:2a27bf6d4e281c2ade8c053689df473afd06f35234fa054b74c73fd8537d2135` |
| 25 | `theorem` | [finite_iUnion_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/finite-iunion-right-iff--5341d1f68ff7e992968f6aeb.md) | 157 | `result-track:5341d1f68ff7e992968f6aeb422ee9eea03e7f033b105adb8cb52ae7bbc0e12b` |
| 26 | `theorem` | [finset_iUnion_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/finset-iunion-left-iff--fd3f3f1bedef336525755b07.md) | 162 | `result-track:fd3f3f1bedef336525755b07af3e53fa5a06f65331ec4940a8532db503467446` |
| 27 | `theorem` | [finset_iUnion_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/declarations/finset-iunion-right-iff--d1d879be2e6206c67fa08cac.md) | 169 | `result-track:d1d879be2e6206c67fa08cacd578c71d4e00400b34e2469aca6d377149038634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
