# Verification target: GRWTSK.Algebra.Basic.Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "058c18b12574833a4ab00d9346171356572e5d8f",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `058c18b12574833a4ab00d9346171356572e5d8f`.

Source path: `GRWTSK/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean.json)

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
| 1 | `def` | [RestrictedProduct](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/restrictedproduct--6b1b4307cce76eedd0a3270e.md) | 79 | `declaration-track:6b1b4307cce76eedd0a3270eb54bfc88cb426d941d842e7323c911561349a9a0` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--78d99ceea3f90bf7f060bcd6.md) | 100 | `declaration-track:78d99ceea3f90bf7f060bcd62dd3320a0a384ae1a3cba655ddd211053dc526a6` |
| 3 | `abbrev` | [mk](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mk--6676a0d9fbccb27af7c95e6b.md) | 106 | `declaration-track:6676a0d9fbccb27af7c95e6b70f1b8f0b1055d732845000a514d548812371531` |
| 4 | `lemma` | [mk_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mk-apply--ae8725b4c7aa1a68f7d7f0e0.md) | 110 | `result-track:ae8725b4c7aa1a68f7d7f0e00fb77b48512bec36b055078c0ee05a383bdbf06d` |
| 5 | `lemma` | [ext](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/ext--5af1844ee5780faed74f1706.md) | 114 | `result-track:5af1844ee5780faed74f1706a68b589bed246d5f6955e63c25e50e2c178849bb` |
| 6 | `lemma` | [range_coe](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/range-coe--cf0243fac4e5e84b1ee5bc6e.md) | 117 | `result-track:cf0243fac4e5e84b1ee5bc6e713d3d7670c57fe81b559932a314932554f6e100` |
| 7 | `lemma` | [range_coe_principal](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/range-coe-principal--3aca4994d69ec16474fb1246.md) | 121 | `result-track:3aca4994d69ec16474fb1246304fa80074b00af375eba77040a53fd8b5548311` |
| 8 | `lemma` | [eventually](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/eventually--0958b31c7b42957970b910fa.md) | 125 | `result-track:0958b31c7b42957970b910fa600e3abf1c4d9d0134687eb9a190353eb7de10ca` |
| 9 | `def` | [structureMap](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/structuremap--415b97d20d60c5ff542b23b2.md) | 130 | `declaration-track:415b97d20d60c5ff542b23b2432a7e9f5c5f0ab4097cf85995e822218247ab98` |
| 10 | `lemma` | [structureMap_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/structuremap-apply--4e58c6747f61a9e2e465eadf.md) | 134 | `result-track:4e58c6747f61a9e2e465eadf6cda436dce64de30b347b078033f32d1ba5e153b` |
| 11 | `def` | [inclusion](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/inclusion--9c355b4494a3904bf509796b.md) | 140 | `declaration-track:9c355b4494a3904bf509796b3fa3b028dddf0ebad732e0ecf24a3e1b68e83b50` |
| 12 | `lemma` | [inclusion_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/inclusion-apply--441e298facca6aca458c9141.md) | 145 | `result-track:441e298facca6aca458c9141e9e3a9fb3163f6bd2a3c54146038ab82ddd0a833` |
| 13 | `lemma` | [inclusion_eq_id](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/inclusion-eq-id--009caa7a414c9989de919907.md) | 150 | `result-track:009caa7a414c9989de919907b60866ac451fcf738837f06a4616a45fdcd60dba` |
| 14 | `lemma` | [exists_inclusion_eq_of_eventually](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/exists-inclusion-eq-of-eventually--7421d715f836f183fac27e88.md) | 152 | `result-track:7421d715f836f183fac27e88a034e767e8df14ded9ea759d49e01fb6e9319cd9` |
| 15 | `lemma` | [exists_structureMap_eq_of_forall](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/exists-structuremap-eq-of-forall--58057aff088a186fac5dc131.md) | 157 | `result-track:58057aff088a186fac5dc131ae9c876f06e8591ab0e86af4df51f7f9dccd8bc9` |
| 16 | `lemma` | [range_inclusion](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/range-inclusion--389a0607ba9bc27f0d06ac1a.md) | 162 | `result-track:389a0607ba9bc27f0d06ac1ab38f29a84f35d45874e90a071c3a503491f119a2` |
| 17 | `lemma` | [coe_comp_inclusion](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/coe-comp-inclusion--18eb73847748019514feec37.md) | 168 | `result-track:18eb73847748019514feec370f9176b031cfb064da7f3313c487e9e4b8e70c98` |
| 18 | `lemma` | [image_coe_preimage_inclusion_subset](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/image-coe-preimage-inclusion-subset--6df4fda92f7592efdcc895db.md) | 172 | `result-track:6df4fda92f7592efdcc895dbfbed190a3c2f5b5a91db0deddb8524a0f83fca3c` |
| 19 | `lemma` | [range_structureMap](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/range-structuremap--7a5be9dcb5993c8302296d56.md) | 176 | `result-track:7a5be9dcb5993c8302296d5666f410990e27770e43a68e5c07fe05e9b45fdc54` |
| 20 | `lemma` | [coe_comp_structureMap](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/coe-comp-structuremap--55cc2d745e58adf81dfff044.md) | 182 | `result-track:55cc2d745e58adf81dfff044cdd3045240309083f2ecded60b991d4a7b6ea1a0` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--c18497fafcdff6b5ebc79cc6.md) | 199 | `declaration-track:c18497fafcdff6b5ebc79cc6ff09c8464ff7772a014a05495c8dc260b8777214` |
| 22 | `lemma` | [one_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/one-apply--e37bb6572c79ac78025e59a2.md) | 203 | `result-track:e37bb6572c79ac78025e59a28c1aa68c4caab3d59ca2c2bfb6494d45637f6600` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--bf281463194017da924e0a05.md) | 208 | `declaration-track:bf281463194017da924e0a0546b7dc2a38832b34895094a962526d5b35350ca8` |
| 24 | `lemma` | [inv_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/inv-apply--c87172acda51a02cc2e79492.md) | 212 | `result-track:c87172acda51a02cc2e794928684cb0d1fcd3f950117c39ff0664bcfb32dfad3` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--0ba5d80e42dd7a45eb3628fa.md) | 217 | `declaration-track:0ba5d80e42dd7a45eb3628fad58b8a9755ab7736fd834b835b4e06c3c2f8ec84` |
| 26 | `lemma` | [mul_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mul-apply--0995092850d13e5c4602dca1.md) | 221 | `result-track:0995092850d13e5c4602dca16897ac0eeb8743e5a3620cf32f1ce1dffe999ede` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--6bae033ebcab3bd8d3dbbfbe.md) | 226 | `declaration-track:6bae033ebcab3bd8d3dbbfbe061d3ba85c624c27bc6437200f84a473192031b5` |
| 28 | `lemma` | [smul_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/smul-apply--bf96be3e83db8d142b08618d.md) | 231 | `result-track:bf96be3e83db8d142b08618d8c6bc856508854a03fa864c4b039b96916d5e708` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--cece0a21bd34b7f94542a376.md) | 236 | `declaration-track:cece0a21bd34b7f94542a37678adddf8a3a5b81dd7ba25d588001833f14fb707` |
| 30 | `lemma` | [div_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/div-apply--7d815f1f34dd4d724be3ea56.md) | 241 | `result-track:7d815f1f34dd4d724be3ea56c1c0dcf3982d374c39c7f1d36d6d6ddbfe86a937` |
| 31 | `instance` | [instPow](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instpow--62aee8bd3b940d5500b11e64.md) | 246 | `declaration-track:62aee8bd3b940d5500b11e64b823c16cf0fc1a8779feb9cce59de83fe2980314` |
| 32 | `lemma` | [pow_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/pow-apply--9509d6248afd0454f1974de9.md) | 251 | `result-track:9509d6248afd0454f1974de9d49612ce92bd9210cbc014979e32866788b56ac3` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--fd8ca76a0b97fd9f2cc29818.md) | 256 | `declaration-track:fd8ca76a0b97fd9f2cc29818382d03b87943660bfd660eb2898994b1cfaeee69` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--009a17c405e4525c0073b717.md) | 261 | `declaration-track:009a17c405e4525c0073b717e1cdb10353ff09e84f7e96c54a0108fb8e791472` |
| 35 | `instance` | [instZPow](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instzpow--da91ca125fbe48a1a2b532f4.md) | 266 | `declaration-track:da91ca125fbe48a1a2b532f442886884e66304748ad974dd84320c185d447a3c` |
| 36 | `lemma` | [zpow_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/zpow-apply--aa64709eb66583c7b39753f1.md) | 271 | `result-track:aa64709eb66583c7b39753f15acf155e2377042127a11505c05200de1259411c` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--94bd493d7382dacfe6783f65.md) | 275 | `declaration-track:94bd493d7382dacfe6783f654441e787f1db8b2593bbc135f1fd886f43754b08` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--6f107c1f501410bd23d6a259.md) | 280 | `declaration-track:6f107c1f501410bd23d6a25900dad07d1bbf9bddf8f8e5b1f76dc131cf97011c` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--8c8f54790c478ee7b26ec3c2.md) | 286 | `declaration-track:8c8f54790c478ee7b26ec3c291d9fcda7d53a3f653b9b006464168b28a21900a` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--4b354b52a1fddd8735559d88.md) | 291 | `declaration-track:4b354b52a1fddd8735559d8884c9ecba1d3a3d044b30beb49e0b5c23ba864ebb` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--84719a6e1c6c1cb83f662309.md) | 295 | `declaration-track:84719a6e1c6c1cb83f662309a31d2e903810de4d313fd4c6ba25ca29e3282c9f` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--ac645617f7fb9cd030739b43.md) | 300 | `declaration-track:ac645617f7fb9cd030739b4331d55bb8921d1a29cabb61abdc61d974eb726e24` |
| 43 | `def` | [coeMonoidHom](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/coemonoidhom--fab1b03e462f2b52dbadc765.md) | 309 | `declaration-track:fab1b03e462f2b52dbadc765a8a6c406e43553a972958c94abc45ae0ab49302f` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/instance--d46896e4e33ee099efbf3135.md) | 315 | `declaration-track:d46896e4e33ee099efbf3135b26a96eccf4f23d3b9b20f68f55f96ca822fccda` |
| 45 | `def` | [evalMonoidHom](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/evalmonoidhom--646640b5804c36afe925be7a.md) | 333 | `declaration-track:646640b5804c36afe925be7a31fa8bb9c78d60a1f1cb9947187a25481ab0d753` |
| 46 | `lemma` | [evalMonoidHom_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/evalmonoidhom-apply--16e5f3231ceb3c4551d5781f.md) | 340 | `result-track:16e5f3231ceb3c4551d5781f4992963c7b0cdc0340ca665f3c4daecd5e49550b` |
| 47 | `def` | [evalRingHom](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/evalringhom--0173d10f929977950db2623c.md) | 347 | `declaration-track:0173d10f929977950db2623cddae54f3b7de3632cd6b9b9e9f16baaf1114e322` |
| 48 | `lemma` | [evalRingHom_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/evalringhom-apply--b443ce6d0f1432048e3cca5b.md) | 353 | `result-track:b443ce6d0f1432048e3cca5bfdb7025782fee0fa32a9313b56c49a556aea7b4c` |
| 49 | `def` | [mapAlong](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mapalong--9695b69f3219002fd32553f6.md) | 382 | `declaration-track:9695b69f3219002fd32553f6df6a5c53fd34ada51cb7b6735a60e8376fb5f020` |
| 50 | `lemma` | [mapAlong_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mapalong-apply--81483bee0b26180b8c5f4db8.md) | 387 | `result-track:81483bee0b26180b8c5f4db8f37b1f65a27f07bb3819e1a94da55ddb16658bc4` |
| 51 | `def` | [map](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/map--effe14e418d0f0ccc6da0969.md) | 395 | `declaration-track:effe14e418d0f0ccc6da0969c57f6c0c0644217f21a0cec2b84053f96c950917` |
| 52 | `lemma` | [map_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/map-apply--e2870e0281e86d09cee0b574.md) | 403 | `result-track:e2870e0281e86d09cee0b57421015140aceeabf1b52bbb8636c47bfe4a094985` |
| 53 | `def` | [mapAlongMonoidHom](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mapalongmonoidhom--6e27099b6bba3abcd57a6c08.md) | 430 | `declaration-track:6e27099b6bba3abcd57a6c08e43e234acb27df0923305e96736396efe8c7ded7` |
| 54 | `lemma` | [mapAlongMonoidHom_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mapalongmonoidhom-apply--5c237787ebfed534263d2c46.md) | 440 | `result-track:5c237787ebfed534263d2c46d6c9979c5d7ded4bbba587c6f940dd4da10ad757` |
| 55 | `def` | [mapAlongRingHom](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mapalongringhom--d6816a3964d8c180c660df72.md) | 459 | `declaration-track:d6816a3964d8c180c660df722ecf94d8ffdc15a2917e1e227fb671fd3844807b` |
| 56 | `lemma` | [mapAlongRingHom_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mapalongringhom-apply--315133d8dee0612e874f2867.md) | 464 | `result-track:315133d8dee0612e874f2867ec1b50e7a17516a0e34c82234f810cf31a54d935` |
| 57 | `def` | [mulSingle](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle--fd0f15983f9bcb9281726843.md) | 484 | `declaration-track:fd0f15983f9bcb92817268439b2b09df5c98ef1670a07c20d4bddaab6deaa496` |
| 58 | `lemma` | [coe_mulSingle_apply](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/coe-mulsingle-apply--4b548a5904f563ac44afa207.md) | 491 | `result-track:4b548a5904f563ac44afa20702c4b5b0b7f9f0d3d5baaa2340aa61428aff1e6c` |
| 59 | `lemma` | [comp_mulSingle](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/comp-mulsingle--794650ca074ceb56b920167d.md) | 492 | `result-track:794650ca074ceb56b920167dbcb5f0ab8688fb6068bf5d9082b860bd85ba2822` |
| 60 | `lemma` | [mulSingle_injective](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-injective--876d1e3700ce2c7ef774ce8e.md) | 495 | `result-track:876d1e3700ce2c7ef774ce8eed3aabc60d5c8f7dd25b0e5d483f58923447d8fa` |
| 61 | `lemma` | [mulSingle_inj](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-inj--d3778d4649698fe566b19752.md) | 499 | `result-track:d3778d4649698fe566b19752d27a5d9c6853bd057adb696510191c8898716c28` |
| 62 | `lemma` | [mulSingle_eq_same](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-eq-same--c074f4b76d02408aac81f316.md) | 503 | `result-track:c074f4b76d02408aac81f31642e4b18436f2413d0bba966c77db3275708cdf3c` |
| 63 | `lemma` | [mulSingle_eq_of_ne](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-eq-of-ne--4c022ba83b80ad6068f19cd5.md) | 506 | `result-track:4c022ba83b80ad6068f19cd5f78b9d01d68b0c8f9e18ef9f7a3770fd1a9a116f` |
| 64 | `lemma` | [mulSingle_eq_of_ne'](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-eq-of-ne--882d4c56121f261314182591.md) | 510 | `result-track:882d4c56121f2613141825914c8f89ae478e6bee3086d3814711aa908410b87e` |
| 65 | `lemma` | [mulSingle_one](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-one--a9ff200153d4b6be0eade277.md) | 514 | `result-track:a9ff200153d4b6be0eade277eb4bdc23da65db651ebb42a28e5ab1689fa14fc3` |
| 66 | `lemma` | [mulSingle_eq_one_iff](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-eq-one-iff--82eab572924d18dfe60a26e7.md) | 517 | `result-track:82eab572924d18dfe60a26e7d1620cfc42e694c72332cf6c24a5f99d506fc4fd` |
| 67 | `lemma` | [mulSingle_ne_one_iff](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-ne-one-iff--48a0e9777549b9dfd900a559.md) | 521 | `result-track:48a0e9777549b9dfd900a55977a2c2e800cace9de2a6001f78ade75b76b9ce2d` |
| 68 | `lemma` | [mulSingle_mul](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-mul--bae79072376da6a8712ec605.md) | 527 | `result-track:bae79072376da6a8712ec605beffc56e8ce2be5a234925749f5cbdeca138c1b0` |
| 69 | `lemma` | [mul_single](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mul-single--d7e7d671f621822beabc1961.md) | 533 | `result-track:d7e7d671f621822beabc19619c2c5f34f7d8c56dd6aaa7b612e2d7ad6efc420e` |
| 70 | `lemma` | [single_mul](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/single-mul--6859f58e15feffcc75d80102.md) | 541 | `result-track:6859f58e15feffcc75d80102b31319d837d21fc392e299caad546c8c2d27a9bf` |
| 71 | `lemma` | [mulSingle_inv](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-inv--54e7debf9b1bbfeda0602ea0.md) | 549 | `result-track:54e7debf9b1bbfeda0602ea08030822dc5848db93315ec423ae26d2619bd113f` |
| 72 | `lemma` | [mulSingle_div](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-div--c8a616f6594b93d92faa8b9b.md) | 555 | `result-track:c8a616f6594b93d92faa8b9babe0109f08f31c5fde7c4c44242b1d7b5754ca4f` |
| 73 | `lemma` | [mulSingle_pow](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-pow--7594d740c7dc3a79486b87f9.md) | 561 | `result-track:7594d740c7dc3a79486b87f923384004c86ea8f3d521e9fc095485e62fbae18e` |
| 74 | `lemma` | [mulSingle_zpow](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsingle-zpow--a8a2b2f0fb245cc270f244ee.md) | 567 | `result-track:a8a2b2f0fb245cc270f244ee8a9c055df6c0d51b09bcc2d8b202ffafd22ef657` |
| 75 | `def` | [mulSingleMonoidHom](../../../../mathematics/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/declarations/mulsinglemonoidhom--bdcfbd696fdd98b8a092fb19.md) | 576 | `declaration-track:bdcfbd696fdd98b8a092fb190d5f3370fc2a4b629f4c0999df61e6c3e8e183e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
