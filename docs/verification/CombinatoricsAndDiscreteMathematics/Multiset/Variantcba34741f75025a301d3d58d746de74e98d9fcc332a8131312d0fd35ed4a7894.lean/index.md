# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9504a1b9adf64ccf0e78fe92668aa57d1752001d",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9504a1b9adf64ccf0e78fe92668aa57d1752001d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean.json)

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
| 1 | `def` | [toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset--251cdd3eca56edabdbf68216.md) | 44 | `declaration-track:251cdd3eca56edabdbf68216ed9b16537abb3c0d2d42c6856962e4b045fbad7b` |
| 2 | `theorem` | [toMultiset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-zero--541127e84320f9fffc710d6d.md) | 52 | `result-track:541127e84320f9fffc710d6de16c3c19a14a5bafac8ca53f4d9836d1c0482efc` |
| 3 | `theorem` | [toMultiset_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-add--e41e682f2e1ab4bf1798df87.md) | 55 | `result-track:e41e682f2e1ab4bf1798df87bf81fb97af2f49396234f3e86ef91ab21af90ed4` |
| 4 | `theorem` | [toMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-apply--60a2dee50b40107ea92a6e78.md) | 58 | `result-track:60a2dee50b40107ea92a6e789be86f51d520f3452460751ff591c968e1a4eb88` |
| 5 | `theorem` | [toMultiset_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-single--f1249e003a76fb6128a26d43.md) | 62 | `result-track:f1249e003a76fb6128a26d4344c954d7a6af0ac8555da09c93def4665161235b` |
| 6 | `theorem` | [toMultiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-sum--ec932d95e9e2fd521f763ff8.md) | 65 | `result-track:ec932d95e9e2fd521f763ff80a18aa4bc77ef44419843c4e2c7a800d181d9de2` |
| 7 | `theorem` | [toMultiset_sum_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-sum-single--c1650684b192c55c9b25e5b3.md) | 69 | `result-track:c1650684b192c55c9b25e5b38e16c53ad13093230e18438eee49e14ff53c96a3` |
| 8 | `theorem` | [card_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/card-tomultiset--ebc1c00741ecf0a9c5f7286a.md) | 74 | `result-track:ebc1c00741ecf0a9c5f7286a6f0de6948e167b56c3f8e7d7355e1b91702ce903` |
| 9 | `theorem` | [toMultiset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-map--11765876c5ad04d33fb1f77f.md) | 77 | `result-track:11765876c5ad04d33fb1f77faa921addff006961716834ac333462ad63273ee0` |
| 10 | `theorem` | [prod_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/prod-tomultiset--323f91db402b54467039874d.md) | 88 | `result-track:323f91db402b54467039874d456bc8a7f0bd16087921488fee6e2b97a5150204` |
| 11 | `theorem` | [toFinset_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinset-tomultiset--6e6766b036f9f62e37fe4294.md) | 98 | `result-track:6e6766b036f9f62e37fe42948f0407260a3c28572ad126b095bf53c00de6f1c9` |
| 12 | `theorem` | [count_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/count-tomultiset--403accfd5ec1cb58a6248999.md) | 108 | `result-track:403accfd5ec1cb58a624899963833a255edeb8730a7b70b4e61d771b490689c5` |
| 13 | `theorem` | [toMultiset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-sup--5a6618e6f41544fa6513a4d2.md) | 119 | `result-track:5a6618e6f41544fa6513a4d2bba796d600a6a23394f162c07c6ff27000da7169` |
| 14 | `theorem` | [toMultiset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-inf--f20d7a33b124b676ae301153.md) | 124 | `result-track:f20d7a33b124b676ae3011538b0be36f14fc05ec4f87f0751537eb70b78acde3` |
| 15 | `theorem` | [mem_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/mem-tomultiset--f2657a7f400b0501e2e2d4f1.md) | 130 | `result-track:f2657a7f400b0501e2e2d4f1b4bae61804a92eaf8504b509378ce4d39c8ec085` |
| 16 | `def` | [toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp--ce7dd771a408b3af8cb719f4.md) | 143 | `declaration-track:ce7dd771a408b3af8cb719f4cba4a77889b02fe09868bcb553b27ccd2efc87cb` |
| 17 | `theorem` | [toFinsupp_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-support--3e412a98c2da03fde028ccfa.md) | 157 | `result-track:3e412a98c2da03fde028ccfac6e4466508bf09d244dbe67edf2e758afda85d22` |
| 18 | `theorem` | [toFinsupp_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-apply--8d7f86a545e3ee188849b68b.md) | 160 | `result-track:8d7f86a545e3ee188849b68b094a83c6277c8f31abdeebc2313f5dcaaabed686` |
| 19 | `theorem` | [toFinsupp_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-zero--8044d4c323896a26a15a3b23.md) | 162 | `result-track:8044d4c323896a26a15a3b23bf9a6a0ad0fa0a270bf5ef11dd3a83cbdd366034` |
| 20 | `theorem` | [toFinsupp_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-add--7c5c98327b4675f03a13e826.md) | 164 | `result-track:7c5c98327b4675f03a13e826bdbd60414bf100c7f83fe8864eead9f24c0e0ae5` |
| 21 | `theorem` | [toFinsupp_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-singleton--70ab60cd6ee51923dbbabae1.md) | 168 | `result-track:70ab60cd6ee51923dbbabae1b289fb9e8b9d96fec5cdada30e2f96532522e5ce` |
| 22 | `theorem` | [toFinsupp_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-tomultiset--290f7ab975b2b2e06c3513d1.md) | 172 | `result-track:290f7ab975b2b2e06c3513d1f154ae161a127ea6938de248da43e413a951baa2` |
| 23 | `theorem` | [toFinsupp_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-eq-iff--561dd025a20b5d217c8d169d.md) | 175 | `result-track:561dd025a20b5d217c8d169deafe09918a311efa05f3c2cb808b6c3360758f94` |
| 24 | `theorem` | [toFinsupp_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-union--4afde1324ac95e3306c872e2.md) | 179 | `result-track:4afde1324ac95e3306c872e234539b375932025f54046be1320c40c4a51145dc` |
| 25 | `theorem` | [toFinsupp_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-inter--9cbbdd2496915b1c281847f0.md) | 183 | `result-track:9cbbdd2496915b1c281847f091b07d3a9e8f958d071e4af8cec6ff423998e254` |
| 26 | `theorem` | [toFinsupp_sum_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tofinsupp-sum-eq--d60b8bce6bdc0f4a6cd3b177.md) | 188 | `result-track:d60b8bce6bdc0f4a6cd3b17770c375535393d40067fab26e7301c90eba159871` |
| 27 | `theorem` | [Finsupp.toMultiset_toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/finsupp-tomultiset-tofinsupp--c6ec830c239134f366f5a6ac.md) | 194 | `result-track:c6ec830c239134f366f5a6ace327fca54833f42540867eef24e40df5dfdb23f7` |
| 28 | `theorem` | [Finsupp.toMultiset_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/finsupp-tomultiset-eq-iff--23e1cb613816abebd51d099e.md) | 198 | `result-track:23e1cb613816abebd51d099e71bee697210567614d525d97616be13d4b0dd1bf` |
| 29 | `def` | [orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/orderisomultiset--c46d25e5a4bdfcd3c4bb7443.md) | 206 | `declaration-track:c46d25e5a4bdfcd3c4bb7443333589f444d9904e9a61541fe659e482ff7b1c4e` |
| 30 | `theorem` | [coe_orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/coe-orderisomultiset--79ce40fb1faf861eb713f5a9.md) | 211 | `result-track:79ce40fb1faf861eb713f5a9bd15796a496fa7d4f2c87c37d1c468f84fbe5a3a` |
| 31 | `theorem` | [coe_orderIsoMultiset_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/coe-orderisomultiset-symm--bfb37937c0d648d3efa52d6e.md) | 215 | `result-track:bfb37937c0d648d3efa52d6e174a03b9cfd6cd4782436c6e6341f197ed990f7e` |
| 32 | `theorem` | [toMultiset_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/tomultiset-strictmono--d88e88c6eec519f392197a10.md) | 219 | `result-track:d88e88c6eec519f392197a10837e510bf6a879681f4f13c7bc4e1acc4b789a62` |
| 33 | `theorem` | [sum_id_lt_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/sum-id-lt-of-lt--036d180309577f4948383f00.md) | 222 | `result-track:036d180309577f4948383f00316b06223c7e4f5a21ab256f26bfda913d32c34a` |
| 34 | `theorem` | [lt_wf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/lt-wf--b4527f8541d97184dbf37120.md) | 230 | `result-track:b4527f8541d97184dbf37120c800edf5992fbc1d13b5980eb95232030c40f791` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/instance--9c77825872c35d5368402326.md) | 234 | `declaration-track:9c77825872c35d53684023262aef3220af48fbb466d6e87f6604e85d295abe8b` |
| 36 | `theorem` | [Multiset.toFinsupp_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/multiset-tofinsupp-strictmono--614d05960be9104299e7cb4e.md) | 240 | `result-track:614d05960be9104299e7cb4ec3ba5eb193fe03b3301be7ae5152acdb4802decd` |
| 37 | `def` | [equivNatSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/equivnatsum--a087cda7aaae24217c32225a.md) | 252 | `declaration-track:a087cda7aaae24217c32225a6ea7ce79b1fb859fcb327250df7dbeee97976d1a` |
| 38 | `lemma` | [coe_equivNatSum_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/coe-equivnatsum-apply-apply--a73b4687a5ed4c25791c96ef.md) | 256 | `result-track:a73b4687a5ed4c25791c96efaa9cd9c9e8ce45bd9febe188bed8bd70560bc89e` |
| 39 | `lemma` | [coe_equivNatSum_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/coe-equivnatsum-symm-apply--b6375c97f595e485cf40c492.md) | 260 | `result-track:b6375c97f595e485cf40c492556164df15508907930a73da9828dbf83bf8bb3a` |
| 40 | `def` | [equivNatSumOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/equivnatsumoffintype--ae60fdbfdff21cd3e3d618b6.md) | 268 | `declaration-track:ae60fdbfdff21cd3e3d618b67a1faea0a9e3de3a38082728f632b87d8302e156` |
| 41 | `lemma` | [coe_equivNatSumOfFintype_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/coe-equivnatsumoffintype-apply-apply--3906cec3ace2f5f592d63039.md) | 272 | `result-track:3906cec3ace2f5f592d6303920c23c6dc47d98aea9a5d32d42d8cab5d046b7ef` |
| 42 | `lemma` | [coe_equivNatSumOfFintype_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean/declarations/coe-equivnatsumoffintype-symm-apply--bcbbd4beeea1114cdda097b3.md) | 276 | `result-track:bcbbd4beeea1114cdda097b34427420c21525a59f4dc03fc139f37a58036a43b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
