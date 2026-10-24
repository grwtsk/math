# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "504c991ea013c928f98a182dfb2f73fddaabab48",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `504c991ea013c928f98a182dfb2f73fddaabab48`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens--6dabe2bc418411e3dc4dbce6.md) | 65 | `declaration-track:6dabe2bc418411e3dc4dbce68267154bdd0f4d89354377c9e98a65f4105f4624` |
| 2 | `lemma` | [dens_eq_card_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-eq-card-div-card--104d6ace8642392c62800bec.md) | 67 | `result-track:104d6ace8642392c62800bec4fea764285766e545c62118f70668e8e4a71b4ae` |
| 3 | `lemma` | [dens_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-empty--3b313bcd23f2c6abdb724bed.md) | 69 | `result-track:3b313bcd23f2c6abdb724bed8a90a29cf929ed06ec3bf663c2fcaa3c5a0003ec` |
| 4 | `lemma` | [dens_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-singleton--fc2200bf743ef8a6ce8d48b0.md) | 71 | `result-track:fc2200bf743ef8a6ce8d48b0fd118c48b1f97d63968dd0d99691dc3fd234647d` |
| 5 | `lemma` | [dens_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-cons--039e2b381757e1e94f4b882d.md) | 74 | `result-track:039e2b381757e1e94f4b882d9dbcd8f46fa523d2114422b6ea70e9a0963ee2e9` |
| 6 | `lemma` | [dens_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-disjunion--8a7da16c17db1fb35ad4e623.md) | 77 | `result-track:8a7da16c17db1fb35ad4e62301d4bee192e791aabe9f5e25ea0bcd9ad08319b6` |
| 7 | `lemma` | [dens_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-eq-zero--3c5b6f4b5a8b57c35cd5c3fe.md) | 80 | `result-track:3c5b6f4b5a8b57c35cd5c3fe93ffff97ba71c599d072140779b91284a53e2288` |
| 8 | `lemma` | [dens_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-ne-zero--2fb679cb3a4f6f3114bb154a.md) | 83 | `result-track:2fb679cb3a4f6f3114bb154a2b1e3c771572ca26deb8cccaf85d5db381ddeb80` |
| 9 | `lemma` | [dens_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-pos--ce0efe654bfa9192bc440da8.md) | 85 | `result-track:ce0efe654bfa9192bc440da8ea3d8ee677d047c3ea1b9fec1792ebcad6643a54` |
| 10 | `lemma` | [dens_le_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-le-dens--d62f3094ae542badcff5c929.md) | 91 | `result-track:d62f3094ae542badcff5c9291618efc58a1ca250ab4721fa7e82fccd5d0f1b63` |
| 11 | `lemma` | [dens_lt_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-lt-dens--ce3a670a6358cddeedaeaeab.md) | 95 | `result-track:ce3a670a6358cddeedaeaeabb4271a338ab25acc570dc506facfbfd5bac8a48d` |
| 12 | `lemma` | [dens_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-mono--b1c9d92720ef697f2c02a039.md) | 101 | `result-track:b1c9d92720ef697f2c02a0390b4021b6e150ea12e63c4c647940b340a4e2418a` |
| 13 | `lemma` | [dens_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-strictmono--7186e95b18ffed2f3fd40eb6.md) | 102 | `result-track:7186e95b18ffed2f3fd40eb6c628b00ba089b47634add14689080879ca61bace` |
| 14 | `lemma` | [dens_map_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-map-le--a2f52bb0ca748f7c59c7be11.md) | 104 | `result-track:a2f52bb0ca748f7c59c7be112ec994e82199654190cb73d3c5fedfd59641f645` |
| 15 | `lemma` | [dens_map_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-map-equiv--f88c27b32a938abd6e4af304.md) | 112 | `result-track:f88c27b32a938abd6e4af304cab0899a2b2e5b73ac3f05ec4e2d6c66bc829e0a` |
| 16 | `lemma` | [dens_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-image--6fd531168db056199eeced79.md) | 115 | `result-track:6fd531168db056199eeced7928726c54d1da18ff2892993e97481d2919b247b2` |
| 17 | `lemma` | [card_mul_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/card-mul-dens--53d567b49f8b6e1e3b4be03d.md) | 119 | `result-track:53d567b49f8b6e1e3b4be03de4d89a852c0290ef4750fea7db41a0260b836c7d` |
| 18 | `lemma` | [dens_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-mul-card--daf244aaf73e329da9e7a39e.md) | 125 | `result-track:daf244aaf73e329da9e7a39e811dc2d15f38f3daa704f6b48516821a36c735ca` |
| 19 | `lemma` | [natCast_card_mul_nnratCast_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/natcast-card-mul-nnratcast-dens--40e98842eb5b95446e184f8e.md) | 131 | `result-track:40e98842eb5b95446e184f8e49d9d75be1d5a35fc3a48fa48725beabd008c6be` |
| 20 | `lemma` | [nnratCast_dens_mul_natCast_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/nnratcast-dens-mul-natcast-card--3e2e98c57e9ed9775767ef3f.md) | 134 | `result-track:3e2e98c57e9ed9775767ef3fc42dd8c0c45bdc646e263043b992e7c8f1a28d36` |
| 21 | `lemma` | [nnratCast_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/nnratcast-dens--9d1cd928b12a3dbfc8a8b363.md) | 137 | `result-track:9d1cd928b12a3dbfc8a8b363170ab1aaabfb0570749e5d8ffa178930ee757a9e` |
| 22 | `lemma` | [dens_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-univ--614946412f4323fca1627a4e.md) | 145 | `result-track:614946412f4323fca1627a4e4917b433f8d6c18344653947f14e9423c769a42c` |
| 23 | `lemma` | [dens_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-eq-one--369f91bf070d5468049dbd67.md) | 147 | `result-track:369f91bf070d5468049dbd674981aa05afabf032446c139a81ae478e84f5a1f6` |
| 24 | `lemma` | [dens_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-ne-one--9b26ad0015a7eeef067f3ad9.md) | 150 | `result-track:9b26ad0015a7eeef067f3ad9f9315cb3a74e4dc87f42777871b58b445f4e776e` |
| 25 | `lemma` | [dens_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-le-one--ae0b5c3401e5ba4fd4cf8aa2.md) | 154 | `result-track:ae0b5c3401e5ba4fd4cf8aa245da6685d09ae99d0b68741ff89f1662782c137a` |
| 26 | `lemma` | [dens_union_add_dens_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-union-add-dens-inter--50ede0270cb147ca52abda7f.md) | 162 | `result-track:50ede0270cb147ca52abda7f4591ddd8a098f82574065c5c3797fa916babbbe7` |
| 27 | `lemma` | [dens_inter_add_dens_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-inter-add-dens-union--21e6693e10b4788404ab71de.md) | 166 | `result-track:21e6693e10b4788404ab71de73452711ef2167d304aaec3651fd6ee87f4ccadd` |
| 28 | `lemma` | [dens_union_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-union-of-disjoint--5fa624a6b63df5206ea57898.md) | 169 | `result-track:5fa624a6b63df5206ea57898bfd506892bd2f133fa87f9048510c5ce316445fb` |
| 29 | `lemma` | [dens_sdiff_add_dens_eq_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-sdiff-add-dens-eq-dens--4202573593deb09c5670f0cd.md) | 172 | `result-track:4202573593deb09c5670f0cd8a84068ce58f32360f7ccdb98cab14aaca853663` |
| 30 | `lemma` | [dens_sdiff_add_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-sdiff-add-dens--2c06cfbfafc9305587acc592.md) | 175 | `result-track:2c06cfbfafc9305587acc5920082c8812199a60df8a384171b92a2fc3fc96354` |
| 31 | `lemma` | [dens_sdiff_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-sdiff-comm--490c9de197786017c94da3c7.md) | 178 | `result-track:490c9de197786017c94da3c73d52acea0562ab72304b19394a9a151d3522c669` |
| 32 | `lemma` | [dens_sdiff_add_dens_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-sdiff-add-dens-inter--a1da5a3fc418f78b3c09ba52.md) | 183 | `result-track:a1da5a3fc418f78b3c09ba52489511dc02d1904cc0fa21a4a45a5eeed4edf09e` |
| 33 | `lemma` | [dens_inter_add_dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-inter-add-dens-sdiff--de08bac2f123400494feb056.md) | 187 | `result-track:de08bac2f123400494feb056bef5405ca02aee6750b065bb625943eedd7298ae` |
| 34 | `lemma` | [dens_filter_add_dens_filter_not_eq_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-filter-add-dens-filter-not-eq-dens--5bc4d94c1361a56c220da94b.md) | 190 | `result-track:5bc4d94c1361a56c220da94bd5948624b85b12afd6df3bb17ff280f9e19db78c` |
| 35 | `lemma` | [dens_union_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-union-le--80fa9daf5bf832b7a2783dd0.md) | 196 | `result-track:80fa9daf5bf832b7a2783dd0306712462b74241d0a82a027a19b716f896c49aa` |
| 36 | `lemma` | [dens_le_dens_sdiff_add_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-le-dens-sdiff-add-dens--8583906c80872f26cd96a81f.md) | 199 | `result-track:8583906c80872f26cd96a81f8eab524060fbd73022b4361015f87f563a88d348` |
| 37 | `lemma` | [dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/dens-sdiff--6e78fba967852d57c9a1b037.md) | 202 | `result-track:6e78fba967852d57c9a1b037fd355b423db6decc157a25dfc323fcc8c7bc096a` |
| 38 | `lemma` | [le_dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032ae9ace68830317302b92775503201b87f20631c9a0a94d8c4905a04fe3e37.lean/declarations/le-dens-sdiff--a2637248d25a8910bb2c9f7d.md) | 205 | `result-track:a2637248d25a8910bb2c9f7db083487ed4fc3366397e6278b914c7f88ca7fd83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
