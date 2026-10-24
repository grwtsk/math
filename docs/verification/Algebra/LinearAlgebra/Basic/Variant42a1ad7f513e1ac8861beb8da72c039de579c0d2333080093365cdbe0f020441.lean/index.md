# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e38775b9c8be724f0f1648a8e810e107c7356d6b",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e38775b9c8be724f0f1648a8e810e107c7356d6b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean.json)

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
| 1 | `theorem` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-le-card--21ec72c753e602696cbbed5e.md) | 79 | `result-track:21ec72c753e602696cbbed5eb0862e33d908a1598e8eead2e14e9783fa881aa0` |
| 2 | `instance` | [nonempty_linearIndependent_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/nonempty-linearindependent-set--6ff9a1ae8b60a2c68d668ac3.md) | 82 | `declaration-track:6ff9a1ae8b60a2c68d668ac319d85d803cb58564304c7392b9dd61656b856c11` |
| 3 | `theorem` | [cardinal_lift_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/cardinal-lift-le-rank--ce8076e2019835a8afeac155.md) | 92 | `result-track:ce8076e2019835a8afeac15526d7bd59c908258ec68cea9daccfaf4164edec37` |
| 4 | `lemma` | [aleph0_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/aleph0-le-rank--bf042bb20228ef7ebab459ba.md) | 99 | `result-track:bf042bb20228ef7ebab459ba3dead57c1015827fae63e1197b0f1e34e5d20e6a` |
| 5 | `theorem` | [cardinal_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/cardinal-le-rank--500fab40186b9b2b94247d8c.md) | 103 | `result-track:500fab40186b9b2b94247d8c492cdf76e9176f7295f113849bbd619af2ca7c01` |
| 6 | `theorem` | [cardinal_le_rank'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/cardinal-le-rank--e4a70c766216d44757ef89e4.md) | 107 | `result-track:e4a70c766216d44757ef89e4f96422a202b11d388fdaafe7dca8808409c24a58` |
| 7 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.RankLeCard.Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.LinearIndepOn.encard_le_toENat_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/root-grwtsk-algebra-linearalgebra-ranklecard-variant68b87979d198c989ee8f--ad828844430528c65f848a6e.md) | 111 | `result-track:ad828844430528c65f848a6ea2a5ba80c7437108e539c70fc36da96eeecc8633` |
| 8 | `theorem` | [exists_set_linearIndependent_of_lt_lift_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/exists-set-linearindependent-of-lt-lift-rank--9bb2b38966503c06b8f2abc2.md) | 121 | `result-track:9bb2b38966503c06b8f2abc27b0e9e175c4de279894fe8cf71597eaaea03c5bb` |
| 9 | `theorem` | [exists_set_linearIndependent_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/exists-set-linearindependent-of-lt-rank--ed955118eab8b3a795e20a79.md) | 129 | `result-track:ed955118eab8b3a795e20a79f0564db121a0749446fcb19e5abfaf725eeee880` |
| 10 | `theorem` | [le_rank_iff_exists_finset](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/le-rank-iff-exists-finset--5059106112facc73aebd172f.md) | 139 | `result-track:5059106112facc73aebd172f00470e777d4022e1d97fd8413d93af6764abcc9e` |
| 11 | `theorem` | [le_rank_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/le-rank-iff--66aff2aaf6b971104b0f0ca0.md) | 152 | `result-track:66aff2aaf6b971104b0f0ca0a81d1b7e4c3e48acbed14649172e9266ea4e6341` |
| 12 | `theorem` | [le_rank_iff_exists_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/le-rank-iff-exists-linearmap--c6fc9b944588934061103674.md) | 158 | `result-track:c6fc9b944588934061103674f5835bf9d23ef1082fa5d9667ab094c72f438097` |
| 13 | `theorem` | [rank_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-subsingleton--27bb359a21464ddefe7ad89e.md) | 174 | `result-track:27bb359a21464ddefe7ad89e1c91113ce9ded540ae231003c762a90529d46b4f` |
| 14 | `theorem` | [Module.one_le_rank_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/module-one-le-rank-iff--c2b5093b0476b7837d00b1f8.md) | 181 | `result-track:c2b5093b0476b7837d00b1f8759b97b9cc6431b20236ecda08ee1d780086871e` |
| 15 | `theorem` | [Module.rank_eq_zero_of_not_faithfulSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/module-rank-eq-zero-of-not-faithfulsmul--4a3163e0e339be1bebd78b95.md) | 187 | `result-track:4a3163e0e339be1bebd78b95d86e8b90ee1543ffff310bd41b60b8c5a1009fd7` |
| 16 | `theorem` | [lift_rank_le_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-le-of-injective-injective--68554100d0062b79974d0b0d.md) | 200 | `result-track:68554100d0062b79974d0b0d9800284d7312b045846be3c7a2f67204f7be2519` |
| 17 | `theorem` | [lift_rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-le-of-surjective-injective--bad3dd78bb21f3ec4534221d.md) | 213 | `result-track:bad3dd78bb21f3ec4534221d3739ac9b9adc7b38efd6ec136e20c4c029ee5982` |
| 18 | `theorem` | [lift_rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-eq-of-equiv-equiv--6cd373a736673402c77dd723.md) | 226 | `result-track:6cd373a736673402c77dd72337161e9096aad776345b4bf042bbb9e72c008937` |
| 19 | `theorem` | [rank_le_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-le-of-injective-injective--870ae0ac39ae83d5bc34656e.md) | 238 | `result-track:870ae0ac39ae83d5bc34656ee4483e8eff4aebf60dc4ef6ed52e9a5e519869c0` |
| 20 | `theorem` | [rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-le-of-surjective-injective--63581599f8de52f271343fdd.md) | 245 | `result-track:63581599f8de52f271343fdde5719a32fa20a9c8c38afb75adb2cd2704d7dfd7` |
| 21 | `theorem` | [rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-eq-of-equiv-equiv--2544fe4ddedfbc2a84b15058.md) | 252 | `result-track:2544fe4ddedfbc2a84b15058043ad43e0552e83501d65fdb1f8e8a1616835bbd` |
| 22 | `theorem` | [CommSemiring.rank_self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/commsemiring-rank-self--84eaa509a5592b0278067882.md) | 265 | `result-track:84eaa509a5592b02780678827d4658e96a4085a5a234016cb35df4cfe27310d4` |
| 23 | `theorem` | [lift_rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-le-of-injective-injective--9a20f634a1d154f5479fbf9b.md) | 284 | `result-track:9a20f634a1d154f5479fbf9b992b68023b86cec0cf0130cd020a9b3a0d50b5ee` |
| 24 | `theorem` | [rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-le-of-injective-injective--ccf2f95ae81021a7e4bb7959.md) | 295 | `result-track:ccf2f95ae81021a7e4bb7959153f902d60c074d540de4fbe8e40bedf28a77f35` |
| 25 | `theorem` | [lift_rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-le-of-injective-injective--7b17ea2b52e965411f3b0df7.md) | 311 | `result-track:7b17ea2b52e965411f3b0df756b3ec46a2c3ae5f090e0adadcc32c7aa044d1c9` |
| 26 | `theorem` | [lift_rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-le-of-surjective-injective--b1c673ffceb6bf079ead49a3.md) | 323 | `result-track:b1c673ffceb6bf079ead49a34361d8d106848b2112cf6f9b062be7894f86f18c` |
| 27 | `theorem` | [lift_rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-eq-of-equiv-equiv--e06773191dc459ab8c42399e.md) | 335 | `result-track:e06773191dc459ab8c42399ee5f4f8b4694b301c0ea43452b796bf20880716e5` |
| 28 | `theorem` | [rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-le-of-injective-injective--322ec0cec37741b76a699167.md) | 346 | `result-track:322ec0cec37741b76a699167ecc14499e830708d86f0e4fae53a0dd1ef556964` |
| 29 | `theorem` | [rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-le-of-surjective-injective--dd4530d19e897f3b2314b0c8.md) | 353 | `result-track:dd4530d19e897f3b2314b0c801c8ae79b31bde367365916498c7498c4470a353` |
| 30 | `theorem` | [rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-eq-of-equiv-equiv--9638aa05d74c18d708c0584f.md) | 360 | `result-track:9638aa05d74c18d708c0584f894e424144761613f51ea802575ecc6759a6052b` |
| 31 | `theorem` | [LinearMap.lift_rank_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/linearmap-lift-rank-le-of-injective--04cb83f4061639934164412a.md) | 375 | `result-track:04cb83f4061639934164412ae3cad01c4fdbdf15b2e90d3a72a8eb21149f50b7` |
| 32 | `theorem` | [LinearMap.rank_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/linearmap-rank-le-of-injective--f9a73ea36a0d57e364cf12af.md) | 379 | `result-track:f9a73ea36a0d57e364cf12af9dc4af2e3b414831d804de81a9b002a2c40de21b` |
| 33 | `theorem` | [lift_rank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-range-le--d8c92a6e092d5c73e3a0c128.md) | 386 | `result-track:d8c92a6e092d5c73e3a0c12810d136e9a852615e49c18fb02c6ab09f4fa652c6` |
| 34 | `theorem` | [rank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-range-le--35d56bbe0e678aef46ffff82.md) | 400 | `result-track:35d56bbe0e678aef46ffff826dd90bd3e88ca0c6ccf178a8f788d56583193e98` |
| 35 | `theorem` | [lift_rank_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-map-le--29dc0bb15c0055acde80e2c1.md) | 403 | `result-track:29dc0bb15c0055acde80e2c119d8120035bd276b829d24aa8a706e74b3331104` |
| 36 | `theorem` | [rank_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-map-le--547aacf36ce1f0b7d3d35bfc.md) | 408 | `result-track:547aacf36ce1f0b7d3d35bfcc1e3a87522cde51c80e2de7f41f5847f5ef2e7a4` |
| 37 | `theorem` | [rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-map-eq--ccd5afb51e01df3fee5354be.md) | 411 | `result-track:ccd5afb51e01df3fee5354be560e1e5c22fd2c7d742c80bc4f6b24a22be5e513` |
| 38 | `lemma` | [Submodule.rank_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/submodule-rank-mono--2f7e0869a73b1ed1817741fc.md) | 416 | `result-track:2f7e0869a73b1ed1817741fca16da5b2f27c28313227f82d295b5229ff303de9` |
| 39 | `theorem` | [LinearEquiv.lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/linearequiv-lift-rank-eq--44aacbc0151671d5eb960e56.md) | 422 | `result-track:44aacbc0151671d5eb960e561f176fb6e1725370d6a5d504ca5ddf6db1269073` |
| 40 | `theorem` | [LinearEquiv.rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/linearequiv-rank-eq--d4335120c3d05a5436520182.md) | 429 | `result-track:d4335120c3d05a54365201820074a14fe8648474272956e6a621309d851a619f` |
| 41 | `theorem` | [lift_rank_range_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/lift-rank-range-of-injective--a4ef5c2f4a082c12ff1ae8eb.md) | 432 | `result-track:a4ef5c2f4a082c12ff1ae8eb06e4be977a3dd9eb2bdcd22eae6131f5d2d03742` |
| 42 | `theorem` | [rank_range_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-range-of-injective--31c37ed9d2a08839c2b54f01.md) | 436 | `result-track:31c37ed9d2a08839c2b54f01cdf01fd1166afcbfb0a32f2b8c3f2218b3abfccf` |
| 43 | `theorem` | [LinearEquiv.lift_rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/linearequiv-lift-rank-map-eq--3e81dbc70121fd832f271521.md) | 440 | `result-track:3e81dbc70121fd832f2715212db6f4375ef9de94461cf442974824313be47c30` |
| 44 | `theorem` | [LinearEquiv.rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/linearequiv-rank-map-eq--81a8a5cc98594b607e8f1243.md) | 445 | `result-track:81a8a5cc98594b607e8f1243dc33979c1153b04d583b21b02504a30efda3618b` |
| 45 | `theorem` | [rank_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-top--306e06d5b4f2e2929bea7354.md) | 452 | `result-track:306e06d5b4f2e2929bea73542c3832f514632111cd2f0a76f06021c94acb66c8` |
| 46 | `theorem` | [rank_range_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-range-of-surjective--1e346eda9c6895c5e9b60201.md) | 457 | `result-track:1e346eda9c6895c5e9b60201545e310e53ede254414b0b3faac965e0218df246` |
| 47 | `theorem` | [Submodule.rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/submodule-rank-le--8c1db03db42e23a3c16fdfce.md) | 461 | `result-track:8c1db03db42e23a3c16fdfce522314e9bca80dde73c34fa5330d5efbefac01ad` |
| 48 | `theorem` | [LinearMap.lift_rank_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/linearmap-lift-rank-le-of-surjective--2a852a8d8d0d1643277dffa9.md) | 465 | `result-track:2a852a8d8d0d1643277dffa9f31aa20bdfa10cc03b956e6295b29b531ee21bdf` |
| 49 | `theorem` | [LinearMap.rank_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/linearmap-rank-le-of-surjective--f1c58617deb32e722c3a8a3a.md) | 470 | `result-track:f1c58617deb32e722c3a8a3a58ab31d58148c0c08a07ff1b0a11f9bfc4b01a62` |
| 50 | `lemma` | [rank_le_of_isSMulRegular](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/rank-le-of-issmulregular--ddd261816edeb6bf4ddda7f3.md) | 475 | `result-track:ddd261816edeb6bf4ddda7f3ad0f9c928dbd7ca5bc2c2ab5f11fc15501efadbf` |
| 51 | `lemma` | [Module.rank_top_le_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/module-rank-top-le-rank-of-isscalartower--f1550a2c0ff23dd0a2b6baea.md) | 483 | `result-track:f1550a2c0ff23dd0a2b6baeaf9c3bcfc073903d2eb0b5f73e0a5ffc505fc6935` |
| 52 | `lemma` | [Module.lift_rank_bot_le_lift_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/module-lift-rank-bot-le-lift-rank-of-isscalartower--9158d26c38fd8105fed748e7.md) | 491 | `result-track:9158d26c38fd8105fed748e70b9652788e7cf5fea8f300f3a0505cebbaf0f55c` |
| 53 | `lemma` | [Module.rank_bot_le_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/declarations/module-rank-bot-le-rank-of-isscalartower--d6ab3d0502581021276c3ae4.md) | 499 | `result-track:d6ab3d0502581021276c3ae4208ba356e80b5a4d57ab326666eb55454e0dbbfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
