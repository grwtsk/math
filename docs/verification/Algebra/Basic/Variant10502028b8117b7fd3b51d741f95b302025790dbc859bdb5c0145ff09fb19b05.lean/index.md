# Verification target: GRWTSK.Algebra.Basic.Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb032d6c3d4d4149fb69fb59f888cdec7225e4a2",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb032d6c3d4d4149fb69fb59f888cdec7225e4a2`.

Source path: `GRWTSK/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean.json)

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
| 1 | `lemma` | [nonempty_iff_nontrivial](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/nonempty-iff-nontrivial--f4f7d6e092559b9dd3f2a341.md) | 65 | `result-track:f4f7d6e092559b9dd3f2a3418750dc296003e9d0afafa19d896caf3c7238063a` |
| 2 | `lemma` | [isEmpty_iff_subsingleton](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/isempty-iff-subsingleton--dac3f85220e274f32b8e9d63.md) | 71 | `result-track:dac3f85220e274f32b8e9d637c7f49185aaa5a4a9d6eb08ac52eb1fe3e96d705` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/instance--daae19b0c835e102d869d8e0.md) | 74 | `declaration-track:daae19b0c835e102d869d8e01daf01ad467bc0ef4628834acc642fa3c3f9c92d` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/instance--240af2b29be70032e868989f.md) | 78 | `declaration-track:240af2b29be70032e868989f674f5bf70b363132bd9193d550b7d1f64fed2816` |
| 5 | `lemma` | [nontrivial](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/nontrivial--0d6eb434df546550571fce61.md) | 81 | `result-track:0d6eb434df546550571fce61aabed312c785d8341c7d622d208bb380f3131e60` |
| 6 | `theorem` | [range_asIdeal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/range-asideal--6d9008315f08446f6eaf4171.md) | 86 | `result-track:6d9008315f08446f6eaf41717ee7ebf0547d0beac577a56ad4e9acf9c99b1685` |
| 7 | `def` | [primeSpectrumProdOfSum](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/primespectrumprodofsum--6e24eed1cb749ff143f0c3ed.md) | 93 | `declaration-track:6e24eed1cb749ff143f0c3ed4d1cdee9c50a8bc15c66ea3149a1f1d006531196` |
| 8 | `def` | [primeSpectrumProd](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/primespectrumprod--b35d66ad3a7601691bbf7b7b.md) | 99 | `declaration-track:b35d66ad3a7601691bbf7b7bc8433f06c30e6e9883c861eb2bb5100d89dc7a43` |
| 9 | `theorem` | [primeSpectrumProd_symm_inl_asIdeal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/primespectrumprod-symm-inl-asideal--f4013bd5b28bcb4d4597f87c.md) | 118 | `result-track:f4013bd5b28bcb4d4597f87c5be52937110d4abdff3b0ba7d93cf3a3049c4d2a` |
| 10 | `theorem` | [primeSpectrumProd_symm_inr_asIdeal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/primespectrumprod-symm-inr-asideal--724750cdc24eb2b501e876b1.md) | 124 | `result-track:724750cdc24eb2b501e876b15d3b65791c43cfc8fbd855c86301bf7053ebb7c3` |
| 11 | `def` | [zeroLocus](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus--f0ee868ab3c721f75d3a856b.md) | 137 | `declaration-track:f0ee868ab3c721f75d3a856bd27b764e1591f6f257b4ec4246f6e23181e05106` |
| 12 | `theorem` | [mem_zeroLocus](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/mem-zerolocus--6d44f0765c659690ccb48e4e.md) | 141 | `result-track:6d44f0765c659690ccb48e4e6ad0646f95b006b963ce8db7bb7ef9faa58bee34` |
| 13 | `theorem` | [zeroLocus_span](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-span--f5bee7918373a1238c73dce3.md) | 145 | `result-track:f5bee7918373a1238c73dce3bf71b1b545d270492d90bc0180eb7568dcbf272c` |
| 14 | `def` | [vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/vanishingideal--ffb5a2c5f89b93fb30699ea6.md) | 157 | `declaration-track:ffb5a2c5f89b93fb30699ea6584326d746a5e8c28216d23dcb579daef4d5d971` |
| 15 | `theorem` | [coe_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/coe-vanishingideal--5a7e444ffe50fa03ba0351df.md) | 160 | `result-track:5a7e444ffe50fa03ba0351df6b0bd02ad200c349aca2c81329f5706ee6b0a242` |
| 16 | `theorem` | [mem_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/mem-vanishingideal--10d39c8e80030bf81c32edb6.md) | 167 | `result-track:10d39c8e80030bf81c32edb6cb854672fc2bc61e121ee659051e04d2d5f3a450` |
| 17 | `theorem` | [vanishingIdeal_singleton](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/vanishingideal-singleton--61e2fa0c996d1129665e6e68.md) | 172 | `result-track:61e2fa0c996d1129665e6e68ae35e7064ff307375a7b306a2646fcc57f21e617` |
| 18 | `theorem` | [subset_zeroLocus_iff_le_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/subset-zerolocus-iff-le-vanishingideal--0e9a1d7293ad20f33c3cde04.md) | 175 | `result-track:0e9a1d7293ad20f33c3cde04631b53347a95fd387cad55b6000ede39d1c6040c` |
| 19 | `theorem` | [gc](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/gc--e212de95ebf210f8a736d6c2.md) | 185 | `result-track:e212de95ebf210f8a736d6c2b5992f75527f805ded3deed19b675c019edea7e8` |
| 20 | `theorem` | [gc_set](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/gc-set--06dc06e511bdd8862c9e6c3e.md) | 192 | `result-track:06dc06e511bdd8862c9e6c3e4e9e68f72e15861a9f1bc0b0d4870434c2fd553a` |
| 21 | `theorem` | [subset_zeroLocus_iff_subset_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/subset-zerolocus-iff-subset-vanishingideal--bfa9f336cdaf5be1e2a7beaa.md) | 198 | `result-track:bfa9f336cdaf5be1e2a7beaaf03937c1d8ca2cbee9378543edee36dd7a9d9a46` |
| 22 | `theorem` | [subset_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/subset-vanishingideal-zerolocus--747a87f25872fa082fb7d4c6.md) | 204 | `result-track:747a87f25872fa082fb7d4c6e74706e9531135c6eeccd636c46f74fba07ac61e` |
| 23 | `theorem` | [le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/le-vanishingideal-zerolocus--eb72743aec3b05726d970223.md) | 207 | `result-track:eb72743aec3b05726d97022367b3e129882847c5eb54d9e79864b31503ee7fb8` |
| 24 | `theorem` | [vanishingIdeal_zeroLocus_eq_radical](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/vanishingideal-zerolocus-eq-radical--7dc945932fe46edd92daec9b.md) | 211 | `result-track:7dc945932fe46edd92daec9baa1c7f9c6197709833fbbcb41edc802665c94b0e` |
| 25 | `theorem` | [nilradical_eq_iInf](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/nilradical-eq-iinf--af06163e17d5752cb7b1572d.md) | 217 | `result-track:af06163e17d5752cb7b1572d59788c1665a8e181dd3ed80454cc32d822eff82b` |
| 26 | `theorem` | [vanishingIdeal_univ](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/vanishingideal-univ--e2d5efcaadda5b811d3d6d44.md) | 220 | `result-track:e2d5efcaadda5b811d3d6d443295c76a6148823c8284b09d4e87af1593c67848` |
| 27 | `theorem` | [zeroLocus_radical](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-radical--d14972f858f9ac39509d29ac.md) | 224 | `result-track:d14972f858f9ac39509d29ac1c958c5cdd496291a06227b56a305717019f6a7e` |
| 28 | `theorem` | [subset_zeroLocus_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/subset-zerolocus-vanishingideal--0a32c38c8884f6b02d77addf.md) | 227 | `result-track:0a32c38c8884f6b02d77addf9faa16ca44d4d6379561d58e15035a8b66a7fc19` |
| 29 | `theorem` | [zeroLocus_anti_mono](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-anti-mono--f3d93b52d9c038d8b649821f.md) | 231 | `result-track:f3d93b52d9c038d8b649821ff7167174f6a07b0fb2dd1d55084bb388469d36a0` |
| 30 | `theorem` | [zeroLocus_anti_mono_ideal](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-anti-mono-ideal--6543bdb0d19676f90aeef607.md) | 234 | `result-track:6543bdb0d19676f90aeef607543b1c6029912588590d0a3a5114e195647a060d` |
| 31 | `theorem` | [vanishingIdeal_anti_mono](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/vanishingideal-anti-mono--46e6b1215c611e77be5a5455.md) | 238 | `result-track:46e6b1215c611e77be5a545525b6d6c6553929b4e3f4b6c6951b867ac8181353` |
| 32 | `theorem` | [zeroLocus_subset_zeroLocus_iff](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-subset-zerolocus-iff--9208535d6fba9a6a92f387c9.md) | 242 | `result-track:9208535d6fba9a6a92f387c911503d131cd5e94cf45669ba7f1308e32e325d64` |
| 33 | `theorem` | [zeroLocus_subset_zeroLocus_singleton_iff](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-subset-zerolocus-singleton-iff--480fb90d2c986a712ae332ec.md) | 246 | `result-track:480fb90d2c986a712ae332ecf201b865a4662d9bcafe113b75deab44b94f78f6` |
| 34 | `theorem` | [zeroLocus_bot](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-bot--08e602d980a22716504065cb.md) | 251 | `result-track:08e602d980a22716504065cb12e5dbe302047dbb1eec4a377fb4cdce1d8175e6` |
| 35 | `lemma` | [zeroLocus_nilradical](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-nilradical--6ccfe5573be776c6859b283a.md) | 255 | `result-track:6ccfe5573be776c6859b283a22bc254e16573d62527cdf2e25bc04766034ab5d` |
| 36 | `theorem` | [zeroLocus_singleton_zero](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-singleton-zero--50aef8887c607e954428a159.md) | 259 | `result-track:50aef8887c607e954428a159fae728aa33e37b7f8e9742df1eeb37cd4e330d83` |
| 37 | `theorem` | [zeroLocus_empty](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-empty--4cb8dcbc6394bfc0f92fce68.md) | 263 | `result-track:4cb8dcbc6394bfc0f92fce6867864f8a1933cf0fcf7bccc55f3d273cc2f2c77c` |
| 38 | `theorem` | [vanishingIdeal_empty](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/vanishingideal-empty--39c63801c59e8fbdd6bbf0be.md) | 267 | `result-track:39c63801c59e8fbdd6bbf0beeb1d42559eb9129273622df086ffb9f8a6d03ac7` |
| 39 | `theorem` | [zeroLocus_empty_of_one_mem](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-empty-of-one-mem--ee8640b845f0475ccfad8a00.md) | 270 | `result-track:ee8640b845f0475ccfad8a0039b2eedd9358d39567a09f53c052e40669c42ef3` |
| 40 | `theorem` | [zeroLocus_singleton_one](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-singleton-one--b9337efcf401736ede7d6a93.md) | 281 | `result-track:b9337efcf401736ede7d6a936f5f9fec031d2e8422b71a2e1edcd2de75191d37` |
| 41 | `theorem` | [zeroLocus_empty_iff_eq_top](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-empty-iff-eq-top--dbafca9b93f4e8b563e628c2.md) | 284 | `result-track:dbafca9b93f4e8b563e628c26ca8f6381bc2427b7e30e01a8cd46c0c55023c8b` |
| 42 | `theorem` | [zeroLocus_univ](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-univ--b0b61bd13f3ca9f2f15fafb0.md) | 295 | `result-track:b0b61bd13f3ca9f2f15fafb0699c4d32050013c3f9cfa35d092664dec64d8f8d` |
| 43 | `theorem` | [vanishingIdeal_eq_top_iff](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/vanishingideal-eq-top-iff--c73f627dcf2dc38ac463224f.md) | 298 | `result-track:c73f627dcf2dc38ac463224f227519956a77baa95431a094e9424900ec5cbd5b` |
| 44 | `theorem` | [zeroLocus_eq_univ_iff](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-eq-univ-iff--f3c002a3a6608b7003d8ad09.md) | 302 | `result-track:f3c002a3a6608b7003d8ad09a34ace5844c11cfa117fc63ee61d28bd5c018546` |
| 45 | `theorem` | [zeroLocus_sup](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-sup--c3b220e998fc167ea35829f3.md) | 306 | `result-track:c3b220e998fc167ea35829f3680a4e483879e40d0516eb256d6fffd616cb31a9` |
| 46 | `theorem` | [zeroLocus_union](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-union--39dd98c9b79bec667c9f993c.md) | 310 | `result-track:39dd98c9b79bec667c9f993cf174c979ae8836224348371655fbcade03b2a425` |
| 47 | `theorem` | [vanishingIdeal_union](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/vanishingideal-union--c16c85e0af38cab24b321f24.md) | 313 | `result-track:c16c85e0af38cab24b321f2467ffe60712a7c6419a32937f7509ed5b6732a1f5` |
| 48 | `theorem` | [zeroLocus_iSup](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-isup--f216465cac6fc9372a6f6ab9.md) | 317 | `result-track:f216465cac6fc9372a6f6ab943345273b379f7722172566b064d052287d3b656` |
| 49 | `theorem` | [zeroLocus_iUnion](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-iunion--78354c79db96c16a70a4c5a0.md) | 321 | `result-track:78354c79db96c16a70a4c5a0e6f5639d3a6401c9c29a1663d5c0d55b0ace9d14` |
| 50 | `theorem` | [zeroLocus_iUnion₂](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-iunion--de9b80884ad30774c3be7e68.md) | 325 | `result-track:de9b80884ad30774c3be7e6812cf045989279176050382ae85b78416a5cbb3f2` |
| 51 | `theorem` | [zeroLocus_bUnion](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-bunion--a0a00da6004d20bb9cecef3a.md) | 329 | `result-track:a0a00da6004d20bb9cecef3a2c49ff11ec8e598fcc1b1c5d3adba2d1a0898ade` |
| 52 | `theorem` | [vanishingIdeal_iUnion](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/vanishingideal-iunion--cb878b17d19983ae2f623345.md) | 332 | `result-track:cb878b17d19983ae2f623345d458a87c47a65c6860f09dbf369108137c266242` |
| 53 | `theorem` | [zeroLocus_inf](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-inf--449f8c5ff58fc85b119334e4.md) | 336 | `result-track:449f8c5ff58fc85b119334e48281adf505f74fa945f158e3caaeced82429c66b` |
| 54 | `theorem` | [union_zeroLocus](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/union-zerolocus--9dcf6ad00eaa8eefc4ed88da.md) | 340 | `result-track:9dcf6ad00eaa8eefc4ed88da4bf8ad41f5def1e4be8c55cd051ed5f2d2081b44` |
| 55 | `theorem` | [zeroLocus_mul](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-mul--47142e803d64d816dbc4254b.md) | 345 | `result-track:47142e803d64d816dbc4254b8dea2ab2c406d19f29be76bb7ff1e934543a45e4` |
| 56 | `theorem` | [zeroLocus_singleton_mul](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-singleton-mul--5549df9844070235f9748aac.md) | 349 | `result-track:5549df9844070235f9748aac196ceb8313918f8e4e8a1d1f8befdf8bcf45ae8e` |
| 57 | `theorem` | [zeroLocus_pow](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-pow--3fb06b8026808a9c37ab0656.md) | 354 | `result-track:3fb06b8026808a9c37ab0656e6e1b8b144f830410b05bfe260adbf2412cb1a57` |
| 58 | `theorem` | [zeroLocus_singleton_pow](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-singleton-pow--83b07ac9ecffab2355aa2b02.md) | 359 | `result-track:83b07ac9ecffab2355aa2b02e14b059aca1028c8cc6ab6bacb015d55ed083db8` |
| 59 | `theorem` | [sup_vanishingIdeal_le](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/sup-vanishingideal-le--1d6b9b534c18b2437a5a06e1.md) | 363 | `result-track:1d6b9b534c18b2437a5a06e1cd7f6beb85893df20ba6b53105279e34765b45f8` |
| 60 | `theorem` | [mem_compl_zeroLocus_iff_notMem](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/mem-compl-zerolocus-iff-notmem--ac08b09136aaa744e8822893.md) | 371 | `result-track:ac08b09136aaa744e8822893c9579e55723ac475b1debca89faa33d975ec94e1` |
| 61 | `lemma` | [zeroLocus_insert_zero](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-insert-zero--36974bd4e5a7a7ddbc43496e.md) | 376 | `result-track:36974bd4e5a7a7ddbc43496ec8238a5894390e086b62449dde587e1e8740ccc5` |
| 62 | `lemma` | [zeroLocus_sdiff_singleton_zero](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-sdiff-singleton-zero--5d19143c4c1b1b207b06f9d6.md) | 380 | `result-track:5d19143c4c1b1b207b06f9d67d135ff5561159482411268d1ec8fab685ee6e54` |
| 63 | `lemma` | [zeroLocus_smul_of_isUnit](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-smul-of-isunit--c1dee1226fe1ff141def3eb8.md) | 386 | `result-track:c1dee1226fe1ff141def3eb806669b65f449ab23515070cc0a866592124f5fc8` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/instance--5ce1d5d61fc5b9eeda38b5b3.md) | 392 | `declaration-track:5ce1d5d61fc5b9eeda38b5b37e3d797bf33797304429b43094928e8ee9de6392` |
| 65 | `theorem` | [asIdeal_bot](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/asideal-bot--51ae4cc6f93fbb138b01b803.md) | 397 | `result-track:51ae4cc6f93fbb138b01b8033ee2e39b04e8cb6e530c3bfc8ac0c3d3f6855a56` |
| 66 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/instance--51b3ca1b9eea55b555fcea55.md) | 399 | `declaration-track:51b3ca1b9eea55b555fcea5588a12c0920c66dc66479f2024f7ecf8ddac94244` |
| 67 | `lemma` | [isMax_iff](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/ismax-iff--71753ddcab4bea71a02342aa.md) | 404 | `result-track:71753ddcab4bea71a02342aa37dd80b90cecde8864320f709cc27637d7902263` |
| 68 | `lemma` | [zeroLocus_eq_singleton](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/zerolocus-eq-singleton--12c114f4365cb1b8453eb2ee.md) | 411 | `result-track:12c114f4365cb1b8453eb2ee268abef3b8cd60e0fdd5a1d1152db5aa1a382afa` |
| 69 | `lemma` | [isMin_iff](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/ismin-iff--e278a29f280befce826dc10b.md) | 419 | `result-track:e278a29f280befce826dc10be6fef96b8d42fc9cc05d5a398cd777bdefd6770e` |
| 70 | `theorem` | [exists_primeSpectrum_prod_le](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/exists-primespectrum-prod-le--7b8b1ccd0f2c9f701bc040fb.md) | 436 | `result-track:7b8b1ccd0f2c9f701bc040fbb2cf533de3c9403876266b8631a1310ab1ba7d67` |
| 71 | `theorem` | [exists_primeSpectrum_prod_le_and_ne_bot_of_domain](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/exists-primespectrum-prod-le-and-ne-bot-of-domain--9a7f642e855fefb6469d848b.md) | 466 | `result-track:9a7f642e855fefb6469d848bfb856f8900d2da6ba8fa60b162625f4c9d117f07` |
| 72 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/instance--0afb98601de8df366969e2f6.md) | 507 | `declaration-track:0afb98601de8df366969e2f66da28f49ee58586c94c7df8ef48fd0fb87b10ea8` |
| 73 | `theorem` | [asIdeal_smul](../../../../mathematics/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/declarations/asideal-smul--9196e9b425d3cbe2eccbbc72.md) | 513 | `result-track:9196e9b425d3cbe2eccbbc721933a078830922e42e5505ddac2e9e8ab4ad26d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
