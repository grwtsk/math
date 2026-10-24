# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "679066e4d247c6bf1f5890a55c46e67e2ca0d554",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `679066e4d247c6bf1f5890a55c46e67e2ca0d554`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/instance--72200f3f3a8499a869fa4296.md) | 30 | `declaration-track:72200f3f3a8499a869fa42967bba932ed45db8c55e1080a9dacc18172239148a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/instance--fa6d5358099272ca61a3ad41.md) | 34 | `declaration-track:fa6d5358099272ca61a3ad4154e21031004f14f8bd6057a0c5629420d969b1fe` |
| 3 | `theorem` | [list_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/list-prod-mem--c69669d8162957ee86f8bdcb.md) | 50 | `result-track:c69669d8162957ee86f8bdcb88e8ae023af53d4c5476d6c99dd2ddb0e5c113f9` |
| 4 | `theorem` | [multiset_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/multiset-prod-mem--c708215ce87cbfe1f752001f.md) | 58 | `result-track:c708215ce87cbfe1f752001f59572021513aef19401e35429f5764f4853aa494` |
| 5 | `theorem` | [multiset_noncommProd_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/multiset-noncommprod-mem--5c287053c0c3a1f3746ad1f3.md) | 65 | `result-track:5c287053c0c3a1f3746ad1f3553e56c9f6018e1adb53f48c6ea1703cb3990007` |
| 6 | `theorem` | [prod_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/prod-mem--9d4987c7bad11e579d3607fd.md) | 75 | `result-track:9d4987c7bad11e579d3607fdb6a4b98e6deec2db7b805407ca9931cdb4087373` |
| 7 | `theorem` | [noncommProd_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/noncommprod-mem--597c9122d0914846a058c619.md) | 82 | `result-track:597c9122d0914846a058c61901bda325bb760da28ca2992a17a22f7a65749b33` |
| 8 | `theorem` | [val_list_prod](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/val-list-prod--d7f7daed4e415486f72ffaac.md) | 90 | `result-track:d7f7daed4e415486f72ffaac6ae2cba40342a10ad207724f088677c889e00572` |
| 9 | `theorem` | [val_multiset_prod](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/val-multiset-prod--548c2c73e04378ea82e69a5e.md) | 97 | `result-track:548c2c73e04378ea82e69a5ef301d739328f700b6b5bba4a651603478e4ac5de` |
| 10 | `theorem` | [val_finset_prod](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/val-finset-prod--2fb8852eef6a464f85a0b146.md) | 105 | `result-track:2fb8852eef6a464f85a0b1465ea4a1f638a7fed2329e90cfb714e74ba9d5e641` |
| 11 | `instance` | [fintypeBot](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/fintypebot--f9c68e0411b35f99f44b655e.md) | 112 | `declaration-track:f9c68e0411b35f99f44b655ed6c05f03181da97ea5acbfc3249f3aad7ef96a20` |
| 12 | `theorem` | [card_bot](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/card-bot--e0589289b63f5655e3be0775.md) | 122 | `result-track:e0589289b63f5655e3be0775f66916b5a9e27de3b76efcc2d772d809d86dacf9` |
| 13 | `theorem` | [card_top](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/card-top--c29ef8d22fc7c5e3a570f9cf.md) | 129 | `result-track:c29ef8d22fc7c5e3a570f9cf46ba69898085157bb61a67ec9a7d41769f5f7068` |
| 14 | `theorem` | [eq_top_of_card_eq](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/eq-top-of-card-eq--cd94d86931a3b96be6710c6a.md) | 134 | `result-track:cd94d86931a3b96be6710c6a6d5daf5e8cb51cdce2aa362888db0ee29f0fd912` |
| 15 | `theorem` | [card_eq_iff_eq_top](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/card-eq-iff-eq-top--53e09fd4d6b53c2ed35843dc.md) | 144 | `result-track:53e09fd4d6b53c2ed35843dc9eb59207059fbb333ef47a2dc23e006fea5ba98f` |
| 16 | `theorem` | [eq_top_of_le_card](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/eq-top-of-le-card--05e97aea617026a78c09a692.md) | 148 | `result-track:05e97aea617026a78c09a692eafbca0c2c822c8df602946ea09693dbf3d3283e` |
| 17 | `theorem` | [eq_bot_of_card_le](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/eq-bot-of-card-le--4826c795c0b186bb82f5efcc.md) | 155 | `result-track:4826c795c0b186bb82f5efcc57b0dd4bc2ba89de497738eecb2ff3fd2438f99d` |
| 18 | `theorem` | [eq_bot_of_card_eq](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/eq-bot-of-card-eq--2c5234dd774de4368c7426bb.md) | 162 | `result-track:2c5234dd774de4368c7426bb31087a6c184109b1407e5038d3d845b4fd9393bb` |
| 19 | `theorem` | [card_le_one_iff_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/card-le-one-iff-eq-bot--32ac741f3b517d485bf97aef.md) | 168 | `result-track:32ac741f3b517d485bf97aefc80d93635857b0b75a88855e7c71541e96b8272e` |
| 20 | `theorem` | [one_lt_card_iff_ne_bot](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/one-lt-card-iff-ne-bot--422ed0cd82c2b1919c79c96d.md) | 177 | `result-track:422ed0cd82c2b1919c79c96d75ed0bdda7fae74f1eca9b2eb93b871b088676eb` |
| 21 | `theorem` | [card_le_card_group](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/card-le-card-group--3a10b002eedb55d4ef71f125.md) | 183 | `result-track:3a10b002eedb55d4ef71f1252e879eed4836cfcf829faf871cd738d5f0358203` |
| 22 | `theorem` | [pi_mem_of_mulSingle_mem_aux](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/pi-mem-of-mulsingle-mem-aux--4d5f6645246be5263ee51258.md) | 197 | `result-track:4d5f6645246be5263ee51258d0ce3b79144801868e69f738e4ced35a82121486` |
| 23 | `theorem` | [pi_mem_of_mulSingle_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/pi-mem-of-mulsingle-mem--17fd70a1c4e80c5563b18b37.md) | 233 | `result-track:17fd70a1c4e80c5563b18b376a9432bc8d080c0b2363ffd857a06f91c4ced532` |
| 24 | `theorem` | [pi_le_iff](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/pi-le-iff--ca57cfc7ff5b71556212e8f6.md) | 243 | `result-track:ca57cfc7ff5b71556212e8f6331f799fec2403c1ab4ed002ffc242026bbae679` |
| 25 | `theorem` | [mem_normalizer_fintype](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/mem-normalizer-fintype--83d9ec72c145e005d92fbcc2.md) | 261 | `result-track:83d9ec72c145e005d92fbcc2916df94028c81a341ba42888212b5ebcefa834aa` |
| 26 | `instance` | [decidableMemRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/decidablememrange--bdb95dc6676bd9203fe64e69.md) | 286 | `declaration-track:bdb95dc6676bd9203fe64e6930467bbe7ad99b9053098bab100d645b12fbd1f1` |
| 27 | `instance` | [fintypeMrange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/fintypemrange--55250cdc594a70a0af67d3bc.md) | 301 | `declaration-track:55250cdc594a70a0af67d3bc655a914ffc017d8e7637ce91a8ce63fbb67c3b26` |
| 28 | `instance` | [fintypeRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/declarations/fintyperange--41f5a3bfb800828318ea44eb.md) | 315 | `declaration-track:41f5a3bfb800828318ea44eb3eff58d7e7ce7d5d8bcd8596cc0b3af39adc54bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
