# Verification target: GRWTSK.Algebra.Limits.Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30c05519c65cf4a502b4905f1754936eca0a3eac",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/index.md) · [Full source](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30c05519c65cf4a502b4905f1754936eca0a3eac`.

Source path: `GRWTSK/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean.json)

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
| 1 | `instance` | [semiringObj](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/semiringobj--05fe378bc7ddd113337dec41.md) | 50 | `declaration-track:05fe378bc7ddd113337dec4186e2a0e10790968e7cb0cba0f3a0a5060bc9ea2f` |
| 2 | `def` | [sectionsSubsemiring](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/sectionssubsemiring--12b724f04c2e1d8594de557e.md) | 54 | `declaration-track:12b724f04c2e1d8594de557eeccda8407d34b65de01695b351d2c9b8c035204b` |
| 3 | `instance` | [sectionsSemiring](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/sectionssemiring--8798e256298ad0a98d4fef96.md) | 60 | `declaration-track:8798e256298ad0a98d4fef96b49ade01c1025a336da49a0b98508cd14e71e17c` |
| 4 | `instance` | [limitSemiring](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitsemiring--9e952c9b3bfcff3b6b3306ed.md) | 65 | `declaration-track:9e952c9b3bfcff3b6b3306ed96cb593b53dfcffc9fb7fda29c9bbee716337cf4` |
| 5 | `def` | [limitπRingHom](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limit-ringhom--99294ba4c5ddbf020efcac76.md) | 71 | `declaration-track:99294ba4c5ddbf020efcac76e49dfcb77f0948ebc68c5625d165fe49e91175d2` |
| 6 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitcone--2c3f5143af0536457a8d8074.md) | 91 | `declaration-track:2c3f5143af0536457a8d8074f4d38481cb7eb46ab152ac5c6d36c76cb65530bd` |
| 7 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitconeislimit--6f58257b2db89d4f1315e2cc.md) | 104 | `declaration-track:6f58257b2db89d4f1315e2ccf2cb6246f9b4df5d5497cc76312e0655df320e60` |
| 8 | `instance` | [hasLimit](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimit--e7edb7cd4afebd095f4a10eb.md) | 124 | `declaration-track:e7edb7cd4afebd095f4a10eb76c1d1805785813c5eeb3e58a285aeabd2983be1` |
| 9 | `instance` | [hasLimitsOfShape](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimitsofshape--f4deb355800a4af502faa720.md) | 127 | `declaration-track:f4deb355800a4af502faa720fed28bbe1117b36d23be204229765c285ce0ba8d` |
| 10 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimitsofsize--538dfdd115ac558d166bbd85.md) | 130 | `declaration-track:538dfdd115ac558d166bbd85e0fe40eecc33b6f3d814b602be150d8259f03112` |
| 11 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimits--4847de865cc56bc30b06a682.md) | 133 | `declaration-track:4847de865cc56bc30b06a6824bf9de4912802e6c3a9cea84c538b60de5f1f06d` |
| 12 | `def` | [forget₂AddCommMonPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-addcommmonpreserveslimitsaux--3424f880a3991fbb0dbd809e.md) | 139 | `declaration-track:3424f880a3991fbb0dbd809e7590575248bda644b579f7c8f03f957142944a5c` |
| 13 | `instance` | [forget₂AddCommMon_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-addcommmon-preserveslimitsofsize--79cda7533f2edf7aa9ec4908.md) | 147 | `declaration-track:79cda7533f2edf7aa9ec4908c9d32cfaed7253568684b976d06fc488373ece50` |
| 14 | `instance` | [forget₂AddCommMon_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-addcommmon-preserveslimits--c82299c12b5f6c2c7adc2b76.md) | 154 | `declaration-track:c82299c12b5f6c2c7adc2b76b2bd9344733f4c5b797f771c612f835f10a51000` |
| 15 | `def` | [forget₂MonPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-monpreserveslimitsaux--7d674dd0a37caefbfc2f03e1.md) | 160 | `declaration-track:7d674dd0a37caefbfc2f03e12ba498d5a2cb02c8ce3e1e3600263dd54e6f5c4a` |
| 16 | `instance` | [forget₂Mon_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-mon-preserveslimitsofsize--f25efe98bd1512aac4996561.md) | 168 | `declaration-track:f25efe98bd1512aac4996561bb02b03f1b103afd0c13e5b1b853a17640e6a540` |
| 17 | `instance` | [forget₂Mon_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-mon-preserveslimits--b767a0de027985ccce53b773.md) | 175 | `declaration-track:b767a0de027985ccce53b773855100419766579c8cbb09e805494349f7913335` |
| 18 | `instance` | [forget_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-preserveslimitsofsize--301502517bd5f63c22c75f41.md) | 180 | `declaration-track:301502517bd5f63c22c75f4105658ae53e6e96ec852283da09218397c6d0011f` |
| 19 | `instance` | [forget_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-preserveslimits--6388bdb00b560d8b241107dd.md) | 187 | `declaration-track:6388bdb00b560d8b241107dd9eef3ed9021b66e861fddb74a3452ed0da972274` |
| 20 | `instance` | [commSemiringObj](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/commsemiringobj--3c27a136aec754a92c9f18e7.md) | 196 | `declaration-track:3c27a136aec754a92c9f18e758488883e067ce406a79debcb0ea242512cac50f` |
| 21 | `instance` | [limitCommSemiring](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitcommsemiring--355991b97713aa389d67a058.md) | 202 | `declaration-track:355991b97713aa389d67a058620c00ff9da3df385d7c98a24c81cf0e97a24d79` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/instance--eaaf4183bb6562325147eb06.md) | 214 | `declaration-track:eaaf4183bb6562325147eb062859134055564375c9ee2e813674a5d75baf5429` |
| 23 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitcone--e590500a789ca38dd9fafc18.md) | 240 | `declaration-track:e590500a789ca38dd9fafc18b4c93e29936934f4834f595d426a1881a0a37f15` |
| 24 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitconeislimit--c33f94bc6b46cbb0bd4a87fc.md) | 248 | `declaration-track:c33f94bc6b46cbb0bd4a87fcfc3654219da6548892cddc0d5f9cd0f476e4b179` |
| 25 | `instance` | [hasLimit](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimit--c92f26e60268d74509425524.md) | 252 | `declaration-track:c92f26e60268d74509425524247c81222a53069443fe7730a5abe13321060402` |
| 26 | `instance` | [hasLimitsOfShape](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimitsofshape--037799d7d725bcfd85810ce1.md) | 255 | `declaration-track:037799d7d725bcfd85810ce10a894379775d8fce9314ded142c5e875d0af5b6c` |
| 27 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimitsofsize--4b3254cb7f39d919e48ce118.md) | 258 | `declaration-track:4b3254cb7f39d919e48ce11864736dc4934c8e8d9f55c6495ba1a5a3079b091a` |
| 28 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimits--bc9eaa10211d1a7b26b1ed2a.md) | 260 | `declaration-track:bc9eaa10211d1a7b26b1ed2ac6ec2e7616776f973859c5fce4869c1ccc5c0cfb` |
| 29 | `instance` | [forget₂SemiRing_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-semiring-preserveslimitsofsize--d201ffc8874557cd3d74c2b0.md) | 265 | `declaration-track:d201ffc8874557cd3d74c2b0947b27ab34aa7f1ab077e680c544b6682e8e1c72` |
| 30 | `instance` | [forget₂SemiRing_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-semiring-preserveslimits--632138885b92519c86215d9f.md) | 272 | `declaration-track:632138885b92519c86215d9fe90691887fd8d2bc85f2993127d157a2a9ab9b12` |
| 31 | `instance` | [forget_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-preserveslimitsofsize--7ee94d4252a00bb898ffa813.md) | 279 | `declaration-track:7ee94d4252a00bb898ffa813863cd306d038d82bf81be9b07633aa454bfa6b7f` |
| 32 | `instance` | [forget_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-preserveslimits--5a4e76fb3060c2e25c16a4a1.md) | 286 | `declaration-track:5a4e76fb3060c2e25c16a4a16ed2054c0cad6a542cb02dbde689aeb97c16a0d5` |
| 33 | `instance` | [ringObj](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/ringobj--e33fc506946aa92be98b1554.md) | 295 | `declaration-track:e33fc506946aa92be98b155493b6652bc5a637c17e654bcd2872c0c59cc6d3a8` |
| 34 | `def` | [sectionsSubring](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/sectionssubring--0a9ec829439b02b814885d95.md) | 300 | `declaration-track:0a9ec829439b02b814885d955d1c167c9a95bd09ded63283605b27d5e479d5f6` |
| 35 | `instance` | [limitRing](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitring--6313ca4960e4e781ba349028.md) | 311 | `declaration-track:6313ca4960e4e781ba349028bc71f684f6f5f2b65c5b3b0bec5687a1e663ae4d` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/instance--fb7d6fad3941b03696393fb9.md) | 320 | `declaration-track:fb7d6fad3941b03696393fb99f28f10142f216ec2f12d57dc29b870286e69210` |
| 37 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitcone--f39a83d0c24b404ec95eadb3.md) | 342 | `declaration-track:f39a83d0c24b404ec95eadb3a1ecccaa9c24dee1f30d3d7b10165231b3e80eaa` |
| 38 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitconeislimit--807a769e656e76f2c3796574.md) | 350 | `declaration-track:807a769e656e76f2c37965745ea4eb3c9b312fe13a0a2d92e5e7a2320be65063` |
| 39 | `instance` | [hasLimit](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimit--f2ce4226dda1f7458c794ee5.md) | 354 | `declaration-track:f2ce4226dda1f7458c794ee523b0272f728ed0d7e079af7ee4c96b4f82f86a41` |
| 40 | `instance` | [hasLimitsOfShape](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimitsofshape--bad4dbacd87e196caa776e8a.md) | 360 | `declaration-track:bad4dbacd87e196caa776e8a54a39a7c4cde8b919e026ba0b85569d00e160e41` |
| 41 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimitsofsize--6b66bafb1b29d952c58a375c.md) | 363 | `declaration-track:6b66bafb1b29d952c58a375cff9dbea707ef48c32e5a3e14fba72b5eaded9ac5` |
| 42 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimits--803338763e483c24a9b17221.md) | 365 | `declaration-track:803338763e483c24a9b17221031f80126994e96f86a47aaa9d9ba0e4a72fce79` |
| 43 | `instance` | [forget₂SemiRing_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-semiring-preserveslimitsofsize--f6780b6f80be263a53827524.md) | 370 | `declaration-track:f6780b6f80be263a5382752409730a8e95637d2afe8fed8f26dbd03cbc8b205b` |
| 44 | `instance` | [forget₂SemiRing_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-semiring-preserveslimits--f8c81c03b908cc83a0df540d.md) | 377 | `declaration-track:f8c81c03b908cc83a0df540d4f40bde2884f64fe0702841b3c0512394acc8f5e` |
| 45 | `def` | [forget₂AddCommGroupPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-addcommgrouppreserveslimitsaux--c7f7e7dd94c0cc574108b160.md) | 382 | `declaration-track:c7f7e7dd94c0cc574108b160f996446fe291759e82f48287b54af62087a4ba1c` |
| 46 | `instance` | [forget₂AddCommGroup_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-addcommgroup-preserveslimitsofsize--ab2e70bb3b82e201c6dc225e.md) | 390 | `declaration-track:ab2e70bb3b82e201c6dc225e0c7cb8259befdbd082539c605cb5eae10ac2300d` |
| 47 | `instance` | [forget₂AddCommGroup_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-addcommgroup-preserveslimits--28fd71b85be1d7c2bd9690cb.md) | 397 | `declaration-track:28fd71b85be1d7c2bd9690cb12a878a5cfddecdd8cd2a34cff5a58a9c125704f` |
| 48 | `instance` | [forget_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-preserveslimitsofsize--d1845b12d0667f92c754d95e.md) | 404 | `declaration-track:d1845b12d0667f92c754d95e88421045eaebc1dc4b2e2303f9a7e24c12d05cd0` |
| 49 | `instance` | [forget_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-preserveslimits--fdfbf8bb33040ce394b57da9.md) | 411 | `declaration-track:fdfbf8bb33040ce394b57da9b66a04deb51b82d3ad53637a3584b5c981303ca5` |
| 50 | `instance` | [commRingObj](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/commringobj--173e57f9f95a07ef7ea5833e.md) | 420 | `declaration-track:173e57f9f95a07ef7ea5833e4b00b23e822f643fc9945e9008951b1792d32a2c` |
| 51 | `instance` | [limitCommRing](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitcommring--a7157b5da775e19d5af02ed0.md) | 425 | `declaration-track:a7157b5da775e19d5af02ed09c7e3ce07db71fbee015d5f4959478ed9fb81aba` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/instance--e062e104c1a2ee2205e42175.md) | 436 | `declaration-track:e062e104c1a2ee2205e4217507dea1e5672540d3e795ef78504fc969003a8ca7` |
| 53 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitcone--44038aaee66624e90bb12287.md) | 473 | `declaration-track:44038aaee66624e90bb122877446cafc617435395e2753ddc4b5b41037f428f6` |
| 54 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/limitconeislimit--704ee6be6a44a88943b870c9.md) | 479 | `declaration-track:704ee6be6a44a88943b870c9d6b1382e2e3936f469140010ce078af3a652bcac` |
| 55 | `instance` | [hasLimit](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimit--3e64e7ca0b571877f0a8330f.md) | 483 | `declaration-track:3e64e7ca0b571877f0a8330fab2abd6f1cc59adfee60e51cf1d609b34645b1a5` |
| 56 | `instance` | [hasLimitsOfShape](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimitsofshape--4154497c4a4d48a0af7a6d87.md) | 489 | `declaration-track:4154497c4a4d48a0af7a6d8745920e54be11499cbcef77832cba332176ffce0e` |
| 57 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimitsofsize--7b28779c46832e1954fc9219.md) | 492 | `declaration-track:7b28779c46832e1954fc9219991f9275d4d67b31a3ea4d6a98be9afcd3970c3d` |
| 58 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/haslimits--0e892bc7e69732a3c8d9060f.md) | 494 | `declaration-track:0e892bc7e69732a3c8d9060f5297cb7a7075e3837e8e1862c27ecedfe86d97ca` |
| 59 | `instance` | [forget₂Ring_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-ring-preserveslimitsofsize--559cfe56557a9c5ccaeb5c5a.md) | 500 | `declaration-track:559cfe56557a9c5ccaeb5c5a8e6445f361485288afd689f82a32ea18dc86e5ba` |
| 60 | `instance` | [forget₂Ring_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-ring-preserveslimits--243b9bdc50c544fd5701d6e7.md) | 507 | `declaration-track:243b9bdc50c544fd5701d6e7306188bc5c6b53915942dce347edd74ae1c4567e` |
| 61 | `def` | [forget₂CommSemiRingPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-commsemiringpreserveslimitsaux--eafe10a1a94dc32fddaee5b6.md) | 512 | `declaration-track:eafe10a1a94dc32fddaee5b6c20b270b7e17e927585d8cc90af5de23274e9d3a` |
| 62 | `instance` | [forget₂CommSemiRing_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-commsemiring-preserveslimitsofsize--026b01b02a0228c56737b1eb.md) | 522 | `declaration-track:026b01b02a0228c56737b1ebf04f5efea46413e41fe11e5760b30713ae3313d3` |
| 63 | `instance` | [forget₂CommSemiRing_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-commsemiring-preserveslimits--516899c0edbc414979eb16ef.md) | 529 | `declaration-track:516899c0edbc414979eb16ef8ac6ab3a66785632c59640a46ca8a38feeb228db` |
| 64 | `instance` | [forget_preservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-preserveslimitsofsize--e97e6758d1d42d0cea2da057.md) | 536 | `declaration-track:e97e6758d1d42d0cea2da0577d70e86277db25d12b04df76d121c07e3be6c17f` |
| 65 | `instance` | [forget_preservesLimits](../../../../mathematics/Algebra/Limits/Variantd0d39741ac3f14b48add080894ca62650809fcb0c40bb26f4428b8c70e008d37.lean/declarations/forget-preserveslimits--385b1da5fbb03a3448cfb0b6.md) | 543 | `declaration-track:385b1da5fbb03a3448cfb0b6a21ec7a5ac0f82d99d451a2b4487d1681a8dd274` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
