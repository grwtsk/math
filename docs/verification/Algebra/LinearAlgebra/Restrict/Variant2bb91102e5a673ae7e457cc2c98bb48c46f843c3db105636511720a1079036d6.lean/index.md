# Verification target: GRWTSK.Algebra.LinearAlgebra.Restrict.Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edb09e5d873e7b22c6d9c246af96bc032d1891ac",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edb09e5d873e7b22c6d9c246af96bc032d1891ac`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean.json)

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
| 1 | `def` | [subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/subtypel--738cb8f257d4044751cbec11.md) | 47 | `declaration-track:738cb8f257d4044751cbec11a30832a95938561dafd0093e4cf82c1d92b39feb` |
| 2 | `theorem` | [toLinearMap_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/tolinearmap-subtypel--f1853426c9a94eea663b3ccd.md) | 51 | `result-track:f1853426c9a94eea663b3ccdfb57140cc9951c942ba6d462e554c597ffb218ed` |
| 3 | `theorem` | [coe_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/coe-subtypel--247e3168ff36010b098a7cbd.md) | 54 | `result-track:247e3168ff36010b098a7cbdcec299f65b46b32beb5ab5c240e7f5c7ea7caaea` |
| 4 | `theorem` | [subtypeL_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/subtypel-apply--ed39a5f64ec8d88a5601a582.md) | 59 | `result-track:ed39a5f64ec8d88a5601a5820dd55642ff36c5a4fc4134dedfeec10123710a61` |
| 5 | `theorem` | [isEmbedding_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/isembedding-subtype--442e31d494d0178cf5fb256d.md) | 61 | `result-track:442e31d494d0178cf5fb256d093a9c883db29d493f2643b1d209d0ac9608c1e2` |
| 6 | `theorem` | [isEmbedding_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/isembedding-subtypel--efa18a427346bffa72ebac05.md) | 62 | `result-track:efa18a427346bffa72ebac056bdabdafa5b632a26f58171ebb261a0b3d6d586c` |
| 7 | `theorem` | [isClosedEmbedding_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/isclosedembedding-subtype--c4bcea2a80efcf93bc090fb2.md) | 64 | `result-track:c4bcea2a80efcf93bc090fb2a7b26afafe66a0e9a49ec0d0425c5920e5521770` |
| 8 | `theorem` | [isClosedEmbedding_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/isclosedembedding-subtypel--dc88d2a9299a9664a8e8b294.md) | 66 | `result-track:dc88d2a9299a9664a8e8b2941216ca2f03d182e6e25a56b5d05709b12404a7da` |
| 9 | `theorem` | [range_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/range-subtypel--6a8ca12a56290d8e7d0acf88.md) | 70 | `result-track:6a8ca12a56290d8e7d0acf88f1688a7b39645605a1eed1b4e880a0dacd29ff0b` |
| 10 | `theorem` | [ker_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/ker-subtypel--8f13391c12c1bf7ea886662e.md) | 74 | `result-track:8f13391c12c1bf7ea886662ecdc632a742fbfc12a4311e17665a76eff5c701f7` |
| 11 | `def` | [domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/domrestrict--cd200bd28ad58fa76f26269f.md) | 95 | `declaration-track:cd200bd28ad58fa76f26269f30e05bcd4fceab527f229df9f6624e22c1756242` |
| 12 | `theorem` | [toLinearMap_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/tolinearmap-domrestrict--a1a2916ccd131739d7eb97c5.md) | 99 | `result-track:a1a2916ccd131739d7eb97c5c845103115ebc988af5d11ee0b975e8a0ece0f55` |
| 13 | `lemma` | [coe_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/coe-domrestrict--2ad3ea361ddd2c606ccb13b2.md) | 103 | `result-track:2ad3ea361ddd2c606ccb13b2fa810e6f3fd5b5ca77465a89ab6ad025e57bc472` |
| 14 | `def` | [codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/codrestrict--f326c26e4f5be744a9618e19.md) | 108 | `declaration-track:f326c26e4f5be744a9618e19aa74a8f5d7f9126ecad740fc3046d139b1b81f5e` |
| 15 | `theorem` | [toLinearMap_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/tolinearmap-codrestrict--dd043008b2885ba48bb7f84d.md) | 114 | `result-track:dd043008b2885ba48bb7f84d2e8b829ae73f3e637d7c210aa910a16119f7fd5a` |
| 16 | `theorem` | [coe_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/coe-codrestrict--daf7c543da276c437998925e.md) | 118 | `result-track:daf7c543da276c437998925ed17671395b5fe67ebacb4ff103a635cd1da9ef0a` |
| 17 | `theorem` | [coe_codRestrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/coe-codrestrict-apply--71cc5446fbb688f2bddd97d2.md) | 123 | `result-track:71cc5446fbb688f2bddd97d2af12e95ee953e5801ca21c652f4cccceadca6bdf` |
| 18 | `theorem` | [ker_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/ker-codrestrict--77fcbe5c73ad07faf79e1e90.md) | 127 | `result-track:77fcbe5c73ad07faf79e1e9059d1be5e3f734a921cfdb58a56550ebb5221a805` |
| 19 | `theorem` | [subtypeL_comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/subtypel-comp-codrestrict--ecf2ab95efae70db5a1e82d0.md) | 132 | `result-track:ecf2ab95efae70db5a1e82d0e8f44da93d4cc0555be43cc439dc453c4831cfa7` |
| 20 | `theorem` | [domRestrict_comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/domrestrict-comp-codrestrict--a088a62163e966506ab0b0f5.md) | 137 | `result-track:a088a62163e966506ab0b0f55f51b5765d5b1c26c3f8dd49b02dc533c9732f06` |
| 21 | `abbrev` | [rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/rangerestrict--7a38164eb737cb05a5153d2b.md) | 143 | `declaration-track:7a38164eb737cb05a5153d2bbf20a13c48ff043e6b4f1cc18a7cc0347a4a6dcb` |
| 22 | `theorem` | [toLinearMap_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/tolinearmap-rangerestrict--1060e2404a5c7fee2a051af4.md) | 146 | `result-track:1060e2404a5c7fee2a051af48f71611da51946406512fc841a1048f37f39e2ad` |
| 23 | `theorem` | [coe_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/coe-rangerestrict--da0711f91ea3ec04819ae014.md) | 150 | `result-track:da0711f91ea3ec04819ae01470ee0729bc19c0dbade7e03a709dcea551b849e5` |
| 24 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/restrict--761098fa4076f0b6de89482e.md) | 154 | `declaration-track:761098fa4076f0b6de89482e16fc92d8e4159d20080b1588e5774099a748e07f` |
| 25 | `theorem` | [toLinearMap_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/tolinearmap-restrict--029a16b3e2b5ac0a18d3db21.md) | 159 | `result-track:029a16b3e2b5ac0a18d3db2155987558d4c52acfe158b7464e05fced8ddc0eea` |
| 26 | `theorem` | [coe_restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/coe-restrict-apply--8b89abb1f43623de9e931855.md) | 165 | `result-track:8b89abb1f43623de9e931855de8e6112140ed62e7590dc4eb09eaff9ee2e424c` |
| 27 | `theorem` | [restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/restrict-apply--af32028b802544aae7097ae8.md) | 169 | `result-track:af32028b802544aae7097ae88fc2a57ef78fcc8e3ba77d12d5cb91786d2cf364` |
| 28 | `lemma` | [restrict_comp](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/restrict-comp--3b6678575f53f6c5f9933b5b.md) | 174 | `result-track:3b6678575f53f6c5f9933b5bb292a93b127bc8c5fce5b1dec1954652106797e5` |
| 29 | `theorem` | [subtypeL_comp_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/subtypel-comp-restrict--9a6e1584b45e3b943d805915.md) | 180 | `result-track:9a6e1584b45e3b943d805915184bcb3018e214a93142f487f3535b332e2f6b73` |
| 30 | `theorem` | [restrict_eq_codRestrict_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/restrict-eq-codrestrict-domrestrict--1c9e46b271aeed2b9cca1c2f.md) | 184 | `result-track:1c9e46b271aeed2b9cca1c2f9d2f4a3da3f6d04553efed38c1e1ac32fadf6af9` |
| 31 | `theorem` | [restrict_eq_domRestrict_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/restrict-eq-domrestrict-codrestrict--d6819fe5b248e5b81399241b.md) | 189 | `result-track:d6819fe5b248e5b81399241bc3c37cedd6fa7c841a1f0d4603da5b8be6320a43` |
| 32 | `def` | [projKerOfRightInverse](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/projkerofrightinverse--4a7a75cb90dc7ef8205148cf.md) | 207 | `declaration-track:4a7a75cb90dc7ef8205148cf25845748aaa9d938393cf7f558e0a27f8167f7ef` |
| 33 | `theorem` | [coe_projKerOfRightInverse_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/coe-projkerofrightinverse-apply--28b920eb3892b96d8bcccd65.md) | 212 | `result-track:28b920eb3892b96d8bcccd6507a6a4ba2a0814f7814ba3ed6fe5cf314a04b88a` |
| 34 | `theorem` | [projKerOfRightInverse_apply_idem](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/projkerofrightinverse-apply-idem--00b9992c708fb9d639c4d764.md) | 218 | `result-track:00b9992c708fb9d639c4d764ecadc2226b3fca3216495dabac579697f1692ace` |
| 35 | `theorem` | [projKerOfRightInverse_comp_inv](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/declarations/projkerofrightinverse-comp-inv--2ea412971a47bece4cc41f3c.md) | 225 | `result-track:2ea412971a47bece4cc41f3c36ed7e81a2a756df85a81d3a9528311fbd6c4064` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
