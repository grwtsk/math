# Verification target: GRWTSK.Topology.GeneralTopology.Function.Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4e4aa6f3e20128323e329a05781bcc374efc171",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4e4aa6f3e20128323e329a05781bcc374efc171`.

Source path: `GRWTSK/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean.json)

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
| 1 | `def` | [setToFun](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun--a62880863c0f07d129435d92.md) | 42 | `declaration-track:a62880863c0f07d129435d9266457460b13850ce1d3f8f114a450a58b823791f` |
| 2 | `theorem` | [setToFun_eq](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-eq--61842ef9d3920e68a411def3.md) | 49 | `result-track:61842ef9d3920e68a411def33c911d2a4b0156b9c47ccdfaff236a8e30a80a88` |
| 3 | `theorem` | [L1.setToFun_eq_setToL1](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/l1-settofun-eq-settol1--b0d93cdd0a588531623fe398.md) | 54 | `result-track:b0d93cdd0a588531623fe398e10aecc5e3f69ca444d1bc6cc778395dcbb08ade` |
| 4 | `theorem` | [setToFun_undef](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-undef--52a62af51772cce45b32d272.md) | 59 | `result-track:52a62af51772cce45b32d2729d23c8b283c8513c35da9eea8af3ae4931fab9d3` |
| 5 | `theorem` | [setToFun_non_aestronglyMeasurable](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-non-aestronglymeasurable--0f0225b51b91067120bf4281.md) | 65 | `result-track:0f0225b51b91067120bf42813c1d96c8e2b0875f85d7657d66bfcd3c26ce1473` |
| 6 | `theorem` | [setToFun_congr_left](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-congr-left--eeae3da9252e26d55ae61b94.md) | 69 | `result-track:eeae3da9252e26d55ae61b9489feef5a083f4d23531e7e673cec69079986ca9a` |
| 7 | `theorem` | [setToFun_congr_left'](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-congr-left--b9d4af74cc5ac3d79f3ba990.md) | 78 | `result-track:b9d4af74cc5ac3d79f3ba9908e9a87257cb3462f861fe00c90278840326023aa` |
| 8 | `theorem` | [setToFun_add_left](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-add-left--7863229b69f5e0ab253d8ef5.md) | 87 | `result-track:7863229b69f5e0ab253d8ef53e95db5c55b1887d0b16d63feee7d89df9290944` |
| 9 | `theorem` | [setToFun_add_left'](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-add-left--1e02af18d313f774c7cc768d.md) | 98 | `result-track:1e02af18d313f774c7cc768dcb6a0525cd2f523ebcf93e2e05a00245eba27ae7` |
| 10 | `theorem` | [setToFun_smul_left](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-smul-left--e0e1b34d2b70073521ad8a89.md) | 108 | `result-track:e0e1b34d2b70073521ad8a8930c64034300f02e3f046e68ad8b152b9e8d846e2` |
| 11 | `theorem` | [setToFun_smul_left'](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-smul-left--89a0aeb3b86eac317b72e657.md) | 116 | `result-track:89a0aeb3b86eac317b72e6574545f720fd7eed43584108e1891fd00ee09d0317` |
| 12 | `theorem` | [setToFun_zero](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-zero--91f4f5e9c0e0677ff43df6ea.md) | 127 | `result-track:91f4f5e9c0e0677ff43df6eaccda9532e954cb7784034913e85458f50ea29fc9` |
| 13 | `theorem` | [setToFun_zero_left](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-zero-left--dffbfbe6166614686c538414.md) | 133 | `result-track:dffbfbe6166614686c538414105215316afecad2d78b55fd60896bef4625a3df` |
| 14 | `theorem` | [setToFun_zero_left'](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-zero-left--555fa6fee96368cf4356dfd5.md) | 141 | `result-track:555fa6fee96368cf4356dfd5deddfc7ba9f0a105312638042a4bc31d7f233a66` |
| 15 | `theorem` | [setToFun_add](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-add--13a000fd5fbe12d4c70cb3cd.md) | 149 | `result-track:13a000fd5fbe12d4c70cb3cd6054a8b1929f6102b55e2907ea69d7dc7589a7dd` |
| 16 | `theorem` | [setToFun_finsetSum'](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-finsetsum--09abe4db52ed0481de69c452.md) | 156 | `result-track:09abe4db52ed0481de69c4521af2982815e801c8642facacd9654c1b41251e9f` |
| 17 | `theorem` | [setToFun_finsetSum](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-finsetsum--57c970560def4bd0ca244167.md) | 173 | `result-track:57c970560def4bd0ca244167578568c0e51eceddaff06640d455a05887289ec9` |
| 18 | `theorem` | [setToFun_neg](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-neg--f33df51a3be6fae55c20cebd.md) | 180 | `result-track:f33df51a3be6fae55c20cebd5d638bdec3be7d3a358d56947f525f0ab3045afb` |
| 19 | `theorem` | [setToFun_neg'](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-neg--2322d9fdda4e01728b8aec73.md) | 190 | `result-track:2322d9fdda4e01728b8aec73eb7eddd0e05de504b9a7450ebb7f43078e008e54` |
| 20 | `theorem` | [setToFun_sub](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-sub--0d3b1d740963e90323305b29.md) | 194 | `result-track:0d3b1d740963e90323305b29f1e691063c9ca5cb47fb6a12fb7d0a0f7108076d` |
| 21 | `theorem` | [setToFun_smul](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-smul--96a8c4f293aa6371dd1d6226.md) | 198 | `result-track:96a8c4f293aa6371dd1d622685826ef9288bd0ff8b123194ecca50796fd499bd` |
| 22 | `theorem` | [setToFun_congr_ae](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-congr-ae--76c33ba1bd88ce18eed61b8d.md) | 212 | `result-track:76c33ba1bd88ce18eed61b8dd367cb4cddac4a92ebe82c752f79af4a387fca8b` |
| 23 | `theorem` | [setToFun_measure_zero](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-measure-zero--3c3879beecc64a91f06ffec6.md) | 222 | `result-track:3c3879beecc64a91f06ffec638e588df03d0b8ccf80f089bc8b1144d0912e54b` |
| 24 | `theorem` | [setToFun_measure_zero'](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-measure-zero--b276e7f8ece817b5939b325c.md) | 227 | `result-track:b276e7f8ece817b5939b325c7806375776800194faa026f0f911c4384d2ad285` |
| 25 | `theorem` | [setToFun_toL1](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-tol1--439b4071d14934a84b2c3cd6.md) | 231 | `result-track:439b4071d14934a84b2c3cd67f90e36fef9637f5e43eaaaec3747c01583572d5` |
| 26 | `theorem` | [setToFun_indicator_const](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-indicator-const--e081d0651ab910f3c3592ef9.md) | 235 | `result-track:e081d0651ab910f3c3592ef91bb41277d4534d7e986663b01fa59901485a480f` |
| 27 | `theorem` | [setToFun_const](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-const--c03abe0cfa216fe73047adbf.md) | 242 | `result-track:c03abe0cfa216fe73047adbf9d3ae71b3da499d36a55d63c202ee6c70793b730` |
| 28 | `theorem` | [setToFun_simpleFunc](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-simplefunc--97ebe08da760dbe0f90ed76d.md) | 249 | `result-track:97ebe08da760dbe0f90ed76d9d6af91e9af04f9733859923e5ee6cb68facde82` |
| 29 | `theorem` | [setToFun_simpleFunc_eq_setToSimpleFunc](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-simplefunc-eq-settosimplefunc--ad4fa2f808399e94b597eebc.md) | 259 | `result-track:ad4fa2f808399e94b597eebcafb24879e9e4615b0a51337688597b85470c8efe` |
| 30 | `theorem` | [setToFun_mono_left'](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-mono-left--95f5b7d61392fb239935fe5b.md) | 273 | `result-track:95f5b7d61392fb239935fe5b3af3430fbb1525111bb54b6edc1526881ee95c88` |
| 31 | `theorem` | [setToFun_mono_left](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-mono-left--02d585b1f5a684ee4aa09dac.md) | 283 | `result-track:02d585b1f5a684ee4aa09dacfaa5c4b04dc207470ad3005b6d3b9fd88c5869dc` |
| 32 | `theorem` | [setToFun_nonneg](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-nonneg--680b97ae62903fa6e5355180.md) | 288 | `result-track:680b97ae62903fa6e5355180672bb66d5b20760855eb2563a9c950d7d7bace86` |
| 33 | `theorem` | [setToFun_mono](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/settofun-mono--21aa603d06ed578d2688747b.md) | 299 | `result-track:21aa603d06ed578d2688747b78d84a9f8a9c2693259ee9ed9304146b09b2e12d` |
| 34 | `theorem` | [continuous_setToFun](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/continuous-settofun--0bf39d6358290de8c2bc4fcf.md) | 312 | `result-track:0bf39d6358290de8c2bc4fcfb8056a3ed3042e77dddbbb3d05a7547e9868e0cd` |
| 35 | `theorem` | [tendsto_setToFun_of_L1](../../../../../mathematics/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/declarations/tendsto-settofun-of-l1--6682606a9260871026f1021b.md) | 319 | `result-track:6682606a9260871026f1021b22163987f07abbad446c6b13ad8c71fcd141d893` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
