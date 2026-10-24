# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompProd.Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ead17e0147675af98c5315926e73cc1861800115",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ead17e0147675af98c5315926e73cc1861800115`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MapComap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compProdFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprodfun--73e589478f9090154018e2b8.md) | 75 | `declaration-track:73e589478f9090154018e2b80591d821d008a9f4b41a697b30e6ef6ff0a1a2dd` |
| 2 | `theorem` | [compProdFun_empty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprodfun-empty--1381c4bb4c62f7090a0eb61d.md) | 79 | `result-track:1381c4bb4c62f7090a0eb61d56c99175200f015e4a0bdb9e045955fd15b844f2` |
| 3 | `theorem` | [compProdFun_iUnion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprodfun-iunion--6e2a4cd57961b5d58a2eba13.md) | 84 | `result-track:6e2a4cd57961b5d58a2eba137a8f98890c804db722aa976a24d7e94eb1d7f270` |
| 4 | `theorem` | [compProdFun_tsum_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprodfun-tsum-right--96df552ac43f68c5e137ff57.md) | 111 | `result-track:96df552ac43f68c5e137ff57559b5d5905947bf6c632a328ca434fe55d2b8131` |
| 5 | `theorem` | [compProdFun_tsum_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprodfun-tsum-left--b13094b0c26f8f072c4a1f53.md) | 123 | `result-track:b13094b0c26f8f072c4a1f532688e71a3cbd8b94581254f6f7227e111de06294` |
| 6 | `theorem` | [compProdFun_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprodfun-eq-tsum--b9286b041caf3667256e88e8.md) | 127 | `result-track:b9286b041caf3667256e88e8cec92a74f9f8cbf71d1bbe51d65ef44dc05a7032` |
| 7 | `theorem` | [measurable_compProdFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/measurable-compprodfun--227cb9c95d79854feded8395.md) | 132 | `result-track:227cb9c95d79854feded83953d9cf0a51ebe15ebabf6a450330fec24ad1a65ba` |
| 8 | `def` | [compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod--0b3c2d6dc8fd5c00b72eb963.md) | 150 | `declaration-track:0b3c2d6dc8fd5c00b72eb963a64e081fa905bfa4b07281a1128a1953ec02ee2e` |
| 9 | `theorem` | [compProd_apply_eq_compProdFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-apply-eq-compprodfun--a37b138841f46ce7d7b8f53c.md) | 171 | `result-track:a37b138841f46ce7d7b8f53c5a914905663c1ae706ffb75cced8cc488079c302` |
| 10 | `theorem` | [compProd_of_not_isSFiniteKernel_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-of-not-issfinitekernel-left--0669af900ce98336cd6b57e9.md) | 185 | `result-track:0669af900ce98336cd6b57e9240df030f801e94af636d62808a88ee2ee949000` |
| 11 | `theorem` | [compProd_of_not_isSFiniteKernel_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-of-not-issfinitekernel-right--d168b63524d25f9d11a82650.md) | 192 | `result-track:d168b63524d25f9d11a82650382a33b16bba20cb37a27dce5462155b4671404a` |
| 12 | `theorem` | [compProd_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-apply--f87f3f4b61bc1f46c7676fbf.md) | 198 | `result-track:f87f3f4b61bc1f46c7676fbf773927bed5e117a593e0ed664cfca1d1bc308dac` |
| 13 | `theorem` | [le_compProd_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/le-compprod-apply--9e87bb986624035586d539ec.md) | 203 | `result-track:9e87bb986624035586d539ec359afccc65e6b481cd8c0302fbebe5ead523c2a4` |
| 14 | `lemma` | [compProd_apply_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-apply-univ--7d59a57f7e3a4158c3b7e41e.md) | 215 | `result-track:7d59a57f7e3a4158c3b7e41e7045cc17329975ea848e978430dc6192452495ee` |
| 15 | `lemma` | [compProd_apply_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-apply-prod--be78efe8960ecec44c9f9aa9.md) | 221 | `result-track:be78efe8960ecec44c9f9aa91a7d1fd5729b3406270ea4d55cd6ae43d6beaf36` |
| 16 | `lemma` | [compProd_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-congr--afae619c3dfe2479f0be5685.md) | 229 | `result-track:afae619c3dfe2479f0be5685dc206ff7bd38f568efd786721328b5bf78edfeec` |
| 17 | `lemma` | [compProd_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-zero-left--c561284d1b439042daf345a4.md) | 240 | `result-track:c561284d1b439042daf345a49f99a4aaebac27458cbef149b5b52dfaad1b30c2` |
| 18 | `lemma` | [compProd_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-zero-right--5c57b6d94f7e834f38c7307c.md) | 249 | `result-track:5c57b6d94f7e834f38c7307cb8db8e4970c0827bbc11a0da8130de4fee831c51` |
| 19 | `lemma` | [compProd_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-eq-zero-iff--4d046e3788414505c86213f9.md) | 257 | `result-track:4d046e3788414505c86213f961038a1dec22f1f89d96ce5f64f7e1afa3bbc131` |
| 20 | `lemma` | [compProd_preimage_fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-preimage-fst--83e3ad34a95694d5ba52ce21.md) | 269 | `result-track:83e3ad34a95694d5ba52ce21db1d1088ddc7b3684cbbd1316c793e578c8ae540` |
| 21 | `lemma` | [compProd_deterministic_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-deterministic-apply--9f74ae6d9150bb85a4f74db5.md) | 281 | `result-track:9f74ae6d9150bb85a4f74db5eb89d8fe7641df2ab26e1291fb2ef4aabd9a4b50` |
| 22 | `theorem` | [ae_kernel_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/ae-kernel-lt-top--dac07303a123161865bc1935.md) | 309 | `result-track:dac07303a123161865bc1935b636472fd6c4dc9caf6f624f943694af9431b794` |
| 23 | `theorem` | [compProd_null](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-null--402cd5942bd308f24d104766.md) | 322 | `result-track:402cd5942bd308f24d104766475ac5497e94372fe00e98c7286a4b098bf3cfcf` |
| 24 | `theorem` | [ae_null_of_compProd_null](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/ae-null-of-compprod-null--897d9d951ab6b2a823e60610.md) | 327 | `result-track:897d9d951ab6b2a823e6061063f942196b8fb57572bf237a6d08cee0e5f172d3` |
| 25 | `theorem` | [ae_ae_of_ae_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/ae-ae-of-ae-compprod--381916194eac468505732379.md) | 337 | `result-track:381916194eac468505732379f054faea49c7e38070c17c921414f3ea92ed8bac` |
| 26 | `lemma` | [ae_compProd_of_ae_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/ae-compprod-of-ae-ae--d1ab24400bd025b4c18d10a5.md) | 341 | `result-track:d1ab24400bd025b4c18d10a5aec04a8bb65c0b47d0777af37068f43648de8a9f` |
| 27 | `lemma` | [ae_compProd_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/ae-compprod-iff--da358a004759cdebd4344ac0.md) | 354 | `result-track:da358a004759cdebd4344ac06f7728e78dc54b45c2fd0405eca7f647a5f92b99` |
| 28 | `theorem` | [compProd_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-restrict--74ca61e7ab8e699f9cc15e86.md) | 364 | `result-track:74ca61e7ab8e699f9cc15e86eb8471a283f9bc39dc83a6e8d64ff1e171aa797d` |
| 29 | `theorem` | [compProd_restrict_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-restrict-left--1bac4bea37445073b6c8bb7f.md) | 380 | `result-track:1bac4bea37445073b6c8bb7f0c652eeed46b43d1455dfa2e7108dd6c84fca697` |
| 30 | `theorem` | [compProd_restrict_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-restrict-right--6d2ae7ac65deff26ebc45b6b.md) | 385 | `result-track:6d2ae7ac65deff26ebc45b6bda17c8333fd9d501757ecac303b41f7176b34a44` |
| 31 | `theorem` | [lintegral_compProd'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/lintegral-compprod--6448e689f5b8b4e33caacbfe.md) | 398 | `result-track:6448e689f5b8b4e33caacbfed383a0861bcbbb9bbbc574a2ae19284baad086dc` |
| 32 | `theorem` | [lintegral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/lintegral-compprod--440062f7716a602166196f90.md) | 455 | `result-track:440062f7716a602166196f90f7a8f8a81e356da5244f4443382c3e0af01cf7b2` |
| 33 | `theorem` | [lintegral_compProd₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/lintegral-compprod--e93fda23b82f27c1353f5121.md) | 465 | `result-track:e93fda23b82f27c1353f5121ca955209a022061e33d0f84cd9ca21bf78e165d6` |
| 34 | `theorem` | [setLIntegral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/setlintegral-compprod--fa007640602338c6768b3921.md) | 475 | `result-track:fa007640602338c6768b3921698bc1d1f64a01eb0c4e290070e3ab23b08cce88` |
| 35 | `theorem` | [setLIntegral_compProd_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/setlintegral-compprod-univ-right--fd9ea68d5b656f42b78cda6c.md) | 482 | `result-track:fd9ea68d5b656f42b78cda6c34b4811e950047c4aa8003dc4ed5911f27128988` |
| 36 | `theorem` | [setLIntegral_compProd_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/setlintegral-compprod-univ-left--45a2204bea0af7b1a5c8fe6c.md) | 488 | `result-track:45a2204bea0af7b1a5c8fe6ca9fb53dd8adfb89fbec6e6e57d79e4484f53621d` |
| 37 | `theorem` | [compProd_eq_tsum_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-eq-tsum-compprod--96b7e2707fd16b7cafdbf64f.md) | 496 | `result-track:96b7e2707fd16b7cafdbf64f8bbba0be064a4f87e692546d234af4da47edd559` |
| 38 | `theorem` | [compProd_eq_sum_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-eq-sum-compprod--b7d710ba22a388d12bb69369.md) | 501 | `result-track:b7d710ba22a388d12bb69369184f06d453d515aa805bbdfaeb708fb6d8af096d` |
| 39 | `theorem` | [compProd_eq_sum_compProd_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-eq-sum-compprod-left--015cdda86e0851e07cab5a5e.md) | 505 | `result-track:015cdda86e0851e07cab5a5e131514cfb451ac448d82213306f0297284efd49a` |
| 40 | `theorem` | [compProd_eq_sum_compProd_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-eq-sum-compprod-right--a5d6c858c7692317dbab075e.md) | 516 | `result-track:a5d6c858c7692317dbab075e669122b74a7ec1bfa5ade5dc2e8f6b5c0fe4e3c6` |
| 41 | `instance` | [IsMarkovKernel.compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/ismarkovkernel-compprod--364d5b22b74fd982e6e17bac.md) | 526 | `declaration-track:364d5b22b74fd982e6e17bacecc73fce55826eee3f97e7544337fb0beefcf3a1` |
| 42 | `instance` | [IsZeroOrMarkovKernel.compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/iszeroormarkovkernel-compprod--576b5c800600dadc2fd859bd.md) | 530 | `declaration-track:576b5c800600dadc2fd859bddb2d49d02c28321ac8b7bdbb0cce199c87938148` |
| 43 | `theorem` | [compProd_apply_univ_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-apply-univ-le--795a9838ac6d135b28a99971.md) | 535 | `result-track:795a9838ac6d135b28a999713c6e4b8647465e3ea45aab261a195d16e8dbc618` |
| 44 | `instance` | [IsFiniteKernel.compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/isfinitekernel-compprod--6945d3c47e7ae2cb174a2d38.md) | 549 | `declaration-track:6945d3c47e7ae2cb174a2d38c3b2a1d44831b6bc6c559a0f00676a6b9bcbfc59` |
| 45 | `instance` | [IsSFiniteKernel.compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/issfinitekernel-compprod--640663652c680ad53723f091.md) | 558 | `declaration-track:640663652c680ad53723f0917662a7af37a7bdbd67af5436dab8c3a44b291352` |
| 46 | `lemma` | [compProd_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-add-left--4c55e5597365f6aa1cd2f809.md) | 571 | `result-track:4c55e5597365f6aa1cd2f809881a8111a4f480f6d8d79f34b370dccf520b5468` |
| 47 | `lemma` | [compProd_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-add-right--34889e4c13aba804e885dcce.md) | 579 | `result-track:34889e4c13aba804e885dcce1d3418a4a5a6347a118baede420ca99c43abe24d` |
| 48 | `lemma` | [compProd_sum_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-sum-left--e54f585d64d6cd287f21b1cb.md) | 589 | `result-track:e54f585d64d6cd287f21b1cbe673b1c22b142d8389db0a24071d91b4e719443e` |
| 49 | `lemma` | [compProd_sum_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/compprod-sum-right--6c907589dd106665cf94b72d.md) | 598 | `result-track:6c907589dd106665cf94b72de55fa1a4017c691015d736382dcd82c51f725589` |
| 50 | `lemma` | [comapRight_compProd_id_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/comapright-compprod-id-prod--0181df38eda2a47682225860.md) | 611 | `result-track:0181df38eda2a47682225860a6d3ec7ec16184b4b8acb14b8fcee725bec2e4ce` |
| 51 | `lemma` | [fst_compProd_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/fst-compprod-apply--778f110a922179a39fd7cac0.md) | 633 | `result-track:778f110a922179a39fd7cac0f28feeaee4d7cc5524b6e3fca0ff18398b898678` |
| 52 | `lemma` | [fst_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/declarations/fst-compprod--3277605b6ac1b90b0892f6b5.md) | 643 | `result-track:3277605b6ac1b90b0892f6b5d98e474bfd6cf687e570306432aefe1eb43b9898` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
