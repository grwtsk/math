# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DoublingConst.Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0920add13d4ed5c3b3c3a26793befef5a6a6ddc7",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0920add13d4ed5c3b3c3a26793befef5a6a6ddc7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.PluenneckeRuzsa` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Density` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/mulconst--be46f6d34adf3208cc150e2b.md) | 37 | `declaration-track:be46f6d34adf3208cc150e2bc3d9746ba9f29f526231c93163bc991690bb5c69` |
| 2 | `def` | [divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/divconst--90ab1bef36697e6e89160e29.md) | 46 | `declaration-track:90ab1bef36697e6e89160e29b15432b4a0e1e3aa87d1664fcbe1c3aff3d92ad1` |
| 3 | `lemma` | [mulConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/mulconst-mul-card--a240d81890781d060724f4b0.md) | 75 | `result-track:a240d81890781d060724f4b0cfc4ce0d832d8e7d1ee992b0772ae791d28fa620` |
| 4 | `lemma` | [divConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/divconst-mul-card--e36ab0d56a446a3074bc10fe.md) | 81 | `result-track:e36ab0d56a446a3074bc10fe9adbe8bd3a82bdda3e10d06526d7df73962f1735` |
| 5 | `lemma` | [card_mul_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/card-mul-mulconst--25fe46dc04199755f89e4728.md) | 87 | `result-track:25fe46dc04199755f89e4728c220c1ba8ee71b4196b9fe08f7834eba37f3fae6` |
| 6 | `lemma` | [card_mul_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/card-mul-divconst--ee6f9f63fe6bae6766c28d23.md) | 91 | `result-track:ee6f9f63fe6bae6766c28d231654bda8d1726938efa073818e360a428205e84d` |
| 7 | `lemma` | [mulConst_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/mulconst-empty-left--2c33f91ca7fd49c18595b017.md) | 95 | `result-track:2c33f91ca7fd49c18595b01742e74c647a0a52dc10b64ce0c33fbcbfd0a361c5` |
| 8 | `lemma` | [divConst_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/divconst-empty-left--5d7a89abb5f1c4231ac36eaf.md) | 98 | `result-track:5d7a89abb5f1c4231ac36eafe209c04250e7b0f838014fb7479209d1e9befa57` |
| 9 | `lemma` | [mulConst_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/mulconst-empty-right--89d4e4d61ee046667d72bf30.md) | 101 | `result-track:89d4e4d61ee046667d72bf30c4a0e365b447e36039b4d0006835c695729848fe` |
| 10 | `lemma` | [divConst_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/divconst-empty-right--164ade10171e0aa84c0a7f8c.md) | 104 | `result-track:164ade10171e0aa84c0a7f8c97e698548683d5afa694057953272092a4703d28` |
| 11 | `lemma` | [mulConst_inv_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/mulconst-inv-right--741a5c0d4416add84573d466.md) | 107 | `result-track:741a5c0d4416add84573d466b232c67c6c90030ef32ea8bc312434c7054c0924` |
| 12 | `lemma` | [divConst_inv_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/divconst-inv-right--56793280164d1d4992cc0031.md) | 111 | `result-track:56793280164d1d4992cc00313c35ec77c6dea9bcda8eecc3beee9743861cd0b4` |
| 13 | `lemma` | [mulConst_le_inv_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/mulconst-le-inv-dens--7084f60e285ccb23e02644f6.md) | 119 | `result-track:7084f60e285ccb23e02644f6706ce503d61183b569477ea2c15ef01d06f5df0a` |
| 14 | `lemma` | [divConst_le_inv_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/divconst-le-inv-dens--3f6abbb4c3f6dd28f278ecd8.md) | 124 | `result-track:3f6abbb4c3f6dd28f278ecd865e765e29a784c1d134a91b3dc6449f788dd15d9` |
| 15 | `lemma` | [cast_addConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/cast-addconst--c3be2b5fa6fd5c72f2f215a4.md) | 132 | `result-track:c3be2b5fa6fd5c72f2f215a48fdacbe20208b3d01422b3b85bb1ec86e77eb9b0` |
| 16 | `lemma` | [cast_subConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/cast-subconst--4f9936cf62abdfdf01df2bfa.md) | 135 | `result-track:4f9936cf62abdfdf01df2bfa64facc76545fcce7bc417981928e5e87c8104ea8` |
| 17 | `lemma` | [cast_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/cast-mulconst--6b00c78cb8ffd9850f4321eb.md) | 138 | `result-track:6b00c78cb8ffd9850f4321eb3d0fb116599837b67d08790570b8522549b06fdb` |
| 18 | `lemma` | [cast_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/cast-divconst--3b065f362d5ddc67b0d5f86d.md) | 140 | `result-track:3b065f362d5ddc67b0d5f86d5f0b206242a1c0b3d914396c7437af832412c3f4` |
| 19 | `lemma` | [cast_addConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/cast-addconst-mul-card--9185d720540530a57b186f7f.md) | 142 | `result-track:9185d720540530a57b186f7fae4bbb249e6ddc8b793fe8d8ed44f64a8bb3155d` |
| 20 | `lemma` | [cast_subConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/cast-subconst-mul-card--d2bb842267c2409c1392efc0.md) | 145 | `result-track:d2bb842267c2409c1392efc0c9cb70141c55669d71f13c0b63304f2d4604b395` |
| 21 | `lemma` | [card_mul_cast_addConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/card-mul-cast-addconst--28ed4e5e19d66110ddcd83cb.md) | 148 | `result-track:28ed4e5e19d66110ddcd83cb81cbddff83b7f6f32b839f321fcb19ad9fbde5fd` |
| 22 | `lemma` | [card_mul_cast_subConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/card-mul-cast-subconst--13e1075effb6083ca37d270d.md) | 151 | `result-track:13e1075effb6083ca37d270d58874eba6298679aa133813c246dd1b7a948931e` |
| 23 | `lemma` | [cast_mulConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/cast-mulconst-mul-card--112dc4edb0484a7ad2994b1a.md) | 155 | `result-track:112dc4edb0484a7ad2994b1a24d4e7bbfcff81d922d732b7f98558d8ef54c991` |
| 24 | `lemma` | [cast_divConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/cast-divconst-mul-card--dfefaaa482e7b981f6ee4fd6.md) | 159 | `result-track:dfefaaa482e7b981f6ee4fd6baec9594f5ad756bed47dffaffc23dd5b0cbf426` |
| 25 | `lemma` | [card_mul_cast_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/card-mul-cast-mulconst--5821037c003b0b729aeed6af.md) | 163 | `result-track:5821037c003b0b729aeed6af5f237b41b49fb3a32d36b0399f04e00b19f64b93` |
| 26 | `lemma` | [card_mul_cast_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/card-mul-cast-divconst--d59821835a448d7304945737.md) | 167 | `result-track:d59821835a448d73049457373f371805a6b4c5ed7e293404a9a9e78d1453c6b0` |
| 27 | `lemma` | [mulConst_inv_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/mulconst-inv-left--b2ede4b2ca97798020ca162b.md) | 178 | `result-track:b2ede4b2ca97798020ca162b879d4b4e6b0ecbcc39c8081884001ae9dbc4de9b` |
| 28 | `lemma` | [divConst_inv_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/divconst-inv-left--35d31c34e9554a3d5be311de.md) | 182 | `result-track:35d31c34e9554a3d5be311dee3ceac617c4c97de26fcab15d8ac64f9db4eb1d6` |
| 29 | `lemma` | [mulConst_le_divConst_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/mulconst-le-divconst-sq--03ac4b323eb200dc9ea4b4ba.md) | 192 | `result-track:03ac4b323eb200dc9ea4b4bab19428a4c9e4c87758651a97b9ee373a9f1157fb` |
| 30 | `lemma` | [divConst_le_mulConst_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean/declarations/divconst-le-mulconst-sq--435049a7fea22a3d43af0f80.md) | 208 | `result-track:435049a7fea22a3d43af0f80e098a424a8daaffe7c509d80d9dc4918ee2b4c81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
