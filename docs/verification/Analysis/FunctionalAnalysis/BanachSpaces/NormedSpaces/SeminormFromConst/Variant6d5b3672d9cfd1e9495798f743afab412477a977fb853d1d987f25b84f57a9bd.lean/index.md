# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SeminormFromConst.Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d47778b45292d58431721d151b052f4e3b89959",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d47778b45292d58431721d151b052f4e3b89959`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.RingSeminorm` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seminormFromConst_seq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-seq--2dc79ee23919da01839e2450.md) | 50 | `declaration-track:2dc79ee23919da01839e245062d037cdd2c9ff44c88f651b197fb0fb737b5de6` |
| 2 | `lemma` | [seminormFromConst_seq_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-seq-def--47453f05103c5da433e60338.md) | 52 | `result-track:47453f05103c5da433e60338b52cdbc9f750108f3fcbda665b087548b0500ca0` |
| 3 | `theorem` | [seminormFromConst_seq_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-seq-nonneg--beebefa9f5ff446daea1e990.md) | 56 | `result-track:beebefa9f5ff446daea1e990f886bf890edf07d428d74529145ad19e934e19bf` |
| 4 | `theorem` | [seminormFromConst_bddBelow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-bddbelow--a233e4350c0065cb8276fd08.md) | 60 | `result-track:a233e4350c0065cb8276fd086252f65d59dd692331962ceea09a4048fe21d6fd` |
| 5 | `theorem` | [seminormFromConst_seq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-seq-zero--a7872d50f2511d65f26356a1.md) | 69 | `result-track:a7872d50f2511d65f26356a13fbd23c5d7efcc301b8aebd4318a9593a6dfe441` |
| 6 | `theorem` | [seminormFromConst_seq_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-seq-one--5f06597ea1dfbdb5ded5367a.md) | 79 | `result-track:5f06597ea1dfbdb5ded5367aebf3cc11b06596d5b714269f115ac922eb81f8bd` |
| 7 | `theorem` | [seminormFromConst_seq_antitone](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-seq-antitone--10c0741a387e88c9c4177469.md) | 86 | `result-track:10c0741a387e88c9c4177469063569e0138f935a15d809b0b2e5ccd820aed48b` |
| 8 | `def` | [seminormFromConst'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst--7ebe00f219c7e6f5b3635124.md) | 107 | `declaration-track:7ebe00f219c7e6f5b36351244bcff3b008972c6b966030e7f38c8bb51db21d51` |
| 9 | `theorem` | [seminormFromConst_isLimit](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-islimit--14a0cdbd4040cfc42324efc8.md) | 113 | `result-track:14a0cdbd4040cfc42324efc8ab65237bfd25e8a51b3aaeb2bb02e064335de970` |
| 10 | `theorem` | [seminormFromConst_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-one--d9a427c272b49af6512d5034.md) | 119 | `result-track:d9a427c272b49af6512d503466ce80ba4f79e339ea156ab92c7ae547a5922461` |
| 11 | `def` | [seminormFromConst](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst--149d104d907e510e7333ea6e.md) | 126 | `declaration-track:149d104d907e510e7333ea6ec8e293286ab0c3ce379a23af662a8acf44b974fe` |
| 12 | `theorem` | [seminormFromConst_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-def--df99596bd2a3ff9dd4098ae1.md) | 159 | `result-track:df99596bd2a3ff9dd4098ae13ec7497c85a2090af7d8684d27b5da5d4db636db` |
| 13 | `theorem` | [seminormFromConst_one_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-one-le--d0db9e26bcb3140c2af13efc.md) | 164 | `result-track:d0db9e26bcb3140c2af13efcebbb0e4c8afdbc17dfdf6eaf1aad4d9a644a62d4` |
| 14 | `theorem` | [seminormFromConst_isNonarchimedean](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-isnonarchimedean--6ecbf12d9367d9937e55c4dd.md) | 168 | `result-track:6ecbf12d9367d9937e55c4dd04aa5de36684edef59080695969e9ee043153e0d` |
| 15 | `theorem` | [seminormFromConst_isPowMul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-ispowmul--702161cc9a20422b9f281c86.md) | 180 | `result-track:702161cc9a20422b9f281c86771b839f99bfa687b2a98431f3ec5b370327b663` |
| 16 | `theorem` | [seminormFromConst_le_seminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-le-seminorm--470f711fd38d73f07494e393.md) | 193 | `result-track:470f711fd38d73f07494e3939d6c6d4d7d6b96aa6a76e4c397a903a19f1c8874` |
| 17 | `theorem` | [seminormFromConst_apply_of_isMul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-apply-of-ismul--6d77e47871b44e4e9e1d5eba.md) | 202 | `result-track:6d77e47871b44e4e9e1d5eba8be54faebad6857e228f58140edc88fdc7d02ed5` |
| 18 | `theorem` | [seminormFromConst_isMul_of_isMul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-ismul-of-ismul--133e6beb2ccefe8a98c4c33f.md) | 217 | `result-track:133e6beb2ccefe8a98c4c33fae5202516b18bae44ea25d5bc12d35a721d921fa` |
| 19 | `theorem` | [seminormFromConst_apply_c](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-apply-c--7182a4af6c380500dc33d250.md) | 231 | `result-track:7182a4af6c380500dc33d2503ce4ec994bf1f56381a2872a9abcfa480fafbcc6` |
| 20 | `theorem` | [seminormFromConst_const_mul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconst-const-mul--92a5dd4d1d613cacd178be33.md) | 244 | `result-track:92a5dd4d1d613cacd178be33505e15d2c7a16f560babb5a37af50a385c22f538` |
| 21 | `def` | [normFromConst](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/normfromconst--8efa1cb0fc1dd087828b3bd8.md) | 269 | `declaration-track:8efa1cb0fc1dd087828b3bd8ba717dafec96f0dd945ca1500add96961fb7df8b` |
| 22 | `theorem` | [seminormFromConstRingNormOfField_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/declarations/seminormfromconstringnormoffield-def--9492e78d5cec5b1ba0ed0cbc.md) | 274 | `result-track:9492e78d5cec5b1ba0ed0cbc67db01451003c5a8838d6ee3e1b93b5678717a08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
