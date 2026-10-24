# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt07.Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7dac8e1ebe83956043e4e09f74238426168b4c3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7dac8e1ebe83956043e4e09f74238426168b4c3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/outerweight--38278c358106275599da96de.md) | 18 | `declaration-track:38278c358106275599da96de8913e965e27226a20fa5cfc692498109904c863a` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/exponentweight--f22764e5ce75a00e53eeb545.md) | 20 | `declaration-track:f22764e5ce75a00e53eeb545a3ee8531fb51bef152f649ff1e175049b01e37d9` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/momentatom--c90b9b8db3e8547b527836b5.md) | 22 | `declaration-track:c90b9b8db3e8547b527836b5c0557eff6ac9003ac4bdd56ecb300a44e86d6593` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/primemomentatom--beb54647ec2629c1bbc2fad3.md) | 25 | `declaration-track:beb54647ec2629c1bbc2fad35e1b749a6eb0f9d2e8fd5aae0d29637e734dcfb8` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/properpowermoment--f22727b9bf0e71c46ac51761.md) | 27 | `declaration-track:f22727b9bf0e71c46ac51761f404c95f6e1e9c4b3add2e80ad31ed8ea5819651` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/properpowerb1--c36cade1b205cbd66697310e.md) | 29 | `declaration-track:c36cade1b205cbd66697310e6b35a7216a963049bb99a6e3d90ea64bb8d6c33c` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/properpowerb2--52074e67d20ac998058ca879.md) | 31 | `declaration-track:52074e67d20ac998058ca879671300e338d252af7d8640454bff67d9791053a6` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/outerweight-nonneg--7773c803914f44aadb18cf96.md) | 33 | `result-track:7773c803914f44aadb18cf96da312a1e34fbd5cec7c14b887bcc6f75f4f38228` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/exponentweight-nonneg--84eac767b5448d8e2fdee161.md) | 41 | `result-track:84eac767b5448d8e2fdee1616d1d92b44f62e3dc4c1b8ede61e95097ae9cbd04` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/momentatom-nonneg--74e8ae3d7b71918661f77d70.md) | 45 | `result-track:74e8ae3d7b71918661f77d7089b7b34ca5403a2f33822fedf68b30a4ce7f48ce` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/outerweight-summable--5de601ee5e587d5ce4c77fa2.md) | 53 | `result-track:5de601ee5e587d5ce4c77fa2c7c02e55ce1dcf07626189a61129a5e49a704e9d` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/exponentweight-summable--799f33b40ad71a5bd639d0a8.md) | 83 | `result-track:799f33b40ad71a5bd639d0a8a412213976bbca34ce102ae0621a4f98dea21b31` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/momentatom-le-product--5939b35fa052ef4fd0be716a.md) | 92 | `result-track:5939b35fa052ef4fd0be716a2c68837e9669f1f59a7aee18d760c43e40a047f4` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/prime-outerweight-summable--4726313a81cec3d915fc4a57.md) | 113 | `result-track:4726313a81cec3d915fc4a574823f44604a0178ddd14c9606a05d25c36a96d87` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/primemomentatom-summable--c3ea3171fd3fb2eb15a8beb9.md) | 117 | `result-track:c3ea3171fd3fb2eb15a8beb92e5484f2a7a9e283a35b0f725bed9bda29c93768` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/primemomentatom-inner-summable--11eb040c1f2be1df8fe7964f.md) | 124 | `result-track:11eb040c1f2be1df8fe7964fc849e904a94f11f7ebee7ff4024ac79782198221` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/primemomentatom-outer-summable--1653ba5610e02a9efd71e737.md) | 129 | `result-track:1653ba5610e02a9efd71e737034df56b26f9f14f3afe8b34a4dd79d1363a58af` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/properpowermoment-nonneg--08b12012adcf445ee6475329.md) | 134 | `result-track:08b12012adcf445ee6475329b3868d1872b40dbcfb9ad8363e7eea70491efe03` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/finiteproperpowermoment-le-b1--9e04c3f95a128928331b3bd4.md) | 137 | `result-track:9e04c3f95a128928331b3bd466356e43beb7d8845ee61a9211832928827b6e4a` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/properpowerb1-gt-nine-quarters--33b1109be2e62bd602963770.md) | 166 | `result-track:33b1109be2e62bd6029637704877b6239014ccff068ca61f3912d6da3c8f2742` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/arithmeticconstant-gt-one-five-hundred--6bfa476301f8828e191daf1e.md) | 169 | `result-track:6bfa476301f8828e191daf1ee88a52caa431e699e1e61ba10ed21460a84af735` |
| 22 | `def` | [omittedOnsetAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/omittedonsetatom--6d5d1fd830d6c0578ce48d9e.md) | 175 | `declaration-track:6d5d1fd830d6c0578ce48d9e116b069f365e61d045cb26bc6f74963603062a41` |
| 23 | `def` | [omittedOnsetTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/omittedonsettail--685836e6fea36ccb8f6605ca.md) | 179 | `declaration-track:685836e6fea36ccb8f6605ca505f52c47934ccf0465eac1f2421ecd41be32bcb` |
| 24 | `theorem` | [properPowerMoment_eq_joint_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/properpowermoment-eq-joint-sum--9ee537f4e8716cb27fc15e1c.md) | 182 | `result-track:9ee537f4e8716cb27fc15e1c6f2189ab0b7a1138b0597e9ea91b5a93d947b207` |
| 25 | `theorem` | [omittedOnsetAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/omittedonsetatom-nonneg--2f3d43250bcc3df59f249f9b.md) | 186 | `result-track:2f3d43250bcc3df59f249f9be9ca55f6e7bcb00981dbf44f7428cbf294b4f71a` |
| 26 | `theorem` | [omittedOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/omittedonsetatom-le-zeromoment--4313172f4b04e4bd1775429f.md) | 192 | `result-track:4313172f4b04e4bd1775429fb400cd7b50616dd08c7429e46e88a32af30bce1c` |
| 27 | `theorem` | [omittedOnsetTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/omittedonsettail-summable--730a86e67b718116d45452b3.md) | 199 | `result-track:730a86e67b718116d45452b30ad1c92aac1264ee5b712fb6a383d5ef6e2149f7` |
| 28 | `theorem` | [omittedOnsetTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/omittedonsettail-nonneg--e14fa50c42d87c2fe780d7da.md) | 204 | `result-track:e14fa50c42d87c2fe780d7da875405fc976aba64c39032ea38a61a6a543c5cd1` |
| 29 | `theorem` | [omittedOnsetTail_eq_iterated](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/omittedonsettail-eq-iterated--b742f8dcee8c98ccdc813a70.md) | 207 | `result-track:b742f8dcee8c98ccdc813a7084c57f1d4958841a2d20428b42082e4dd716cd58` |
| 30 | `theorem` | [omittedOnsetAtom_secondMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/omittedonsetatom-secondmoment--bb24add95e86cc5bdeaba2cf.md) | 211 | `result-track:bb24add95e86cc5bdeaba2cfac56a80bbb52597aea4bdd2260f4aed6849c5139` |
| 31 | `theorem` | [omittedOnsetTail_le_B2_div_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Variantcfdcf46e1f94cfeea177008aecbb383d8f0804df0d9c6b9561d573a1385b54a3.lean/declarations/omittedonsettail-le-b2-div-square--2e70ed55a692af84f8e4185c.md) | 223 | `result-track:2e70ed55a692af84f8e4185c1d84c4506ccc33e2bb2ffb70b1fde04e0eee50e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
