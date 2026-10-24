# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative08.Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a024efb21b15f6cf7e2f1fcd47edf07514201bc",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a024efb21b15f6cf7e2f1fcd47edf07514201bc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/realrampantiderivative--28ab047322631d23fc9de5e8.md) | 21 | `declaration-track:28ab047322631d23fc9de5e8e245e55c0ef2f5f2e0890ed8995d756ab8379585` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/realrampantiderivative-hasderivat--217ba38f03a98e46b07c11c7.md) | 24 | `result-track:217ba38f03a98e46b07c11c72303ac3709982649d65b9c6efc204405ab6b1dbc` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/realrampantiderivative-tendsto--ed75ab3571a88d94d41870bc.md) | 34 | `result-track:ed75ab3571a88d94d41870bc774ed8893fd56867df88f99bf4735a4bcce592b6` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/realramp-tail-integrable--5ec124b19f24879941ba1af5.md) | 48 | `result-track:5ec124b19f24879941ba1af55647aaaee6ed0112f628920be8c4da40b913ed73` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/realramp-tail-integral--7e17e50f915ac5196438f770.md) | 56 | `result-track:7e17e50f915ac5196438f770418878963e5cfd2a6c78e033dad5864d4b95bab3` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/zeroon-lower-integrable--4be3ae336c77c68f5dbae5b4.md) | 63 | `result-track:4be3ae336c77c68f5dbae5b4f6bab41df29641e677e83aca8523cbec7377ce1b` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/realramp-integrable--e35fafe625b3ab6eb42c2158.md) | 69 | `result-track:e35fafe625b3ab6eb42c2158f3e39f28f395630bedd7ad876b75ce88ec0b35d1` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/realramp-integral--abbb8d23fb836b029f722809.md) | 79 | `result-track:abbb8d23fb836b029f7228090c50067d6aa20e02927c773b3920c015af9b0f36` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/complexramp-norm--f57a94d1c351cd653e2860a7.md) | 97 | `result-track:f57a94d1c351cd653e2860a7407a046a6c65e3e80a412ee55350d0caf9f5e7e2` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualsinglerieszramp-integrable--413becffe6de1cf7f6171b75.md) | 106 | `result-track:413becffe6de1cf7f6171b751c96431a4ca041641ce608be38f3900763667b8a` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualsinglerieszramp-integral-norm--b04082dac4c82bd16ba5be76.md) | 116 | `result-track:b04082dac4c82bd16ba5be76d25feeafc297611bffea417e0cd49f667ea54c4c` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/complexrampantiderivative--b5ff61936d63f0ebb791d4d2.md) | 122 | `declaration-track:b5ff61936d63f0ebb791d4d23340022b259339abd32a1ef5176de5bdf5c5256d` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/complexrampantiderivative-hasderivat--a563b537fa9e67d93bff0c88.md) | 125 | `result-track:a563b537fa9e67d93bff0c88eca6d3e9fb9b6df2d5ddeaa941c4d91c729400ee` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/complex-exp-monomial-zero--69f9d7d25153dde35e4c95e8.md) | 141 | `result-track:69f9d7d25153dde35e4c95e8f54eea4b47bc42344269f17dee2087c768d21c06` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/complexrampantiderivative-tendsto--600d54eb2719cdf128356a85.md) | 155 | `result-track:600d54eb2719cdf128356a85be85b8d4d8f8242831ca93f4ef8767de57099201` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualsinglerieszramp-integral--f1b24a4567d00fa64c24673f.md) | 169 | `result-track:f1b24a4567d00fa64c24673f164ec51f2153d6284585c084bf87f150937109ee` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszlaplaceatom--00865d35de4477c21a946d89.md) | 202 | `declaration-track:00865d35de4477c21a946d89c08f15af169b854c194a4fbf664229b148e53d86` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualmangoldtrieszlaplace--0cf39d795e706c7f856a56e3.md) | 207 | `declaration-track:0cf39d795e706c7f856a56e343147c716b4b6183924b952e792d2a16235dc852` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/atom-factor--51c5699eeebb70a7c06d5574.md) | 211 | `result-track:51c5699eeebb70a7c06d55744c31cfa936a1b77a81366d5a3e4fec6d56956b09` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszlaplaceatom-integrable--89e6b0e364e1187ab9864c30.md) | 220 | `result-track:89e6b0e364e1187ab9864c30143c05c2b8a32c7a86ca4dc24c74698e6774ed9b` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszlaplaceatom-integral-norm--037fb66b42a3abdcc43f87a9.md) | 239 | `result-track:037fb66b42a3abdcc43f87a97636723895044a341962626cbd39a78af94bf160` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--61e5c60a8b8bcb5a9cb061a1.md) | 274 | `result-track:61e5c60a8b8bcb5a9cb061a116345537e6ac4cd1da3a9f5ef5fd8f18c80df67f` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszlaplaceatoms-tsum--ce1655afb1e2e84e6c170b62.md) | 285 | `result-track:ce1655afb1e2e84e6c170b62453be3304ce016899633794c1353e624c4d4b4c8` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszprimitive-continuous--e77767ec16bc8e3288e6b719.md) | 310 | `result-track:e77767ec16bc8e3288e6b71938d3ee1afd343b24ddbbe75850c4abc812638cb7` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--3dd5f94fde8011a96c274150.md) | 329 | `result-track:3dd5f94fde8011a96c27415016d5f95d122771c420e43d3953149cddb688c4ba` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszlaplaceatoms-integral-tsum--23177646de3cd321e5edc37d.md) | 359 | `result-track:23177646de3cd321e5edc37d583461d334c5b61c4ca3a4d439a97aaa3f0e40d3` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszlaplaceatom-integral--a6477108a1da4688df716d97.md) | 367 | `result-track:a6477108a1da4688df716d9781464563045660b20fa5165fd7cb9ba497533450` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/continuousramp-weight-eq--b922f63efba799415533eb54.md) | 392 | `result-track:b922f63efba799415533eb54b75336316a3958a1faa86ac3895a0ffdc607f611` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszcontinuousramp-laplace-integrable--91bc6c3a43bb22deedf3b6ea.md) | 404 | `result-track:91bc6c3a43bb22deedf3b6ea4d4fb0c3b27fa16f5ca34c7950fd8459283768b1` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualrieszcontinuousramp-laplace-integral--a1df53180f05eabae146c318.md) | 421 | `result-track:a1df53180f05eabae146c31873e7f9a9902af76951aa3ecbc702118e4c65c0c1` |
| 31 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualh-weight-eq-sum-sub--eb433f5cdd01c59864087481.md) | 460 | `result-track:eb433f5cdd01c598640874815c28006f66c746d6f2f4facf0e76bc44b8484ebb` |
| 32 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualmangoldtrieszlaplace-integrable--061722a6d092d5debf8e8fec.md) | 469 | `result-track:061722a6d092d5debf8e8fec3b4ea89da790ce4a84c14779d8134dbde29defa7` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--6c11bac1fdb8f88438c2375b.md) | 477 | `result-track:6c11bac1fdb8f88438c2375b5eeb3529a4cc0f32ac9b34ed051cdc754ab29f90` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variantca120c2b94274d9114ca18541294315d71058fba83dfe38508a5c5721aa3efcc.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--5cb31c89cee9b4fd14f0af9e.md) | 492 | `result-track:5cb31c89cee9b4fd14f0af9e00813ce9210169f0d58e41067404062fb65543dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
