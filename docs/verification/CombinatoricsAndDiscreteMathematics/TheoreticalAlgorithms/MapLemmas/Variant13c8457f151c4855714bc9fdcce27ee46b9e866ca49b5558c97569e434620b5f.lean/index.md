# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapLemmas.Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a64785ae3e346f08c7649cd87d46a2da91e58d7f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a64785ae3e346f08c7649cd87d46a2da91e58d7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean.json)

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
| 1 | `theorem` | [mapAccumr_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-mapaccumr--629e9eb556eb11e8f540884b.md) | 41 | `result-track:629e9eb556eb11e8f540884bd11c18037635a0545fcb66c24b88b5ac2d57f95a` |
| 2 | `theorem` | [mapAccumr_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-map--0a63934e491cf106e699b4ec.md) | 52 | `result-track:0a63934e491cf106e699b4ec64075a89222cf95959378415c687fb19c42fb29e` |
| 3 | `theorem` | [map_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-mapaccumr--d05195751d483c462a72b288.md) | 57 | `result-track:d05195751d483c462a72b2882e5664818943bd3da5615759b77e243cff4078c8` |
| 4 | `theorem` | [map_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-map--20e9a6e2ef1b2794e922c301.md) | 64 | `result-track:20e9a6e2ef1b2794e922c3013c7bdf5c45f88dddc02aff15ec92c35331af89f4` |
| 5 | `theorem` | [map_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-pmap--521f1a41797b621f2a6e7349.md) | 68 | `result-track:521f1a41797b621f2a6e7349fc5047f7d9b4438d4ad645c6d9027fa3062a2322` |
| 6 | `theorem` | [pmap_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/pmap-map--037ce5bff5d34bcc1fac5ce3.md) | 72 | `result-track:037ce5bff5d34bcc1fac5ce34f3463e270427e53fed4916ee451eb3bd0042d62` |
| 7 | `theorem` | [mapAccumr₂_mapAccumr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-mapaccumr-left--ee387085808cf672030f71c9.md) | 83 | `result-track:ee387085808cf672030f71c973ed4dee52da11e010b961ff166b109e6709dc65` |
| 8 | `theorem` | [map₂_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-map-left--15e58ded2d6b752350393f3c.md) | 94 | `result-track:15e58ded2d6b752350393f3cc26cdb80cfb6bcc25b74d150982d5657a6e0e92e` |
| 9 | `theorem` | [mapAccumr₂_mapAccumr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-mapaccumr-right--47a9405be2e2c9b1e3c77ba5.md) | 99 | `result-track:47a9405be2e2c9b1e3c77ba5e01bfc9010727998ecebd514bb7cbf4eb52e2403` |
| 10 | `theorem` | [map₂_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-map-right--8e50e1b08ad37647cbf71aaf.md) | 110 | `result-track:8e50e1b08ad37647cbf71aaf82486281b0299bbd40518f84ce8f07c6b18084ab` |
| 11 | `theorem` | [mapAccumr_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-mapaccumr--b63f17bb15304f69c76ec06c.md) | 115 | `result-track:b63f17bb15304f69c76ec06c839dc3571e2d251eafda4efc84fc93bc6a8a3dd6` |
| 12 | `theorem` | [map_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-map--1a162c5205d5bfab6af6a593.md) | 126 | `result-track:1a162c5205d5bfab6af6a593e8e7609ecc8af3f1a39d50c2cb83c44722c2736b` |
| 13 | `theorem` | [mapAccumr₂_mapAccumr₂_left_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-mapaccumr-left-left--4afc85be0b98db7746ef6918.md) | 131 | `result-track:4afc85be0b98db7746ef691874daf76285bdafa7293b6c6dc367496af952e05a` |
| 14 | `theorem` | [mapAccumr₂_mapAccumr₂_left_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-mapaccumr-left-right--57d5797c122eca80e7654d9d.md) | 143 | `result-track:57d5797c122eca80e7654d9d4db23af4e6f1dbff1e1a6498f96bea2be066c23a` |
| 15 | `theorem` | [mapAccumr₂_mapAccumr₂_right_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-mapaccumr-right-left--f2bfa9b2b306bcbc7dbebcb2.md) | 156 | `result-track:f2bfa9b2b306bcbc7dbebcb28be30f29da7daae3f10589151cabd7a363d515c0` |
| 16 | `theorem` | [mapAccumr₂_mapAccumr₂_right_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-mapaccumr-right-right--35823322be95a1b8f5f76d96.md) | 168 | `result-track:35823322be95a1b8f5f76d9696002111f70ec98c240d84a7960c308e944137d5` |
| 17 | `theorem` | [mapAccumr_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-bisim--7e27eff63235885078d1a2a3.md) | 196 | `result-track:7e27eff63235885078d1a2a34896ef33224475212e96f87098437bada2854a71` |
| 18 | `theorem` | [mapAccumr_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-bisim-tail--bc25e20122f45758677ed929.md) | 208 | `result-track:bc25e20122f45758677ed9299a25c8012e6570c298aa96d533042a0edaee8654` |
| 19 | `theorem` | [mapAccumr₂_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-bisim--995d61b105466dcb02617249.md) | 215 | `result-track:995d61b105466dcb026172491922fc86d45ef24f5b881727c179ffe59835cf48` |
| 20 | `theorem` | [mapAccumr₂_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-bisim-tail--92c8b7f68f4c7733ec60d14b.md) | 228 | `result-track:92c8b7f68f4c7733ec60d14b0630b537660f948f4ea2ead886f0282c6a57470c` |
| 21 | `theorem` | [map_eq_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-eq-mapaccumr--fe91f8bbc01d10e0fd8fd18a.md) | 247 | `result-track:fe91f8bbc01d10e0fd8fd18a3accec709710a056034535bb627fb2fd5c0a05f9` |
| 22 | `theorem` | [mapAccumr_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-eq-map--43834db74aa9c18844fdff8f.md) | 256 | `result-track:43834db74aa9c18844fdff8fefbb27573b91ad4aacc77989c1bd1f7283dbd5e0` |
| 23 | `theorem` | [map₂_eq_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-eq-mapaccumr--efcb50b2b50b82177f96e10f.md) | 265 | `result-track:efcb50b2b50b82177f96e10fe2e74980e1c6c69aea5152924fc482a6310704d3` |
| 24 | `theorem` | [mapAccumr₂_eq_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-eq-map--2f8a817f4a01f22610ab6372.md) | 274 | `result-track:2f8a817f4a01f22610ab6372c23164c432433a2e0d6a429932f2c7e3be516edc` |
| 25 | `theorem` | [mapAccumr_eq_map_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-eq-map-of-constant-state--2269fe4a27e034e55c934deb.md) | 288 | `result-track:2269fe4a27e034e55c934debf7e16925b7601a49c1aa6dcedc7a174bf3ad8836` |
| 26 | `theorem` | [mapAccumr₂_eq_map₂_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-eq-map-of-constant-state--33d2a774b1071744dac8c8cb.md) | 297 | `result-track:33d2a774b1071744dac8c8cb4226595fac272f112b196cb802a9f89b4ee52349` |
| 27 | `theorem` | [mapAccumr_eq_map_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-eq-map-of-unused-state--4bf0f57fe5732d06b2cdf74e.md) | 307 | `result-track:4bf0f57fe5732d06b2cdf74e3111ad66a2ec9652f55626279e4941bd8f9d069f` |
| 28 | `theorem` | [mapAccumr₂_eq_map₂_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-eq-map-of-unused-state--1443fa85b43963dec8fd85af.md) | 319 | `result-track:1443fa85b43963dec8fd85afc41c82938e656dee480ab3a54a7af717eb1e2ae9` |
| 29 | `theorem` | [mapAccumr_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-redundant-pair--c4105439d0a0f9c030eef554.md) | 329 | `result-track:c4105439d0a0f9c030eef5543ad92a998dfbb3eb7bfa1cb20587fbce6396f05f` |
| 30 | `theorem` | [mapAccumr₂_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-redundant-pair--456ca5734b9cbdfc74f949b7.md) | 342 | `result-track:456ca5734b9cbdfc74f949b72483bc31b0628b13eb5407098e773ee10592df02` |
| 31 | `theorem` | [mapAccumr₂_unused_input_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-unused-input-left--32043f55bfa018f3f988dbdc.md) | 364 | `result-track:32043f55bfa018f3f988dbdcba3928de839e3952a140e44295809b49affc6aaa` |
| 32 | `theorem` | [mapAccumr₂_unused_input_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-unused-input-right--704422ea54a76bf0d3b0a62f.md) | 376 | `result-track:704422ea54a76bf0d3b0a62f162a5ad27f0bfbc9d37a263f3b7547a5df2a313f` |
| 33 | `theorem` | [map₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-comm--7d8d0f089991eda562ce99de.md) | 391 | `result-track:7d8d0f089991eda562ce99dec2d6428076f52a55332b6567fa20a5338a0f0919` |
| 34 | `theorem` | [mapAccumr₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-comm--7d19f685f8ea9fd8a2018934.md) | 395 | `result-track:7d19f685f8ea9fd8a20189341986429a96884e7e80294e52fcf1f9454fd7648b` |
| 35 | `theorem` | [map₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/map-flip--0ae26f6dd68e9dcb9f297ddc.md) | 407 | `result-track:0ae26f6dd68e9dcb9f297ddc3c648072aee1a2db31b5cacb090dabd398334385` |
| 36 | `theorem` | [mapAccumr₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/declarations/mapaccumr-flip--e23d99d6049984510b1932f3.md) | 411 | `result-track:e23d99d6049984510b1932f373e4777c28d81ba8a762ebf25112162a59bb5844` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
