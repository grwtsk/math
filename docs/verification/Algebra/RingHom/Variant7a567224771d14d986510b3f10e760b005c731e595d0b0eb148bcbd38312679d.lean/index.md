# Verification target: GRWTSK.Algebra.RingHom.Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42c474e42372ebeb049d0184d1a834a9cfab2c07",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42c474e42372ebeb049d0184d1a834a9cfab2c07`.

Source path: `GRWTSK/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean.json)

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
| 1 | `structure` | [GradedRingHom](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/gradedringhom--d1fb4e563b79c94d73720292.md) | 54 | `declaration-track:d1fb4e563b79c94d7372029275e536dc105e141637d6568396be3b22bd8d647f` |
| 2 | `def` | [ofClass](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/ofclass--7116859edb05cf232a01af4a.md) | 73 | `declaration-track:7116859edb05cf232a01af4ad39f1146bfcb0d6a06ff9d8ffbc3baa8ddb71f19` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/instance--0cc34a019918b8f1fb0da311.md) | 82 | `declaration-track:0cc34a019918b8f1fb0da311cf5b44aa7d35f23af60c24e9ccfeea8169399aea` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/instance--dd3a031e43b1af22106f2a9a.md) | 91 | `declaration-track:dd3a031e43b1af22106f2a9ac68a5aa5a238953e56554d5c3a2d0fa2280dbadd` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/instance--6e70499e5997d73f55106fa8.md) | 94 | `declaration-track:6e70499e5997d73f55106fa8622c493e1ee6790403690b896d68438e0d95c812` |
| 6 | `theorem` | [toRingHom_eq_toRingHom](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/toringhom-eq-toringhom--efd3a277558e057a0baa09d7.md) | 105 | `result-track:efd3a277558e057a0baa09d74df035322588c1ce3917e5d9a0a4d2054c7b2e8b` |
| 7 | `theorem` | [coe_toRingHom](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-toringhom--2761a412ed5e11b500a53371.md) | 108 | `result-track:2761a412ed5e11b500a533710f8cb1af10839e8eab211b3820e266d996f87485` |
| 8 | `theorem` | [coe_mk](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-mk--26c9d35a48cac87924f14104.md) | 111 | `result-track:26c9d35a48cac87924f14104e2718e01a6288fb7d2656f6ad6289f57e60504f1` |
| 9 | `theorem` | [coe_ofClass](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-ofclass--b5558662bf4fb0e9c47879b1.md) | 114 | `result-track:b5558662bf4fb0e9c47879b1683bffc814e33d8c51d85658a9c2e1bd993bba11` |
| 10 | `instance` | [coeToRingHom](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coetoringhom--6b65733f6518fe5b101d98a0.md) | 117 | `declaration-track:6b65733f6518fe5b101d98a00dcfc18ed4e778ff528eec70cf717967cb44b03d` |
| 11 | `def` | [copy](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/copy--0481b4c2f99d24348f1cd19d.md) | 122 | `declaration-track:0481b4c2f99d24348f1cd19dd0ae6c0a1d65d4e95d5ef820fd853cb07cf64f23` |
| 12 | `theorem` | [coe_copy](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-copy--23bf88419011c92e4e90d5f7.md) | 127 | `result-track:23bf88419011c92e4e90d5f71a26bfcae0a1391cf9d083d5eb6bfbba6e24494f` |
| 13 | `theorem` | [copy_eq](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/copy-eq--5c4f274a09ac45daa7570e23.md) | 130 | `result-track:5c4f274a09ac45daa7570e23f42a9422a87a4b6f66a9fa340edb3055fc84b207` |
| 14 | `theorem` | [congr_fun](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/congr-fun--3809dad59462bff06cace319.md) | 139 | `result-track:3809dad59462bff06cace319a10c91be5d4ca37e4909969d37f4a162ec9c712f` |
| 15 | `theorem` | [congr_arg](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/congr-arg--62d4cf10b68095a2177e3333.md) | 142 | `result-track:62d4cf10b68095a2177e3333063baf2ea9df6221eb8167fda96bad06df561f45` |
| 16 | `theorem` | [coe_inj](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-inj--0b16a8f27558a10d2aa52abd.md) | 145 | `result-track:0b16a8f27558a10d2aa52abdd2894183ee0bc42b31641eb736ebc40db1bbd2d4` |
| 17 | `theorem` | [ext](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/ext--b20d7a7c7786378e889a2b61.md) | 149 | `result-track:b20d7a7c7786378e889a2b61dd95cb7cd140aa9f33329e78a6e4df34c04eaa21` |
| 18 | `theorem` | [mk_coe](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/mk-coe--df81ce49f4021b0ab4b269b8.md) | 153 | `result-track:df81ce49f4021b0ab4b269b8562926a431079cc49841dc12a9176574535cd993` |
| 19 | `theorem` | [coe_ringHom_injective](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-ringhom-injective--1209da1b33659bdc9d56a25e.md) | 156 | `result-track:1209da1b33659bdc9d56a25e2a86c9e69e9f7b57084a7510f12e05ff021c2080` |
| 20 | `theorem` | [map_zero](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/map-zero--7b336b0fcf316cc3b2d2f9e9.md) | 160 | `result-track:7b336b0fcf316cc3b2d2f9e9c5888cdaacc958dedd2b29baec00a3e5d9227548` |
| 21 | `theorem` | [map_one](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/map-one--2c3ec95e19dbad32a3a9e2bb.md) | 164 | `result-track:2c3ec95e19dbad32a3a9e2bb17613b7c82ac9adc6b4991226687d74b0c01bf7e` |
| 22 | `theorem` | [map_add](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/map-add--7767b31f5b7531f6c30e9d59.md) | 168 | `result-track:7767b31f5b7531f6c30e9d5956d557ad254d0f53dd61eca3211593a6470bfa75` |
| 23 | `theorem` | [map_mul](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/map-mul--19ff819df5aecb30ab9b6261.md) | 172 | `result-track:19ff819df5aecb30ab9b6261ab13574ba92553f5676781fa9572b743e6f0c1d9` |
| 24 | `theorem` | [map_neg](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/map-neg--39c1002a0b50cf8e6314be97.md) | 183 | `result-track:39c1002a0b50cf8e6314be97a2e98f95e7aff9668efe984899b4b18a5bb1dc5f` |
| 25 | `theorem` | [map_sub](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/map-sub--29ec44b1072a0dd516453831.md) | 187 | `result-track:29ec44b1072a0dd516453831658471e11cfcf0732e2ac87833de75d15f7ea177` |
| 26 | `def` | [id](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/id--cbdc89a2121bc3d187d17b08.md) | 195 | `declaration-track:cbdc89a2121bc3d187d17b083813107dd81913f46ebc567361c5cb00855b6883` |
| 27 | `theorem` | [coe_id](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-id--9626f8d0addfda96a8ab5399.md) | 200 | `result-track:9626f8d0addfda96a8ab5399ea3e4617f88c169ba72f05848c2b0efc3c0a9dbc` |
| 28 | `theorem` | [id_apply](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/id-apply--fd67a3c3db1ea49f7cad1f26.md) | 203 | `result-track:fd67a3c3db1ea49f7cad1f26e8bb532157d8b0279c4a632fc15abe2f9789bf68` |
| 29 | `theorem` | [toRingHom_id](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/toringhom-id--46061aec5ab2dc5be5363ddd.md) | 207 | `result-track:46061aec5ab2dc5be5363ddd4a819a4d0b874bc00564bd6e2d2c09127fe256cb` |
| 30 | `def` | [comp](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/comp--4aace9e27ba04382bb28780c.md) | 211 | `declaration-track:4aace9e27ba04382bb28780c5c5a5f699742fbf56c2dde08ef9f9f4edd4e9a7a` |
| 31 | `theorem` | [comp_assoc](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/comp-assoc--93fb83bd68a8c3e9a70ce575.md) | 216 | `result-track:93fb83bd68a8c3e9a70ce57503b348f600521381d46a52bcc1b92a719fdd22dd` |
| 32 | `theorem` | [coe_comp](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-comp--7e981bd0dc41f1a779ddb828.md) | 221 | `result-track:7e981bd0dc41f1a779ddb828b79b636ecffa019353e08d8f95d15750db2137f7` |
| 33 | `theorem` | [comp_apply](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/comp-apply--d5229fdefe84a521002fdd64.md) | 224 | `result-track:d5229fdefe84a521002fdd64497889e4a1df2b11c636a84d488910a4984d66b0` |
| 34 | `theorem` | [comp_id](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/comp-id--eee38b2503ff5b6ec48f96a0.md) | 229 | `result-track:eee38b2503ff5b6ec48f96a016b44c71f4bb48e0861a36e4a382ed470edce905` |
| 35 | `theorem` | [id_comp](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/id-comp--3b412b718248df2c61b48d7a.md) | 233 | `result-track:3b412b718248df2c61b48d7a79162f8b68ea9ffcbf5cc0c69adbc587de0c51af` |
| 36 | `instance` | [instOne](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/instone--0c4d9e7fc0571b9732abfb02.md) | 236 | `declaration-track:0c4d9e7fc0571b9732abfb02718367d2926a09e04efe270b2e928a1690f048e0` |
| 37 | `instance` | [instMul](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/instmul--dcd4f8eaf83a04f77a268d29.md) | 237 | `declaration-track:dcd4f8eaf83a04f77a268d29ea211d820ff2160878bcfcf4aa88bc59e68f984a` |
| 38 | `lemma` | [one_def](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/one-def--313f078b7388f3365b8369b9.md) | 239 | `result-track:313f078b7388f3365b8369b9a37ccc242272695cf847d376c5c3f4fa4dcddf26` |
| 39 | `lemma` | [mul_def](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/mul-def--554f8dd19d341eaea849413b.md) | 241 | `result-track:554f8dd19d341eaea849413b8635c696a35ec8d35f1fe56cb1da3cd3c93b8ae8` |
| 40 | `lemma` | [coe_one](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-one--c350ace0927ac58e8e74bded.md) | 243 | `result-track:c350ace0927ac58e8e74bded7f7065cd19e0ba568dbac9e45272e1b9eef12253` |
| 41 | `lemma` | [coe_mul](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-mul--5fa7f7fa95755c2dde30c2a1.md) | 245 | `result-track:5fa7f7fa95755c2dde30c2a157bff1ecdc896388ac1453bf0d905b27d7d556fe` |
| 42 | `instance` | [instMonoid](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/instmonoid--36ef14e2a0cf0f6bfabf7828.md) | 247 | `declaration-track:36ef14e2a0cf0f6bfabf7828660f7944db0a0486496883c527458442ac73d6e3` |
| 43 | `lemma` | [coe_pow](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/coe-pow--09b8f9820827a65c25bcb195.md) | 254 | `result-track:09b8f9820827a65c25bcb195327f46c40de12446908fc75bd91b1f264d43655c` |
| 44 | `theorem` | [cancel_right](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/cancel-right--41042814bec2a7d588c4bfea.md) | 257 | `result-track:41042814bec2a7d588c4bfea1ef66fed57b7cac587a3e4e4c08404e9c5437f77` |
| 45 | `theorem` | [cancel_left](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/cancel-left--a88b3bca0471014f52907798.md) | 262 | `result-track:a88b3bca0471014f529077982744387bfe3fb61df88f6e17f36c5b7706fc1457` |
| 46 | `def` | [gradedAddHom](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/gradedaddhom--2bb2e87e30a1116c986cf820.md) | 268 | `declaration-track:2bb2e87e30a1116c986cf820659fd2f68ae317a7edba7ea54da4dc5b3933d551` |
| 47 | `def` | [gradedZeroRingHom](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/gradedzeroringhom--7f1d08a886dca343757c2c8b.md) | 275 | `declaration-track:7f1d08a886dca343757c2c8b4176d860e11818b44005af9c2764503633ac9993` |
| 48 | `lemma` | [DirectSum.decompose_map](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/directsum-decompose-map--89f371bb187eeb20c4f443d1.md) | 291 | `result-track:89f371bb187eeb20c4f443d1a086892b7a130332dde52c37d5da53652eed329a` |
| 49 | `lemma` | [map_directSumDecompose](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/map-directsumdecompose--e474ab06eed21e7cd52eba64.md) | 303 | `result-track:e474ab06eed21e7cd52eba64be5616978d6157e832c5d8aec785989f308259f7` |
| 50 | `lemma` | [GradedRingHom.map_directSumDecompose](../../../../mathematics/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/declarations/gradedringhom-map-directsumdecompose--45db2a630e5fbc193e744476.md) | 307 | `result-track:45db2a630e5fbc193e744476976a8c96d0e2d0ddc863a0e2f565662f25a68c7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
