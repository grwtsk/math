# Verification target: GRWTSK.Algebra.LinearAlgebra.G2.Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b94f8da98fba941335109439534b52b3a154c78c",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b94f8da98fba941335109439534b52b3a154c78c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Finite.Lemmas` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EmbeddedG2](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/embeddedg2--50f7e5c71f48ecb5e317c2b2.md) | 55 | `declaration-track:50f7e5c71f48ecb5e317c2b2037d62413da84fd80448a4bbd24f3f9d630a671a` |
| 2 | `class` | [IsG2](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/isg2--039bef9d2fb356b56cd7e18f.md) | 63 | `declaration-track:039bef9d2fb356b56cd7e18fd54f7bb3b11394b302399914e32b7d22a6e8ea48` |
| 3 | `class` | [IsNotG2](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/isnotg2--13541d3b36ac78459e9a6120.md) | 68 | `declaration-track:13541d3b36ac78459e9a61204f394f1b793ec6ad4803ed985bb7cdd3e9512758` |
| 4 | `lemma` | [isG2_iff](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/isg2-iff--266847928aa5274725d11097.md) | 75 | `result-track:266847928aa5274725d110973926781df211a8c49bef5ca2fc54cae1b22d56fb` |
| 5 | `lemma` | [isNotG2_iff](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/isnotg2-iff--57fa6ebfcec6a108cc9590f4.md) | 79 | `result-track:57fa6ebfcec6a108cc9590f4bbf768d14b85726ba5d53a77d734648f672bef0d` |
| 6 | `lemma` | [not_isG2_iff_isNotG2](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/not-isg2-iff-isnotg2--0001ca782efeafdfea8a294e.md) | 86 | `result-track:0001ca782efeafdfea8a294ed2008efe2d6f347bd24770544040c949d25a9c48` |
| 7 | `lemma` | [IsG2.pairingIn_mem_zero_one_three](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/isg2-pairingin-mem-zero-one-three--c4d6250af074fdfa8b22c5f0.md) | 96 | `result-track:c4d6250af074fdfa8b22c5f03f6b5fed43bf7b370ed309183314c860639e2321` |
| 8 | `def` | [ofPairingInThree](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/ofpairinginthree--df1715096bdb79cd0c5b18c6.md) | 120 | `declaration-track:df1715096bdb79cd0c5b18c65a39db29035b0b18d3b825790e8f21a1829cf9de` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/instance--050c46026d75d38da58aa029.md) | 130 | `declaration-track:050c46026d75d38da58aa02938a542f84ed7d730036222cc1b106e058c5cb096` |
| 10 | `lemma` | [pairing_long_short](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairing-long-short--4714cdf8ac978a08791454b8.md) | 134 | `result-track:4714cdf8ac978a08791454b86253da3e4201f18161a5c58aaab59b5dac9f444b` |
| 11 | `def` | [shortAddLong](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/shortaddlong--e4040186b543d509b58ff9af.md) | 139 | `declaration-track:e4040186b543d509b58ff9afe4c8a5bc31fecafedd5ccfcb0a60f9ae04607275` |
| 12 | `def` | [twoShortAddLong](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/twoshortaddlong--fb916a68e5093f3d572cbfe2.md) | 142 | `declaration-track:fb916a68e5093f3d572cbfe2d7fca2d0262247c42d35d5254a64dcfa829bf028` |
| 13 | `def` | [threeShortAddLong](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/threeshortaddlong--4056ab60be5e56c421e50037.md) | 145 | `declaration-track:4056ab60be5e56c421e50037cb0b425a1f95b9ffc5f263c3b474cd4967ac7b82` |
| 14 | `def` | [threeShortAddTwoLong](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/threeshortaddtwolong--c0a400e82f4b95945ae415ef.md) | 148 | `declaration-track:c0a400e82f4b95945ae415efd941f14c7cde5c65872781d89b802ba545d83fc3` |
| 15 | `abbrev` | [shortRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/shortroot--c4a6d26cd39e084ab8662983.md) | 151 | `declaration-track:c4a6d26cd39e084ab866298380f9d132da595352bbb9f95fe9c8ae22b08a1f80` |
| 16 | `abbrev` | [longRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/longroot--6bef37c8cb1861951632f133.md) | 154 | `declaration-track:6bef37c8cb1861951632f133c04ed1db2a4ab3ba6a484acba3d5bd07370ab475` |
| 17 | `abbrev` | [shortAddLongRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/shortaddlongroot--ee315ac688d4c45ca58f4b2a.md) | 157 | `declaration-track:ee315ac688d4c45ca58f4b2a96c1c72d1088b6cd758facbce88f61b50ac8e435` |
| 18 | `abbrev` | [twoShortAddLongRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/twoshortaddlongroot--95c85007a21768fcdaf5ba4a.md) | 160 | `declaration-track:95c85007a21768fcdaf5ba4a7ab07999b180833e1589ddeb22dc3eb9f824233a` |
| 19 | `abbrev` | [threeShortAddLongRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/threeshortaddlongroot--eae01c7bbc06a05e856381d3.md) | 163 | `declaration-track:eae01c7bbc06a05e856381d3ae102c51cd6e40437d196274e8d8bea89fd52649` |
| 20 | `abbrev` | [threeShortAddTwoLongRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/threeshortaddtwolongroot--4afef6056b45a4522e28223d.md) | 166 | `declaration-track:4afef6056b45a4522e28223da7ccf9c7b72532e82ddbbfc01cde5488bb1331cb` |
| 21 | `abbrev` | [allRoots](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/allroots--d5717ceb61d386946c1013d8.md) | 169 | `declaration-track:d5717ceb61d386946c1013d8da1b8e33e28a03d15e359a6be66c144a4d78d353` |
| 22 | `lemma` | [allRoots_subset_range_root](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/allroots-subset-range-root--5906e95e097c0a9702ddc751.md) | 177 | `result-track:5906e95e097c0a9702ddc7510998fed6cf9a2be89765470b05e58d32add47b6f` |
| 23 | `lemma` | [pairingIn_short_long](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairingin-short-long--6fb1d2764aa1ac53b1da015c.md) | 187 | `result-track:6fb1d2764aa1ac53b1da015c7c35df8cf8c3c7a56c987be1c894eb86f328f3af` |
| 24 | `lemma` | [pairing_short_long](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairing-short-long--af490a3f3f66879805e02b73.md) | 194 | `result-track:af490a3f3f66879805e02b73f1d400e3357440126638b74a0a97b92f979fcd79` |
| 25 | `lemma` | [shortAddLongRoot_eq](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/shortaddlongroot-eq--f3c9bed32cd30fec8f671b7f.md) | 199 | `result-track:f3c9bed32cd30fec8f671b7fb23445d0e6830b46f5c768866656ce6250e96fcf` |
| 26 | `lemma` | [twoShortAddLongRoot_eq](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/twoshortaddlongroot-eq--116e90e4476c86689c988a0b.md) | 203 | `result-track:116e90e4476c86689c988a0b98b5c5784292bceb37c7e27e161399658f9a0bba` |
| 27 | `lemma` | [threeShortAddLongRoot_eq](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/threeshortaddlongroot-eq--22b85494985db36ed21ef462.md) | 209 | `result-track:22b85494985db36ed21ef46284038e1c0a9a2ecb5ef5bc5cdc9f14e3b04f70ad` |
| 28 | `lemma` | [threeShortAddTwoLongRoot_eq](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/threeshortaddtwolongroot-eq--04e02cc814e2d312531943df.md) | 214 | `result-track:04e02cc814e2d312531943dfac4b8ddc135de7f59e67e0884ed009929f52f462` |
| 29 | `lemma` | [linearIndependent_short_long](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/linearindependent-short-long--b2621e330248a8d53ff9d762.md) | 219 | `result-track:b2621e330248a8d53ff9d762e85c8dc53b3acf003a4f9ecf4650e8f3a75ec128` |
| 30 | `abbrev` | [allCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/allcoeffs--9b7e1fdaa0274692c0632636.md) | 225 | `declaration-track:9b7e1fdaa0274692c0632636f209140d755494cedd1eaf534c9d35fd5d3edc46` |
| 31 | `lemma` | [allRoots_eq_map_allCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/allroots-eq-map-allcoeffs--33a55019c6f50d15d67b7cef.md) | 229 | `result-track:33a55019c6f50d15d67b7ceffea4609afaeca975decf1183cac47e0257cef666` |
| 32 | `lemma` | [allRoots_nodup](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/allroots-nodup--091a99b2e39a5ea16c5869e0.md) | 235 | `result-track:091a99b2e39a5ea16c5869e003efa99c864d28ef0a983532ae91dbe4c76ef0f9` |
| 33 | `lemma` | [mem_span_of_mem_allRoots](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/mem-span-of-mem-allroots--52f223f99cee7acd60473c98.md) | 242 | `result-track:52f223f99cee7acd60473c984a101b71f25e1a6ba6ea40236875caabdc9ffdcb` |
| 34 | `lemma` | [long_eq_three_mul_short](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/long-eq-three-mul-short--4a560cd01db9817f139c8820.md) | 254 | `result-track:4a560cd01db9817f139c88202bf0f4592c030866b287f150ed187249493adbc0` |
| 35 | `lemma` | [shortAddLongRoot_shortRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/shortaddlongroot-shortroot--c8522e622780473a01e16f30.md) | 261 | `result-track:c8522e622780473a01e16f304fc2795d991bd01c7894f8315d49aa4d24e6c276` |
| 36 | `lemma` | [twoShortAddLongRoot_shortRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/twoshortaddlongroot-shortroot--00651589a67fd64a586d125c.md) | 266 | `result-track:00651589a67fd64a586d125c03f411ea55b0b676d5899047adb5f952fbdd54ec` |
| 37 | `lemma` | [threeShortAddLongRoot_longRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/threeshortaddlongroot-longroot--d001530191a88929463009fb.md) | 272 | `result-track:d001530191a88929463009fb35fc6c9a96c8e61d6ed2b95d07c10237dc8e389a` |
| 38 | `lemma` | [threeShortAddTwoLongRoot_longRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/threeshortaddtwolongroot-longroot--a06eced38a3ffffabf1f276b.md) | 278 | `result-track:a06eced38a3ffffabf1f276b568a131881b58125ff6a5fd491b4453e35a545dc` |
| 39 | `lemma` | [pairingIn_shortAddLong_left](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairingin-shortaddlong-left--0ab2196417e45ff09a0237d3.md) | 289 | `result-track:0ab2196417e45ff09a0237d30c7366349cb569f2af9aed2b5b95f7f56df7b242` |
| 40 | `lemma` | [pairingIn_shortAddLong_right](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairingin-shortaddlong-right--8333b876a2971246a0e8de8b.md) | 299 | `result-track:8333b876a2971246a0e8de8bd50b196193a76574c9ac49012ec6fae47480b729` |
| 41 | `lemma` | [pairingIn_twoShortAddLong_left](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairingin-twoshortaddlong-left--89b69842c0a0769dcc606de5.md) | 319 | `result-track:89b69842c0a0769dcc606de5f35d435a3f756dec7b9384bc8ed21baa1d859598` |
| 42 | `lemma` | [pairingIn_twoShortAddLong_right](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairingin-twoshortaddlong-right--7fa988996a9e18885780d330.md) | 331 | `result-track:7fa988996a9e18885780d3301a27b485c40e11abd4bb0abf0fe77045a3bf5a40` |
| 43 | `lemma` | [pairingIn_threeShortAddLong_left](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairingin-threeshortaddlong-left--6f132ae5f72d04217226625e.md) | 352 | `result-track:6f132ae5f72d04217226625e9182eebb5e6661e752475fd68a6f8141c1e7d953` |
| 44 | `lemma` | [pairingIn_threeShortAddLong_right](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairingin-threeshortaddlong-right--d110ed470dd7f90e0c672dd7.md) | 365 | `result-track:d110ed470dd7f90e0c672dd7e6b51c8f879a33f537e0f83286587213b53596d1` |
| 45 | `lemma` | [pairingIn_threeShortAddTwoLong_left](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairingin-threeshortaddtwolong-left--a9633933e5067700ddc79b82.md) | 387 | `result-track:a9633933e5067700ddc79b82c13312fe5f9ffb8c0bf693b281f4789038dc75ca` |
| 46 | `lemma` | [pairingIn_threeShortAddTwoLong_right](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/pairingin-threeshortaddtwolong-right--ae85a78633b366b9cb9bd3c2.md) | 400 | `result-track:ae85a78633b366b9cb9bd3c2ec99058770657c25192799e6eff231888056809d` |
| 47 | `lemma` | [isOrthogonal_short_and_long_aux](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/isorthogonal-short-and-long-aux--6ecc35b678c8f018569869b1.md) | 424 | `result-track:6ecc35b678c8f018569869b181d873baae30e2e31ca4fe668eca09070e1ad55a` |
| 48 | `lemma` | [isOrthogonal_short_and_long](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/isorthogonal-short-and-long--4c6b02266f12f80482eada15.md) | 445 | `result-track:4c6b02266f12f80482eada158dab791026489d52f51906c6819746876ef40896` |
| 49 | `lemma` | [span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/span-eq-top--e782a5885277880cfb044b38.md) | 464 | `result-track:e782a5885277880cfb044b38b8691ae72f411ab5a05e87abf19cec50fa23a11a` |
| 50 | `lemma` | [mem_allRoots](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/mem-allroots--6c4b1972dccf09fcbe9fca52.md) | 474 | `result-track:6c4b1972dccf09fcbe9fca5259a27ebb6a5788ba5cec16d03d144b27ba183b7d` |
| 51 | `def` | [indexEquivAllRoots](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/indexequivallroots--7bc309f6d899571d55b44f3b.md) | 495 | `declaration-track:7bc309f6d899571d55b44f3bc633e0574583885b584a8c5a7f59cbb08217a5e4` |
| 52 | `lemma` | [card_index_eq_twelve](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/card-index-eq-twelve--23fc29c8d5e2666605115690.md) | 505 | `result-track:23fc29c8d5e2666605115690d2aee6254c6bcd517decb315814b750ff8d9b03f` |
| 53 | `lemma` | [setOf_index_eq_univ](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/declarations/setof-index-eq-univ--976c689eeab62b1804cf4603.md) | 514 | `result-track:976c689eeab62b1804cf4603a46991d2741c8bd6a25b77472237316b37845686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
