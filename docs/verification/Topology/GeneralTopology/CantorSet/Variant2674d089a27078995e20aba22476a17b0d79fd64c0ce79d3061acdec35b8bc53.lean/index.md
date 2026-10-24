# Verification target: GRWTSK.Topology.GeneralTopology.CantorSet.Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaf1e9662b278b4e584feeccfce2be3132dede68",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaf1e9662b278b4e584feeccfce2be3132dede68`.

Source path: `GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean.json)

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
| 1 | `def` | [preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/precantorset--71bb56ea15f257f6db33ca01.md) | 45 | `declaration-track:71bb56ea15f257f6db33ca01f463a7368ca50f4cce64f9823a496d4da2be784c` |
| 2 | `lemma` | [preCantorSet_zero](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/precantorset-zero--67f90a0d4f48e442f84ee022.md) | 49 | `result-track:67f90a0d4f48e442f84ee02283fbf959efa07b3a10d6dbea621b5e0a2ad32182` |
| 3 | `lemma` | [preCantorSet_succ](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/precantorset-succ--1a10cbc2bb65005c792f9e83.md) | 50 | `result-track:1a10cbc2bb65005c792f9e837e506620a3c2d94d826e3e7017ee663951a32903` |
| 4 | `def` | [cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorset--50aca61abc8aeb42f02bebf5.md) | 60 | `declaration-track:50aca61abc8aeb42f02bebf50533e50bc4dc8b93dd1bdb7a08903d2e71e8b9f2` |
| 5 | `lemma` | [quarters_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/quarters-mem-precantorset--0a3ad74b15d540442dd4d51b.md) | 67 | `result-track:0a3ad74b15d540442dd4d51b3f825c9be9aef1d40524f1f686159a49bf8e71df` |
| 6 | `lemma` | [quarter_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/quarter-mem-precantorset--ffde6a0179a1229147e471bc.md) | 81 | `result-track:ffde6a0179a1229147e471bc61cecc328ea49fac4d99e3756fab919a93865a9f` |
| 7 | `theorem` | [quarter_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/quarter-mem-cantorset--9f89f22c6f186ef87084177c.md) | 83 | `result-track:9f89f22c6f186ef87084177c55218962ae1803eb5b5a7ecd431d23b443780fb0` |
| 8 | `lemma` | [zero_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/zero-mem-precantorset--eccb0711a5351b20fea61fee.md) | 86 | `result-track:eccb0711a5351b20fea61fee4e589322395f30257616e2355063ea32d0824f0d` |
| 9 | `theorem` | [zero_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/zero-mem-cantorset--b38813264f049686207a1405.md) | 93 | `result-track:b38813264f049686207a140554b89b0ce3cd9ab491af22dc5128cf5b4bc6edc1` |
| 10 | `theorem` | [preCantorSet_antitone](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/precantorset-antitone--d3c648c05a9af7cfe97f403c.md) | 95 | `result-track:d3c648c05a9af7cfe97f403c1f243c0515b4ef73a73f767ed2240f6c139ad367` |
| 11 | `lemma` | [preCantorSet_subset_unitInterval](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/precantorset-subset-unitinterval--f280b85ce89f319b935995c0.md) | 99 | `result-track:f280b85ce89f319b935995c02cb18bbd0f0c225352e4a8eca6b0fe0257e29c89` |
| 12 | `lemma` | [cantorSet_subset_unitInterval](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorset-subset-unitinterval--146095723e1a7153f0a42644.md) | 104 | `result-track:146095723e1a7153f0a426441c27503f468de1b13fc9a6256bc0f78fa9089e4a` |
| 13 | `theorem` | [cantorSet_eq_union_halves](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorset-eq-union-halves--1d5031a49dba8e0719642bc6.md) | 108 | `result-track:1d5031a49dba8e0719642bc6fd1c8c9452abe095d953c047b2683a9c5d9e343f` |
| 14 | `lemma` | [isClosed_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/isclosed-precantorset--1533aea0d10e2c495fe90969.md) | 124 | `result-track:1533aea0d10e2c495fe9096960e4e851b3180462d09ffe9a9f80ed823199a56e` |
| 15 | `lemma` | [isClosed_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/isclosed-cantorset--3f156c5b66a4fcbd6b858edf.md) | 135 | `result-track:3f156c5b66a4fcbd6b858edf08085b4c12425dcb6323d707aa63f47047de31ad` |
| 16 | `lemma` | [isCompact_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/iscompact-cantorset--0d5b30a75e0e68a7b65c0fed.md) | 139 | `result-track:0d5b30a75e0e68a7b65c0fed56e95379b7e0291153034b194303787e6473ee46` |
| 17 | `theorem` | [ofDigits_zero_two_sequence_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/ofdigits-zero-two-sequence-mem-cantorset--0fc611c3d8e66918accb3b0e.md) | 152 | `result-track:0fc611c3d8e66918accb3b0e33351b5ac0acaeedda77006f25f29462f477752f` |
| 18 | `theorem` | [ofDigits_zero_two_sequence_unique](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/ofdigits-zero-two-sequence-unique--940c24cc54bfe6d62dfe6585.md) | 173 | `result-track:940c24cc54bfe6d62dfe6585735431032a7d3b775ffc3d0fc53c76e35ebc9bee` |
| 19 | `def` | [cantorStep](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorstep--64f0e3a6e3664bc9a9bb57e9.md) | 209 | `declaration-track:64f0e3a6e3664bc9a9bb57e9e166665010a65719383c939e71b52373e42521f9` |
| 20 | `theorem` | [cantorStep_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorstep-mem-cantorset--daa3969ae6c270b3ba42d74d.md) | 215 | `result-track:daa3969ae6c270b3ba42d74d938181b86673590854c824e967c6fd68172df618` |
| 21 | `def` | [cantorSequence](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorsequence--920c6d9e9dac8f0d550ac66c.md) | 224 | `declaration-track:920c6d9e9dac8f0d550ac66ca021061121cb83f176ef9bd47ec68c60d2f4ab8b` |
| 22 | `theorem` | [cantorSequence_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorsequence-mem-cantorset--84979b0e5dc3a1b1573e7ce7.md) | 227 | `result-track:84979b0e5dc3a1b1573e7ce71f7a55ce5da411f358d344ce20b47fefa4f788c4` |
| 23 | `def` | [cantorToBinary](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantortobinary--fa0b75761d153723e22dda96.md) | 239 | `declaration-track:fa0b75761d153723e22dda9626043d5d7d28a4ea1c62b795031e7b1c32809629` |
| 24 | `def` | [cantorToTernary](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantortoternary--7a83266edf9a95fe05e62129.md) | 248 | `declaration-track:7a83266edf9a95fe05e621290bd46d741a442adafa43ad5e2190ad3b056051fd` |
| 25 | `theorem` | [ofDigits_bool_to_fin_three_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/ofdigits-bool-to-fin-three-mem-cantorset--d9d4f81974d14e1262e09304.md) | 251 | `result-track:d9d4f81974d14e1262e093049e75aa40b6d8bec24b18ab15ec481193cc5daea7` |
| 26 | `theorem` | [cantorToTernary_ne_one](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantortoternary-ne-one--d2b4448beee82cf2999b9b74.md) | 255 | `result-track:d2b4448beee82cf2999b9b74428468cddb053ba3d17cccbc31fff8b334061eaf` |
| 27 | `theorem` | [cantorSequence_get_succ](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorsequence-get-succ--16e2b8f7b85e7b5c90fbd97a.md) | 258 | `result-track:16e2b8f7b85e7b5c90fbd97a9cb40bc87bb3abff35a629d3901880cbf6c13469` |
| 28 | `theorem` | [cantorSequence_eq_self_sub_sum_cantorToTernary](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorsequence-eq-self-sub-sum-cantortoternary--66f1c5b8e4af58b9751d2af7.md) | 267 | `result-track:66f1c5b8e4af58b9751d2af78f1ac9e59d79f947fcffca38af2fd008935bf2ac` |
| 29 | `theorem` | [ofDigits_cantorToTernary_sum_le](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/ofdigits-cantortoternary-sum-le--c1aac30de0c122c9bd565a52.md) | 274 | `result-track:c1aac30de0c122c9bd565a52e186b085480a9edacc1cef4fb004a0ee175ffa22` |
| 30 | `theorem` | [le_ofDigits_cantorToTernary_sum](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/le-ofdigits-cantortoternary-sum--e38b0cb87aac949091289a76.md) | 282 | `result-track:e38b0cb87aac949091289a765b3555bbd1351a092460baa3eff6dc31aea06c21` |
| 31 | `theorem` | [ofDigits_cantorToTernary](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/ofdigits-cantortoternary--40cf7ef30da58b044d93ad00.md) | 292 | `result-track:40cf7ef30da58b044d93ad00736f27caeccd8f7a01fdfbc689f485eca30a6700` |
| 32 | `theorem` | [cantorSet_eq_zero_two_ofDigits](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorset-eq-zero-two-ofdigits--f1aea433fe6709da12d6ed73.md) | 308 | `result-track:f1aea433fe6709da12d6ed73883553bc40a4706c62e635f50c5c85b05bf09ba8` |
| 33 | `def` | [cantorSetEquivNatToBool](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorsetequivnattobool--b1e06767c05b5efedfdbd061.md) | 326 | `declaration-track:b1e06767c05b5efedfdbd061ce1372f909ad796f67473cb126f8ffc88f80cae7` |
| 34 | `def` | [cantorSetHomeomorphNatToBool](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorsethomeomorphnattobool--bb7cb9b7dcc78235785dc285.md) | 348 | `declaration-track:bb7cb9b7dcc78235785dc285cc01136abde446705bc8df769b996d999db0d33a` |
| 35 | `def` | [cantorSpaceHomeomorphNatToCantorSpace](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/declarations/cantorspacehomeomorphnattocantorspace--6ef1630be08d1eadf72ee8ec.md) | 353 | `declaration-track:6ef1630be08d1eadf72ee8ecde6b486d3a22c12ba3a3e9b329276b6192c1786b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
