# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Bind.Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31965185018e2662a65a7943506515fed251af8b",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31965185018e2662a65a7943506515fed251af8b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Multiset.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/join--c68fe51f1fe846698f36f372.md) | 42 | `declaration-track:c68fe51f1fe846698f36f372318ba39db3558f1a918106ddab478b2cfd4c4c0a` |
| 2 | `theorem` | [coe_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/coe-join--e821dac8d01f21346af5abce.md) | 46 | `result-track:e821dac8d01f21346af5abceb4924fb731fbe30cb190dfad2e0b6bc4f1e08e9d` |
| 3 | `theorem` | [join_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/join-zero--d115973aca0dd747fa4e877d.md) | 55 | `result-track:d115973aca0dd747fa4e877dbb2853375ac8ef04ad1fd869f56e95573024c772` |
| 4 | `theorem` | [join_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/join-cons--f760bd5b934e86a65fa7f45b.md) | 60 | `result-track:f760bd5b934e86a65fa7f45b750786b8ff064be5eea45b8f2188a9ac69c93154` |
| 5 | `theorem` | [join_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/join-add--4503e69f0c3b3f82b1aa74d2.md) | 65 | `result-track:4503e69f0c3b3f82b1aa74d2f7bb694a9457e45aa2b5cd0df41bc68c9ffc893e` |
| 6 | `theorem` | [singleton_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/singleton-join--85efbe0a3a543e93381bc045.md) | 70 | `result-track:85efbe0a3a543e93381bc0459f77e13df4e8aef32e8326d1acdf38432d91fc51` |
| 7 | `theorem` | [mem_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/mem-join--313c638a23e4ebf19a3feb1d.md) | 75 | `result-track:313c638a23e4ebf19a3feb1de068a48a6abf580399a6469028db163401b29085` |
| 8 | `theorem` | [card_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/card-join--053baddc8cb9d157e41d7c0a.md) | 81 | `result-track:053baddc8cb9d157e41d7c0a601b73a69b6e6ef25679a0379b1b8329cbd93629` |
| 9 | `theorem` | [rel_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/rel-join--017c214d7c05c4e732d5a09f.md) | 85 | `result-track:017c214d7c05c4e732d5a09fa2e541c818d2c2aedf15d3fc19fbcc445a6be82c` |
| 10 | `def` | [bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind--040bdb4f6c022c152cd885f2.md) | 100 | `declaration-track:040bdb4f6c022c152cd885f21a1171f65e6fab74a59da227424043c9551a0e92` |
| 11 | `theorem` | [coe_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/coe-bind--45e57ce3cc0e2ab30d19de3e.md) | 105 | `result-track:45e57ce3cc0e2ab30d19de3ebabfab7329c87638bd687ddbb3271e85e986f1c4` |
| 12 | `theorem` | [zero_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/zero-bind--804d2607f5b8db57498b8f79.md) | 111 | `result-track:804d2607f5b8db57498b8f79da23ebdf1b1b615f1da217065604eead1306bb49` |
| 13 | `theorem` | [cons_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/cons-bind--be45e09effcc90e744618588.md) | 116 | `result-track:be45e09effcc90e744618588df42ee6512ef151f8c571da69d2be42b8a2288db` |
| 14 | `theorem` | [singleton_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/singleton-bind--ad2f5f524445a3d3be371165.md) | 120 | `result-track:ad2f5f524445a3d3be37116545287bf9c4c714ca910623961a8aa47ca7ca8bf0` |
| 15 | `theorem` | [add_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/add-bind--32054d6e22e8921ecb5d4ac2.md) | 124 | `result-track:32054d6e22e8921ecb5d4ac28f02a5437a58edddc8d05145046a294f1e09a601` |
| 16 | `theorem` | [bind_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-zero--ef5ec6a9411819eebf5d015f.md) | 128 | `result-track:ef5ec6a9411819eebf5d015f543aef76bdde11546a7eb8d68deeb8c1d0ad83f3` |
| 17 | `theorem` | [bind_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-add--aa708353ea258dd6b0b763dc.md) | 132 | `result-track:aa708353ea258dd6b0b763dc9f389f6665631d2535ddff08a4c469e726953924` |
| 18 | `theorem` | [bind_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-cons--a77418dc3e670cfe49e5b540.md) | 136 | `result-track:a77418dc3e670cfe49e5b540b95c729e13983c1991fa4ab3b21a50fff88e7076` |
| 19 | `theorem` | [bind_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-singleton--a52e9940cd108abaa3860bcf.md) | 143 | `result-track:a52e9940cd108abaa3860bcfea5243b772b2d83e888a109660fc916daf723a1b` |
| 20 | `theorem` | [mem_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/mem-bind--92ef5b4b22eafeb0689e5fef.md) | 148 | `result-track:92ef5b4b22eafeb0689e5fefa8a1d2f1399858d5fd35ce1850af2654632ffdba` |
| 21 | `theorem` | [card_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/card-bind--1d3b688656e94b85a3d59a61.md) | 153 | `result-track:1d3b688656e94b85a3d59a61f607145a2fc6c29df6552cb1effd49d53fb5f273` |
| 22 | `theorem` | [bind_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-congr--c429b930c25a9d46b3561657.md) | 156 | `result-track:c429b930c25a9d46b3561657acd2d1449aa9afd115f7f4a4863cf6b83f2d784c` |
| 23 | `theorem` | [bind_hcongr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-hcongr--d592f6daafc72dff4445c3d9.md) | 160 | `result-track:d592f6daafc72dff4445c3d9a7eb6e8af5169325c01ff5b13c0a68eb7ca2a2e1` |
| 24 | `theorem` | [map_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/map-bind--0a47b6a8037fdf54e8569393.md) | 167 | `result-track:0a47b6a8037fdf54e8569393abb08a8a2b486a5bbb2b3c70a4f8b8e949dd651a` |
| 25 | `theorem` | [bind_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-map--f333d8aa620747b8dbc0ca65.md) | 172 | `result-track:f333d8aa620747b8dbc0ca65f16c1bec5886195ca94bc4d592fba0a837553732` |
| 26 | `theorem` | [bind_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-assoc--ed715b5dd9795a48c95b70f0.md) | 177 | `result-track:ed715b5dd9795a48c95b70f0d0dab44d4ba6987681924fa96b27e12365b0c2ed` |
| 27 | `theorem` | [bind_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-bind--e5642dacfa6bee17d33f99fb.md) | 182 | `result-track:e5642dacfa6bee17d33f99fb7448025765b4f8a9681d78a6862ba9b6fbbfd78a` |
| 28 | `theorem` | [bind_map_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/bind-map-comm--8cb213df7ff42ee303925bbf.md) | 187 | `result-track:8cb213df7ff42ee303925bbff0ec4e2f7f0a143853a1168921a78ba96bcb7c1c` |
| 29 | `theorem` | [prod_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/prod-bind--5e964cf700483e248f20ca3f.md) | 193 | `result-track:5e964cf700483e248f20ca3f879dcd14abc3c257d22cf761009cecdf8b06beaf` |
| 30 | `theorem` | [rel_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/rel-bind--9ecd94d7e2c109f540eaa242.md) | 199 | `result-track:9ecd94d7e2c109f540eaa242f5b15dd44ab5047425919a13dece02b747edd6cd` |
| 31 | `theorem` | [count_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/count-sum--d1a25f395a15e44bae3707b5.md) | 207 | `result-track:d1a25f395a15e44bae3707b57b7721bb9f84ce4f6009ee1bc1d40bd89ed4b161` |
| 32 | `theorem` | [count_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/count-bind--e1646682e8765bee6418c4eb.md) | 212 | `result-track:e1646682e8765bee6418c4eb6bdf31b4bc9d5ee6307ed32a8bbb883c28d4aacf` |
| 33 | `theorem` | [le_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/le-bind--c9e6c060514d141451e8771d.md) | 217 | `result-track:c9e6c060514d141451e8771d4144083481885dea8fe26cefbb6edc7c943be898` |
| 34 | `theorem` | [attach_bind_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/attach-bind-coe--dadf2fed9f1d5dd047a547ff.md) | 229 | `result-track:dadf2fed9f1d5dd047a547ff81c41936b6136d0c078bea23a520275e22382be4` |
| 35 | `def` | [product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/product--019c5e80b4d1c195c7f61c18.md) | 245 | `declaration-track:019c5e80b4d1c195c7f61c1826b0401cc5d5927816eb52ad415d6c7040603234` |
| 36 | `instance` | [instSProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/instsprod--612495258e7053b2d0b884b5.md) | 249 | `declaration-track:612495258e7053b2d0b884b57e7b4aa130368b5c894e0ea8f06790804d9120a8` |
| 37 | `theorem` | [coe_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/coe-product--a99e1ae835526824a7f3cbbb.md) | 253 | `result-track:a99e1ae835526824a7f3cbbb6c131233069ab0890a25432bc22ce9af09dcceea` |
| 38 | `theorem` | [zero_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/zero-product--acef20d103f47fc769de39ca.md) | 261 | `result-track:acef20d103f47fc769de39ca2c71aec60e3d75492c30781a9f724b74ce71686b` |
| 39 | `theorem` | [cons_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/cons-product--69a576312afba3bc3a40449d.md) | 266 | `result-track:69a576312afba3bc3a40449d6182c638d9ef05dd2afe79ae6a776f145e2de464` |
| 40 | `theorem` | [product_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/product-zero--2ad53b86402bcc8f9fb5c29a.md) | 270 | `result-track:2ad53b86402bcc8f9fb5c29a5513b416e235d4834585e434b6ccce79e79035c2` |
| 41 | `theorem` | [product_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/product-cons--1491555f88743e6cd061ae68.md) | 274 | `result-track:1491555f88743e6cd061ae685c6ac5dd68355b7e8812d5339cfba0813843897f` |
| 42 | `theorem` | [product_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/product-singleton--e60a9d2463898f920a516b6f.md) | 279 | `result-track:e60a9d2463898f920a516b6ff53d1b5e0ca1c8d9bdea841596789e2ed80196ab` |
| 43 | `theorem` | [add_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/add-product--a341abfa53d7dfaf579d1c3a.md) | 284 | `result-track:a341abfa53d7dfaf579d1c3affaa9f27bdc4e5728f78fa5b76fdc9b775133958` |
| 44 | `theorem` | [product_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/product-add--ee29afd656fab06f0ef20d17.md) | 289 | `result-track:ee29afd656fab06f0ef20d17dc6b549fa08873a16e59a64cb9056a499a0cde97` |
| 45 | `theorem` | [mem_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/mem-product--525624adbfb205b56c08813f.md) | 296 | `result-track:525624adbfb205b56c08813f96416aa9bee70aae6b7701dd4d0746bbbbb72cef` |
| 46 | `theorem` | [card_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/card-product--07b2523722f08b05fedccacb.md) | 301 | `result-track:07b2523722f08b05fedccacb2df37cb6795a5d1c495759e4a80d0e64719d597a` |
| 47 | `def` | [sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/sigma--bdfb4c67536e8edbeb7fa9a8.md) | 315 | `declaration-track:bdfb4c67536e8edbeb7fa9a8eb8d404aa34624b21eec223b17f30d7baa8e3ed3` |
| 48 | `theorem` | [coe_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/coe-sigma--bc899b1a6d21643faa997aa7.md) | 320 | `result-track:bc899b1a6d21643faa997aa71771d1a9276ba33f34025478a6cb75453a4671e7` |
| 49 | `theorem` | [zero_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/zero-sigma--49cd1c0794914cb9fd39804a.md) | 327 | `result-track:49cd1c0794914cb9fd39804a54dbc8f4e896e806c49706512ba49a34715cfb06` |
| 50 | `theorem` | [cons_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/cons-sigma--94372bb0880861ad0a8328de.md) | 332 | `result-track:94372bb0880861ad0a8328de2a2248943b37e4cdb75b55ecc680a0f2bca2c962` |
| 51 | `theorem` | [sigma_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/sigma-singleton--d5a23c39b3fc229e000e87b9.md) | 337 | `result-track:d5a23c39b3fc229e000e87b9d67be4e2e319087080e8518a358f4f6949abc212` |
| 52 | `theorem` | [add_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/add-sigma--bc57bd63d350c436835a1928.md) | 343 | `result-track:bc57bd63d350c436835a1928086260334433456731c87cdcf13c707b9a51aa4c` |
| 53 | `theorem` | [sigma_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/sigma-add--e727283f64746cb6576260bc.md) | 348 | `result-track:e727283f64746cb6576260bc5b68ea50a7fca4e0154a468a39a5ce5f3ecd07d5` |
| 54 | `theorem` | [mem_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/mem-sigma--a490cee317893bf7515eec89.md) | 356 | `result-track:a490cee317893bf7515eec89d7e0f46d35d5d63e1e5560c789fe781ab751a518` |
| 55 | `theorem` | [card_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/declarations/card-sigma--ec8f213939e940fdc24e28e5.md) | 361 | `result-track:ec8f213939e940fdc24e28e5adc220c7db70af21580ac084cd25c8484883ee64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
