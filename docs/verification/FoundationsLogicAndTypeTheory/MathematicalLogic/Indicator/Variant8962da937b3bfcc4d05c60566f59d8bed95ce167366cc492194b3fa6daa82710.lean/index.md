# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Indicator.Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "249d04717fc0528c6448ef34038f9137e12c7216",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `249d04717fc0528c6448ef34038f9137e12c7216`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean.json)

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
| 1 | `def` | [mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator--7e76c70ed438c0f2b2dbb56d.md) | 60 | `declaration-track:7e76c70ed438c0f2b2dbb56d793e645253c710696ebfff28dd4fb703275134ca` |
| 2 | `lemma` | [piecewise_eq_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/piecewise-eq-mulindicator--8ff09a4f0563d17c5360fab7.md) | 65 | `result-track:8ff09a4f0563d17c5360fab78a1f44af0cb229caa3b0ec2a3280f38df4ec5757` |
| 3 | `lemma` | [mulIndicator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-apply--60b9b82cfe8ce8e310339f0b.md) | 69 | `result-track:60b9b82cfe8ce8e310339f0b36fd2cef745cbacae32bb8860246a8b24e444b53` |
| 4 | `lemma` | [mulIndicator_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-of-mem--880cbba755721f7c534d0224.md) | 75 | `result-track:880cbba755721f7c534d02248fd05efdd638d159e9324b384f30f63ef0c30757` |
| 5 | `lemma` | [mulIndicator_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-of-notmem--a3d9f7549fbf2bc6fca93005.md) | 78 | `result-track:a3d9f7549fbf2bc6fca930058ac4f68954e996acbde54139336f92514f2527f9` |
| 6 | `lemma` | [mulIndicator_eq_one_or_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-eq-one-or-self--7abbd0f94d2ceeeb803ce1ed.md) | 81 | `result-track:7abbd0f94d2ceeeb803ce1edac3a481273b72afa05caabd201a474a94a687b39` |
| 7 | `lemma` | [mulIndicator_apply_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-apply-eq-self--3c68d9dea7191842775440d8.md) | 88 | `result-track:3c68d9dea7191842775440d8ddf16173a55db618a64af59f831e441bb494e609` |
| 8 | `lemma` | [mulIndicator_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-eq-self--070b876af153f838a080ab48.md) | 93 | `result-track:070b876af153f838a080ab4859e8f9bee0cf9ba5d97a07733e827233d5898cfa` |
| 9 | `lemma` | [mulIndicator_eq_self_of_superset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-eq-self-of-superset--7ab46a7f196b2a5f2f53584e.md) | 97 | `result-track:7ab46a7f196b2a5f2f53584e79bb5eadee14c126086ca66506041c016c7d2a70` |
| 10 | `lemma` | [mulIndicator_apply_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-apply-eq-one--8f83dcdf42c9efbebedab141.md) | 103 | `result-track:8f83dcdf42c9efbebedab141d31037056ea0437e37eb551c870895cd0c1ec72a` |
| 11 | `lemma` | [mulIndicator_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-eq-one--1df90d5e5949c09aef4b7e9c.md) | 108 | `result-track:1df90d5e5949c09aef4b7e9c7271bbdbd16974e0289fb55578da5afdd16c4740` |
| 12 | `lemma` | [mulIndicator_eq_one'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-eq-one--e18da2bbbd14a6c9c74fcc53.md) | 113 | `result-track:e18da2bbbd14a6c9c74fcc53f4abb962e3e7a0f1048bf89177b8cf6a8b7a365a` |
| 13 | `lemma` | [mulIndicator_apply_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-apply-ne-one--9b56e73cd3f97d2dff2e7c39.md) | 117 | `result-track:9b56e73cd3f97d2dff2e7c397c89f898bc4c9e65a39646a335843e9c66fbadda` |
| 14 | `lemma` | [mulSupport_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulsupport-mulindicator--d82e74f8d02add3a5418f2a1.md) | 121 | `result-track:d82e74f8d02add3a5418f2a1594a2227857d88898a4bd90955f88d6443deaf95` |
| 15 | `lemma` | [mem_of_mulIndicator_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mem-of-mulindicator-ne-one--79cbd31310e123405bb69829.md) | 130 | `result-track:79cbd31310e123405bb698293c375dc907e4a223ae8f2833555e4e8c05d3d6e5` |
| 16 | `lemma` | [eqOn_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/eqon-mulindicator--12d9a737750b1ee6eadb6ee0.md) | 135 | `result-track:12d9a737750b1ee6eadb6ee05195fdbf5ccc49156c8e6fc245839f9790b4419e` |
| 17 | `lemma` | [eqOn_mulIndicator'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/eqon-mulindicator--f49c7e7cd782f452f8ada61a.md) | 139 | `result-track:f49c7e7cd782f452f8ada61a0d5be86dbd4500bca0416d6fca53701cdde6e583` |
| 18 | `lemma` | [mulSupport_mulIndicator_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulsupport-mulindicator-subset--805751ffbd8878be2c823480.md) | 143 | `result-track:805751ffbd8878be2c82348056cf5903de8fdbd5e2dd6648ddcd1abbfb41f071` |
| 19 | `lemma` | [mulIndicator_mulSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-mulsupport--c20de415f4c1ce4bdb1a7716.md) | 147 | `result-track:c20de415f4c1ce4bdb1a771643cd7764838c5b98482232817b777d79d023264e` |
| 20 | `lemma` | [mulIndicator_range_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-range-comp--e16ae35ca1dfc14f0f0b4b42.md) | 151 | `result-track:e16ae35ca1dfc14f0f0b4b421d6e57028a5a730be3a0af09ea9e2a2289ba734a` |
| 21 | `lemma` | [mulIndicator_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-congr--5b745e9387cccc6778077443.md) | 157 | `result-track:5b745e9387cccc67780774433cd470a6be2097fdf66c7d87d3dbfaee8afde564` |
| 22 | `lemma` | [mulIndicator_eq_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-eq-mulindicator--eca783c79bdbcc95fdeaaa1e.md) | 165 | `result-track:eca783c79bdbcc95fdeaaa1e8008ca7d0c5138ec3b6e1fc0e8346822681fd42e` |
| 23 | `lemma` | [mulIndicator_const_eq_mulIndicator_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-const-eq-mulindicator-const--54af2755e4e39d77a85ffb7f.md) | 171 | `result-track:54af2755e4e39d77a85ffb7f811f9d4d4bd34e537f0a87488f716b50bc24c8ad` |
| 24 | `lemma` | [mulIndicator_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-univ--0224b298cb6e26e5f17b80fe.md) | 176 | `result-track:0224b298cb6e26e5f17b80feeb79fc5554ebdd0c56373999f2edf04f270f1b8e` |
| 25 | `lemma` | [mulIndicator_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-empty--135a94d1315b93ea6d000fc7.md) | 180 | `result-track:135a94d1315b93ea6d000fc73ffcd696aa951b8156c900c2ec6d636c26cf1a85` |
| 26 | `lemma` | [mulIndicator_empty'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-empty--ced8d36715114ec84c4c612d.md) | 184 | `result-track:ced8d36715114ec84c4c612db63f47f9dd362b7b323e167264840b43f6823ebe` |
| 27 | `lemma` | [mulIndicator_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-one--22e562a2afe717a705f497b9.md) | 190 | `result-track:22e562a2afe717a705f497b994407db4b48dbc54ca6c9c386b5800e9fb0d7952` |
| 28 | `lemma` | [mulIndicator_one'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-one--e2abc9757934c2de67111f0f.md) | 194 | `result-track:e2abc9757934c2de67111f0fcaffe93dd0fefad5aed186b686aca42b8c0c3a0b` |
| 29 | `lemma` | [mulIndicator_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-mulindicator--9a7766507a3cde9632998fbc.md) | 200 | `result-track:9a7766507a3cde9632998fbcf14270d8d0f7823e33727c72539ef81f33736cdd` |
| 30 | `lemma` | [mulIndicator_inter_mulSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-inter-mulsupport--1934f4430eb07873dd11c15b.md) | 207 | `result-track:1934f4430eb07873dd11c15bacc363f8446e95ab2fa8df6f307d28eabda0d1a7` |
| 31 | `lemma` | [comp_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/comp-mulindicator--fab9ae7d5ddd8ba80698d0be.md) | 212 | `result-track:fab9ae7d5ddd8ba80698d0be3ac49503ecedbcd2620643c3d9ba4cf4eba7fecb` |
| 32 | `lemma` | [mulIndicator_comp_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-comp-right--1249f9b7c82042375be0585b.md) | 218 | `result-track:1249f9b7c82042375be0585b4f8fb2aa517fa9db0a05ceb71d28605ead2c0065` |
| 33 | `lemma` | [mulIndicator_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-image--f796459cbc3a656f3004d944.md) | 223 | `result-track:f796459cbc3a656f3004d944a92b522b57a0d3d03d79dc75f77e9f2d7fe0dc5e` |
| 34 | `lemma` | [mulIndicator_comp_of_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-comp-of-one--895f8251df95ab9533e68d7d.md) | 228 | `result-track:895f8251df95ab9533e68d7d4fa03933e068b5e311f52f845b93d7618d7277e6` |
| 35 | `lemma` | [comp_mulIndicator_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/comp-mulindicator-const--29a7b9440fcaaca01e6957d3.md) | 235 | `result-track:29a7b9440fcaaca01e6957d3817838cf1fc7ed162c36b647bbb107acc7c32228` |
| 36 | `lemma` | [mulIndicator_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-apply-apply--68a4a4a6bcd3a0ea7821216f.md) | 242 | `result-track:68a4a4a6bcd3a0ea7821216f6e6ce23abd2e79ced849f48bb747bb550b9c849e` |
| 37 | `lemma` | [mulIndicator_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-preimage--2b199e799196259d3dd7e221.md) | 247 | `result-track:2b199e799196259d3dd7e221b93c6c47ada0b28f9b97b08a3c4488216fb85b42` |
| 38 | `lemma` | [mulIndicator_one_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-one-preimage--87f85e58d59ce677954989b1.md) | 253 | `result-track:87f85e58d59ce677954989b1de3bda065765fe04a1b121494941cdffe51bcebe` |
| 39 | `lemma` | [mulIndicator_const_preimage_eq_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-const-preimage-eq-union--274ee1b6e2b524d394d0fed9.md) | 260 | `result-track:274ee1b6e2b524d394d0fed96194a45719fa66df729f248d0ed57f30eddc9273` |
| 40 | `lemma` | [mulIndicator_const_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-const-preimage--50a2b210a02e64dd37662860.md) | 267 | `result-track:50a2b210a02e64dd37662860bb51e366aba7f575de0a7ee608ee55f6db0794e3` |
| 41 | `lemma` | [mulIndicator_preimage_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-preimage-of-notmem--8637504ab317169b5ddbaa8d.md) | 274 | `result-track:8637504ab317169b5ddbaa8d3288259e2c93c93319fc252809f383aa33770472` |
| 42 | `lemma` | [mem_range_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mem-range-mulindicator--67217b5a155b2a7d4fc691e7.md) | 279 | `result-track:67217b5a155b2a7d4fc691e757b405f265039d8c7ea3d12d2ef8e87bb9178410` |
| 43 | `lemma` | [mulIndicator_rel_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/mulindicator-rel-mulindicator--0a9bb25716ecf36cde187360.md) | 285 | `result-track:0a9bb25716ecf36cde187360cc3eca66aa68d3aa9a0d80b0f58862c1e2e2823b` |
| 44 | `lemma` | [indicator_one_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/declarations/indicator-one-preimage--a2083220bfbbbb995fb312db.md) | 291 | `result-track:a2083220bfbbbb995fb312dbea4be455e610ef437851b263a20f96124b7b82f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
