# Verification target: GRWTSK.Algebra.Over.Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edf049c390e74cf12bc487f1784a9d47ccf3853a",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edf049c390e74cf12bc487f1784a9d47ccf3853a`.

Source path: `GRWTSK/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean.json)

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
| 1 | `theorem` | [comap_eq_of_scalar_tower_quotient](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/comap-eq-of-scalar-tower-quotient--afd59866925ca815c2dda702.md) | 52 | `result-track:afd59866925ca815c2dda7026dc53923df4ef4a580e35aaf5f02a118f7824d48` |
| 2 | `instance` | [Quotient.algebraQuotientMapQuotient](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/quotient-algebraquotientmapquotient--fd10380c74d87b6231edc500.md) | 63 | `declaration-track:fd10380c74d87b6231edc500edc38d2e08c7e179aa5fef258ac2389265a68276` |
| 3 | `theorem` | [Quotient.algebraMap_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/quotient-algebramap-quotient-map-quotient--48415f051775a0b28e3be9e4.md) | 67 | `result-track:48415f051775a0b28e3be9e4f2e96bd6a06d8f8519ab6d98d8b84ac5c5fb2711` |
| 4 | `theorem` | [Quotient.mk_smul_mk_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/quotient-mk-smul-mk-quotient-map-quotient--46e1b698567d2e5c08762da0.md) | 74 | `result-track:46e1b698567d2e5c08762da061286d12d61aae72b4d0861dd5e756d4b2788039` |
| 5 | `instance` | [Quotient.tower_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/quotient-tower-quotient-map-quotient--1feabdb1f40a5370fca5f3fc.md) | 79 | `declaration-track:1feabdb1f40a5370fca5f3fca5c692e69fd18e16240096f4ddd2982cc8c52496` |
| 6 | `abbrev` | [under](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/under--a32b2c84a7c7840a51a877e2.md) | 96 | `declaration-track:a32b2c84a7c7840a51a877e28c13110f86555d683325d5deccf8ca356a9abc79` |
| 7 | `theorem` | [under_def](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/under-def--49f7ac94cee97949a0f1fb83.md) | 98 | `result-track:49f7ac94cee97949a0f1fb838377ce6c31282d854079847ce68ad98aa35b5a5d` |
| 8 | `theorem` | [mem_under](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/mem-under--3f7f80d273ae95795df057f9.md) | 100 | `result-track:3f7f80d273ae95795df057f92f19e6af6abf5bdf3894801f242faf6d17400351` |
| 9 | `instance` | [IsPrime.under](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/isprime-under--21cf0caaf7fd9003dfc602cc.md) | 102 | `declaration-track:21cf0caaf7fd9003dfc602ccff89034ef013875adf76a1494a502b4382a86a79` |
| 10 | `lemma` | [under_smul](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/under-smul--cbb790f28c2ac5008adf72a0.md) | 106 | `result-track:cbb790f28c2ac5008adf72a0d20d63189550a88f181531b4496b244e0c18909c` |
| 11 | `theorem` | [smul_under](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/smul-under--309ccddbb3e1ef35542b6b5f.md) | 111 | `result-track:309ccddbb3e1ef35542b6b5fdbb4ee9e02ad460010d5c5bc95eecc63fb1e61a8` |
| 12 | `theorem` | [under_top](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/under-top--bc2b888c9a270383589d315d.md) | 120 | `result-track:bc2b888c9a270383589d315d42b4c8f12b65f6dd66b0b7f1b502338452213d2f` |
| 13 | `class` | [LiesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/liesover--a49c07eb14c1b6043b3e528a.md) | 125 | `declaration-track:a49c07eb14c1b6043b3e528acb816c312dbb15804cc605202bb123a874d36ae6` |
| 14 | `instance` | [over_under](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/over-under--b4b44dc0bf301181690dbccf.md) | 128 | `declaration-track:b4b44dc0bf301181690dbccf7ccce9bae905187ad871fed3dfa417cf225ef4a3` |
| 15 | `theorem` | [over_def](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/over-def--293ebd1211e073ddfd65e377.md) | 130 | `result-track:293ebd1211e073ddfd65e377c7161be8802c780eacd848b86279175e2ec41294` |
| 16 | `theorem` | [mem_of_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/mem-of-liesover--358c715c78d74e28400a83a9.md) | 132 | `result-track:358c715c78d74e28400a83a94aaf9b9dbf4e3fce1dd25aa49577144ab52256e0` |
| 17 | `instance` | [top_liesOver_top](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/top-liesover-top--7dc947729d26471b256d1821.md) | 137 | `declaration-track:7dc947729d26471b256d1821292dad6114478578bc44962de90306d879f6e75a` |
| 18 | `theorem` | [eq_top_iff_of_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/eq-top-iff-of-liesover--5d5a83a2284b22bb726f3f55.md) | 140 | `result-track:5d5a83a2284b22bb726f3f550452a94fdb5fe422daf9200139fe961328d3c6f2` |
| 19 | `lemma` | [ne_top_iff_of_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/ne-top-iff-of-liesover--dfba2a027f746fa5e4ec8bec.md) | 144 | `result-track:dfba2a027f746fa5e4ec8bec3267f62cae0df5843a43320f9cd8c9ca68054232` |
| 20 | `lemma` | [isPrime_of_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/isprime-of-liesover--223f5fd0262c4b06d1048dfb.md) | 146 | `result-track:223f5fd0262c4b06d1048dfb6de985343a7810150659da1b25feed4a0a5a039a` |
| 21 | `theorem` | [LiesOver.of_eq_comap](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/liesover-of-eq-comap--0b571253521a596f56a07567.md) | 152 | `result-track:0b571253521a596f56a07567fcf6a9312f59c762e86d4621a0b2794aebc92ca2` |
| 22 | `theorem` | [LiesOver.of_eq_map_equiv](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/liesover-of-eq-map-equiv--0a824605acf333c93edad79b.md) | 160 | `result-track:0a824605acf333c93edad79bd9de73b7c3e6e4563150f4d1dc002c5eae0acbac` |
| 23 | `instance` | [LiesOver.smul](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/liesover-smul--6e9e8411d06bdb088bf88a08.md) | 166 | `declaration-track:6e9e8411d06bdb088bf88a08cb35ed97cfb4aada41d1dfabcddf0ac8b97dd575` |
| 24 | `instance` | [comap_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/comap-liesover--2b2bcfea1e8c2c9d6b1bb072.md) | 171 | `declaration-track:2b2bcfea1e8c2c9d6b1bb0721695281b8e93eead9da294b05c8979b791bd9873` |
| 25 | `instance` | [map_equiv_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/map-equiv-liesover--1c183f3d0d80100abcac3381.md) | 175 | `declaration-track:1c183f3d0d80100abcac33813013f86e4189f56937d9f01a785d61535f79f318` |
| 26 | `theorem` | [under_under](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/under-under--0c66601dfb0de625a603ac59.md) | 188 | `result-track:0c66601dfb0de625a603ac5942cc997e36527f089df52d4421f92a6f3b8cf2cd` |
| 27 | `theorem` | [LiesOver.trans](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/liesover-trans--6dc5d231adf57aaeb5bcef5f.md) | 191 | `result-track:6dc5d231adf57aaeb5bcef5fa1d74c1adfecb7abddb4e24dfc8f83b37c8a6aa2` |
| 28 | `theorem` | [LiesOver.tower_bot](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/liesover-tower-bot--dac91e9c6ad9bd59762c1752.md) | 194 | `result-track:dac91e9c6ad9bd59762c17521a0afef4b0d2f4228a7c7fb4f6204d871ce2a739` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/instance--f949a08edcf3610522d21b91.md) | 197 | `declaration-track:f949a08edcf3610522d21b915aa68e20d513eb2d2ff5e5801e88bfcb825ea5dc` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/instance--0e4bd306937e6fcdce202026.md) | 200 | `declaration-track:0e4bd306937e6fcdce2020269552f7c4998b03d1e589c9e77c56fc32f95624b2` |
| 31 | `theorem` | [map_under_le_under_map](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/map-under-le-under-map--d3af73c0c67634ae89ef1778.md) | 213 | `result-track:d3af73c0c67634ae89ef1778e5fdfe2cfe64d073e1ba44a48ecdb02ee5b7b164` |
| 32 | `theorem` | [under_map_eq_map_under](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/under-map-eq-map-under--aac8b87b59eeac77a5162a22.md) | 232 | `result-track:aac8b87b59eeac77a5162a22ae9ca40496c558060396ff802ce053df68938a7f` |
| 33 | `theorem` | [disjoint_primeCompl_of_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/disjoint-primecompl-of-liesover--45cac64e47ced32021592e5d.md) | 239 | `result-track:45cac64e47ced32021592e5d73509cc9836f519c5bc2da290f995fac1c183c9e` |
| 34 | `theorem` | [algebraMapSubmonoid_primeCompl_of_liesOver_surjective](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/algebramapsubmonoid-primecompl-of-liesover-surjective--23e876c72b2d97897f84adc7.md) | 245 | `result-track:23e876c72b2d97897f84adc77b84900b94cf0bab8b6be4630a7bd7584da10afd` |
| 35 | `instance` | [under_liesOver_of_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/under-liesover-of-liesover--9effce9dd8ec94ec23bb7b0e.md) | 252 | `declaration-track:9effce9dd8ec94ec23bb7b0e804c4d8759c351c82683ccc36f77cf113b86d460` |
| 36 | `theorem` | [under_bot](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/under-bot--65486a68ea786c7f28a7995b.md) | 263 | `result-track:65486a68ea786c7f28a7995b64243b40e7c62ada3181491d0b028d31090843c8` |
| 37 | `instance` | [bot_liesOver_bot](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/bot-liesover-bot--c96415e2da747ef47d80bfc4.md) | 266 | `declaration-track:c96415e2da747ef47d80bfc400410f5aa398051f4ecf04cc256273c7d40c3746` |
| 38 | `theorem` | [ne_bot_of_liesOver_of_ne_bot](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/ne-bot-of-liesover-of-ne-bot--2336b3f81ab143df990d2f1f.md) | 270 | `result-track:2336b3f81ab143df990d2f1f2c736773115a9d147716735c4bf92962aab60881` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/instance--233c78f6dd385a2c0ded7a74.md) | 276 | `declaration-track:233c78f6dd385a2c0ded7a7439168bdff217c0feffdc29cc003ccb539c153377` |
| 40 | `instance` | [algebraOfLiesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/algebraofliesover--102963ff43b0ec963917a60d.md) | 287 | `declaration-track:102963ff43b0ec963917a60defe4b6ff7eff21cfeae96b43edda07959e463758` |
| 41 | `lemma` | [algebraMap_mk_of_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/algebramap-mk-of-liesover--9e1fe30672dfb9b5f2b836c9.md) | 291 | `result-track:9e1fe30672dfb9b5f2b836c959bf18065cd7b0eeb8a7dd841cb0127ce9d44bf6` |
| 42 | `instance` | [isScalarTower_of_liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/isscalartower-of-liesover--3cdea19e4d77984f7aa5e182.md) | 295 | `declaration-track:3cdea19e4d77984f7aa5e1829cf612b56521ae4006eeabfbe63ecb6ec067a184` |
| 43 | `instance` | [instFaithfulSMul](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/instfaithfulsmul--fb8214a9bbe8ad4c34245021.md) | 299 | `declaration-track:fb8214a9bbe8ad4c3424502110140f4bb4fb98a88baa03f42a9b30e029a2b1e2` |
| 44 | `theorem` | [nontrivial_of_liesOver_of_ne_top](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/nontrivial-of-liesover-of-ne-top--6c6e4b033d203591fa93a665.md) | 307 | `result-track:6c6e4b033d203591fa93a665495515a35216b03db18815cf9b41af432c6327c6` |
| 45 | `theorem` | [nontrivial_of_liesOver_of_isPrime](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/nontrivial-of-liesover-of-isprime--5cdd988ad7097ee653742386.md) | 310 | `result-track:5cdd988ad7097ee6537423864a775489b86c3d9c5220c9bef1d3b74b240b5432` |
| 46 | `def` | [algEquivOfEqMap](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/algequivofeqmap--6ab24df51d64b904f45e5493.md) | 319 | `declaration-track:6ab24df51d64b904f45e54938acba4bd812b62b8db3e62c039136dc87200c843` |
| 47 | `theorem` | [algEquivOfEqMap_apply](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/algequivofeqmap-apply--f8f493dc062dfa833b766a60.md) | 326 | `result-track:f8f493dc062dfa833b766a602bfacf17ebd94b742d90a0bfda211fcb16c34196` |
| 48 | `def` | [algEquivOfEqComap](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/algequivofeqcomap--7485efc54db441c34d7e104d.md) | 331 | `declaration-track:7485efc54db441c34d7e104de20f0462626c7b391f5c198de473c42b953ec3f4` |
| 49 | `theorem` | [algEquivOfEqComap_apply](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/algequivofeqcomap-apply--cdce445f532a3b9fd2a4c3f1.md) | 335 | `result-track:cdce445f532a3b9fd2a4c3f1ddd18a8ab32175219952c481ca51e7255480dfab` |
| 50 | `def` | [stabilizerHom](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/stabilizerhom--bd650cf65037c8218ca2d7ee.md) | 341 | `declaration-track:bd650cf65037c8218ca2d7ee4184a87e6dfea4c65c9d2c411ca1361fb9f55165` |
| 51 | `theorem` | [stabilizerHom_apply](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/stabilizerhom-apply--e1ca8fcd36d522b4caadd94d.md) | 350 | `result-track:e1ca8fcd36d522b4caadd94ddb49a562fb276dc541d09187beb8710c9e85f6fc` |
| 52 | `lemma` | [ker_stabilizerHom](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/ker-stabilizerhom--9e5215ec04358fb92c90f670.md) | 354 | `result-track:9e5215ec04358fb92c90f670209de8c903feec77fd145e2574dd6551cd3b389a` |
| 53 | `theorem` | [map_ker_stabilizer_subtype](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/map-ker-stabilizer-subtype--c8bab34b229a64dd931f2d5d.md) | 358 | `result-track:c8bab34b229a64dd931f2d5d9cad51db48ac8877a88d79f1075c0a47aeebf543` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/instance--a218c99673ebe8e757832cfe.md) | 362 | `declaration-track:a218c99673ebe8e757832cfeb4e148cc6e5d83f00ffe696a258d0e92e836fab2` |
| 55 | `def` | [primesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/primesover--46360dc9943a2ebcc6a6fa8e.md) | 376 | `declaration-track:46360dc9943a2ebcc6a6fa8ed819e90954968cebb8c2a6dfd0f9990a8b212d7d` |
| 56 | `instance` | [primesOver.isPrime](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/primesover-isprime--3546e90e4605fb34bc8014cf.md) | 381 | `declaration-track:3546e90e4605fb34bc8014cf70cbc2038d4fddbe23e68eda50fe56257bb10880` |
| 57 | `instance` | [primesOver.liesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/primesover-liesover--830d7285b1627a85d08d0175.md) | 384 | `declaration-track:830d7285b1627a85d08d0175c6d86cd9cd6864c9364c9447704990fa9c11f0a6` |
| 58 | `abbrev` | [primesOver.mk](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/primesover-mk--5ae443fa33fb164fefddc2d1.md) | 388 | `declaration-track:5ae443fa33fb164fefddc2d15a9086387e24c5ca8356354bb7b03a3fccb6275a` |
| 59 | `theorem` | [ne_bot_of_mem_primesOver](../../../../mathematics/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/declarations/ne-bot-of-mem-primesover--32c3208bfe81ccbd369e03e7.md) | 392 | `result-track:32c3208bfe81ccbd369e03e77b896150a4038d582c030381602c897f72e5e848` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
