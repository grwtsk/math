# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerAsymptoticFragment.Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a46e24541bd04f69583776ef796aa3539a4ba64",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a46e24541bd04f69583776ef796aa3539a4ba64`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean.json)

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
| 1 | `def` | [higherPowerConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpowerconstant--215df5cc0ce8badf1331e9fc.md) | 18 | `declaration-track:215df5cc0ce8badf1331e9fcde720aab21ecac0081ce0d907249c153418b6713` |
| 2 | `def` | [higherPowerSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpowersum--dd88537baf30ec587edf57c9.md) | 23 | `declaration-track:dd88537baf30ec587edf57c9d61abc1d7fe9ace2427dbd0609691b77f266067b` |
| 3 | `def` | [higherPowerBudget](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpowerbudget--b8e661d3d6cc89b1258572b0.md) | 29 | `declaration-track:b8e661d3d6cc89b1258572b0b16ae31b8e557f7151193ceddf210ce637da621d` |
| 4 | `theorem` | [higherPowerBudget_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpowerbudget-nonneg--8ef81ccd49027dc27025e2e5.md) | 34 | `result-track:8ef81ccd49027dc27025e2e58ca8f03129ba5e7094cdbeb82864bb8f4b235c70` |
| 5 | `theorem` | [higherPower_correlation_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpower-correlation-summable--17d619fc5a21d24319c33720.md) | 38 | `result-track:17d619fc5a21d24319c337204b311318bd6778f5f42d2cdd7085451aaa3a84f0` |
| 6 | `theorem` | [higherPowerSum_le_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpowersum-le-constant--4e821847163bdded0d176876.md) | 49 | `result-track:4e821847163bdded0d1768760385c4b1bd227a69192f413ea08654f1de3f8a6c` |
| 7 | `theorem` | [higherPower_deviation_term_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpower-deviation-term-bound--23559e061d0d29e9eea6afdc.md) | 58 | `result-track:23559e061d0d29e9eea6afdc2d5e7723be0696a0b9fe74fdef85001efc636199` |
| 8 | `theorem` | [higherPower_deviation_norm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpower-deviation-norm-summable--fbd5959a3222718168d9cc29.md) | 70 | `result-track:fbd5959a3222718168d9cc2974367ee2bddefbc836f7e80b1eeabced15e892a5` |
| 9 | `theorem` | [higherPower_deviation_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpower-deviation-summable--b567855ac82d0dea1d3f1d20.md) | 81 | `result-track:b567855ac82d0dea1d3f1d20511b0123ffa61fba8f1cf41f5375a02fdcbe084b` |
| 10 | `theorem` | [higherPowerSum_sub_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpowersum-sub-constant--e59296ac647036f2b720f72e.md) | 88 | `result-track:e59296ac647036f2b720f72e8585709d96506124d2b7dba4c970bdb0497ea8dd` |
| 11 | `theorem` | [higherPowerSum_deviation_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/higherpowersum-deviation-bound--c2885d2e5820df5693a8afb4.md) | 100 | `result-track:c2885d2e5820df5693a8afb44153d8b759600b8b80c96f42463f0742107528c4` |
| 12 | `theorem` | [actualHigherPower_deviation_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/actualhigherpower-deviation-bound--23e67dd8cf2bea79dbaade2f.md) | 125 | `result-track:23e67dd8cf2bea79dbaade2fe6f69d57fc5afc8bd2b13ab57061d8bf049e4fdd` |
| 13 | `theorem` | [actualHigherPower_le_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/actualhigherpower-le-constant--3e0e096acfc73c1f28134c92.md) | 130 | `result-track:3e0e096acfc73c1f28134c92e10f7c3c8918266935597b895f4e77eded7cc4b3` |
| 14 | `theorem` | [actual_higherPower_signed_asymptotic](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/declarations/actual-higherpower-signed-asymptotic--15f704c1f448e38830663327.md) | 135 | `result-track:15f704c1f448e3883066332720320a478fa548654d1ec9623dcbb8646e6c110e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
