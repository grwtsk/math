# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqFun.Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e643c1da85ce7c6a75444768ddde4320a5780f8",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e643c1da85ce7c6a75444768ddde4320a5780f8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable--648a6969e22199279fcffcb9.md) | 44 | `declaration-track:648a6969e22199279fcffcb9da6358f2247c8f5abd50d33a183fbfc870787b25` |
| 2 | `theorem` | [integrable_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable-mk--bfd3c78f2f4f115f21e22c9a.md) | 47 | `result-track:bfd3c78f2f4f115f21e22c9ac9dbc6830b3b7cafe6baf436e8e5e99a888b050d` |
| 3 | `theorem` | [integrable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable-coefn--41fecdcfd1fe9e97ea3e7686.md) | 53 | `result-track:41fecdcfd1fe9e97ea3e76860a540133aaef0a4b432ac43652548b4a0f1cb5d7` |
| 4 | `theorem` | [integrable_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable-zero--4fa49c904bca337f7e9d0922.md) | 56 | `result-track:4fa49c904bca337f7e9d0922a485d7cf531611f2c355785a45bf87510c26e104` |
| 5 | `theorem` | [Integrable.neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable-neg--d620323eb591cd4ad2fec4b9.md) | 63 | `result-track:d620323eb591cd4ad2fec4b9dc7637eab7465fd996bfb84bbef977f6058d16c6` |
| 6 | `theorem` | [integrable_iff_mem_L1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable-iff-mem-l1--8f188c930811c61123187e70.md) | 68 | `result-track:8f188c930811c61123187e702bbdc1cd6c6c1f065d8756077108e5ec83617495` |
| 7 | `theorem` | [Integrable.add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable-add--2f58d21a18e087e59b32e314.md) | 72 | `result-track:2f58d21a18e087e59b32e3140ad030778386693a36fc3e9145dd956d69f74518` |
| 8 | `theorem` | [Integrable.sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable-sub--6220783e75d01381da1c06ff.md) | 77 | `result-track:6220783e75d01381da1c06ffc3af97917e587da93bbcf9fc6efa147acab9101f` |
| 9 | `theorem` | [Integrable.smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable-smul--5d8d7acc72867270da732070.md) | 87 | `result-track:5d8d7acc72867270da732070590bd4c3aecb1f77e940089b93dd8f1d5259303f` |
| 10 | `theorem` | [integrable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/integrable-coefn--0fbb29b9e4b71c512de3bab4.md) | 100 | `result-track:0fbb29b9e4b71c512de3bab424f51048bedc129606c363fb2017cf88d072df97` |
| 11 | `theorem` | [hasFiniteIntegral_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/hasfiniteintegral-coefn--94f8e2a5674940d0a5799772.md) | 104 | `result-track:94f8e2a5674940d0a5799772581950dca990c9d4080cec5b327bfe6952f42605` |
| 12 | `theorem` | [stronglyMeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/stronglymeasurable-coefn--7e334e962f31bd6f59d8f22a.md) | 108 | `result-track:7e334e962f31bd6f59d8f22ad61fea6bcc253dc32fe5d1456d166c4e261a2573` |
| 13 | `theorem` | [measurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/measurable-coefn--05b9c302c04aa973e58d87d3.md) | 112 | `result-track:05b9c302c04aa973e58d87d3e13f031030202c7ed7fa5679105e52c6cda37402` |
| 14 | `theorem` | [aestronglyMeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/aestronglymeasurable-coefn--1c6ead16f4088c9c5576836b.md) | 116 | `result-track:1c6ead16f4088c9c5576836b147f9d98d8157a45b475bf68d8334da21fbe02d3` |
| 15 | `theorem` | [aemeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/aemeasurable-coefn--e407d21339cdfe0a10a75b86.md) | 120 | `result-track:e407d21339cdfe0a10a75b864cd9c74b82c7226c8be81752d8f6d9f4528871fa` |
| 16 | `theorem` | [edist_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/edist-def--3eec3393c80179d8fcebf8bd.md) | 123 | `result-track:3eec3393c80179d8fcebf8bd3cc40896bb5a5c042b92b9d7ec799c2faa5c33f0` |
| 17 | `theorem` | [dist_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/dist-def--06ab0f1534dab0fbea0627ef.md) | 128 | `result-track:06ab0f1534dab0fbea0627ef25048eaa67ca685d3e9ec4cbe3de3935db2e7d16` |
| 18 | `theorem` | [norm_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/norm-def--d6014e5083c8b16b24e713c7.md) | 131 | `result-track:d6014e5083c8b16b24e713c7f39f92d2259c5f3713fb2e6b092633200abbacf5` |
| 19 | `theorem` | [norm_sub_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/norm-sub-eq-lintegral--48dc4c7099b89f40b1629c44.md) | 137 | `result-track:48dc4c7099b89f40b1629c44a831a7070a41fc7c4a31b00a206e27879847d233` |
| 20 | `theorem` | [ofReal_norm_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/ofreal-norm-eq-lintegral--885292355be50163c22c158b.md) | 144 | `result-track:885292355be50163c22c158b4b5157777ca45c49b4e4248f6a239da7760a504d` |
| 21 | `theorem` | [ofReal_norm_sub_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/ofreal-norm-sub-eq-lintegral--6c2b3165870bfb8d0389ebf2.md) | 151 | `result-track:6c2b3165870bfb8d0389ebf2c9e8766a1682173c8b3f9ff64777a83e5ebc8fc0` |
| 22 | `def` | [toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1--aa600d04f1bd0443e712fef0.md) | 165 | `declaration-track:aa600d04f1bd0443e712fef0988710bb1ad67da9902c98c4182392846e0b8851` |
| 23 | `theorem` | [toL1_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1-coefn--69e971e2405cdc0828dbb96b.md) | 169 | `result-track:69e971e2405cdc0828dbb96b77b7d4f9c40c74b2ee08ba91e5a332e812725f2a` |
| 24 | `theorem` | [coeFn_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/coefn-tol1--ddce12eb04ba5c9a91d41b54.md) | 172 | `result-track:ddce12eb04ba5c9a91d41b544161ab6c7e560e0dc82510cd112b649d739c610c` |
| 25 | `theorem` | [toL1_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1-zero--a85817266a9d8aa2fb0f43c2.md) | 176 | `result-track:a85817266a9d8aa2fb0f43c21cc86d32f72504d98293bc2b2742f479d06a6308` |
| 26 | `theorem` | [toL1_eq_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1-eq-mk--4cbd4be83baa7b21398163b5.md) | 180 | `result-track:4cbd4be83baa7b21398163b5c34afb72bdc5e9c82b70e5807a6223a13f8ad52b` |
| 27 | `theorem` | [toL1_eq_toL1_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1-eq-tol1-iff--d2c963119d40d9f1e9e2d1f6.md) | 185 | `result-track:d2c963119d40d9f1e9e2d1f67a7aa5e683b3a1dbf53765311e4aeffc826a6bd3` |
| 28 | `theorem` | [toL1_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1-add--216592c74f99adcab1575e89.md) | 189 | `result-track:216592c74f99adcab1575e8964555cbcf973a11e103614ec9079ef95bdbaf211` |
| 29 | `theorem` | [toL1_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1-neg--2db56e8c1faef59f0bd652f0.md) | 193 | `result-track:2db56e8c1faef59f0bd652f0293d4fff9efa93e1c42cb262c611fbfa23ef6bcf` |
| 30 | `theorem` | [toL1_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1-sub--476e6b568f2e484175e55532.md) | 196 | `result-track:476e6b568f2e484175e55532b96ca82a89e8adfdde4b298472e4a78c12259771` |
| 31 | `theorem` | [norm_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/norm-tol1--0a1031c25239e462133e1266.md) | 200 | `result-track:0a1031c25239e462133e1266ff63888859cd9df7b03680346756dac6f52ce107` |
| 32 | `theorem` | [enorm_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/enorm-tol1--2e1d5eb9fec231162c2c6aaf.md) | 204 | `result-track:2e1d5eb9fec231162c2c6aaf154c846eec5d5b1f31c800db4c3862b560c8b3cf` |
| 33 | `theorem` | [norm_toL1_eq_lintegral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/norm-tol1-eq-lintegral-norm--2b81768b65ca019dd57f8a60.md) | 210 | `result-track:2b81768b65ca019dd57f8a605f6d45846d2617d0d1fabd6c3d797a64e8247ae3` |
| 34 | `theorem` | [edist_toL1_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/edist-tol1-tol1--4897c33b93aea9fc206e4169.md) | 215 | `result-track:4897c33b93aea9fc206e41690de165e6cebd05204fa7dc7b8841235b73988ccc` |
| 35 | `theorem` | [edist_toL1_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/edist-tol1-zero--ddd83b97bca0b4d947cc7e6a.md) | 221 | `result-track:ddd83b97bca0b4d947cc7e6ae92f36880927917b93b280d2e003e41f02a71c83` |
| 36 | `theorem` | [toL1_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1-smul--6a6f4d006d88bcd3a624d05d.md) | 228 | `result-track:6a6f4d006d88bcd3a624d05d099df5d9d58eeabfcc5d5bf0c6985cb9e51a59c6` |
| 37 | `theorem` | [toL1_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant66ded93da6d7b3cf3afe8ab61279e3260e9f50d7b9564f7e3d992563331b8ff9.lean/declarations/tol1-smul--7fb7504f2b05b019b92a5d9f.md) | 232 | `result-track:7fb7504f2b05b019b92a5d9f79dfdbbd8a5911a924cf3aa69009a7d844f2860f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
