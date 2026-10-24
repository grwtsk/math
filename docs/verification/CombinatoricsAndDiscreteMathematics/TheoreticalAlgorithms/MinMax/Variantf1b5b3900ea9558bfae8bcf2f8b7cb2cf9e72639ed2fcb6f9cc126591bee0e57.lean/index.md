# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MinMax.Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41d09c741673560d68b8337e3fb560ccbbadb0c3",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41d09c741673560d68b8337e3fb560ccbbadb0c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean.json)

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
| 1 | `def` | [argAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argaux--4110091826c8156548d44303.md) | 48 | `declaration-track:4110091826c8156548d44303af8b51036cc852ae2734c41fe95bbbeb20a7bcda` |
| 2 | `theorem` | [foldl_argAux_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/foldl-argaux-eq-none--c2e33f28266ca87cdb788ee6.md) | 52 | `result-track:c2e33f28266ca87cdb788ee6669ccb510ed528a9869e31ac7493eb8fd0bacf0f` |
| 3 | `theorem` | [foldl_argAux_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/foldl-argaux-mem--0df2ea7ed683221f97927205.md) | 60 | `result-track:0df2ea7ed683221f979272053803f0b88c6eadba8c93652a11eb95c893c1ead9` |
| 4 | `theorem` | [argAux_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argaux-self--6492d0422d67c2eea0ebd74a.md) | 67 | `result-track:6492d0422d67c2eea0ebd74ae98df3d672ae4e7f8349d414381f746f206d743e` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/not-of-mem-foldl-argaux--bdd4add53bbdb09d87ea3bb9.md) | 70 | `result-track:bdd4add53bbdb09d87ea3bb9bb1a26b19e21a5835cbe656ecbe11c06af736b10` |
| 6 | `def` | [argmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argmax--9704b01d102efb627ebf6e34.md) | 97 | `declaration-track:9704b01d102efb627ebf6e3444f3158925d3b424dbfd2df489f5ba05f83851bb` |
| 7 | `theorem` | [argmax_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argmax-nil--775ab3f318984a5b1e386675.md) | 101 | `result-track:775ab3f318984a5b1e3866756c7d8edffc15933fdd82aa947d6ad657905965e8` |
| 8 | `theorem` | [argmax_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argmax-singleton--46d07379cbacb935dcb89c16.md) | 105 | `result-track:46d07379cbacb935dcb89c16d943a930b8e756dd56f6b90c862588c5ae55b8d8` |
| 9 | `theorem` | [not_lt_of_mem_argmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/not-lt-of-mem-argmax--61f814149bad5429346ed2a9.md) | 109 | `result-track:61f814149bad5429346ed2a9ec507a81e636a031742f63b494b66b76071415a0` |
| 10 | `theorem` | [argmax_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argmax-concat--8bd38ff1a418ec9853bbbe4d.md) | 114 | `result-track:8bd38ff1a418ec9853bbbe4df17d68c08bac5f88c37422a12ab36d3402cd1882` |
| 11 | `theorem` | [argmax_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argmax-mem--0acd35dc0d28de47d8d43fba.md) | 120 | `result-track:0acd35dc0d28de47d8d43fba2045b2be877ab47ee9d0ee8414c79704b2058a29` |
| 12 | `theorem` | [argmax_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argmax-eq-none--a30af7ac33e9181f9069ea91.md) | 125 | `result-track:a30af7ac33e9181f9069ea913e803d2b9d9858837277b2352f20766bcee6a896` |
| 13 | `theorem` | [le_of_mem_argmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/le-of-mem-argmax--d831eb833c7e37771a299de4.md) | 134 | `result-track:d831eb833c7e37771a299de4ce2b6bb0dbbfb8acb2fc7dda75ac75ca16d215a3` |
| 14 | `theorem` | [argmax_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argmax-cons--1e08b6c78551b4036d93161f.md) | 138 | `result-track:1e08b6c78551b4036d93161fc86a6bd51b9c7e1891d57b3f57885507dba36689` |
| 15 | `theorem` | [index_of_argmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/index-of-argmax--d81749e1b0258b88e9ac443c.md) | 152 | `result-track:d81749e1b0258b88e9ac443c6b76b20f318e93a357cd96b8f505bc1fa7897a15` |
| 16 | `theorem` | [mem_argmax_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/mem-argmax-iff--debdd79ea09f944726cbfc1e.md) | 174 | `result-track:debdd79ea09f944726cbfc1e4532e55b58c7cd230e4efabfb1f77f0cf62d67a4` |
| 17 | `theorem` | [argmax_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/argmax-eq-some-iff--9eccb3e05d51a950e8f0e4bd.md) | 188 | `result-track:9eccb3e05d51a950e8f0e4bd99eea59cc0471ab0a851b1d0419b14f50b015e04` |
| 18 | `def` | [maximum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum--062db9915f71a4891a468eaf.md) | 206 | `declaration-track:062db9915f71a4891a468eaf13cd6e6d0cfd46c946b85c9023e139289424bdbd` |
| 19 | `theorem` | [maximum_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-nil--fea032371ae463aad6766663.md) | 210 | `result-track:fea032371ae463aad6766663c55bbfa9994793e4d2a4e1457e866e445836e84b` |
| 20 | `theorem` | [maximum_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-singleton--c4d7be4e6f8b4928d7873e07.md) | 214 | `result-track:c4d7be4e6f8b4928d7873e0736976a14cbdb7d8c1503b5240ac53ea267223eab` |
| 21 | `theorem` | [maximum_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-mem--74efc141a355228e4c21ddf4.md) | 218 | `result-track:74efc141a355228e4c21ddf49d9db21eb5448599299753d4bf2772e9fe97514c` |
| 22 | `theorem` | [maximum_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-eq-bot--f69dbc719c3d028311473144.md) | 222 | `result-track:f69dbc719c3d02831147314498952cae8433022b2bf4ef364a29c653caf5d018` |
| 23 | `theorem` | [not_maximum_lt_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/not-maximum-lt-of-mem--6fe8b18b5f9377252f998aa2.md) | 226 | `result-track:6fe8b18b5f9377252f998aa254fd54ee60d013de4f6229f94b151ac655ce430f` |
| 24 | `theorem` | [not_maximum_lt_of_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/not-maximum-lt-of-mem--5d53f9e629604dc4b0ca38ac.md) | 230 | `result-track:5d53f9e629604dc4b0ca38acaa4c8ebb0ce128a78230aa9995c7f9a6c21be455` |
| 25 | `theorem` | [maximum_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-concat--1501d45558f3823e9d1f14dc.md) | 241 | `result-track:1501d45558f3823e9d1f14dcb61565f20dbf8518a6fade1580ed779184cfa2eb` |
| 26 | `theorem` | [le_maximum_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/le-maximum-of-mem--455cc1eb1318b9cc98aa4c0c.md) | 248 | `result-track:455cc1eb1318b9cc98aa4c0c81ec075b44ca203fecfc3ec8d0f9f3b63fe30679` |
| 27 | `theorem` | [le_maximum_of_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/le-maximum-of-mem--97d183796ef1c41f46966da9.md) | 252 | `result-track:97d183796ef1c41f46966da99a39fed07546c65ec0bfaee495bd32e75b413d7c` |
| 28 | `theorem` | [maximum_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-cons--1dc89d4b59ea28d5a1e37985.md) | 256 | `result-track:1dc89d4b59ea28d5a1e37985abe501421219ad1988e87fadd3a3811d7c79d492` |
| 29 | `lemma` | [maximum_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-append--9fada78ed2a15a7f0a0e378a.md) | 261 | `result-track:9fada78ed2a15a7f0a0e378aa7fcf8ff93e5f00cd6aa01e307c2548f8e828e7e` |
| 30 | `theorem` | [maximum_le_of_forall_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-le-of-forall-le--65ec8b029e4e309b7e6c3ff9.md) | 267 | `result-track:65ec8b029e4e309b7e6c3ff91f3f85e29d4aefa34b202b01378c090c55cc4b7d` |
| 31 | `theorem` | [maximum_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-mono--5777c770cb347e315eb7b981.md) | 275 | `result-track:5777c770cb347e315eb7b981fc7ebf99a1944d396368f7ec05b04a8286f4c1b6` |
| 32 | `theorem` | [maximum_eq_coe_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-eq-coe-iff--2f21140bdec044468f5acfa8.md) | 280 | `result-track:2f21140bdec044468f5acfa88469c57a1897d579fcd2e186b7187bcd4a40bbf6` |
| 33 | `theorem` | [coe_le_maximum_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/coe-le-maximum-iff--1a265026e013fc7f33501c93.md) | 287 | `result-track:1a265026e013fc7f33501c9369f732aa79d1a20d7e36ed8b7ba6d635636a9142` |
| 34 | `theorem` | [maximum_ne_bot_of_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-ne-bot-of-ne-nil--f144daeffbd116f15cc7772b.md) | 291 | `result-track:f144daeffbd116f15cc7772b9b296b20bdf2d476a43c678c508f00ac1213cd97` |
| 35 | `theorem` | [maximum_ne_bot_of_length_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-ne-bot-of-length-pos--edffae331ee857605c3c7394.md) | 295 | `result-track:edffae331ee857605c3c73949e968d6876609db00d52a39bcabcc7585fad6c82` |
| 36 | `def` | [maximum_of_length_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-of-length-pos--3b91cb0ef3674518cd50371b.md) | 300 | `declaration-track:3b91cb0ef3674518cd50371ba8c933a92b90b711469bbb2136a739964a94ebf8` |
| 37 | `lemma` | [coe_maximum_of_length_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/coe-maximum-of-length-pos--843bf69592a8a33e3c95df9d.md) | 304 | `result-track:843bf69592a8a33e3c95df9d0d436aa431b04d4454428821e38c854ed5995e15` |
| 38 | `theorem` | [le_maximum_of_length_pos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/le-maximum-of-length-pos-iff--c45ffae6a2bd30d488be69ef.md) | 309 | `result-track:c45ffae6a2bd30d488be69ef0db2917bd9294ed58b494713cd8502513f83cadf` |
| 39 | `theorem` | [maximum_of_length_pos_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/maximum-of-length-pos-mem--6ada605b7868e999df7abce2.md) | 314 | `result-track:6ada605b7868e999df7abce2fb371d2edf2fc85fe68a30e53bf8896db47f5815` |
| 40 | `theorem` | [le_maximum_of_length_pos_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/le-maximum-of-length-pos-of-mem--33df7583baf6d35e908a488a.md) | 320 | `result-track:33df7583baf6d35e908a488a1d6492bf8ebafd2e1853d26313d6a9d89171f309` |
| 41 | `theorem` | [getElem_le_maximum_of_length_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/getelem-le-maximum-of-length-pos--3f2d2e8fd6e12218b3faed90.md) | 326 | `result-track:3f2d2e8fd6e12218b3faed90a348ca2467a0a8fe4b15166c002e5bab8f348934` |
| 42 | `theorem` | [Perm.maximum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/perm-maximum-eq--cd080d7d75470ad2e95e0172.md) | 332 | `result-track:cd080d7d75470ad2e95e01720f6211812b0fcb33d0b65bd093f9946d3546efb6` |
| 43 | `lemma` | [getD_max?_eq_unbotD_maximum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/getd-max-eq-unbotd-maximum--4f909d05ad12249c8d718775.md) | 337 | `result-track:4f909d05ad12249c8d71877535a2ca8020f6a42cc108eabf738f5c8067bdf593` |
| 44 | `theorem` | [foldr_max_of_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/foldr-max-of-ne-nil--0dbaa70e9032c2fd247bce59.md) | 364 | `result-track:0dbaa70e9032c2fd247bce5973a414876c78bc6d8961ff080f42e9e075784dd1` |
| 45 | `theorem` | [max_le_of_forall_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/max-le-of-forall-le--6c5ea7fb6c6813e1bc439493.md) | 374 | `result-track:6c5ea7fb6c6813e1bc439493dadcffe72487c69776f7b5cb5d49fca4f1f2750c` |
| 46 | `theorem` | [le_max_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/le-max-of-le--0b68d5326dee02518c5fb6a5.md) | 380 | `result-track:0b68d5326dee02518c5fb6a59fb3ea9c028e8b1d5d86f0e2cd47fd80db18dcab` |
| 47 | `theorem` | [le_max_of_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean/declarations/le-max-of-le--fb2b927905674f91dbb624a7.md) | 393 | `result-track:fb2b927905674f91dbb624a71cc56ddf0736062615481bb331838146f09323d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
