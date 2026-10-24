# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ac5fef9586f03308397f48609bb7b3e214d5386",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ac5fef9586f03308397f48609bb7b3e214d5386`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean.json)

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
| 1 | `structure` | [TopCat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/topcat--333cd98f3af4ef8f235ef647.md) | 32 | `declaration-track:333cd98f3af4ef8f235ef647a93a8dcfa7ada490d06dc2c2f5974074ea2b4248` |
| 2 | `def` | [TopCat.delabOf](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/topcat-delabof--61fc2b25652b29a6b45604e1.md) | 47 | `declaration-track:61fc2b25652b29a6b45604e1bb703c024f02ffef56cfcad0928b553bf2a8ab27` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/instance--984675e284fbf5f48c7ff59c.md) | 57 | `declaration-track:984675e284fbf5f48c7ff59cca2fadb0a3ccd99f391d2be4b572c80d7ae90991` |
| 4 | `lemma` | [coe_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/coe-of--c482c09251d50aa7b131829a.md) | 62 | `result-track:c482c09251d50aa7b131829ad3c020b56499d0242027601aa1244d19297ea9df` |
| 5 | `lemma` | [of_carrier](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/of-carrier--1f20492adb7e8a205358c478.md) | 65 | `result-track:1f20492adb7e8a205358c4788272a0a927c9c979856dfd6d72c1f52a7492c8f3` |
| 6 | `structure` | [Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/hom--f77515215c77035c850d2e7e.md) | 70 | `declaration-track:f77515215c77035c850d2e7efaee9ba4820bd6856039d79dad83f77f1bff47bc` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/instance--351b0210671a57e843f29677.md) | 75 | `declaration-track:351b0210671a57e843f2967786b30562eaef201ed35ddac41126f4bc63bc038f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/instance--46b0b42f09fa41ce5daccd5e.md) | 80 | `declaration-track:46b0b42f09fa41ce5daccd5e57cd328cc42aa22c4b4f44016e7ff60bded83a6b` |
| 9 | `abbrev` | [Hom.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/hom-hom--606203f6344e019e392a9070.md) | 85 | `declaration-track:606203f6344e019e392a9070915d112f50ce9a0be5d9529b5a9e759db7751118` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/ofhom--04645f15714fba87166f8e95.md) | 89 | `declaration-track:04645f15714fba87166f8e952bed1771f1a78794292986c22a7b40a5fed22933` |
| 11 | `def` | [Hom.Simps.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/hom-simps-hom--5e8aaa5481c664688cbed5ca.md) | 93 | `declaration-track:5e8aaa5481c664688cbed5cae36e841af0fad4728880875366cfdf0dd8b524da` |
| 12 | `lemma` | [hom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/hom-id--a3668556e65e461720d1ee20.md) | 103 | `result-track:a3668556e65e461720d1ee200dc6c41b72db58914e484107632abde04aed5f9b` |
| 13 | `theorem` | [id_app](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/id-app--9939aa14f315133aa6d2269c.md) | 106 | `result-track:9939aa14f315133aa6d2269c57869285d91ada4f1a1361b7db7b4f36ace171cf` |
| 14 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/coe-id--14fc9662d6420b4597581b64.md) | 108 | `result-track:14fc9662d6420b4597581b6482437e4bb7cbe52446134900464e8517dc3ed131` |
| 15 | `lemma` | [hom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/hom-comp--98de2de528a7c7b865e01533.md) | 111 | `result-track:98de2de528a7c7b865e01533f185736a1fe9feaeddc632ec74f1c46f650c1fbf` |
| 16 | `theorem` | [comp_app](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/comp-app--7d75b55729b10e8cd716007f.md) | 115 | `result-track:7d75b55729b10e8cd716007f1a2b3cfe7a2eaeafe3743ebafc22b6855d145064` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/coe-comp--e887061f0d5cb4a6fa85cb9d.md) | 118 | `result-track:e887061f0d5cb4a6fa85cb9d9b8be2fea165f3de12d6f7d2dce15d2b2cce299d` |
| 18 | `lemma` | [hom_ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/hom-ext--be144b474bda18274141242b.md) | 122 | `result-track:be144b474bda18274141242b461e131d9d4205b4e16e80ca810d96c14187d51e` |
| 19 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/ext--05e4e4ba1866a88fbbb3e4de.md) | 126 | `result-track:05e4e4ba1866a88fbbb3e4de8b859e6493528abc90f4a2683df3b573b144f8b6` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/hom-ofhom--63cc706dac359cce488e2e0f.md) | 130 | `result-track:63cc706dac359cce488e2e0fae948183f54f5da927f7a3d4ef41ef62378229c2` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/ofhom-hom--8e4a115df16fcfcac16055f9.md) | 134 | `result-track:8e4a115df16fcfcac16055f924d39f79c5b023d86a699fddb96b301f145fbacb` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/ofhom-id--593276a84000195a0af30c01.md) | 138 | `result-track:593276a84000195a0af30c01821d8aaf07bad050c6a2c93bd576a93d32889fd1` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/ofhom-comp--f3355838f60062e00af1a404.md) | 141 | `result-track:f3355838f60062e00af1a404a7ac577cbbdd23f985d28b527f773d033d122af9` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/ofhom-apply--784145138131d69cb5e9bf46.md) | 146 | `result-track:784145138131d69cb5e9bf462d54a42fe634818fd68274b1aa0acad776cebd36` |
| 25 | `lemma` | [hom_inv_id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/hom-inv-id-apply--4e320d208d317b3696f7b1ea.md) | 149 | `result-track:4e320d208d317b3696f7b1ea1df387326b88b1129feda09908e7a7e211eca7e5` |
| 26 | `lemma` | [inv_hom_id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/inv-hom-id-apply--808e759656f110e83867964c.md) | 152 | `result-track:808e759656f110e83867964c430df8f59ab96d129bae56bd77658df695e70302` |
| 27 | `def` | [Hom.equivContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/hom-equivcontinuousmap--66dc34960bdcc338359aefd2.md) | 157 | `declaration-track:66dc34960bdcc338359aefd2495e34c8543aa8dde610afe3a4b97ba913fdd000` |
| 28 | `theorem` | [coe_of_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/coe-of-of--6e5bd8632271c1d8fb9293e6.md) | 166 | `result-track:6e5bd8632271c1d8fb9293e62d29714ce5b950ad1ade7335f8fde368a13a6406` |
| 29 | `instance` | [inhabited](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/inhabited--e6df13f57cb4cd88b408e9d3.md) | 176 | `declaration-track:e6df13f57cb4cd88b408e9d3d19ee4f08a1c3eb50fe447cac887ee631ea0748d` |
| 30 | `def` | [discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/discrete--5fa2e3a538eef01a996ea367.md) | 180 | `declaration-track:5fa2e3a538eef01a996ea3676692e58cb907ba0947b96142020b795e221c2a9c` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/instance--fbed2698f376ccb5f9af487e.md) | 184 | `declaration-track:fbed2698f376ccb5f9af487ea768300a990cd28f510e245db2dfa2028181e81a` |
| 32 | `def` | [trivial](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/trivial--7ecba21cd696fc5435629cca.md) | 188 | `declaration-track:7ecba21cd696fc5435629ccaf5cf7b7b375816b9ed7aac7b607f043319d72a00` |
| 33 | `def` | [isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isoofhomeo--cd41184d1f2952cdf8b6c861.md) | 194 | `declaration-track:cd41184d1f2952cdf8b6c86115b248c6524d69292fcfee93f87672e790299ecb` |
| 34 | `def` | [homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/homeoofiso--75a1b048670c8661fb2cd117.md) | 200 | `declaration-track:75a1b048670c8661fb2cd117ba53284bcf9ca9f4cd2760e8e9b9c3cf09b291a9` |
| 35 | `theorem` | [of_isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/of-isoofhomeo--569c8312db0b2ef0f2baac20.md) | 209 | `result-track:569c8312db0b2ef0f2baac20c4df02a87f7b22107012667eeec7691dfa411841` |
| 36 | `theorem` | [of_homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/of-homeoofiso--c1d2d58c8b4e2501e4380ab3.md) | 214 | `result-track:c1d2d58c8b4e2501e4380ab341f8c6ed29aba877601d3c463801440748a20119` |
| 37 | `lemma` | [isIso_of_bijective_of_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isiso-of-bijective-of-isopenmap--e6b0ae86fe55362655aaa288.md) | 218 | `result-track:e6b0ae86fe55362655aaa288b28d7e8f84671670540246dd121fb157d0c5eb41` |
| 38 | `lemma` | [isIso_of_bijective_of_isClosedMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isiso-of-bijective-of-isclosedmap--d1429ddf0e1a9da9df7b2eee.md) | 224 | `result-track:d1429ddf0e1a9da9df7b2eeec86508fc700e51f371e4fb3880a9725353bf4d16` |
| 39 | `lemma` | [isIso_iff_isHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isiso-iff-ishomeomorph--490b0c3ad4979b5473b3a73a.md) | 230 | `result-track:490b0c3ad4979b5473b3a73a0cdeffc0f062ae4f54ee5c5ca1c8fc1c458cf822` |
| 40 | `theorem` | [isOpenEmbedding_iff_comp_isIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isopenembedding-iff-comp-isiso--9219a15ce7dd900bf80d587b.md) | 235 | `result-track:9219a15ce7dd900bf80d587bbd9855d23b08a6fd2d92fcc518509b75bf860526` |
| 41 | `theorem` | [isOpenEmbedding_iff_comp_isIso'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isopenembedding-iff-comp-isiso--394dba5226257f3de6f0ea55.md) | 240 | `result-track:394dba5226257f3de6f0ea5536af36ec5fa2164a1d55523d9a63821f03038217` |
| 42 | `theorem` | [isOpenEmbedding_iff_isIso_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isopenembedding-iff-isiso-comp--04569dce49170c767be9338b.md) | 245 | `result-track:04569dce49170c767be9338b29db90a3a43e6e161312269dbf869433f11f85a0` |
| 43 | `theorem` | [isOpenEmbedding_iff_isIso_comp'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isopenembedding-iff-isiso-comp--baeda846b40b9708ce10f1f4.md) | 254 | `result-track:baeda846b40b9708ce10f1f4f27804ae96abeccbee790895db88914f81eba151` |
| 44 | `abbrev` | [isEmbedding](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isembedding--adf7226aa8c2a6d188e5925b.md) | 260 | `declaration-track:adf7226aa8c2a6d188e5925b11263190c627f8893a3862fa972b6f4c2e1a3ac2` |
| 45 | `lemma` | [isEmbedding_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/isembedding-iff--b2b334ece279236666c254df.md) | 264 | `result-track:b2b334ece279236666c254df605823816d399d69c60e6192d4bf6f65f69bd250` |
| 46 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/const--1a0b1b0524664c60be0b7654.md) | 268 | `declaration-track:1a0b1b0524664c60be0b76548249c05b14d7896821ef99928d62964d768befc3` |
| 47 | `lemma` | [const_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/declarations/const-apply--3b6ca851ce87321ab236740c.md) | 272 | `result-track:3b6ca851ce87321ab236740c6beccedc879d787befd18193961317567c523e50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
