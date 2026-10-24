# Verification target: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c0e8f4046ff4a124bc46256904d832dd5de355a",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c0e8f4046ff4a124bc46256904d832dd5de355a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean.json)

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
| 1 | `def` | [pointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwiseneg--f49bdfb486767031a64b5068.md) | 68 | `declaration-track:f49bdfb486767031a64b5068a9e0e7587e651e27223b299ad9e5850a6e8e4a84` |
| 2 | `theorem` | [coe_set_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/coe-set-neg--414c44e598f90dcfaa4785cc.md) | 76 | `result-track:414c44e598f90dcfaa4785cc9527755c8b9fef825986724e83fa66bf4bfec08f` |
| 3 | `theorem` | [neg_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-toaddsubmonoid--9ed0c913d8aca65bb6005db7.md) | 80 | `result-track:9ed0c913d8aca65bb6005db7c8a0d3e0d0667fe7a7a37e0d592e5faeef430b45` |
| 4 | `theorem` | [mem_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/mem-neg--97a4b9120da0687f2cbbda0d.md) | 84 | `result-track:97a4b9120da0687f2cbbda0d6af09707bc8175dc947c988c29b16ec1a01af0f5` |
| 5 | `def` | [involutivePointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/involutivepointwiseneg--ed8dbac9aa8cbc3f0a740870.md) | 91 | `declaration-track:ed8dbac9aa8cbc3f0a74087028d8b388ffaf3faf9fa9fad7742f50a06aa06875` |
| 6 | `theorem` | [neg_le_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-le-neg--6b6763666b288b9cbe898f50.md) | 97 | `result-track:6b6763666b288b9cbe898f50c163b073c46af962d444eae5c3ac1371cddeaefe` |
| 7 | `theorem` | [neg_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-le--947d5eb041fffa638b9b0e7c.md) | 100 | `result-track:947d5eb041fffa638b9b0e7c4561da4f4f436de6b21ec7b5511c8747c55fb54f` |
| 8 | `theorem` | [neg_eq_self_iff_neg_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-eq-self-iff-neg-le--d0db3b28263044b79467d84a.md) | 103 | `result-track:d0db3b28263044b79467d84acf22b3e94ce74d08744f0516f0a0110a5e21cc9c` |
| 9 | `def` | [negOrderIso](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/negorderiso--f275d1b835edd513ec72d553.md) | 107 | `declaration-track:f275d1b835edd513ec72d5530eacad91854ac321a46483fc5a06db0e02072ba0` |
| 10 | `theorem` | [neg_inf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-inf--2cf8700307f7a8119bd63072.md) | 112 | `result-track:2cf8700307f7a8119bd6307266ff727b3f28605504eb6546d37b4fc735a65158` |
| 11 | `theorem` | [neg_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-sup--b03bd5e5e7106749dafd8f09.md) | 115 | `result-track:b03bd5e5e7106749dafd8f09b46941803eec345042a9ac3219279e6c2b4609df` |
| 12 | `theorem` | [neg_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-bot--f96dacb2cf8a5e2f997459d2.md) | 119 | `result-track:f96dacb2cf8a5e2f997459d214a73e280377e2e6f64b908a65bbf8c3033640e7` |
| 13 | `theorem` | [neg_top](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-top--0ca6434b3e39daaf68aa015f.md) | 123 | `result-track:0ca6434b3e39daaf68aa015fdbcd8da6996448fc21b129baea2821564d929f96` |
| 14 | `theorem` | [neg_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-iinf--b8f2302be8a6502c942bc678.md) | 127 | `result-track:b8f2302be8a6502c942bc6789c7ab5f19be03c79861e201ed506d652263f714e` |
| 15 | `theorem` | [neg_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-isup--2ed8e9744bc0ff5ffe7a2f69.md) | 131 | `result-track:2ed8e9744bc0ff5ffe7a2f69d3aaadde858bb28fb535b8967e29ae302e6b8a2e` |
| 16 | `theorem` | [neg_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-restrictscalars--fb08fdc675c8c34476d1f306.md) | 136 | `result-track:fb08fdc675c8c34476d1f3062a690ae7f61d50c4b6be75b421f3fb51de7afcda` |
| 17 | `theorem` | [neg_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/neg-eq-self--663b3d833ac98f21480de452.md) | 142 | `result-track:663b3d833ac98f21480de452a3d1f7511e3ee8410dc37ea70bdc2ed055a4ac52` |
| 18 | `instance` | [pointwiseZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwisezero--b484a259a6b6a9c3d7ec89a8.md) | 149 | `declaration-track:b484a259a6b6a9c3d7ec89a818da24813f0aa844fe5c53b1ae2a06435e2358ac` |
| 19 | `instance` | [pointwiseAdd](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwiseadd--30e046ec5d5826e2e2ab7519.md) | 152 | `declaration-track:30e046ec5d5826e2e2ab7519bffba1c42b78d7283a8973ff29150cc8f49f97b0` |
| 20 | `instance` | [pointwiseAddCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwiseaddcommmonoid--bdf0b0da938bac03215c8b2f.md) | 155 | `declaration-track:bdf0b0da938bac03215c8b2fa363c9f54ff897a4f920ecd8a7a1adebca89316a` |
| 21 | `theorem` | [add_eq_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/add-eq-sup--82d6a73282505f659bf37374.md) | 163 | `result-track:82d6a73282505f659bf373743571315c6ce107416e7c2ee573e0c52eba144692` |
| 22 | `theorem` | [zero_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/zero-eq-bot--09c5cd8161ed458f4dd18a92.md) | 167 | `result-track:09c5cd8161ed458f4dd18a922f316a3f70aec4f059181af485847a9df066da9b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/instance--9a1ac443969c0815533877cf.md) | 170 | `declaration-track:9a1ac443969c0815533877cff632e33dc9c9a78027d7f6d4ce49b9fab46b4c93` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/instance--bc79fbe5f05687ca0b9e54c3.md) | 173 | `declaration-track:bc79fbe5f05687ca0b9e54c3711430c9e38e85b1a30aebdc948c55e2961438d8` |
| 25 | `def` | [pointwiseDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwisedistribmulaction--704e29d41b2db0bca2b8a8cc.md) | 186 | `declaration-track:704e29d41b2db0bca2b8a8cc9321aee8d9b103c5ca69c002c1a62a7ea61ece75` |
| 26 | `theorem` | [pointwise_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwise-smul-def--10d25bc24d3af01d933f2aca.md) | 198 | `result-track:10d25bc24d3af01d933f2aca8f44b274e6519630f743536a401360c01cd99679` |
| 27 | `theorem` | [coe_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/coe-pointwise-smul--8bdde998d86cac3577aa26ba.md) | 202 | `result-track:8bdde998d86cac3577aa26bac7ab0c9bc9e3d77c06fe8f1b90871b3e11aa5a7e` |
| 28 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwise-smul-toaddsubmonoid--94cce806acabed3543250500.md) | 206 | `result-track:94cce806acabed354325050013932e0609045a29ab5fe75bc19bf8678714b1c5` |
| 29 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwise-smul-toaddsubgroup--29e06bb7bbd2cd54a383e8f0.md) | 211 | `result-track:29e06bb7bbd2cd54a383e8f083421307628bec0be1d871d9f10bb78ba768cf71` |
| 30 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/mem-smul-pointwise-iff-exists--194ab0242f707caa219922c5.md) | 216 | `result-track:194ab0242f707caa219922c5aad821ec97fa4fb6c83ba2763f09cb97efcbf048` |
| 31 | `theorem` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/smul-mem-pointwise-smul--da8845399814a789d64a6846.md) | 220 | `result-track:da8845399814a789d64a68463132f35f7334e67656709c2d2508be3cfd434a96` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/instance--f95268473aa75e876e0f0dd7.md) | 223 | `declaration-track:f95268473aa75e876e0f0dd7cb954798579bea469d5e0671ce1e6b47dc61a8b0` |
| 33 | `theorem` | [smul_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/smul-bot--13379fc88ed05d33d1777616.md) | 228 | `result-track:13379fc88ed05d33d17776162fcbe3570bfa176ee9af6f2c53cc3ff97357500a` |
| 34 | `theorem` | [smul_sup'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/smul-sup--919ef5d2afea8456effe36a4.md) | 232 | `result-track:919ef5d2afea8456effe36a499f4e5a18ac078b41df2f54300053b04626386fc` |
| 35 | `theorem` | [smul_iSup'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/smul-isup--0c04e0274d1bc4272bc367b8.md) | 236 | `result-track:0c04e0274d1bc4272bc367b80c15cba69a62b57e687af9cb164d4b9bc5de26c4` |
| 36 | `instance` | [pointwiseCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwisecentralscalar--38b4111e716ad51a334342e7.md) | 240 | `declaration-track:38b4111e716ad51a334342e73f69d986729e457e7ea525fd2bb1ec5e10c60b61` |
| 37 | `theorem` | [smul_le_self_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/smul-le-self-of-tower--4a43b78987bd35b012b0585b.md) | 245 | `result-track:4a43b78987bd35b012b0585b22c5ab80806080e2c657dd8d8014ac44d738c226` |
| 38 | `theorem` | [smul_eq_self_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/smul-eq-self-of-isunit--1f09bdeb666de69db0a334bd.md) | 250 | `result-track:1f09bdeb666de69db0a334bdfc5afa292fe435c8386b5c952bc29b2853733013` |
| 39 | `theorem` | [smul_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/smul-eq-self--bc17202361599bce5e9f874a.md) | 255 | `result-track:bc17202361599bce5e9f874ab7c0fa841db944d6a8a0dd9e98ff080bd6040946` |
| 40 | `def` | [pointwiseMulActionWithZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwisemulactionwithzero--503284e0b2a4023d40d94326.md) | 272 | `declaration-track:503284e0b2a4023d40d94326152895c97608af02dfc7ba2feda0c22bbeb8417e` |
| 41 | `def` | [pointwiseSetSMul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/pointwisesetsmul--a8b02c498f9a47f7f0093b5d.md) | 318 | `declaration-track:a8b02c498f9a47f7f0093b5da93a28df5829130acd668b3f2cfffc186c59c284` |
| 42 | `lemma` | [mem_set_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/mem-set-smul-def--949be2835a754a5aa55635f4.md) | 325 | `result-track:949be2835a754a5aa55635f4b3197d6017ae635986321ee56229bb20199c8355` |
| 43 | `lemma` | [mem_set_smul_of_mem_mem](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/mem-set-smul-of-mem-mem--1e730c38a5049016a4c24f56.md) | 331 | `result-track:1e730c38a5049016a4c24f56d162d8647d70e6c730c6f20e9b5f485e9043f5dd` |
| 44 | `lemma` | [set_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/set-smul-le--2aa38173d847d121c4e142ce.md) | 336 | `result-track:2aa38173d847d121c4e142ce478ded4d7bb250cf2fb67593af689a830853af51` |
| 45 | `lemma` | [set_smul_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/set-smul-le-iff--fa63f3e2c5870dc5ceb9ab90.md) | 341 | `result-track:fa63f3e2c5870dc5ceb9ab90bcec09484d8203f67f0052e07a68ec331c1da5eb` |
| 46 | `lemma` | [set_smul_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/set-smul-eq-of-le--88ead26c69e5f83f7f046cbb.md) | 349 | `result-track:88ead26c69e5f83f7f046cbb032329d45d5cec94e936e36f8f2511ab64f0a3de` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/instance--9e5ebcdff5e955f51e51202f.md) | 355 | `declaration-track:9e5ebcdff5e955f51e51202f61992d4164406bf34b9b4de6213aa1965dbd516b` |
| 48 | `lemma` | [set_smul_mono_left](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/set-smul-mono-left--13dce3da32160693d1783337.md) | 359 | `result-track:13dce3da32160693d17833375f79e36f5de707bc25776f902b53084ac1cab280` |
| 49 | `lemma` | [set_smul_le_of_le_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/set-smul-le-of-le-le--c6ff3d0df974226429da77a8.md) | 364 | `result-track:c6ff3d0df974226429da77a85cc04aefd2f4920f0af2131f8c4b746e8b68ab88` |
| 50 | `lemma` | [set_smul_eq_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/set-smul-eq-isup--64f369f121442f5eebeab082.md) | 368 | `result-track:64f369f121442f5eebeab082c6e55152f8fd2a426261a911aca8dd89d93462bc` |
| 51 | `lemma` | [set_smul_inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/set-smul-inductionon--633d9f6c37707b4629139ad4.md) | 387 | `result-track:633d9f6c37707b4629139ad4efa319d5d996bdbf65db89f0af96c15fe392edbf` |
| 52 | `lemma` | [empty_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/empty-set-smul--48124390ca670f9cd92c9c9e.md) | 406 | `result-track:48124390ca670f9cd92c9c9e8958803e0e6ae30eed54e67fa1ac36e57723af55` |
| 53 | `lemma` | [set_smul_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/set-smul-bot--bc918190b72a78e3531cc354.md) | 414 | `result-track:bc918190b72a78e3531cc354399aebe51b281e5f174afff620d209f0d99c6b20` |
| 54 | `lemma` | [singleton_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/singleton-set-smul--0d945100a0df17ab6ea1a54a.md) | 417 | `result-track:0d945100a0df17ab6ea1a54a2c57c9fe391d64bbfd008f9b81132f740e69da5e` |
| 55 | `lemma` | [mem_singleton_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/mem-singleton-set-smul--49d2ea19bdf8a8104d5355f7.md) | 424 | `result-track:49d2ea19bdf8a8104d5355f7fac126a0ed7a62d2c3cc08dc45f92bdab7759a95` |
| 56 | `lemma` | [smul_inductionOn_pointwise](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/smul-inductionon-pointwise--f09c48b13dca8769311d48e6.md) | 440 | `result-track:f09c48b13dca8769311d48e68dda324220d164f2125f2c25ce0f35c2819fa034` |
| 57 | `lemma` | [sup_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/sup-set-smul--a569c4420b65f39641ddf2a0.md) | 456 | `result-track:a569c4420b65f39641ddf2a0a3efa45e5aa2ee7e193e9f1a1f30ed73fa901977` |
| 58 | `lemma` | [stabilizer_coe](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/stabilizer-coe--cd1ff590641ed115c8faf6f0.md) | 474 | `result-track:cd1ff590641ed115c8faf6f0d738fc0c094f534e066221bc7ce7c9a68f2ab444` |
| 59 | `theorem` | [mem_stabilizer_submodule_iff_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant1eb94746773475e9896704fa3dd923efe659664658913e44625702d19778670d.lean/declarations/mem-stabilizer-submodule-iff-map-eq--3af1d62164815756441c9a08.md) | 480 | `result-track:3af1d62164815756441c9a08d855aa8cf6d532af2e0ac5aeec1f5737cde35cf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
