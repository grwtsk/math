# Verification target: GRWTSK.Topology.GeneralTopology.DenseEmbedding.Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "418f344c03386dca4a4c3678ec93e015156c4498",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `418f344c03386dca4a4c3678ec93e015156c4498`.

Source path: `GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DenseInducing](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/denseinducing--b2331a7086a174a3a3b1ea59.md) | 46 | `declaration-track:b2331a7086a174a3a3b1ea59abc3f157f4bc055e9b8236f68f3e011f6972a665` |
| 2 | `theorem` | [nhds_eq_comap](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/nhds-eq-comap--119dbbc6682f5fd90022e8e8.md) | 58 | `result-track:119dbbc6682f5fd90022e8e89efa67435ec4b1719605ca0536773576e87358c4` |
| 3 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/continuous--10e128f88b3600621fb5d479.md) | 62 | `result-track:10e128f88b3600621fb5d4793ec2f3974e6b31ac0f33e26b29b5ca4859097844` |
| 4 | `theorem` | [closure_range](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/closure-range--f1e42f50ca2cc8c785b3cd1a.md) | 66 | `result-track:f1e42f50ca2cc8c785b3cd1ae036dc06c1618a77e5d761284ac8dd2b50524ef9` |
| 5 | `theorem` | [preconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/preconnectedspace--783395a4cd95837114560bb9.md) | 70 | `result-track:783395a4cd95837114560bb975b122346323d8d0eb4ccc98cefe09951eb2b926` |
| 6 | `theorem` | [closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/closure-image-mem-nhds--c9825f554e1f6a6f98208bb5.md) | 75 | `result-track:c9825f554e1f6a6f98208bb51cef89d01f8b48a979d6ac35728f5cb71a3e96cc` |
| 7 | `theorem` | [dense_image](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/dense-image--c02c8dd5835f1de1eaac7eef.md) | 85 | `result-track:c02c8dd5835f1de1eaac7eef8ba271f58061bc80e689e106d153d019acba929f` |
| 8 | `theorem` | [interior_compact_eq_empty](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/interior-compact-eq-empty--0c248e56cea211f3df7b041a.md) | 93 | `result-track:0c248e56cea211f3df7b041acd901511d580938d59b2db8288a32fef921ce8e7` |
| 9 | `theorem` | [prod](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/prod--0d87aca15433f45ae631f40e.md) | 104 | `result-track:0d87aca15433f45ae631f40e688ff736b3baf014225e3b656c87ff55c7946b4f` |
| 10 | `theorem` | [separableSpace](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/separablespace--1d6495f3ae2dc15a6e84614f.md) | 114 | `result-track:1d6495f3ae2dc15a6e84614f177515b21ab26ff1e394b37adb043288305b963a` |
| 11 | `theorem` | [tendsto_comap_nhds_nhds](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/tendsto-comap-nhds-nhds--ce55f1223d2f5998a67676e1.md) | 126 | `result-track:ce55f1223d2f5998a67676e183d426098dff1cb4379091fa2809e210c88c2fae` |
| 12 | `theorem` | [nhdsWithin_neBot](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/nhdswithin-nebot--9346f40921caa366ac2a6a3f.md) | 136 | `result-track:9346f40921caa366ac2a6a3ff2a7bdd3ca6687f5b5e65dead25c03d46b6e2428` |
| 13 | `theorem` | [comap_nhds_neBot](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/comap-nhds-nebot--11558c480c7751bb99d19b31.md) | 140 | `result-track:11558c480c7751bb99d19b3132d4fb3e8780687f4355da98f2075a06771ee40f` |
| 14 | `def` | [extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/extend--f6237dbf3b60be0bc18b1a78.md) | 151 | `declaration-track:f6237dbf3b60be0bc18b1a780f7bf88a9fe669c51c01d290a2087b1bb1378ca2` |
| 15 | `theorem` | [extend_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/extend-eq-of-tendsto--7af6ed3a49484e32418e1c07.md) | 155 | `result-track:7af6ed3a49484e32418e1c072d7fd9b0623c298b6b483ca44c2408225e9b83e4` |
| 16 | `theorem` | [extend_eq_at](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/extend-eq-at--c8fd4fb08d44b785360bc29d.md) | 161 | `result-track:c8fd4fb08d44b785360bc29d0adc37f6d035c905535f200bf131ec963e225864` |
| 17 | `theorem` | [extend_eq_at'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/extend-eq-at--afca76f8cbf1903820274487.md) | 166 | `result-track:afca76f8cbf1903820274487068c2cae0c8483e5b9cef123cfa104f1046f590c` |
| 18 | `theorem` | [extend_eq](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/extend-eq--d53cb84f42cbfd2dc532e72f.md) | 171 | `result-track:d53cb84f42cbfd2dc532e72fb47dedf686933322b323a7e7601e8c4479d1cbc8` |
| 19 | `theorem` | [extend_eq'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/extend-eq--7bb73d9174e5ffcac9c9a2f3.md) | 178 | `result-track:7bb73d9174e5ffcac9c9a2f368f9cd2b2b5f3d49883339e689239fe0ed286661` |
| 20 | `theorem` | [extend_unique_at](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/extend-unique-at--f8da44da866d6df5513135ea.md) | 185 | `result-track:f8da44da866d6df5513135eaac63c1f340a54bd9f195ebb4133918207b31c752` |
| 21 | `theorem` | [extend_unique](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/extend-unique--81f88163d2f5ef33f752a957.md) | 196 | `result-track:81f88163d2f5ef33f752a957686f959b0b3cbaea8d04750feb6df6fa7639ac21` |
| 22 | `theorem` | [continuousAt_extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/continuousat-extend--50831cfc92699a0a728f3348.md) | 201 | `result-track:50831cfc92699a0a728f3348a7053a2adf158542f4c5e794793ea3e396032e5b` |
| 23 | `theorem` | [continuous_extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/continuous-extend--608978645cd6bf6d715de98a.md) | 224 | `result-track:608978645cd6bf6d715de98a47259c8323ed7142003181405eaf440df051ec64` |
| 24 | `theorem` | [mk'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/mk--79c5a0e232ec5bdd9a563897.md) | 229 | `result-track:79c5a0e232ec5bdd9a5638977efee6a8bfcff0e622f4edb78df3689464f32ced` |
| 25 | `structure` | [DenseEmbedding](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/denseembedding--776a95480cdaeed605558d00.md) | 239 | `declaration-track:776a95480cdaeed605558d00c94e3f1b09af975298e202f10a7dc4b3fe76cc0a` |
| 26 | `theorem` | [DenseEmbedding.mk'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/denseembedding-mk--d9a44dbcd8e531a26ac57be4.md) | 245 | `result-track:d9a44dbcd8e531a26ac57be4bfd22faa3d1395f6c23297e0a0ac03c6900f9d61` |
| 27 | `theorem` | [inj_iff](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/inj-iff--95cbba61588136524d7722b2.md) | 259 | `result-track:95cbba61588136524d7722b2903c57404a312bc90a9c89634a51154e52429eb8` |
| 28 | `theorem` | [to_embedding](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/to-embedding--0517cae9e5fc3df88fbac13e.md) | 263 | `result-track:0517cae9e5fc3df88fbac13e85740144e2ec228028a6c3b4656c7b5c7234b81b` |
| 29 | `theorem` | [separableSpace](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/separablespace--9d56f3f3cd198b25e38a49a7.md) | 269 | `result-track:9d56f3f3cd198b25e38a49a71483b610166cd30d39eb9c8546fd22bf4d523447` |
| 30 | `theorem` | [prod](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/prod--cc8b0bfcc22e1202a444d3e2.md) | 274 | `result-track:cc8b0bfcc22e1202a444d3e28efd93e7449fcd631e76259963f9e3731b672268` |
| 31 | `def` | [subtypeEmb](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/subtypeemb--f6d5136b9347b71dbeec22bd.md) | 282 | `declaration-track:f6d5136b9347b71dbeec22bd68cce3f3c93ccc1861f72bd4ac8a9b0aae8df837` |
| 32 | `theorem` | [subtype](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/subtype--4980dec6a8e22070ff565589.md) | 287 | `result-track:4980dec6a8e22070ff5655894d5bfae4fdb410694e910c38abccc5512fe0a3ec` |
| 33 | `theorem` | [dense_image](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/dense-image--0a9c3bde59a113138277eab7.md) | 300 | `result-track:0a9c3bde59a113138277eab723e10ba38ba423672b036d4bcf880f84f564c7fa` |
| 34 | `theorem` | [denseEmbedding_id](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/denseembedding-id--d700f149682dfcc21c922604.md) | 306 | `result-track:d700f149682dfcc21c9226046b3204ef1e12abb1f5c71d167de481f645a8c382` |
| 35 | `theorem` | [Dense.denseEmbedding_val](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/dense-denseembedding-val--0de49c13010e582370eae586.md) | 310 | `result-track:0de49c13010e582370eae5867b55edd68d5388266089a06da6eda9160f23666c` |
| 36 | `theorem` | [isClosed_property](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/isclosed-property--e66e112a4ea709feb6eeaeab.md) | 315 | `result-track:e66e112a4ea709feb6eeaeabf9dc25c489f21ad9dcd4b5906aa9d363ff4679db` |
| 37 | `theorem` | [isClosed_property2](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/isclosed-property2--cc05f999c38d4e5bd1cedf77.md) | 326 | `result-track:cc05f999c38d4e5bd1cedf773e833924fe748fde8b5ee29a940f7bf424483887` |
| 38 | `theorem` | [isClosed_property3](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/isclosed-property3--310847751e51c3c3d38254c4.md) | 332 | `result-track:310847751e51c3c3d38254c45706849ca1962cd50001a9c55271ee8d1e2f4b77` |
| 39 | `theorem` | [DenseRange.induction_on](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/denserange-induction-on--df6805180c768efcf654803a.md) | 341 | `result-track:df6805180c768efcf654803ab76ef60b899870098430788dfcdf163dfa4de5b0` |
| 40 | `theorem` | [DenseRange.induction_on₂](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/denserange-induction-on--96e6dfac364f16b1e8449ca3.md) | 347 | `result-track:96e6dfac364f16b1e8449ca3af49102f433115dd1a93fb69f288dc388b38af52` |
| 41 | `theorem` | [DenseRange.induction_on₃](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/denserange-induction-on--8b51e0db82055565d9e8fb6c.md) | 354 | `result-track:8b51e0db82055565d9e8fb6cdcee8dd5ab84c6e950c08afafca1ba6ea5312300` |
| 42 | `theorem` | [DenseRange.equalizer](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/denserange-equalizer--214e85bff96a9931f175b218.md) | 367 | `result-track:214e85bff96a9931f175b218244c09aed268a406477971a41e83cab5027123d6` |
| 43 | `theorem` | [Filter.HasBasis.hasBasis_of_denseInducing](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant587db01eeaea5590469f25aeffb617639f04fd64843bf6089dfa344169e5c9b1.lean/declarations/filter-hasbasis-hasbasis-of-denseinducing--83fbe56495a4d8a67630fd7e.md) | 375 | `result-track:83fbe56495a4d8a67630fd7e7b11ece9454bdcf1e43d95230d829848f4de9aae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
