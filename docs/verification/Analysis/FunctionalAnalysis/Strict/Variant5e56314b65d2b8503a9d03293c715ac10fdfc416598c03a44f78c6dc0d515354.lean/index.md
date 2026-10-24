# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Strict.Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f0af842210fbeb7df3e760e950ddbbf3c37a8f7",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f0af842210fbeb7df3e760e950ddbbf3c37a8f7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean.json)

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
| 1 | `def` | [StrictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex--8087cd684553b985e281010d.md) | 37 | `declaration-track:8087cd684553b985e281010d9fd6f4ecdf7b03808889c056c059d4115e002360` |
| 2 | `theorem` | [strictConvex_iff_openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-iff-opensegment-subset--8ceb31a646c15321f4c4a4f2.md) | 54 | `result-track:8ceb31a646c15321f4c4a4f2dbedaa5d7c4c94b1df3256819b3aea36b858b172` |
| 3 | `theorem` | [StrictConvex.openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-opensegment-subset--54e270e6e1b0a419b806f9b3.md) | 58 | `result-track:54e270e6e1b0a419b806f9b31c8470c3007084d83cfc9e4cb0ef7237840537c7` |
| 4 | `theorem` | [strictConvex_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-empty--ee4c67386efdc6d500974e7a.md) | 62 | `result-track:ee4c67386efdc6d500974e7a8a8de5cf595ae30a7830d83a9384c0db9e2ff89e` |
| 5 | `theorem` | [strictConvex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-univ--96824b676d0f5437af787a9d.md) | 65 | `result-track:96824b676d0f5437af787a9d6dc12fc12d8c3975ca8428300eb6e978d2d00e21` |
| 6 | `theorem` | [StrictConvex.eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-eq--9fadefad7bbdf91a98fca39b.md) | 70 | `result-track:9fadefad7bbdf91a98fca39ba8f01ce2630a2f6766fadfc2bfd80656fb441ac4` |
| 7 | `theorem` | [StrictConvex.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-inter--4bb15e2a066d04ea0c3b18c0.md) | 74 | `result-track:4bb15e2a066d04ea0c3b18c054c1458b14cee2d1c6814c8d733a0fdb83a92542` |
| 8 | `theorem` | [Directed.strictConvex_iUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/directed-strictconvex-iunion--b912c5c7cf6cc99e96ff53a5.md) | 80 | `result-track:b912c5c7cf6cc99e96ff53a5855915e7a7a13febd03bcc14f5f569db5c1c243f` |
| 9 | `theorem` | [DirectedOn.strictConvex_sUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/directedon-strictconvex-sunion--af8619e4f573276c8e461960.md) | 89 | `result-track:af8619e4f573276c8e4619600f3c9416e14b0d896a864776576857fd3f766a0a` |
| 10 | `theorem` | [StrictConvex.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-convex--26f9be3b9b742df04924b684.md) | 100 | `result-track:26f9be3b9b742df04924b684a23b0916222777dad6b55e41720b15b749d2c39e` |
| 11 | `theorem` | [Convex.strictConvex_of_isOpen](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/convex-strictconvex-of-isopen--5907ac02f65159d2ed6fa00d.md) | 105 | `result-track:5907ac02f65159d2ed6fa00d00175e20515820f1afd362f1574ace8474434255` |
| 12 | `theorem` | [IsOpen.strictConvex_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/isopen-strictconvex-iff--e31a2f5f2cb02fa72ab53c2a.md) | 109 | `result-track:e31a2f5f2cb02fa72ab53c2aedeb1a8dd34df1b0fadd6607ba34a1605684be06` |
| 13 | `theorem` | [strictConvex_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-singleton--642c8804ff1f4041902e010c.md) | 112 | `result-track:642c8804ff1f4041902e010cf4e8aff3f04da1d55f8d3a950690d04bb8b02108` |
| 14 | `theorem` | [Set.Subsingleton.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/set-subsingleton-strictconvex--9b4680a84fa4377147454c01.md) | 115 | `result-track:9b4680a84fa4377147454c019c3ffbf14160ba89d367dfa3c18d1735d06268da` |
| 15 | `theorem` | [StrictConvex.linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-linear-image--f9eb4e6bbfb093b754f82338.md) | 118 | `result-track:f9eb4e6bbfb093b754f82338bc1864fa539dacdafac0454f6bdff1147f840c50` |
| 16 | `theorem` | [StrictConvex.is_linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-is-linear-image--767cf43e33478886859db834.md) | 125 | `result-track:767cf43e33478886859db8345026703015e0442c4c30d58a60aae48448d53912` |
| 17 | `theorem` | [StrictConvex.linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-linear-preimage--77e5efc86f0a245d201b2236.md) | 129 | `result-track:77e5efc86f0a245d201b22364e7f4441bd91de76082527d7b6630475b2f4d5ce` |
| 18 | `theorem` | [StrictConvex.is_linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-is-linear-preimage--c1c831981a7f5f6b7e47cf91.md) | 136 | `result-track:c1c831981a7f5f6b7e47cf9143edbf53ce39421c4c5c55af9d21a3f29f276528` |
| 19 | `theorem` | [Set.OrdConnected.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/set-ordconnected-strictconvex--d255c914f73a480a717f64d6.md) | 146 | `result-track:d255c914f73a480a717f64d675b26516c174ef3cb50d8e02f7485d9b90f9a7ea` |
| 20 | `theorem` | [strictConvex_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-iic--27b359e21158f31d27b2b617.md) | 154 | `result-track:27b359e21158f31d27b2b617fa0396ce87aec760289b2cb10e5d92f301d43142` |
| 21 | `theorem` | [strictConvex_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-ici--dac068546c7a43191ae760ec.md) | 157 | `result-track:dac068546c7a43191ae760ec747b9069c89616c94b3dd781fb2c334aa25ea38a` |
| 22 | `theorem` | [strictConvex_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-iio--4c73948521251dbf47567891.md) | 160 | `result-track:4c73948521251dbf475678914db46cb1ebe609707dc2ab540db76c94ccab4631` |
| 23 | `theorem` | [strictConvex_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-ioi--0f58799f30865c60ff408230.md) | 163 | `result-track:0f58799f30865c60ff40823095e78abc64c8aba6276052729390d2cc534aa4dc` |
| 24 | `theorem` | [strictConvex_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-icc--282dbdaf5c0e4f0b30f1922b.md) | 166 | `result-track:282dbdaf5c0e4f0b30f1922b626ed204ca5b354912439521c1316a473b03f51f` |
| 25 | `theorem` | [strictConvex_Ioo](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-ioo--05d2c7d78df1d51b37ef3e79.md) | 169 | `result-track:05d2c7d78df1d51b37ef3e79980fc7d738647efea5c2552088bec8f983769946` |
| 26 | `theorem` | [strictConvex_Ico](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-ico--be49987da22bd9c304a7c5f7.md) | 172 | `result-track:be49987da22bd9c304a7c5f7a5ab53aa4655d66a2c352540db0b9595624f556d` |
| 27 | `theorem` | [strictConvex_Ioc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-ioc--6bfd89405be0c0f132dbd7cf.md) | 175 | `result-track:6bfd89405be0c0f132dbd7cff52fbb06c84a05eb5e42df870314bf4bcf6906fd` |
| 28 | `theorem` | [strictConvex_uIcc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-uicc--44f5605ad65aeed1a1293b7f.md) | 178 | `result-track:44f5605ad65aeed1a1293b7f3f002bf87643cc064202b526abd7112dcf6e9b8f` |
| 29 | `theorem` | [strictConvex_uIoc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-uioc--5bb8cc46ea5735d68af19849.md) | 181 | `result-track:5bb8cc46ea5735d68af19849be9f2b9838a63f288d23115b2c1535500ec629b1` |
| 30 | `theorem` | [StrictConvex.preimage_add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-preimage-add-right--fecebea2af0e04ffe8d1ca9b.md) | 195 | `result-track:fecebea2af0e04ffe8d1ca9b0ded988196dd5460791fc2a14f0b8f218e91b830` |
| 31 | `theorem` | [StrictConvex.preimage_add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-preimage-add-left--c55c32c25ed16dc342b497de.md) | 203 | `result-track:c55c32c25ed16dc342b497de2fd3c590c567d50a8e336f3ee1f923ca1564e0ba` |
| 32 | `theorem` | [StrictConvex.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-add--5d252e747c1e9c6f075fad50.md) | 217 | `result-track:5d252e747c1e9c6f075fad50e13c34b2193d01073445654fa81f5305f3d9b4f3` |
| 33 | `theorem` | [StrictConvex.add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-add-left--9083a67b465bade5cabf1f36.md) | 231 | `result-track:9083a67b465bade5cabf1f3607e97e4df78fadadec9cacabbe271ee00c3f4072` |
| 34 | `theorem` | [StrictConvex.add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-add-right--d24c4307d2920c0b1fe18321.md) | 235 | `result-track:d24c4307d2920c0b1fe18321c726a7f2aea13f682822018672abcb4604a675e1` |
| 35 | `theorem` | [StrictConvex.vadd](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-vadd--5a5602cdb9a1647e54dc18b7.md) | 239 | `result-track:5a5602cdb9a1647e54dc18b7ae3912706397a6c26dbcda4eb9a621befa603fb6` |
| 36 | `theorem` | [StrictConvex.smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-smul--e9c46082bcdb97f5af6deb86.md) | 249 | `result-track:e9c46082bcdb97f5af6deb862c0b110f8a41b6fba6f9f3ee5a8f4f9281b475fe` |
| 37 | `theorem` | [StrictConvex.affinity](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-affinity--53e3f1c15ef2bdf02b32e812.md) | 254 | `result-track:53e3f1c15ef2bdf02b32e812b3f30288128a34030f78aead8af9198708ebc1bc` |
| 38 | `theorem` | [StrictConvex.preimage_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-preimage-smul--0c347875ac7ab397aad98ebf.md) | 268 | `result-track:0c347875ac7ab397aad98ebf8b929129acc304df427396235ae5b67f445f446c` |
| 39 | `theorem` | [StrictConvex.eq_of_openSegment_subset_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-eq-of-opensegment-subset-frontier--dcf8ad530cb9dfd45aa2603f.md) | 290 | `result-track:dcf8ad530cb9dfd45aa2603f55f462bfd42921bf7dfffeecde6f87830f39c8f3` |
| 40 | `theorem` | [StrictConvex.add_smul_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-add-smul-mem--8ee6c524d908b2f41946c6a1.md) | 301 | `result-track:8ee6c524d908b2f41946c6a141f91ac5c39b614b68f0b91721b0a07df8e258c8` |
| 41 | `theorem` | [StrictConvex.smul_mem_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-smul-mem-of-zero-mem--a24b356d04409097d9822769.md) | 309 | `result-track:a24b356d04409097d98227694fe4b8a92c575c12add6424704b45214156cc68f` |
| 42 | `theorem` | [StrictConvex.add_smul_sub_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-add-smul-sub-mem--faca4d8e1d07a337b4ce64ca.md) | 314 | `result-track:faca4d8e1d07a337b4ce64caa09ced1f0bb990b914f25c1639a7115e39941b38` |
| 43 | `theorem` | [StrictConvex.affine_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-affine-preimage--e61d747f6c4adc85f5478c2e.md) | 322 | `result-track:e61d747f6c4adc85f5478c2e2c9d9e1d5693aeac785f848dff282331d67ecbe9` |
| 44 | `theorem` | [StrictConvex.affine_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-affine-image--816e16eeaac8bb775c179f72.md) | 330 | `result-track:816e16eeaac8bb775c179f724252a3fcc63ab59cffd4af90081c000320d4ecf1` |
| 45 | `theorem` | [StrictConvex.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-neg--28ad075de9162275b2470934.md) | 339 | `result-track:28ad075de9162275b2470934c7b5ee0a5ddd45ffb793fc2b11d42ff9547c4c1a` |
| 46 | `theorem` | [StrictConvex.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-sub--99544a84ebdecac7b7e80094.md) | 342 | `result-track:99544a84ebdecac7b7e800949b13437b37ce23e9c79a1e520a3f55b4cbcbfb67` |
| 47 | `theorem` | [strictConvex_iff_div](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-iff-div--53130647090e705f809923d6.md) | 358 | `result-track:53130647090e705f809923d6b9e4870d734e9af48f3ab542b83ea348967443fc` |
| 48 | `theorem` | [StrictConvex.mem_smul_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-mem-smul-of-zero-mem--77d4c69529309787ec9d555d.md) | 366 | `result-track:77d4c69529309787ec9d555d32749e65e6c6860e5badcf028ad9d2ed1601dc2c` |
| 49 | `theorem` | [strictConvex_iff_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-iff-convex--cd5a5f68a56abb54c92d9293.md) | 389 | `result-track:cd5a5f68a56abb54c92d929370a72d90067945cef5b2cb58c3e47d8238fc5a1b` |
| 50 | `theorem` | [strictConvex_iff_ordConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/declarations/strictconvex-iff-ordconnected--1db6119831478ba76d275297.md) | 392 | `result-track:1db6119831478ba76d275297c2130cefbb17eb93fd38f9e73431e1e906e0f014` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
