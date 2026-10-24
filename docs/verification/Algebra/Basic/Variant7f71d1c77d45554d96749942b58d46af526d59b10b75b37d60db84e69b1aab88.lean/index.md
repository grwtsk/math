# Verification target: GRWTSK.Algebra.Basic.Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53041e618e1f678d5e628dd16224abd21b84ebbf",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53041e618e1f678d5e628dd16224abd21b84ebbf`.

Source path: `GRWTSK/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean.json)

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
| 1 | `class` | [IsDiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/isdiscretevaluationring--18124ee161e63c515ca42e24.md) | 66 | `declaration-track:18124ee161e63c515ca42e24d7a8ea71fc1f612929e4f8e2ce069aebbe2f8470` |
| 2 | `theorem` | [not_a_field](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/not-a-field--d8cd77f621e1d93d57e9b3cf.md) | 74 | `result-track:d8cd77f621e1d93d57e9b3cf81dd499353fedd7784ae8bb371e5cdc592c4b4a3` |
| 3 | `theorem` | [not_isField](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/not-isfield--72cec6fc68de8807a3d540d9.md) | 78 | `result-track:72cec6fc68de8807a3d540d9cd2018dde75bf95e3b18e74477a24764b7754365` |
| 4 | `theorem` | [irreducible_of_span_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/irreducible-of-span-eq-maximalideal--da05319ceabc9a0cb9bebb7f.md) | 85 | `result-track:da05319ceabc9a0cb9bebb7f3e35c35f4c5dce6ef0ea3788b141b43872253f89` |
| 5 | `theorem` | [irreducible_iff_uniformizer](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/irreducible-iff-uniformizer--406ab5b451d1e8b8aa5177e1.md) | 101 | `result-track:406ab5b451d1e8b8aa5177e131fd654b835deae3fbe9268061d2bffcae88cd20` |
| 6 | `theorem` | [_root_.GRWTSK.Algebra.IsDiscreteValuationRing.Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.Irreducible.maximalIdeal_eq](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/root-grwtsk-algebra-isdiscretevaluationring-variantc387c5c09535a4a01efe2--02ff40aa16ed2839069beefc.md) | 106 | `result-track:02ff40aa16ed2839069beefc0012dc7c3f399ac95a3add6f930df87a04360468` |
| 7 | `theorem` | [exists_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/exists-irreducible--97498541dc2894d600a300ca.md) | 113 | `result-track:97498541dc2894d600a300ca3b0621e800f3e59392557bf916eaf977acc640b4` |
| 8 | `theorem` | [exists_prime](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/exists-prime--83b0a11b7045a4fdaae02b72.md) | 118 | `result-track:83b0a11b7045a4fdaae02b727b793cf77205c0bb17c6bbe19a13669eb8d55b2d` |
| 9 | `theorem` | [iff_pid_with_one_nonzero_prime](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/iff-pid-with-one-nonzero-prime--c87677dee227029560fc3806.md) | 122 | `result-track:c87677dee227029560fc38060273284a81e6f780acebc59be6d76368f0f34cd5` |
| 10 | `theorem` | [associated_of_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/associated-of-irreducible--09372a75a8a197a364b59eeb.md) | 149 | `result-track:09372a75a8a197a364b59eeb1e11a5489f29e067e5ca61ea5a68da87c8cb6b3b` |
| 11 | `def` | [HasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/hasunitmulpowirreduciblefactorization--c7d9a98f9878923a63decc6a.md) | 157 | `declaration-track:c7d9a98f9878923a63decc6a852a70d7d24f8b0f7b152fa6e7df783da20730f3` |
| 12 | `theorem` | [unique_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/unique-irreducible--83f2af1adee07a56d2515b8f.md) | 164 | `result-track:83f2af1adee07a56d2515b8fd2bf4805013888ef69ec2147f81772496e5b1eff` |
| 13 | `theorem` | [toUniqueFactorizationMonoid](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/touniquefactorizationmonoid--c4776775679ad86e1eafb120.md) | 191 | `result-track:c4776775679ad86e1eafb120710d8ab4e11c9537f565a1df6592fe4a2ac07987` |
| 14 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/of-ufd-of-unique-irreducible--5dfba1380861039fd7d183e2.md) | 221 | `result-track:5dfba1380861039fd7d183e2768d93183968b4b6a37bc43cab92dfd7bbff4b55` |
| 15 | `theorem` | [aux_pid_of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/aux-pid-of-ufd-of-unique-irreducible--eda790132dd6d97acc3c92df.md) | 242 | `result-track:eda790132dd6d97acc3c92dfebe9570da82d8cd34824dbd801edece3d53404dc` |
| 16 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/of-ufd-of-unique-irreducible--43fe8ebf4fae0098469964fd.md) | 278 | `result-track:43fe8ebf4fae0098469964fde66b7b5a085a7bb19c985a6026e1397a2be2c97e` |
| 17 | `theorem` | [ofHasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/ofhasunitmulpowirreduciblefactorization--b7974966f995cbd8fb564884.md) | 301 | `result-track:b7974966f995cbd8fb5648845a3f26aaf7838898be1da3954beced20785d1c0c` |
| 18 | `theorem` | [RingEquivClass.isDiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/ringequivclass-isdiscretevaluationring--0f111dab1ff44d5a798c42c2.md) | 309 | `result-track:0f111dab1ff44d5a798c42c29a3f695f75abe32c3b6434eed19f89d35f6e10b9` |
| 19 | `theorem` | [associated_pow_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/associated-pow-irreducible--85c2f8e7e3d7dcd60d238785.md) | 329 | `result-track:85c2f8e7e3d7dcd60d238785e1d1dcc663f1c525ca7e0d3394f8788b6995092d` |
| 20 | `theorem` | [eq_unit_mul_pow_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/eq-unit-mul-pow-irreducible--a3d055fb5f64d0ba3e2341a0.md) | 346 | `result-track:a3d055fb5f64d0ba3e2341a024c5fb4545389c5f8c70259bad2c0a258584cc1f` |
| 21 | `lemma` | [exists_units_eq_smul_zpow_of_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/exists-units-eq-smul-zpow-of-irreducible--4a2b04d897397dbb4ad9b14a.md) | 357 | `result-track:4a2b04d897397dbb4ad9b14a46c2cb4769d725570acb9d1c86d512d80913ba48` |
| 22 | `theorem` | [ideal_eq_span_pow_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/ideal-eq-span-pow-irreducible--fcd585134781e4e0792edd13.md) | 372 | `result-track:fcd585134781e4e0792edd13bafb94c70e8d7b0a3bb0e5ed5447fe8db0856c39` |
| 23 | `theorem` | [unit_mul_pow_congr_pow](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/unit-mul-pow-congr-pow--d7eb6bc7a5ee5aef5c98c4e4.md) | 382 | `result-track:d7eb6bc7a5ee5aef5c98c4e4bb4d55b01dc8a62f6cec87f167a045dbeec596d7` |
| 24 | `theorem` | [unit_mul_pow_congr_unit](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/unit-mul-pow-congr-unit--183ff6572dd4355122f69359.md) | 397 | `result-track:183ff6572dd4355122f6935912981866d4a46dca22c5e736211f96b5971aac01` |
| 25 | `def` | [addVal](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval--5a7e4216bc5e70d754eb02d1.md) | 412 | `declaration-track:5a7e4216bc5e70d754eb02d14a3a32b4fcc6e8f5e25f0f1110e70435412b3b1c` |
| 26 | `theorem` | [addVal_def](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-def--d1d240822e29c6301a41dcb2.md) | 416 | `result-track:d1d240822e29c6301a41dcb263eb1893a496d7e8adf039766648b04b3a836382` |
| 27 | `theorem` | [addVal_def'](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-def--c65e3d3afb8e4c0076659ce0.md) | 424 | `result-track:c65e3d3afb8e4c0076659ce032dccfbee226d04f2231b8ff5a1dada391af70a2` |
| 28 | `theorem` | [addVal_zero](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-zero--44fb018ed5db899463d2b523.md) | 428 | `result-track:44fb018ed5db899463d2b523c2b84d1b9c059a0335038d565ec565c0a4a01ee8` |
| 29 | `theorem` | [addVal_one](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-one--0680a28138257d8089300514.md) | 431 | `result-track:0680a28138257d8089300514abbd6034f37e40af224ad99b9c1005ebe2c2f9a6` |
| 30 | `theorem` | [addVal_uniformizer](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-uniformizer--5ec46532513f5f563926857e.md) | 435 | `result-track:5ec46532513f5f563926857ee9663dd0f0f1c725df0c6b5cb981bbac92fb847d` |
| 31 | `theorem` | [addVal_mul](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-mul--3903ea5bcb142c524f739412.md) | 439 | `result-track:3903ea5bcb142c524f739412abb79f9dfa1e38644ed8bfc30dfad73f04a0358a` |
| 32 | `theorem` | [addVal_pow](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-pow--30bc48e8f64ee6eb0c69df9e.md) | 443 | `result-track:30bc48e8f64ee6eb0c69df9eca77554df8a21a287630a680cfd6bc4c975521ef` |
| 33 | `theorem` | [_root_.GRWTSK.Algebra.IsDiscreteValuationRing.Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.Irreducible.addVal_pow](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/root-grwtsk-algebra-isdiscretevaluationring-variantc387c5c09535a4a01efe2--0c29e6303b8417fb814e9caf.md) | 446 | `result-track:0c29e6303b8417fb814e9caf752de262046a8581246e4ab5c51607c64fea65f5` |
| 34 | `theorem` | [addVal_eq_top_iff](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-eq-top-iff--e0e2e785a29a8370dac57e59.md) | 450 | `result-track:e0e2e785a29a8370dac57e597ec4fa6d2c2a87df163694b21b9b81167ae96430` |
| 35 | `theorem` | [addVal_le_iff_dvd](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-le-iff-dvd--88c26f750fe67d3afe41a630.md) | 462 | `result-track:88c26f750fe67d3afe41a6301b499c014b5092e7cdb87e7eeddc2bfdd5c5f5c2` |
| 36 | `theorem` | [addVal_add](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-add--e0f3255bb1cefa951176f4f8.md) | 476 | `result-track:e0f3255bb1cefa951176f4f8dd21ffa9a07950fab3d544bbe843e901d9c7c94b` |
| 37 | `lemma` | [addVal_eq_zero_of_unit](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-eq-zero-of-unit--b41fbbebf805ee2cd500d440.md) | 480 | `result-track:b41fbbebf805ee2cd500d4407c5c4db1bc375d1f6654c7bc95c0731965d7fa88` |
| 38 | `lemma` | [addVal_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-eq-zero-iff--464508c9968ad86c846ca2bf.md) | 486 | `result-track:464508c9968ad86c846ca2bf939f64ed5e741c5d6b34808d1759cdff9f718b73` |
| 39 | `lemma` | [addVal_eq_iff_associated](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/addval-eq-iff-associated--f86c1b0b446e3ce41b229769.md) | 494 | `result-track:f86c1b0b446e3ce41b229769dd4b68713e65a7b7f0b4902b257207f5ca6eb87a` |
| 40 | `def` | [idealOrderIsoENat](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/idealorderisoenat--36e5493c65884e98bfc6c439.md) | 520 | `declaration-track:36e5493c65884e98bfc6c439fe95a4740d260d1de8106e5f612fadb03c0d3464` |
| 41 | `theorem` | [idealOrderIsoENat_symm_apply_coe](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/idealorderisoenat-symm-apply-coe--4984adce0a8b128a2880debe.md) | 547 | `result-track:4984adce0a8b128a2880debeefb5381a4b4b2e05d2c07c8246f85f2295913289` |
| 42 | `theorem` | [idealOrderIsoENat_symm_apply_coe_of_irreducible](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/idealorderisoenat-symm-apply-coe-of-irreducible--33dbe3a3872d5a98d8d0bb16.md) | 552 | `result-track:33dbe3a3872d5a98d8d0bb166c56b01592698c365fbf03871ee9c7a710691b09` |
| 43 | `theorem` | [coheight_pow_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/coheight-pow-maximalideal--4c733ffff4323212930e57fd.md) | 556 | `result-track:4c733ffff4323212930e57fdcdaabe80c2ff6b41727f6f3873af3a60b9a2ae88` |
| 44 | `theorem` | [length_quotient_pow_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/length-quotient-pow-maximalideal--9e009364f9f15e337aa4719a.md) | 560 | `result-track:9e009364f9f15e337aa4719a3c25e28f44e65fc92efd584e9c35f2d0227200b4` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/instance--accd7288b3aaa491766943b5.md) | 566 | `declaration-track:accd7288b3aaa491766943b57403a364a6140227712b6c8a2d27630b8e85a69e` |
| 46 | `def` | [quotient](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/quotient--f2c825daf029bff455985dcf.md) | 580 | `declaration-track:f2c825daf029bff455985dcfc64e6f829bedaecd87498dbb2f17b916a7370bab` |
| 47 | `def` | [remainder](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/remainder--0ac7d7b421e65247562e4bed.md) | 586 | `declaration-track:0ac7d7b421e65247562e4beda79d2033ba097fe6f05ede35f6798b380d86ab04` |
| 48 | `def` | [toWithBotNat](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/towithbotnat--d5190d16fe55dac8fc70e990.md) | 590 | `declaration-track:d5190d16fe55dac8fc70e990c195484844f161d9ac98fd3017d6fe77c9a3af78` |
| 49 | `lemma` | [toWithBotNat_zero](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/towithbotnat-zero--400d6ecb2d80b929cc13f2af.md) | 593 | `result-track:400d6ecb2d80b929cc13f2af828b045a593c771c6c47975894362a5789400ba0` |
| 50 | `lemma` | [toWithBotNat_eq_bot_iff](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/towithbotnat-eq-bot-iff--07f001f2607ed9e718ce954f.md) | 596 | `result-track:07f001f2607ed9e718ce954ff5f147663f9aeb3da3f720b36c20e309cd7e15bd` |
| 51 | `lemma` | [bot_lt_toWithBotNat_iff](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/bot-lt-towithbotnat-iff--6efe268ed4baf1033a4594eb.md) | 599 | `result-track:6efe268ed4baf1033a4594ebc72f32ef7373ff6b449271b0d8660aa14cf59a28` |
| 52 | `lemma` | [toWithBotNat_le_toWithBotNat_iff](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/towithbotnat-le-towithbotnat-iff--03d97cf6866a709c738e2189.md) | 602 | `result-track:03d97cf6866a709c738e2189d39c7dd986a3262a564d366b7079549679ded44d` |
| 53 | `lemma` | [dvd_of_toWithBotNat_le_toWithBotNat](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/dvd-of-towithbotnat-le-towithbotnat--826a3848982590ece36baad5.md) | 616 | `result-track:826a3848982590ece36baad572acd36212a8120bf2c63f67e7c04ebb84f2f733` |
| 54 | `def` | [toEuclideanDomain](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/toeuclideandomain--0f86a260fa75d2d6384f2d7a.md) | 628 | `declaration-track:0f86a260fa75d2d6384f2d7acb3a299ef0a26a390f5012593f55893b71f1de43` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/instance--60fccad0875859a2fe4c722f.md) | 662 | `declaration-track:60fccad0875859a2fe4c722f56b49a3aaa38206ff59cd3a113c2206809fb0ec4` |
| 56 | `lemma` | [maximalIdeal_eq_setOfPred_le_v_algebraMap](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/maximalideal-eq-setofpred-le-v-algebramap--ab2de1712f324f61f4e1d359.md) | 672 | `result-track:ab2de1712f324f61f4e1d3598fb7fae31abf6edbf46df405111fb5a3fd9ab819` |
| 57 | `lemma` | [maximalIdeal_pow_eq_setOfPred_le_v_algebraMap_pow](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/maximalideal-pow-eq-setofpred-le-v-algebramap-pow--db496e46320f695dbe776ed6.md) | 684 | `result-track:db496e46320f695dbe776ed6e574b9b520723e405477caeda09f4eb9c58a9540` |
| 58 | `lemma` | [_root_.GRWTSK.Algebra.IsDiscreteValuationRing.Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.Irreducible.maximalIdeal_eq_setOfPred_le_v_coe](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/root-grwtsk-algebra-isdiscretevaluationring-variantc387c5c09535a4a01efe2--c1848fd2b3866e607cfe25a4.md) | 705 | `result-track:c1848fd2b3866e607cfe25a40dc755728e7cf8b3bf7a6722ed17b69538cd3ceb` |
| 59 | `lemma` | [_root_.GRWTSK.Algebra.IsDiscreteValuationRing.Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.Irreducible.maximalIdeal_pow_eq_setOfPred_le_v_coe_pow](../../../../mathematics/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/declarations/root-grwtsk-algebra-isdiscretevaluationring-variantc387c5c09535a4a01efe2--233a621e6621adbcde02d454.md) | 714 | `result-track:233a621e6621adbcde02d454a2e6a37991ca6e4eb29a565b75a97875266cf88c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
