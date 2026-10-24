# Verification target: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1399d28523384d9504b8b07ed2f3a11d7d650c0f",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1399d28523384d9504b8b07ed2f3a11d7d650c0f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean.json)

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
| 1 | `def` | [pointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwiseneg--2b53f672a3ebfe68eaff7058.md) | 76 | `declaration-track:2b53f672a3ebfe68eaff705883ce2556a1cf11c12993aca2a78158164e10bbd3` |
| 2 | `theorem` | [coe_set_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/coe-set-neg--caf7bbe2a70f761d31a05cb6.md) | 84 | `result-track:caf7bbe2a70f761d31a05cb679ec7bc69be278b95f7be025a120fc05dd08bb5e` |
| 3 | `theorem` | [neg_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-toaddsubmonoid--525120601aa45cf99bf4f97c.md) | 88 | `result-track:525120601aa45cf99bf4f97c9f771c97a76f9f11f305716c141ea1f7172785b5` |
| 4 | `theorem` | [mem_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/mem-neg--24fa209a2ab81666ae07fc43.md) | 92 | `result-track:24fa209a2ab81666ae07fc4314d60dba00d28fbd5d26d43765e5fbd754c8f450` |
| 5 | `def` | [involutivePointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/involutivepointwiseneg--17086323e12936f933de8b19.md) | 99 | `declaration-track:17086323e12936f933de8b19d89a3d880f4937a45426376deacc2c69e88920b1` |
| 6 | `theorem` | [neg_le_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-le-neg--1f9aac439f3f9f506f891764.md) | 105 | `result-track:1f9aac439f3f9f506f891764deebf7fdacb3f8498a27dd94058eb5376f635972` |
| 7 | `theorem` | [neg_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-le--848f7256a210fda628407259.md) | 108 | `result-track:848f7256a210fda6284072598e3247cae1fa18a30bbd1770999dadddf54f6a52` |
| 8 | `theorem` | [neg_eq_self_iff_neg_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-eq-self-iff-neg-le--1ba74e959be4a92bc8f5d6bd.md) | 111 | `result-track:1ba74e959be4a92bc8f5d6bdadd01b84fc8c32e1b7c38950b4bd3ab6ade89fa7` |
| 9 | `def` | [negOrderIso](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/negorderiso--3ec70c6a47831b5810f4b6a5.md) | 115 | `declaration-track:3ec70c6a47831b5810f4b6a5c86137e843cc03d941f69db2c37552bc1b271182` |
| 10 | `theorem` | [neg_inf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-inf--80c1cee68d894af726bec2b7.md) | 120 | `result-track:80c1cee68d894af726bec2b746ded78f7322fad13e8b3cf5b7c274deccec87c1` |
| 11 | `theorem` | [neg_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-sup--229ebc89b460dc4b45ab6185.md) | 123 | `result-track:229ebc89b460dc4b45ab6185aecdac18f3913ca9e9a407451c94d7b984863a19` |
| 12 | `theorem` | [neg_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-bot--56c84f6e58a8c1cb7945eb8c.md) | 127 | `result-track:56c84f6e58a8c1cb7945eb8ccd3041e9fa5be09bb6f398242ba7bed4892f5912` |
| 13 | `theorem` | [neg_top](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-top--f2b79a4d83aa8c273d82bb15.md) | 131 | `result-track:f2b79a4d83aa8c273d82bb15ab1794233ff3881190de855c095337e3e602b38a` |
| 14 | `theorem` | [neg_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-iinf--3fba075666553b517b448f05.md) | 135 | `result-track:3fba075666553b517b448f05084660d94c402a7b89abc9e4b27bdcef5b090696` |
| 15 | `theorem` | [neg_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-isup--4c6ed48d5c3f4871cb8b55ea.md) | 139 | `result-track:4c6ed48d5c3f4871cb8b55eaa7a8171d43268a24aabb0a5ba9d7e8b0f80c098f` |
| 16 | `theorem` | [neg_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-restrictscalars--c4fa5daf5cbf0d8b5f3ee6a6.md) | 144 | `result-track:c4fa5daf5cbf0d8b5f3ee6a64b2be4b43e82792a38f758055c91541805f2eed0` |
| 17 | `theorem` | [neg_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/neg-eq-self--ad7d65bdb5a5b59e8c99c448.md) | 150 | `result-track:ad7d65bdb5a5b59e8c99c448ed72bb179089c485a9ebdd3fdae89965e7f16e00` |
| 18 | `instance` | [pointwiseZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwisezero--686fed36580b13f5c3913384.md) | 157 | `declaration-track:686fed36580b13f5c39133847290fb8a9cbb4a74cafd9221b9f893c2d8846146` |
| 19 | `instance` | [pointwiseAdd](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwiseadd--21467f87696a80930e5e2caa.md) | 160 | `declaration-track:21467f87696a80930e5e2caab85fa24633a238af16f762a9e2ce39a4b6b783fe` |
| 20 | `instance` | [pointwiseAddCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwiseaddcommmonoid--797f28a063998d8c33089745.md) | 163 | `declaration-track:797f28a063998d8c33089745461bd4ba4d27d6a2c5a4f035cdece60f665aee9e` |
| 21 | `theorem` | [add_eq_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/add-eq-sup--1b3342321aae838ebbda8abd.md) | 171 | `result-track:1b3342321aae838ebbda8abd02ad557b4cfccdf067ddc51d81cb6b1672a51d6f` |
| 22 | `theorem` | [zero_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/zero-eq-bot--a8ff307711613cc7b6b343c6.md) | 175 | `result-track:a8ff307711613cc7b6b343c655e3a2aff608961cb7bdcba1c59a0b4eb386d38c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/instance--4f9c130d12773a8aeed2c7b0.md) | 178 | `declaration-track:4f9c130d12773a8aeed2c7b094a39a764e8c53fe73d5cfecf69322706c546004` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/instance--41982736f9935271a16a4a26.md) | 181 | `declaration-track:41982736f9935271a16a4a260b1cde6553068820a2e1d2e1884dcc121d0c4c67` |
| 25 | `def` | [pointwiseDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwisedistribmulaction--049463d6ad82b3da3b9a7b34.md) | 194 | `declaration-track:049463d6ad82b3da3b9a7b34c3c7225e91d92417a79a29541ba3bf8ad4f77486` |
| 26 | `theorem` | [pointwise_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwise-smul-def--b457d5da5778a4c0a29a2356.md) | 206 | `result-track:b457d5da5778a4c0a29a2356d66fac2cdd2c981b37fa07b0eb266a340c2859b0` |
| 27 | `theorem` | [coe_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/coe-pointwise-smul--64f4f0d6ee6a0197449d899c.md) | 210 | `result-track:64f4f0d6ee6a0197449d899c3201aa4c66f32a234b4c358a7227b577d4d8b7ab` |
| 28 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwise-smul-toaddsubmonoid--7a27d10180cb976cc16819f8.md) | 214 | `result-track:7a27d10180cb976cc16819f8d081a1fd0cbeb45069e86bc4ed16383c8718a77e` |
| 29 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwise-smul-toaddsubgroup--a935d3165e48fd2a6f68cd0d.md) | 219 | `result-track:a935d3165e48fd2a6f68cd0d12be94111d0f6aff08622ae5a163e88d99425f24` |
| 30 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/mem-smul-pointwise-iff-exists--52d1da527e69e84c17dcd234.md) | 224 | `result-track:52d1da527e69e84c17dcd234d2fe1f6f4744ac24842e068a9362479f6e25f5e5` |
| 31 | `theorem` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/smul-mem-pointwise-smul--728a8beb22ec66689b515b68.md) | 228 | `result-track:728a8beb22ec66689b515b684bb4cc02e6763defec84785b0fdbc6305684f742` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/instance--2e83ad09de7b0bf1789ead2e.md) | 231 | `declaration-track:2e83ad09de7b0bf1789ead2ebe1ccef2ee078378d6558ba1f589d776f84b9fc5` |
| 33 | `theorem` | [smul_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/smul-bot--18eafdd566dda0ad66946168.md) | 236 | `result-track:18eafdd566dda0ad66946168a1a577267a07480dcb48e3c5723c7310ab161f56` |
| 34 | `theorem` | [smul_sup'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/smul-sup--1440ee276c587dfc0e78a870.md) | 240 | `result-track:1440ee276c587dfc0e78a870bba6e6e4b77472a42819ce855665868b09eb12e3` |
| 35 | `theorem` | [smul_iSup'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/smul-isup--0df5c1c13e9115eae7961b42.md) | 244 | `result-track:0df5c1c13e9115eae7961b4211fa03733cc76f59874399606be8236225ba0d1a` |
| 36 | `instance` | [pointwiseCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwisecentralscalar--09334b8c7b81fb4c4c0a00a9.md) | 248 | `declaration-track:09334b8c7b81fb4c4c0a00a9dfce6e4420be6d3a47f1c4e8cd11737acb571af2` |
| 37 | `theorem` | [smul_le_self_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/smul-le-self-of-tower--482b1a041472cec253a12260.md) | 253 | `result-track:482b1a041472cec253a12260082de8e790134f36f1e6388bcc04d09d9b1f53f3` |
| 38 | `theorem` | [smul_eq_self_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/smul-eq-self-of-isunit--d4f70a76c830cd4198e5dfe1.md) | 258 | `result-track:d4f70a76c830cd4198e5dfe16ed96f4a64ea451eddf01836ade7521c780a535d` |
| 39 | `theorem` | [smul_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/smul-eq-self--d0497d4ee4ed9e7420f65530.md) | 263 | `result-track:d0497d4ee4ed9e7420f655305565960591a4ff3a6b81c58c52d8577098167d1b` |
| 40 | `def` | [pointwiseMulActionWithZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwisemulactionwithzero--46a9d1bb86beffd66a8d59a7.md) | 280 | `declaration-track:46a9d1bb86beffd66a8d59a7ebe3d42098f084835dd9acda443763c9d68b7808` |
| 41 | `def` | [pointwiseSetSMul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/pointwisesetsmul--df6a024f4ba07bedb90ac37d.md) | 326 | `declaration-track:df6a024f4ba07bedb90ac37d23b891f56ec02c3b2103b0b64a33cf780fa4bb85` |
| 42 | `lemma` | [mem_set_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/mem-set-smul-def--cc4ac3602d974c63ab6725e2.md) | 333 | `result-track:cc4ac3602d974c63ab6725e29ea09eaa968363cb01d746db5c11c85312beb8a0` |
| 43 | `lemma` | [mem_set_smul_of_mem_mem](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/mem-set-smul-of-mem-mem--e5a6ab9eab9753ca1311cdd8.md) | 339 | `result-track:e5a6ab9eab9753ca1311cdd854d4062d9a470ceb8aeaed2183e9e90c417c6877` |
| 44 | `lemma` | [set_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/set-smul-le--131814e2f1e855da43fcae6f.md) | 344 | `result-track:131814e2f1e855da43fcae6f108f91e73d100d51187ce7940e1b8cc11c153aa3` |
| 45 | `lemma` | [set_smul_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/set-smul-le-iff--3c1dd7b9122b6b5ecef5236d.md) | 349 | `result-track:3c1dd7b9122b6b5ecef5236df9a6b3abf13ebc3b1d90bfd4eb5ea510b3141edf` |
| 46 | `lemma` | [set_smul_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/set-smul-eq-of-le--700c3ece0b22fc747ea96d24.md) | 357 | `result-track:700c3ece0b22fc747ea96d24af967f7f9fcfd23fd69115b439c956820960f4a4` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/instance--703ce5b658d7b4733b951f08.md) | 363 | `declaration-track:703ce5b658d7b4733b951f0817362d4fac1c3edae4c96f306612a8b50fdff082` |
| 48 | `lemma` | [set_smul_mono_left](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/set-smul-mono-left--f186b06fc626cc3e58361780.md) | 367 | `result-track:f186b06fc626cc3e58361780e0091da0a37852b3e6c7b43557ef2d33fe4e9b97` |
| 49 | `lemma` | [set_smul_le_of_le_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/set-smul-le-of-le-le--36c1f5c7239056ff3857e6da.md) | 372 | `result-track:36c1f5c7239056ff3857e6da50a31675b788ff232951dd3e62afabae2044f5fd` |
| 50 | `lemma` | [set_smul_eq_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/set-smul-eq-isup--2882a1a58da3f91495060bab.md) | 376 | `result-track:2882a1a58da3f91495060babb9cec2336f025676d5ef5ba68e4de66c6920ce30` |
| 51 | `lemma` | [set_smul_inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/set-smul-inductionon--98801bf840db864d3335ce13.md) | 395 | `result-track:98801bf840db864d3335ce13d846407954a6f04d442ace876f5533e0ddc8d381` |
| 52 | `lemma` | [empty_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/empty-set-smul--da241a1e71c554af114b4a16.md) | 414 | `result-track:da241a1e71c554af114b4a16e8d6a4548b581e0160683ad10c780b3718646d25` |
| 53 | `lemma` | [set_smul_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/set-smul-bot--90382fd832364265842d5fad.md) | 422 | `result-track:90382fd832364265842d5fadaecd3edf74bce718e09cbbc15541c36ce94779ac` |
| 54 | `lemma` | [singleton_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/singleton-set-smul--907ae8ec5d979e95f9f40215.md) | 425 | `result-track:907ae8ec5d979e95f9f40215cbb8ade5099c9e0ba2bf5701aefe09ae314d4c10` |
| 55 | `lemma` | [mem_singleton_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/mem-singleton-set-smul--39964414fa438b4662014870.md) | 432 | `result-track:39964414fa438b4662014870653600e2dbcc83723d5ad4399f5a59180c31caa5` |
| 56 | `lemma` | [smul_inductionOn_pointwise](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/smul-inductionon-pointwise--7caa9102300df1c44fe70661.md) | 448 | `result-track:7caa9102300df1c44fe7066181e0bb6216072c9ebc9ece63f0ba0d7da5d14e64` |
| 57 | `lemma` | [sup_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/sup-set-smul--cb4c65d5627a898d366c04a1.md) | 464 | `result-track:cb4c65d5627a898d366c04a11468d067b062d1ab8b1af432038a8826ee9f0300` |
| 58 | `lemma` | [stabilizer_coe](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/stabilizer-coe--d4624f42db67d1abeeab0a7a.md) | 482 | `result-track:d4624f42db67d1abeeab0a7ad686714149f4c1bc90b1b50ad9151e81f48aa865` |
| 59 | `theorem` | [mem_stabilizer_submodule_iff_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/declarations/mem-stabilizer-submodule-iff-map-eq--1fcb82a2e370e717566e2ae4.md) | 488 | `result-track:1fcb82a2e370e717566e2ae4ee43ad1b32f33577fc9f70a8f0aacd183b88b6dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
