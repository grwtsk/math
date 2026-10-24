# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Option.Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c586ba6d7a9aa083cf44caef908e0654aa8cabbe",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c586ba6d7a9aa083cf44caef908e0654aa8cabbe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/tofinset--893c562d67f07842886f7b69.md) | 43 | `declaration-track:893c562d67f07842886f7b6911999dbbdbfafba19d178381dcf883b8ec74e5b4` |
| 2 | `theorem` | [toFinset_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/tofinset-none--f30186c572231b20dcdd4aca.md) | 47 | `result-track:f30186c572231b20dcdd4aca757f4c5805cc21f6b49fdcdc3748206fa1948d20` |
| 3 | `theorem` | [toFinset_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/tofinset-some--8d94a0c2edb5a1b4fd47e3f2.md) | 51 | `result-track:8d94a0c2edb5a1b4fd47e3f2a8d215e2f934b5bde00fd188532936fcbf3a139c` |
| 4 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/mem-tofinset--353ff1fe36ca20fc448b242e.md) | 55 | `result-track:353ff1fe36ca20fc448b242e9363ef3fa26c5a899c2e58e9ab467f82f74e8044` |
| 5 | `theorem` | [card_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/card-tofinset--49f9527e8dce88b5ebbd8377.md) | 58 | `result-track:49f9527e8dce88b5ebbd837764d1497ca30d8d295858083c167f838d90cb4616` |
| 6 | `def` | [insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/insertnone--f74dacdb126ccf34488545f6.md) | 66 | `declaration-track:f74dacdb126ccf34488545f6a0ca86d4ea6b5a7319012545c2d5f7430a77243d` |
| 7 | `theorem` | [mem_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/mem-insertnone--901cdc88ee0224399d7e2dfc.md) | 71 | `result-track:901cdc88ee0224399d7e2dfc221d9329bb1af42c67123f76ad3531c80a3fbed7` |
| 8 | `lemma` | [forall_mem_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/forall-mem-insertnone--5d22736121b19494c1f56525.md) | 75 | `result-track:5d22736121b19494c1f56525faa588c14328f7c783457ee7a52e99cc9300fbc2` |
| 9 | `theorem` | [some_mem_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/some-mem-insertnone--373249000b13eb521a53bba1.md) | 78 | `result-track:373249000b13eb521a53bba18a0af86b4b11f2f503d99770c9de71358ef7f155` |
| 10 | `lemma` | [none_mem_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/none-mem-insertnone--10aec2deae99dac8d12be38b.md) | 80 | `result-track:10aec2deae99dac8d12be38b01715282b0d76cfa6c017af113b8b95850989923` |
| 11 | `lemma` | [insertNone_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/insertnone-nonempty--234ff4aa6f3efa3bc59d190d.md) | 83 | `result-track:234ff4aa6f3efa3bc59d190d5a81334b1819a8a2f3552812ed67fc9edb770dc0` |
| 12 | `theorem` | [card_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/card-insertnone--9fb0e5b57679bae1a5b209c7.md) | 86 | `result-track:9fb0e5b57679bae1a5b209c7bd19fd682f69a9ccc1163035326968d82da15f84` |
| 13 | `def` | [eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/erasenone--51454a95f91190deef83b38a.md) | 90 | `declaration-track:51454a95f91190deef83b38a2ec9eb66aaa3bec258b851b942445256210ef025` |
| 14 | `theorem` | [mem_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/mem-erasenone--91517add35349c020a9270ec.md) | 95 | `result-track:91517add35349c020a9270ecd5a571b86c18a8206bba3b69f017ac955c0845bc` |
| 15 | `lemma` | [forall_mem_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/forall-mem-erasenone--2de2e9aa925e3ceaa446fb4b.md) | 98 | `result-track:2de2e9aa925e3ceaa446fb4bdd4c07b9a213f32edad23e83ae509eca475e6912` |
| 16 | `theorem` | [eraseNone_eq_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/erasenone-eq-biunion--139328b97ca8ec40890f57ec.md) | 101 | `result-track:139328b97ca8ec40890f57ec95d1d24081116f4d052d7bce1a4d0535d8430d09` |
| 17 | `theorem` | [eraseNone_map_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/erasenone-map-some--f74eba7fe06d2cfa1440c741.md) | 107 | `result-track:f74eba7fe06d2cfa1440c74123c7a1336152b68d9190108bfb09bd5ada9bc169` |
| 18 | `theorem` | [eraseNone_image_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/erasenone-image-some--7b3b6245586a50faf9d9532d.md) | 112 | `result-track:7b3b6245586a50faf9d9532dff66e46067da3331c5e5cba2c0c0fee309fecc9c` |
| 19 | `theorem` | [coe_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/coe-erasenone--eb9d10c371f847278d58d818.md) | 116 | `result-track:eb9d10c371f847278d58d818fa6f4afa03d1809c11408453fbcd864763fff7c0` |
| 20 | `theorem` | [eraseNone_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/erasenone-union--403cddf08c67e266e8ff9117.md) | 120 | `result-track:403cddf08c67e266e8ff9117594ce6603d5ffe23a86a0e61d7b2cb736844e13d` |
| 21 | `theorem` | [eraseNone_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/erasenone-inter--8c763d5eb26c4152373d4e3b.md) | 126 | `result-track:8c763d5eb26c4152373d4e3bb37288d7d9af91a7fd67e724d77f06faaa6487d0` |
| 22 | `theorem` | [eraseNone_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/erasenone-empty--00e44c9487edf5ee0a1362a2.md) | 132 | `result-track:00e44c9487edf5ee0a1362a2524570406ac2d1404c24306ea0fd052cf8ef0cb2` |
| 23 | `theorem` | [eraseNone_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/erasenone-none--9e09ee050fba3a72878cd7ba.md) | 137 | `result-track:9e09ee050fba3a72878cd7ba57499473d130eb523527404d2b5bd63040d28014` |
| 24 | `theorem` | [image_some_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/image-some-erasenone--82aae7d6115f7da5a87addf0.md) | 142 | `result-track:82aae7d6115f7da5a87addf09b3855d5a841ed50bca3d176faf7ec8ff5218fd7` |
| 25 | `theorem` | [map_some_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/map-some-erasenone--86ec94276d45ecfb4ca5826e.md) | 146 | `result-track:86ec94276d45ecfb4ca5826e7d5febbeec205b82138e92289d12db76f86ef3df` |
| 26 | `theorem` | [insertNone_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/insertnone-erasenone--6ca7c8f0370660c10889ef5b.md) | 151 | `result-track:6ca7c8f0370660c10889ef5b6fd7ff3dece1156b00aa70bd0728278528331003` |
| 27 | `theorem` | [eraseNone_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean/declarations/erasenone-insertnone--7915b20925515bad67f9371e.md) | 155 | `result-track:7915b20925515bad67f9371e94fd0ab129e5353a13313a2c3fd95869f15f1672` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
