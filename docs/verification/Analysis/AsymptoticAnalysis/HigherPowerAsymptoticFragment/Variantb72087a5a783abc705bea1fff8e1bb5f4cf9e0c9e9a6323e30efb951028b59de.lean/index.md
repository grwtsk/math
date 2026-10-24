# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerAsymptoticFragment.Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28b8f6531473d17bfaf0f3c4b25f8df29cbacc76",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28b8f6531473d17bfaf0f3c4b25f8df29cbacc76`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean.json)

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
| 1 | `def` | [higherPowerConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpowerconstant--bc37f3662f1867a22981e276.md) | 26 | `declaration-track:bc37f3662f1867a22981e276691bf331f0b90902d467dca8748bc8cbc313d22f` |
| 2 | `def` | [higherPowerSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpowersum--c36042370dbb7d0608d2cae9.md) | 31 | `declaration-track:c36042370dbb7d0608d2cae9ea7ef4fd273f48562bee4ce0e9c0ca5f2a01d239` |
| 3 | `def` | [higherPowerBudget](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpowerbudget--1f097d3caeec0c555f50262d.md) | 37 | `declaration-track:1f097d3caeec0c555f50262da1106654e054d11d3c8bdd23a15d6cb514556689` |
| 4 | `theorem` | [higherPowerBudget_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpowerbudget-nonneg--f7ee48149f95dc548962078a.md) | 42 | `result-track:f7ee48149f95dc548962078ae61e42fc934eef38da8a26f6669ccb3d8611391c` |
| 5 | `theorem` | [higherPower_correlation_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpower-correlation-summable--45d871349f1c6a2301f424f5.md) | 46 | `result-track:45d871349f1c6a2301f424f54e1875526d04622b5cade1473f688f15af377491` |
| 6 | `theorem` | [higherPowerSum_le_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpowersum-le-constant--a181d518c1ded6d77d757b2b.md) | 57 | `result-track:a181d518c1ded6d77d757b2bbaa9245de69bd5360b40c4c4bcfa83863a04df58` |
| 7 | `theorem` | [higherPower_deviation_term_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpower-deviation-term-bound--3ec24c2e79c926f3e09cf894.md) | 66 | `result-track:3ec24c2e79c926f3e09cf8942ddb916616f55d9ccc9819ecdc4ebc0e85f4cb7f` |
| 8 | `theorem` | [higherPower_deviation_norm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpower-deviation-norm-summable--a7820265d350d019d7c5025a.md) | 78 | `result-track:a7820265d350d019d7c5025ae00d4650bc8ef4a6802c365659341ea11d2f7a80` |
| 9 | `theorem` | [higherPower_deviation_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpower-deviation-summable--aed13e8aeeb58437c20dd12c.md) | 89 | `result-track:aed13e8aeeb58437c20dd12cac898cc209d0e104eed34d31c22f471f60627e99` |
| 10 | `theorem` | [higherPowerSum_sub_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpowersum-sub-constant--80b057665c158abb1f90c326.md) | 96 | `result-track:80b057665c158abb1f90c326668ce0fecd3ce41392573eca8190f38b0ae3d45f` |
| 11 | `theorem` | [higherPowerSum_deviation_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/higherpowersum-deviation-bound--06b5d90a90aa3bf34b5c88eb.md) | 108 | `result-track:06b5d90a90aa3bf34b5c88ebab751473a15a9abb007e7bce6adb499de48794ab` |
| 12 | `theorem` | [actualHigherPower_deviation_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/actualhigherpower-deviation-bound--b19b4e26cd8010eda63f88ad.md) | 133 | `result-track:b19b4e26cd8010eda63f88ad54db1a09369f141661357101d9a28ccc5d9a0b06` |
| 13 | `theorem` | [actualHigherPower_le_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/actualhigherpower-le-constant--22f938abbbe5afd816adf725.md) | 138 | `result-track:22f938abbbe5afd816adf7255ee2aa40d378954f0bd6c20ee3d981ca55461f70` |
| 14 | `theorem` | [actual_higherPower_signed_asymptotic](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/declarations/actual-higherpower-signed-asymptotic--a78106b4f43f7a18e3650683.md) | 143 | `result-track:a78106b4f43f7a18e36506830c5856cc3879302020113d02e4aa661ae60a8402` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
