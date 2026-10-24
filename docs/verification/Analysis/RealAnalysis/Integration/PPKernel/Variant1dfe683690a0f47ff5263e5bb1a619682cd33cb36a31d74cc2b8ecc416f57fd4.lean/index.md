# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PPKernel.Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c75669277cd28f7712457d57bb96fdc692ec435",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c75669277cd28f7712457d57bb96fdc692ec435`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_le_of_mem_primeRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/one-le-of-mem-primerange--b285eb96320db17f5ffdb1a7.md) | 42 | `result-track:b285eb96320db17f5ffdb1a7715059e7329526ae9345b3b86765d3b1392eacb0` |
| 2 | `lemma` | [cast_le_of_mem_primeRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/cast-le-of-mem-primerange--5939f208c373c62eaa1578fe.md) | 45 | `result-track:5939f208c373c62eaa1578fea7460b4fe8088d67afcb0ad0132124930e46897c` |
| 3 | `lemma` | [log_nonneg_of_mem_primeRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/log-nonneg-of-mem-primerange--d002fe4b95c2fee5283811a9.md) | 49 | `result-track:d002fe4b95c2fee5283811a9af28fb509a344df13f5cc2716b9192293944368a` |
| 4 | `lemma` | [log_le_of_mem_primeRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/log-le-of-mem-primerange--318e333cf7958f0a1ae6c1f6.md) | 53 | `result-track:318e333cf7958f0a1ae6c1f63b99625ed935efe4d24d4c5ea257e05034d89cda` |
| 5 | `lemma` | [a2_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/a2-nonneg--32bd6642f45f415cab34247a.md) | 58 | `result-track:32bd6642f45f415cab34247a299ca3115791e9c8c63ccb69dc88a4b2036fd08e` |
| 6 | `lemma` | [acoef_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/acoef-nonneg--3ff1fa7ece9dc4416e168eb6.md) | 60 | `result-track:3ff1fa7ece9dc4416e168eb61252a365fdbf0e0f212eee86d232c481e8f9a028` |
| 7 | `lemma` | [acoef_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/acoef-sq--3527141a29214ad4d708488d.md) | 64 | `result-track:3527141a29214ad4d708488d2c7438b8cedb60a78f2beea6e7f23400931ae9b5` |
| 8 | `lemma` | [acoef_sq_mul_two_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/acoef-sq-mul-two-mul--ebe03f74c05345ae30ecd6a7.md) | 68 | `result-track:ebe03f74c05345ae30ecd6a70f0814038abdd6e7732e1203bd0fe2f1b9c02e69` |
| 9 | `lemma` | [acoef_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/acoef-one--7561178a75ecb7491d93e8f7.md) | 74 | `result-track:7561178a75ecb7491d93e8f789639037447c4dd89032fe245b344fc456743a05` |
| 10 | `lemma` | [acoef_eq_zero_or_two_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/acoef-eq-zero-or-two-le--4d5be1aaf06f69516634b7f3.md) | 76 | `result-track:4d5be1aaf06f69516634b7f34c0f3b62ae44a4ea714bf1a11cf778175ebf7a72` |
| 11 | `def` | [shearHomeo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/shearhomeo--77e0095b3f01632377234db6.md) | 93 | `declaration-track:77e0095b3f01632377234db6774b8859920f111f87d031e61ad0a770fc57293c` |
| 12 | `lemma` | [measurePreserving_shear](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/measurepreserving-shear--6a053f0262121d8db9d70e5b.md) | 101 | `result-track:6a053f0262121d8db9d70e5b0c76f9b87c7cc9df1130aad91ee32a58379fec57` |
| 13 | `def` | [Ix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/ix--3c192baca13f8270cec353e6.md) | 108 | `declaration-track:3c192baca13f8270cec353e6244b1549c562c905cf34073ecaf51d65d5888345` |
| 14 | `lemma` | [measurableSet_Ix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/measurableset-ix--7c3efa9ca3dd10063924a717.md) | 110 | `result-track:7c3efa9ca3dd10063924a71703013250e26d8c41a3a07c86ea8d5229ff34629a` |
| 15 | `lemma` | [mem_Ix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/mem-ix--0b76050d527bf08680290f91.md) | 113 | `result-track:0b76050d527bf08680290f91a79292d8080f1f3e7100e9253133c8f05f7ee3a5` |
| 16 | `lemma` | [sqIntegral_shear](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/sqintegral-shear--61f02fe56fbf42778b0736a2.md) | 123 | `result-track:61f02fe56fbf42778b0736a2de2cf754af9ca432df54ada07bb1dee6485dfe0c` |
| 17 | `lemma` | [integrable_sq_mul_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/integrable-sq-mul-inner--ef387fa9fc7cbfee33c12a39.md) | 162 | `result-track:ef387fa9fc7cbfee33c12a39c45740d32c7184a07f7bffb1b445694e85116412` |
| 18 | `lemma` | [Ix_eq_empty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/ix-eq-empty--9cad2fbe3f64e34c349260d2.md) | 194 | `result-track:9cad2fbe3f64e34c349260d2215bd8b2ced3d51ccb32dcbd3c599740327f1056` |
| 19 | `lemma` | [Ix_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/ix-le--3d0951eec1711d1cfd46af52.md) | 206 | `result-track:3d0951eec1711d1cfd46af521944836a89afce36da39b6204fd72b11489fb2da` |
| 20 | `lemma` | [Ix_length](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/ix-length--95b78cef4e834abaec99c04a.md) | 211 | `result-track:95b78cef4e834abaec99c04aa2e08bbaac4a45118181671d5b783d4e367b74fe` |
| 21 | `lemma` | [cos_mul_cos_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/cos-mul-cos-eq--b5cb064562e573f8e7322885.md) | 225 | `result-track:b5cb064562e573f8e73228858016c8d7f34e79a2e261c9712348fcb72e918cbd` |
| 22 | `def` | [Jker](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/jker--c248b24004586494a20e6a64.md) | 231 | `declaration-track:c248b24004586494a20e6a64659bd3df1ee119c274a06517d43581af3b1f03a6` |
| 23 | `lemma` | [intervalIntegral_cos_linear](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/intervalintegral-cos-linear--70ad9b27db45d2dee85152a4.md) | 234 | `result-track:70ad9b27db45d2dee85152a4b23b5f758fe54556d483d877bcfbb8181cceb2c4` |
| 24 | `lemma` | [intervalIntegral_cos_linear_eq_Jker](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/intervalintegral-cos-linear-eq-jker--cd8b8609cb63a9ca14b5492c.md) | 239 | `result-track:cd8b8609cb63a9ca14b5492cc0f04c49b3ecac5643449ecfea04eab4e0fd6346` |
| 25 | `lemma` | [Jker_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/jker-zero--202c4812773f3a8f0c02831b.md) | 246 | `result-track:202c4812773f3a8f0c02831b4358eeef8a0ca998bb105a750dde9ca81ed57069` |
| 26 | `lemma` | [Jker_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/jker-of-ne--452ceaf7de39413473d8d06d.md) | 248 | `result-track:452ceaf7de39413473d8d06d0429bb3aff6b77a8c50f3695b95e30805a0c7b39` |
| 27 | `lemma` | [abs_Jker_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/abs-jker-le--cc03d8ca6b9f1ee7e9bce5be.md) | 252 | `result-track:cc03d8ca6b9f1ee7e9bce5be4aa7d4c1b8da15f4788799bdf1c31c2b1f2ab2d5` |
| 28 | `lemma` | [continuous_Jker_offset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/continuous-jker-offset--37ef8a4a259ebafd5fd773a0.md) | 262 | `result-track:37ef8a4a259ebafd5fd773a035ce5d7a5dedf14ae2a8a764c0f7012caa59852a` |
| 29 | `lemma` | [inner_cos_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/inner-cos-cos--2c9c6c693fb8a7f23f272083.md) | 272 | `result-track:2c9c6c693fb8a7f23f272083a96c0b60ecf3a12bdd13bdf45c069c578c5e4c90` |
| 30 | `def` | [JmK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/jmk--3f84a2690fb4d89532625fd7.md) | 297 | `declaration-track:3f84a2690fb4d89532625fd75093b3b70bbd3cd2ec048074866e406e475a3cf3` |
| 31 | `def` | [JpK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/jpk--bf5042101898f693e487af69.md) | 299 | `declaration-track:bf5042101898f693e487af6918e21f33b1279abf67c94fb0e28c581988f19862` |
| 32 | `lemma` | [continuous_JmK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/continuous-jmk--8a5f74cb363c2f3548e79a3a.md) | 301 | `result-track:8a5f74cb363c2f3548e79a3a4399557f918f95ab493d7a5e18dc382f174a86c8` |
| 33 | `lemma` | [continuous_JpK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/continuous-jpk--5e6c96aa8000e586fed17ed4.md) | 303 | `result-track:5e6c96aa8000e586fed17ed48c546fdf7edec531e1b7c465d5388c2f8e89b9be` |
| 34 | `def` | [Aminus](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/aminus--710bd9df7f5524b084e4eb04.md) | 308 | `declaration-track:710bd9df7f5524b084e4eb04cd5d92faec4aab5149b08056b314316823c83d3f` |
| 35 | `def` | [Aplus](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/aplus--2a3859a564325f3e13a443e2.md) | 309 | `declaration-track:2a3859a564325f3e13a443e290f3f44a3b73a2dc1d0b734377cac0acc823bc55` |
| 36 | `lemma` | [not_mem_Icc_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/not-mem-icc-neg--48c36d81a3b916fd94f4b33b.md) | 311 | `result-track:48c36d81a3b916fd94f4b33b1a2882c14001ec7b93823f64e90584b977b4085d` |
| 37 | `lemma` | [Mform_cos_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/mform-cos-cos--55f1c2fff961ff5a79cc9dbc.md) | 321 | `result-track:55f1c2fff961ff5a79cc9dbcbfa222b2b2538fa049d40828148d721de77bc63a` |
| 38 | `lemma` | [JmK_diag](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/jmk-diag--d39c4b873b142695f5881a10.md) | 346 | `result-track:d39c4b873b142695f5881a10864c31d2ce08813d15b6d90f7f232ac364e86d8b` |
| 39 | `lemma` | [abs_Aminus_diag_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/abs-aminus-diag-sub-le--b1d4d31acef2f83ce33e417c.md) | 352 | `result-track:b1d4d31acef2f83ce33e417cbc7ee61832c5907c6f87a355890e64dc028926f8` |
| 40 | `lemma` | [abs_Aplus_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/abs-aplus-le--ef7faed7800782058371d22a.md) | 396 | `result-track:ef7faed7800782058371d22a977f84240f75edfed5b42dbef8cd4c2028b519f0` |
| 41 | `def` | [Cp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/cp--60818bf6be064e53274a2380.md) | 423 | `declaration-track:60818bf6be064e53274a23800dfee8dc5575ee1ba885b3e330b5a94e49d3b237` |
| 42 | `def` | [Sp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/sp--d106d49b48ad76490e62c78c.md) | 424 | `declaration-track:d106d49b48ad76490e62c78c6fab93afc32eba1e7189e6dc98cde22d502f7e72` |
| 43 | `def` | [Cm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/cm--843aff310674ee5f6be89fa2.md) | 425 | `declaration-track:843aff310674ee5f6be89fa2e6d6f39b5d1b715f32d540440f74e19b33c66dcb` |
| 44 | `def` | [Sm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/sm--4df1823bf2b6299a54bba4e6.md) | 426 | `declaration-track:4df1823bf2b6299a54bba4e655e312e9736164cecbd09ecd815dea0b9a78aa59` |
| 45 | `lemma` | [integral_sq_mul_sin_sub_sin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/integral-sq-mul-sin-sub-sin--2f17354ad4fc32fa8d754e3f.md) | 429 | `result-track:2f17354ad4fc32fa8d754e3fb6b3e5e2ac1db4bb0862fac41b34fb6fdbcf285f` |
| 46 | `lemma` | [sub_mul_Aminus_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/sub-mul-aminus-eq--39f373e92e6790b08046717d.md) | 451 | `result-track:39f373e92e6790b08046717d8e3d0eeb45c576393d7e3e40b14eecb097fd2745` |
| 47 | `lemma` | [abs_halfMoment_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/abs-halfmoment-le--e93ac18c08e0826a5571110b.md) | 499 | `result-track:e93ac18c08e0826a5571110bc6ca9948017d81bc5ae7ef4c1594b9575bd04638` |
| 48 | `lemma` | [abs_Cp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/abs-cp-le--9464b5346e53381967ec30ae.md) | 516 | `result-track:9464b5346e53381967ec30ae455d3c7c7ff5c88a8105622ca01feee41f5a238b` |
| 49 | `lemma` | [abs_Sp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/abs-sp-le--c61afe61772369baae53f369.md) | 519 | `result-track:c61afe61772369baae53f36921fba121dc52a9c636074c7f0be326e09522dcf9` |
| 50 | `lemma` | [abs_Cm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/abs-cm-le--cd1d3c33c5d0c9266443410a.md) | 522 | `result-track:cd1d3c33c5d0c9266443410a2babe61ca91d762ec5f50735ae01c33be65fb788` |
| 51 | `lemma` | [abs_Sm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/abs-sm-le--c7588e919868c41776dd2bd4.md) | 525 | `result-track:c7588e919868c41776dd2bd4efd00a3068387f0ecc283ccf33d0b8a599a5a4a0` |
| 52 | `lemma` | [inv_two_mul_le_abs_log_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/inv-two-mul-le-abs-log-sub--c006b4a6a9a18455087332fc.md) | 539 | `result-track:c006b4a6a9a18455087332fc53165af331bf7bbd039de56368008c6974b33472` |
| 53 | `lemma` | [MV_primeRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/mv-primerange--58a03207d309c53b4721eb3c.md) | 573 | `result-track:58a03207d309c53b4721eb3c430bffee5fb0ae5ea31687c25d84e47053f63a38` |
| 54 | `lemma` | [MV_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/mv-real--d670cb04e09790525f886354.md) | 618 | `result-track:d670cb04e09790525f886354726c09258e543f5af8f90930af7d095166f9c66d` |
| 55 | `lemma` | [MV_size_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/declarations/mv-size-le--2d0d00ffec332111c3384363.md) | 678 | `result-track:2d0d00ffec332111c3384363b5671a6e563b98c2fde36b62399adadc5f97b423` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
