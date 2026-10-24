# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplace.Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b13e3d0911482e29c3e8c7ed068d6479621d869",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b13e3d0911482e29c3e8c7ed068d6479621d869`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean.json)

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
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/realrampantiderivative--0f7db69d3b740d1f5b3d66fa.md) | 21 | `declaration-track:0f7db69d3b740d1f5b3d66fae571e69aa22053d4a94e504e9a6f201754f96c3f` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/realrampantiderivative-hasderivat--cdba6d658e174fc8aaa57bea.md) | 24 | `result-track:cdba6d658e174fc8aaa57bea32ab8354e8219b90fb2361d6075dbaa2138ef4cd` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/realrampantiderivative-tendsto--349bce3834d7173b6f0001e0.md) | 34 | `result-track:349bce3834d7173b6f0001e05f76073f520017503cec98707061f77b5b2e3bba` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/realramp-tail-integrable--a8d8b47b277b48dd71471b81.md) | 48 | `result-track:a8d8b47b277b48dd71471b81fac5d804b3ef65afb7bbae073b44c4e16dbbe94b` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/realramp-tail-integral--313817bf95ce7fd996ed603c.md) | 56 | `result-track:313817bf95ce7fd996ed603c29458c2e15643f3fd22516eefa15cb287f76a4a7` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/zeroon-lower-integrable--3db18c4c269d21aa53f12ac2.md) | 63 | `result-track:3db18c4c269d21aa53f12ac20e9cef4cc191cc8288b3924dc8618ed2366ec3c5` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/realramp-integrable--23fde83b8ecc18baf84590d7.md) | 69 | `result-track:23fde83b8ecc18baf84590d786a65123aafe1cd380c71c7d6f7e4533c59f808d` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/realramp-integral--2825092ad74d2a738b686b29.md) | 79 | `result-track:2825092ad74d2a738b686b29b6a0528f60f0d827df538f7b0164d9858f011919` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/complexramp-norm--46e122965e15bb6ceaff6484.md) | 97 | `result-track:46e122965e15bb6ceaff64845a9a11704ebe84e64e76b19a3b3a6d633548042c` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualsinglerieszramp-integrable--8d56624545abae615126a727.md) | 106 | `result-track:8d56624545abae615126a727dce8b16fe766e801feb4d077c290041b3efa021e` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualsinglerieszramp-integral-norm--d96fd24c1261fc82c7c31700.md) | 116 | `result-track:d96fd24c1261fc82c7c31700b6a7ee90c5ece5b884a181f17fa183c468c91fc5` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/complexrampantiderivative--018bd442f73f0cce99576f05.md) | 122 | `declaration-track:018bd442f73f0cce99576f05d3b7dc53ae8b73c7f1457e54dec0a2eddd7f4747` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/complexrampantiderivative-hasderivat--77aca66135244a3be324f57d.md) | 125 | `result-track:77aca66135244a3be324f57d03bf06550f3df83d02df5fb14f4e0eb8dc0493c3` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/complex-exp-monomial-zero--95f80aa2f3c31712efdb1a59.md) | 141 | `result-track:95f80aa2f3c31712efdb1a59fc160fc9015455fc5e8f710ef9df63059d8c3f13` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/complexrampantiderivative-tendsto--4fb63eda9f078f2d73667b71.md) | 155 | `result-track:4fb63eda9f078f2d73667b712343871558c47a88cfe2e70421ad5662bc501e5a` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualsinglerieszramp-integral--5249c5793d266362e5c29c10.md) | 169 | `result-track:5249c5793d266362e5c29c10170dccd3b61b839ae91ab12f8d0a971b827440af` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszlaplaceatom--c9d57fefca4f732548e8e6a6.md) | 202 | `declaration-track:c9d57fefca4f732548e8e6a63ad0f6705855138ea8e070dd168fb139fa397595` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualmangoldtrieszlaplace--5034d1ea9cb8b6487a98883e.md) | 207 | `declaration-track:5034d1ea9cb8b6487a98883e132d68e36c6e6c76d1098d512b97f4aa4ca46ee6` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/atom-factor--c3ea56b3238b60d551dc94fc.md) | 211 | `result-track:c3ea56b3238b60d551dc94fc9ee05d635b2af67208a1f150e73147d222ebd7da` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszlaplaceatom-integrable--06351cb8e0a0ba4fb47721d7.md) | 220 | `result-track:06351cb8e0a0ba4fb47721d7203f3643d41bd31bb58c24199bf57087cce35bae` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszlaplaceatom-integral-norm--8d0d6f75000ef3279ee06dc0.md) | 239 | `result-track:8d0d6f75000ef3279ee06dc0453f87f48017392957d2a0b347a3fd463a424709` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--3cef9ba2ac8c536571427b76.md) | 274 | `result-track:3cef9ba2ac8c536571427b7636d397b1eb57ef8e5c1d513506940247c6c4c131` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszlaplaceatoms-tsum--8983a0edaf334781a3bd71ab.md) | 285 | `result-track:8983a0edaf334781a3bd71abda7eb7c88b0de3d1e728d6042a04b4aa9d1bfd8d` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszprimitive-continuous--264d0b9f9517c862cbec6853.md) | 310 | `result-track:264d0b9f9517c862cbec685340306f9ab710f921ee1c9e9c3bdd4e8c32adc33c` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--09819b1de93b1c6f97992de5.md) | 329 | `result-track:09819b1de93b1c6f97992de506481365deedb4d1ab1e02983472046cfaaccdbf` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszlaplaceatoms-integral-tsum--28af2badb13b772879b5e888.md) | 359 | `result-track:28af2badb13b772879b5e888476fe1ade91243e4383b62e0ee4b1529e033d338` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszlaplaceatom-integral--27145fd585fefa679ceaf5eb.md) | 367 | `result-track:27145fd585fefa679ceaf5eb6fc9edc4ca38f8893183257ffdc25e600123e048` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/continuousramp-weight-eq--55364eb330f0de78459dac6a.md) | 392 | `result-track:55364eb330f0de78459dac6a5534e53404c85227a31c9cbcfab9de1d5b3cd9a3` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszcontinuousramp-laplace-integrable--dfa93b20f6111f891fafc243.md) | 404 | `result-track:dfa93b20f6111f891fafc243ad11ba58dadea378144378d3d93d351585d229d0` |
| 30 | `theorem` | [continuousRamp_scalar_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/continuousramp-scalar-identity--aa1cacca04611d99e894a319.md) | 420 | `result-track:aa1cacca04611d99e894a319e492bb61a9719ed682b0942745f9280f9b73b82c` |
| 31 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualrieszcontinuousramp-laplace-integral--5a44d855659b757df0632968.md) | 427 | `result-track:5a44d855659b757df0632968fd58221283b93a409fb762243172916190c77a09` |
| 32 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualh-weight-eq-sum-sub--a58c6d80a438e44f3d301c90.md) | 466 | `result-track:a58c6d80a438e44f3d301c906fdaebf492dc759b6e0730d87a81f4a484d6203c` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualmangoldtrieszlaplace-integrable--ce8d88887f912867062bfa6e.md) | 475 | `result-track:ce8d88887f912867062bfa6ef99d61abc0163c3c9914c4326f9108104c755281` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--c1e2e4e49460eef43653aed0.md) | 483 | `result-track:c1e2e4e49460eef43653aed0dc71b94dded5fc7e3185e000bc92768211d09161` |
| 35 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--6dd1ddb138f6c6f5f0cd081c.md) | 498 | `result-track:6dd1ddb138f6c6f5f0cd081cff4d0416f67346f709dec25cfd6806b6dbf5cdb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
